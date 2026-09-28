package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
public final class HttpConnection {
    private static final String CRLF = "\r\n";
    private static final int ON_IDLE_CLOSE = 2;
    private static final int ON_IDLE_HOLD = 0;
    private static final int ON_IDLE_POOL = 1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final Connection connection;
    private final ConnectionPool pool;
    private final BufferedSink sink;
    private final Socket socket;
    private final BufferedSource source;
    private static final byte[] HEX_DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    private static final byte[] FINAL_CHUNK = {48, 13, 10, 13, 10};
    private int state = 0;
    private int onIdle = 0;

    public HttpConnection(ConnectionPool pool, Connection connection, Socket socket) throws IOException {
        this.pool = pool;
        this.connection = connection;
        this.socket = socket;
        this.source = Okio.buffer(Okio.source(socket));
        this.sink = Okio.buffer(Okio.sink(socket));
    }

    public void setTimeouts(int readTimeoutMillis, int writeTimeoutMillis) {
        if (readTimeoutMillis != 0) {
            this.source.timeout().timeout(readTimeoutMillis, TimeUnit.MILLISECONDS);
        }
        if (writeTimeoutMillis != 0) {
            this.sink.timeout().timeout(writeTimeoutMillis, TimeUnit.MILLISECONDS);
        }
    }

    public void poolOnIdle() {
        this.onIdle = 1;
        if (this.state == 0) {
            this.onIdle = 0;
            Internal.instance.recycle(this.pool, this.connection);
        }
    }

    public void closeOnIdle() throws IOException {
        this.onIdle = 2;
        if (this.state == 0) {
            this.state = 6;
            this.connection.getSocket().close();
        }
    }

    public boolean isClosed() {
        return this.state == 6;
    }

    public void closeIfOwnedBy(Object owner) throws IOException {
        Internal.instance.closeIfOwnedBy(this.connection, owner);
    }

    public void flush() throws IOException {
        this.sink.flush();
    }

    public long bufferSize() {
        return this.source.buffer().size();
    }

    public boolean isReadable() {
        try {
            int readTimeout = this.socket.getSoTimeout();
            try {
                this.socket.setSoTimeout(1);
                if (this.source.exhausted()) {
                    return false;
                }
                this.socket.setSoTimeout(readTimeout);
                return true;
            } finally {
                this.socket.setSoTimeout(readTimeout);
            }
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    public void writeRequest(Headers headers, String requestLine) throws IOException {
        if (this.state != 0) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.sink.writeUtf8(requestLine).writeUtf8(CRLF);
        for (int i = 0; i < headers.size(); i++) {
            this.sink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8(CRLF);
        }
        this.sink.writeUtf8(CRLF);
        this.state = 1;
    }

    public Response.Builder readResponse() throws IOException {
        StatusLine statusLine;
        Response.Builder responseBuilder;
        if (this.state != 1 && this.state != 3) {
            throw new IllegalStateException("state: " + this.state);
        }
        do {
            statusLine = StatusLine.parse(this.source.readUtf8LineStrict());
            responseBuilder = new Response.Builder().protocol(statusLine.protocol).code(statusLine.code).message(statusLine.message);
            Headers.Builder headersBuilder = new Headers.Builder();
            readHeaders(headersBuilder);
            headersBuilder.add(OkHeaders.SELECTED_PROTOCOL, statusLine.protocol.toString());
            responseBuilder.headers(headersBuilder.build());
        } while (statusLine.code == 100);
        this.state = 4;
        return responseBuilder;
    }

    public void readHeaders(Headers.Builder builder) throws IOException {
        while (true) {
            String line = this.source.readUtf8LineStrict();
            if (line.length() != 0) {
                Internal.instance.addLine(builder, line);
            } else {
                return;
            }
        }
    }

    public boolean discard(Source in, int timeoutMillis) {
        try {
            int socketTimeout = this.socket.getSoTimeout();
            this.socket.setSoTimeout(timeoutMillis);
            try {
                return Util.skipAll(in, timeoutMillis);
            } finally {
                this.socket.setSoTimeout(socketTimeout);
            }
        } catch (IOException e) {
            return false;
        }
    }

    public Sink newChunkedSink() {
        if (this.state != 1) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 2;
        return new ChunkedSink();
    }

    public Sink newFixedLengthSink(long contentLength) {
        if (this.state != 1) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 2;
        return new FixedLengthSink(contentLength);
    }

    public void writeRequestBody(RetryableSink requestBody) throws IOException {
        if (this.state != 1) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 3;
        requestBody.writeToSocket(this.sink);
    }

    public Source newFixedLengthSource(CacheRequest cacheRequest, long length) throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 5;
        return new FixedLengthSource(cacheRequest, length);
    }

    public void emptyResponseBody() throws IOException {
        newFixedLengthSource(null, 0L);
    }

    public Source newChunkedSource(CacheRequest cacheRequest, HttpEngine httpEngine) throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 5;
        return new ChunkedSource(cacheRequest, httpEngine);
    }

