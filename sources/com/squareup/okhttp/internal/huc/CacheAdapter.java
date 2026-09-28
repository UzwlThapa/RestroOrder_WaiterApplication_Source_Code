package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.http.CacheStrategy;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CacheAdapter implements InternalCache {
    private final ResponseCache delegate;

    public CacheAdapter(ResponseCache delegate) {
        this.delegate = delegate;
    }

    public ResponseCache getDelegate() {
        return this.delegate;
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public Response get(Request request) throws IOException {
        CacheResponse javaResponse = getJavaCachedResponse(request);
        if (javaResponse == null) {
            return null;
        }
        return JavaApiConverter.createOkResponse(request, javaResponse);
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public CacheRequest put(Response response) throws IOException {
        URI uri = response.request().uri();
        HttpURLConnection connection = JavaApiConverter.createJavaUrlConnection(response);
        return this.delegate.put(uri, connection);
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public void remove(Request request) throws IOException {
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public void update(Response cached, Response network) throws IOException {
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public void trackConditionalCacheHit() {
    }

    @Override // com.squareup.okhttp.internal.InternalCache
    public void trackResponse(CacheStrategy cacheStrategy) {
    }

    private CacheResponse getJavaCachedResponse(Request request) throws IOException {
        Map<String, List<String>> headers = JavaApiConverter.extractJavaHeaders(request);
        return this.delegate.get(request.uri(), request.method(), headers);
    }
}
