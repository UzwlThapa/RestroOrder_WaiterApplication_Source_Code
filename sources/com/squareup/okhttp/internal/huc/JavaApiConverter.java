package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SecureCacheResponse;
import java.net.URI;
import java.net.URLConnection;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okio.BufferedSource;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
public final class JavaApiConverter {
    private JavaApiConverter() {
    }

    public static Response createOkResponse(URI uri, URLConnection urlConnection) throws IOException {
        Certificate[] peerCertificates;
        HttpURLConnection httpUrlConnection = (HttpURLConnection) urlConnection;
        Response.Builder okResponseBuilder = new Response.Builder();
        Request okRequest = createOkRequest(uri, httpUrlConnection.getRequestMethod(), null);
        okResponseBuilder.request(okRequest);
        StatusLine statusLine = StatusLine.parse(extractStatusLine(httpUrlConnection));
        okResponseBuilder.protocol(statusLine.protocol);
        okResponseBuilder.code(statusLine.code);
        okResponseBuilder.message(statusLine.message);
        Headers okHeaders = extractOkResponseHeaders(httpUrlConnection);
        okResponseBuilder.headers(okHeaders);
        ResponseBody okBody = createOkBody(okHeaders, urlConnection.getInputStream());
        okResponseBuilder.body(okBody);
        if (httpUrlConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsUrlConnection = (HttpsURLConnection) httpUrlConnection;
            try {
                peerCertificates = httpsUrlConnection.getServerCertificates();
            } catch (SSLPeerUnverifiedException e) {
                peerCertificates = null;
            }
            Certificate[] localCertificates = httpsUrlConnection.getLocalCertificates();
            Handshake handshake = Handshake.get(httpsUrlConnection.getCipherSuite(), nullSafeImmutableList(peerCertificates), nullSafeImmutableList(localCertificates));
            okResponseBuilder.handshake(handshake);
        }
        return okResponseBuilder.build();
    }

    static Response createOkResponse(Request request, CacheResponse javaResponse) throws IOException {
        List<Certificate> peerCertificates;
        Response.Builder okResponseBuilder = new Response.Builder();
        okResponseBuilder.request(request);
        StatusLine statusLine = StatusLine.parse(extractStatusLine(javaResponse));
        okResponseBuilder.protocol(statusLine.protocol);
        okResponseBuilder.code(statusLine.code);
        okResponseBuilder.message(statusLine.message);
        Headers okHeaders = extractOkHeaders(javaResponse);
        okResponseBuilder.headers(okHeaders);
        ResponseBody okBody = createOkBody(okHeaders, javaResponse.getBody());
        okResponseBuilder.body(okBody);
        if (javaResponse instanceof SecureCacheResponse) {
            SecureCacheResponse javaSecureCacheResponse = (SecureCacheResponse) javaResponse;
            try {
                peerCertificates = javaSecureCacheResponse.getServerCertificateChain();
            } catch (SSLPeerUnverifiedException e) {
                peerCertificates = Collections.emptyList();
            }
            List<Certificate> localCertificates = javaSecureCacheResponse.getLocalCertificateChain();
            if (localCertificates == null) {
                localCertificates = Collections.emptyList();
            }
            Handshake handshake = Handshake.get(javaSecureCacheResponse.getCipherSuite(), peerCertificates, localCertificates);
            okResponseBuilder.handshake(handshake);
        }
        return okResponseBuilder.build();
    }

    public static Request createOkRequest(URI uri, String requestMethod, Map<String, List<String>> requestHeaders) {
        Request.Builder builder = new Request.Builder().url(uri.toString()).method(requestMethod, null);
        if (requestHeaders != null) {
            Headers headers = extractOkHeaders(requestHeaders);
            builder.headers(headers);
        }
        return builder.build();
    }