    public Source newUnknownLengthSource(CacheRequest cacheRequest) throws IOException {
        if (this.state != 4) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = 5;
        return new UnknownLengthSource(cacheRequest);
    }

    private final class FixedLengthSink implements Sink {
        private long bytesRemaining;
        private boolean closed;

        private FixedLengthSink(long bytesRemaining) {
            this.bytesRemaining = bytesRemaining;
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return HttpConnection.this.sink.timeout();
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(source.size(), 0L, byteCount);
            if (byteCount <= this.bytesRemaining) {
                HttpConnection.this.sink.write(source, byteCount);
                this.bytesRemaining -= byteCount;
                return;
            }
            throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + byteCount);
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (!this.closed) {
                HttpConnection.this.sink.flush();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                if (this.bytesRemaining > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                HttpConnection.this.state = 3;
            }
        }
    }

    private final class ChunkedSink implements Sink {
        private boolean closed;
        private final byte[] hex;

        private ChunkedSink() {
            this.hex = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 10};
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return HttpConnection.this.sink.timeout();
        }

        @Override // okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (byteCount != 0) {
                writeHex(byteCount);
                HttpConnection.this.sink.write(source, byteCount);
                HttpConnection.this.sink.writeUtf8(HttpConnection.CRLF);
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (!this.closed) {
                HttpConnection.this.sink.flush();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                HttpConnection.this.sink.write(HttpConnection.FINAL_CHUNK);
                HttpConnection.this.state = 3;
            }
        }

        private void writeHex(long i) throws IOException {
            int cursor = 16;
            do {
                cursor--;
                this.hex[cursor] = HttpConnection.HEX_DIGITS[(int) (15 & i)];
                i >>>= 4;
            } while (i != 0);
            HttpConnection.this.sink.write(this.hex, cursor, this.hex.length - cursor);
        }
    }

    private class AbstractSource {
        protected final OutputStream cacheBody;
        private final CacheRequest cacheRequest;
        protected boolean closed;

        AbstractSource(CacheRequest cacheRequest) throws IOException {
            OutputStream cacheBody = cacheRequest != null ? cacheRequest.getBody() : null;
            cacheRequest = cacheBody == null ? null : cacheRequest;
            this.cacheBody = cacheBody;
            this.cacheRequest = cacheRequest;
        }

        protected final void cacheWrite(Buffer source, long byteCount) throws IOException {
            if (this.cacheBody != null) {
                source.copyTo(this.cacheBody, source.size() - byteCount, byteCount);
            }
        }

        protected final void endOfInput(boolean recyclable) throws IOException {
            if (HttpConnection.this.state != 5) {
                throw new IllegalStateException("state: " + HttpConnection.this.state);
            }
            if (this.cacheRequest != null) {
                this.cacheBody.close();
            }
            HttpConnection.this.state = 0;
            if (!recyclable || HttpConnection.this.onIdle != 1) {
                if (HttpConnection.this.onIdle == 2) {
                    HttpConnection.this.state = 6;
                    HttpConnection.this.connection.getSocket().close();
                    return;
                }
                return;
            }
            HttpConnection.this.onIdle = 0;
            Internal.instance.recycle(HttpConnection.this.pool, HttpConnection.this.connection);
        }

        protected final void unexpectedEndOfInput() {
            if (this.cacheRequest != null) {
                this.cacheRequest.abort();
            }
            Util.closeQuietly(HttpConnection.this.connection.getSocket());
            HttpConnection.this.state = 6;
        }
    }

    private class FixedLengthSource extends AbstractSource implements Source {
        private long bytesRemaining;

        public FixedLengthSource(CacheRequest cacheRequest, long length) throws IOException {
            super(cacheRequest);
            this.bytesRemaining = length;
            if (this.bytesRemaining == 0) {
                endOfInput(true);
            }
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + byteCount);
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (this.bytesRemaining == 0) {
                return -1L;
            }
            long read = HttpConnection.this.source.read(sink, Math.min(this.bytesRemaining, byteCount));
            if (read == -1) {
                unexpectedEndOfInput();
                throw new ProtocolException("unexpected end of stream");
            }
            this.bytesRemaining -= read;
            cacheWrite(sink, read);
            if (this.bytesRemaining == 0) {
                endOfInput(true);
                return read;
            }
            return read;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return HttpConnection.this.source.timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                if (this.bytesRemaining != 0 && !HttpConnection.this.discard(this, 100)) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    private class ChunkedSource extends AbstractSource implements Source {
        private static final int NO_CHUNK_YET = -1;
        private int bytesRemainingInChunk;
        private boolean hasMoreChunks;
        private final HttpEngine httpEngine;

        ChunkedSource(CacheRequest cacheRequest, HttpEngine httpEngine) throws IOException {
            super(cacheRequest);
            this.bytesRemainingInChunk = -1;
            this.hasMoreChunks = true;
            this.httpEngine = httpEngine;
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + byteCount);
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (!this.hasMoreChunks) {
                return -1L;
            }
            if (this.bytesRemainingInChunk == 0 || this.bytesRemainingInChunk == -1) {
                readChunkSize();
                if (!this.hasMoreChunks) {
                    return -1L;
                }
            }
            long read = HttpConnection.this.source.read(sink, Math.min(byteCount, this.bytesRemainingInChunk));
            if (read == -1) {
                unexpectedEndOfInput();
                throw new IOException("unexpected end of stream");
            }
            this.bytesRemainingInChunk = (int) (((long) this.bytesRemainingInChunk) - read);
            cacheWrite(sink, read);
            return read;
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                HttpConnection.this.source.readUtf8LineStrict();
            }
            String chunkSizeString = HttpConnection.this.source.readUtf8LineStrict();
            int index = chunkSizeString.indexOf(";");
            if (index != -1) {
                chunkSizeString = chunkSizeString.substring(0, index);
            }
            try {
                this.bytesRemainingInChunk = Integer.parseInt(chunkSizeString.trim(), 16);
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    Headers.Builder trailersBuilder = new Headers.Builder();
                    HttpConnection.this.readHeaders(trailersBuilder);
                    this.httpEngine.receiveHeaders(trailersBuilder.build());
                    endOfInput(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException("Expected a hex chunk size but was " + chunkSizeString);
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return HttpConnection.this.source.timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                if (this.hasMoreChunks && !HttpConnection.this.discard(this, 100)) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    class UnknownLengthSource extends AbstractSource implements Source {
        private boolean inputExhausted;

        UnknownLengthSource(CacheRequest cacheRequest) throws IOException {
            super(cacheRequest);
        }

        @Override // okio.Source
        public long read(Buffer sink, long byteCount) throws IOException {
            if (byteCount < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + byteCount);
            }
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            if (this.inputExhausted) {
                return -1L;
            }
            long read = HttpConnection.this.source.read(sink, byteCount);
            if (read == -1) {
                this.inputExhausted = true;
                endOfInput(false);
                return -1L;
            }
            cacheWrite(sink, read);
            return read;
        }

        @Override // okio.Source
        public Timeout timeout() {
            return HttpConnection.this.source.timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.closed) {
                if (!this.inputExhausted) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }
}
