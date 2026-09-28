package com.squareup.okhttp;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RetryableSink;
import java.io.IOException;
import java.net.ProtocolException;
import okio.BufferedSink;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public final class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    private final Dispatcher dispatcher;
    HttpEngine engine;
    private boolean executed;
    private int redirectionCount;
    private Request request;

    Call(OkHttpClient client, Dispatcher dispatcher, Request request) {
        this.client = client;
        this.dispatcher = dispatcher;
        this.request = request;
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        Response result = getResponse();
        this.engine.releaseConnection();
        if (result == null) {
            throw new IOException("Canceled");
        }
        return result;
    }

    public void enqueue(Callback responseCallback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        this.dispatcher.enqueue(new AsyncCall(responseCallback));
    }

    public void cancel() {
        this.canceled = true;
        if (this.engine != null) {
            this.engine.disconnect();
        }
    }

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;

        private AsyncCall(Callback responseCallback) {
            super("OkHttp %s", Call.this.request.urlString());
            this.responseCallback = responseCallback;
        }

        String host() {
            return Call.this.request.url().getHost();
        }

        Request request() {
            return Call.this.request;
        }

        Object tag() {
            return Call.this.request.tag();
        }

        Call get() {
            return Call.this;
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        protected void execute() {
            try {
                Response response = Call.this.getResponse();
                if (Call.this.canceled) {
                    this.responseCallback.onFailure(Call.this.request, new IOException("Canceled"));
                } else {
                    Call.this.engine.releaseConnection();
                    this.responseCallback.onResponse(response);
                }
            } catch (IOException e) {
                if (0 != 0) {
                    throw new RuntimeException(e);
                }
                this.responseCallback.onFailure(Call.this.request, e);
            } finally {
                Call.this.dispatcher.finished(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response getResponse() throws IOException {
        Response response;
        Request followUp;
        RequestBody body = this.request.body();
        RetryableSink requestBodyOut = null;
        if (body != null) {
            Request.Builder requestBuilder = this.request.newBuilder();
            MediaType contentType = body.contentType();
            if (contentType != null) {
                requestBuilder.header("Content-Type", contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                requestBuilder.header("Content-Length", Long.toString(contentLength));
                requestBuilder.removeHeader("Transfer-Encoding");
            } else {
                requestBuilder.header("Transfer-Encoding", "chunked");
                requestBuilder.removeHeader("Content-Length");
            }
            this.request = requestBuilder.build();
        } else if (HttpMethod.hasRequestBody(this.request.method())) {
            requestBodyOut = Util.emptySink();
        }
        this.engine = new HttpEngine(this.client, this.request, false, null, null, requestBodyOut, null);
        while (!this.canceled) {
            try {
                this.engine.sendRequest();
                if (this.request.body() != null) {
                    BufferedSink sink = this.engine.getBufferedRequestBody();
                    this.request.body().writeTo(sink);
                }
                this.engine.readResponse();
                response = this.engine.getResponse();
                followUp = this.engine.followUpRequest();
            } catch (IOException e) {
                HttpEngine retryEngine = this.engine.recover(e, null);
                if (retryEngine != null) {
                    this.engine = retryEngine;
                } else {
                    throw e;
                }
            }
            if (followUp == null) {
                this.engine.releaseConnection();
                return response.newBuilder().body(new RealResponseBody(response, this.engine.getResponseBody())).build();
            }
            if (this.engine.getResponse().isRedirect()) {
                int i = this.redirectionCount + 1;
                this.redirectionCount = i;
                if (i > 20) {
                    throw new ProtocolException("Too many redirects: " + this.redirectionCount);
                }
            }
            if (!this.engine.sameConnection(followUp.url())) {
                this.engine.releaseConnection();
            }
            Connection connection = this.engine.close();
            this.request = followUp;
            this.engine = new HttpEngine(this.client, this.request, false, connection, null, null, response);
        }
        return null;
    }

    private static class RealResponseBody extends ResponseBody {
        private final Response response;
        private final BufferedSource source;

        RealResponseBody(Response response, BufferedSource source) {
            this.response = response;
            this.source = source;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            String contentType = this.response.header("Content-Type");
            if (contentType != null) {
                return MediaType.parse(contentType);
            }
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return OkHeaders.contentLength(this.response);
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return this.source;
        }
    }
}