    public static CacheResponse createJavaCacheResponse(final Response response) {
        final Headers headers = response.headers();
        final ResponseBody body = response.body();
        if (!response.request().isHttps()) {
            return new CacheResponse() { // from class: com.squareup.okhttp.internal.huc.JavaApiConverter.2
                @Override // java.net.CacheResponse
                public Map<String, List<String>> getHeaders() throws IOException {
                    return OkHeaders.toMultimap(headers, StatusLine.get(response).toString());
                }

                @Override // java.net.CacheResponse
                public InputStream getBody() throws IOException {
                    if (body == null) {
                        return null;
                    }
                    return body.byteStream();
                }
            };
        }
        final Handshake handshake = response.handshake();
        return new SecureCacheResponse() { // from class: com.squareup.okhttp.internal.huc.JavaApiConverter.1
            @Override // java.net.SecureCacheResponse
            public String getCipherSuite() {
                if (handshake != null) {
                    return handshake.cipherSuite();
                }
                return null;
            }

            @Override // java.net.SecureCacheResponse
            public List<Certificate> getLocalCertificateChain() {
                if (handshake == null) {
                    return null;
                }
                List<Certificate> certificates = handshake.localCertificates();
                if (certificates.size() <= 0) {
                    certificates = null;
                }
                return certificates;
            }

            @Override // java.net.SecureCacheResponse
            public List<Certificate> getServerCertificateChain() throws SSLPeerUnverifiedException {
                if (handshake == null) {
                    return null;
                }
                List<Certificate> certificates = handshake.peerCertificates();
                if (certificates.size() <= 0) {
                    certificates = null;
                }
                return certificates;
            }

            @Override // java.net.SecureCacheResponse
            public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
                if (handshake == null) {
                    return null;
                }
                return handshake.peerPrincipal();
            }

            @Override // java.net.SecureCacheResponse
            public Principal getLocalPrincipal() {
                if (handshake == null) {
                    return null;
                }
                return handshake.localPrincipal();
            }

            @Override // java.net.CacheResponse
            public Map<String, List<String>> getHeaders() throws IOException {
                return OkHeaders.toMultimap(headers, StatusLine.get(response).toString());
            }

            @Override // java.net.CacheResponse
            public InputStream getBody() throws IOException {
                if (body == null) {
                    return null;
                }
                return body.byteStream();
            }
        };
    }

    static HttpURLConnection createJavaUrlConnection(Response okResponse) {
        Request request = okResponse.request();
        return request.isHttps() ? new CacheHttpsURLConnection(new CacheHttpURLConnection(okResponse)) : new CacheHttpURLConnection(okResponse);
    }

    static Map<String, List<String>> extractJavaHeaders(Request request) {
        return OkHeaders.toMultimap(request.headers(), null);
    }

    private static Headers extractOkHeaders(CacheResponse javaResponse) throws IOException {
        Map<String, List<String>> javaResponseHeaders = javaResponse.getHeaders();
        return extractOkHeaders(javaResponseHeaders);
    }

    private static Headers extractOkResponseHeaders(HttpURLConnection httpUrlConnection) {
        Map<String, List<String>> javaResponseHeaders = httpUrlConnection.getHeaderFields();
        return extractOkHeaders(javaResponseHeaders);
    }

    static Headers extractOkHeaders(Map<String, List<String>> javaHeaders) {
        Headers.Builder okHeadersBuilder = new Headers.Builder();
        for (Map.Entry<String, List<String>> javaHeader : javaHeaders.entrySet()) {
            String name = javaHeader.getKey();
            if (name != null) {
                for (String value : javaHeader.getValue()) {
                    okHeadersBuilder.add(name, value);
                }
            }
        }
        return okHeadersBuilder.build();
    }

    private static String extractStatusLine(HttpURLConnection httpUrlConnection) {
        return httpUrlConnection.getHeaderField((String) null);
    }

    private static String extractStatusLine(CacheResponse javaResponse) throws IOException {
        Map<String, List<String>> javaResponseHeaders = javaResponse.getHeaders();
        return extractStatusLine(javaResponseHeaders);
    }

    static String extractStatusLine(Map<String, List<String>> javaResponseHeaders) {
        List<String> values = javaResponseHeaders.get(null);
        if (values == null || values.size() == 0) {
            return null;
        }
        return values.get(0);
    }

    private static ResponseBody createOkBody(final Headers okHeaders, InputStream body) {
        final BufferedSource source = Okio.buffer(Okio.source(body));
        return new ResponseBody() { // from class: com.squareup.okhttp.internal.huc.JavaApiConverter.3
            @Override // com.squareup.okhttp.ResponseBody
            public MediaType contentType() {
                String contentTypeHeader = okHeaders.get("Content-Type");
                if (contentTypeHeader == null) {
                    return null;
                }
                return MediaType.parse(contentTypeHeader);
            }

            @Override // com.squareup.okhttp.ResponseBody
            public long contentLength() {
                return OkHeaders.contentLength(okHeaders);
            }

            @Override // com.squareup.okhttp.ResponseBody
            public BufferedSource source() {
                return source;
            }
        };
    }

    private static final class CacheHttpURLConnection extends HttpURLConnection {
        private final Request request;
        private final Response response;

        public CacheHttpURLConnection(Response response) {
            super(response.request().url());
            this.request = response.request();
            this.response = response;
            this.connected = true;
            this.doOutput = response.body() == null;
            this.method = this.request.method();
        }

        @Override // java.net.URLConnection
        public void connect() throws IOException {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public void disconnect() {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public void setRequestProperty(String key, String value) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public void addRequestProperty(String key, String value) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public String getRequestProperty(String key) {
            return this.request.header(key);
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getRequestProperties() {
            throw JavaApiConverter.throwRequestHeaderAccessException();
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(int contentLength) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(long contentLength) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public void setChunkedStreamingMode(int chunklen) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public void setInstanceFollowRedirects(boolean followRedirects) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public boolean getInstanceFollowRedirects() {
            return super.getInstanceFollowRedirects();
        }

        @Override // java.net.HttpURLConnection
        public void setRequestMethod(String method) throws ProtocolException {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.HttpURLConnection
        public String getRequestMethod() {
            return this.request.method();
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderFieldKey(int position) {
            if (position < 0) {
                throw new IllegalArgumentException("Invalid header index: " + position);
            }
            if (position == 0) {
                return null;
            }
            return this.response.headers().name(position - 1);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderField(int position) {
            if (position < 0) {
                throw new IllegalArgumentException("Invalid header index: " + position);
            }
            return position == 0 ? StatusLine.get(this.response).toString() : this.response.headers().value(position - 1);
        }

        @Override // java.net.URLConnection
        public String getHeaderField(String fieldName) {
            return fieldName == null ? StatusLine.get(this.response).toString() : this.response.headers().get(fieldName);
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getHeaderFields() {
            return OkHeaders.toMultimap(this.response.headers(), StatusLine.get(this.response).toString());
        }

        @Override // java.net.HttpURLConnection
        public int getResponseCode() throws IOException {
            return this.response.code();
        }

        @Override // java.net.HttpURLConnection
        public String getResponseMessage() throws IOException {
            return this.response.message();
        }

        @Override // java.net.HttpURLConnection
        public InputStream getErrorStream() {
            return null;
        }

        @Override // java.net.HttpURLConnection
        public boolean usingProxy() {
            return false;
        }

        @Override // java.net.URLConnection
        public void setConnectTimeout(int timeout) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public int getConnectTimeout() {
            return 0;
        }

        @Override // java.net.URLConnection
        public void setReadTimeout(int timeout) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public int getReadTimeout() {
            return 0;
        }

        @Override // java.net.URLConnection
        public Object getContent() throws IOException {
            throw JavaApiConverter.throwResponseBodyAccessException();
        }

        @Override // java.net.URLConnection
        public Object getContent(Class[] classes) throws IOException {
            throw JavaApiConverter.throwResponseBodyAccessException();
        }

        @Override // java.net.URLConnection
        public InputStream getInputStream() throws IOException {
            throw JavaApiConverter.throwResponseBodyAccessException();
        }

        @Override // java.net.URLConnection
        public OutputStream getOutputStream() throws IOException {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public void setDoInput(boolean doInput) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public boolean getDoInput() {
            return true;
        }

        @Override // java.net.URLConnection
        public void setDoOutput(boolean doOutput) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public boolean getDoOutput() {
            return this.request.body() != null;
        }

        @Override // java.net.URLConnection
        public void setAllowUserInteraction(boolean allowUserInteraction) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public boolean getAllowUserInteraction() {
            return false;
        }

        @Override // java.net.URLConnection
        public void setUseCaches(boolean useCaches) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public boolean getUseCaches() {
            return super.getUseCaches();
        }

        @Override // java.net.URLConnection
        public void setIfModifiedSince(long ifModifiedSince) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // java.net.URLConnection
        public long getIfModifiedSince() {
            return 0L;
        }

        @Override // java.net.URLConnection
        public boolean getDefaultUseCaches() {
            return super.getDefaultUseCaches();
        }

        @Override // java.net.URLConnection
        public void setDefaultUseCaches(boolean defaultUseCaches) {
            super.setDefaultUseCaches(defaultUseCaches);
        }
    }

    private static final class CacheHttpsURLConnection extends DelegatingHttpsURLConnection {
        private final CacheHttpURLConnection delegate;

        public CacheHttpsURLConnection(CacheHttpURLConnection delegate) {
            super(delegate);
            this.delegate = delegate;
        }

        @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection
        protected Handshake handshake() {
            return this.delegate.response.handshake();
        }

        @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
        public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
        public HostnameVerifier getHostnameVerifier() {
            throw JavaApiConverter.throwRequestSslAccessException();
        }

        @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
        public void setSSLSocketFactory(SSLSocketFactory socketFactory) {
            throw JavaApiConverter.throwRequestModificationException();
        }

        @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
        public SSLSocketFactory getSSLSocketFactory() {
            throw JavaApiConverter.throwRequestSslAccessException();
        }

        @Override // java.net.URLConnection
        public long getContentLengthLong() {
            return this.delegate.getContentLengthLong();
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(long contentLength) {
            this.delegate.setFixedLengthStreamingMode(contentLength);
        }

        @Override // java.net.URLConnection
        public long getHeaderFieldLong(String field, long defaultValue) {
            return this.delegate.getHeaderFieldLong(field, defaultValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException throwRequestModificationException() {
        throw new UnsupportedOperationException("ResponseCache cannot modify the request.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException throwRequestHeaderAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access request headers");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException throwRequestSslAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access SSL internals");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException throwResponseBodyAccessException() {
        throw new UnsupportedOperationException("ResponseCache cannot access the response body.");
    }

    private static <T> List<T> nullSafeImmutableList(T[] elements) {
        return elements == null ? Collections.emptyList() : Util.immutableList(elements);
    }
}
