package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.OkHttpClient;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public final class HttpsURLConnectionImpl extends DelegatingHttpsURLConnection {
    private final HttpURLConnectionImpl delegate;

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void addRequestProperty(String x0, String x1) {
        super.addRequestProperty(x0, x1);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void connect() throws IOException {
        super.connect();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ void disconnect() {
        super.disconnect();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ boolean getAllowUserInteraction() {
        return super.getAllowUserInteraction();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public /* bridge */ /* synthetic */ String getCipherSuite() {
        return super.getCipherSuite();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ int getConnectTimeout() {
        return super.getConnectTimeout();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ Object getContent() throws IOException {
        return super.getContent();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ Object getContent(Class[] x0) throws IOException {
        return super.getContent(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getContentEncoding() {
        return super.getContentEncoding();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ int getContentLength() {
        return super.getContentLength();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getContentType() {
        return super.getContentType();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ long getDate() {
        return super.getDate();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ boolean getDefaultUseCaches() {
        return super.getDefaultUseCaches();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ boolean getDoInput() {
        return super.getDoInput();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ boolean getDoOutput() {
        return super.getDoOutput();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ InputStream getErrorStream() {
        return super.getErrorStream();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ long getExpiration() {
        return super.getExpiration();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getHeaderField(int x0) {
        return super.getHeaderField(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getHeaderField(String x0) {
        return super.getHeaderField(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ long getHeaderFieldDate(String x0, long x1) {
        return super.getHeaderFieldDate(x0, x1);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ int getHeaderFieldInt(String x0, int x1) {
        return super.getHeaderFieldInt(x0, x1);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getHeaderFieldKey(int x0) {
        return super.getHeaderFieldKey(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ Map getHeaderFields() {
        return super.getHeaderFields();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ long getIfModifiedSince() {
        return super.getIfModifiedSince();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ InputStream getInputStream() throws IOException {
        return super.getInputStream();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ boolean getInstanceFollowRedirects() {
        return super.getInstanceFollowRedirects();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ long getLastModified() {
        return super.getLastModified();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public /* bridge */ /* synthetic */ Certificate[] getLocalCertificates() {
        return super.getLocalCertificates();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public /* bridge */ /* synthetic */ Principal getLocalPrincipal() {
        return super.getLocalPrincipal();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ OutputStream getOutputStream() throws IOException {
        return super.getOutputStream();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public /* bridge */ /* synthetic */ Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        return super.getPeerPrincipal();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ Permission getPermission() throws IOException {
        return super.getPermission();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ int getReadTimeout() {
        return super.getReadTimeout();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ String getRequestMethod() {
        return super.getRequestMethod();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ Map getRequestProperties() {
        return super.getRequestProperties();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String getRequestProperty(String x0) {
        return super.getRequestProperty(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ int getResponseCode() throws IOException {
        return super.getResponseCode();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ String getResponseMessage() throws IOException {
        return super.getResponseMessage();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public /* bridge */ /* synthetic */ Certificate[] getServerCertificates() throws SSLPeerUnverifiedException {
        return super.getServerCertificates();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ URL getURL() {
        return super.getURL();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ boolean getUseCaches() {
        return super.getUseCaches();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setAllowUserInteraction(boolean x0) {
        super.setAllowUserInteraction(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ void setChunkedStreamingMode(int x0) {
        super.setChunkedStreamingMode(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setConnectTimeout(int x0) {
        super.setConnectTimeout(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setDefaultUseCaches(boolean x0) {
        super.setDefaultUseCaches(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setDoInput(boolean x0) {
        super.setDoInput(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setDoOutput(boolean x0) {
        super.setDoOutput(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ void setFixedLengthStreamingMode(int x0) {
        super.setFixedLengthStreamingMode(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setIfModifiedSince(long x0) {
        super.setIfModifiedSince(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ void setInstanceFollowRedirects(boolean x0) {
        super.setInstanceFollowRedirects(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setReadTimeout(int x0) {
        super.setReadTimeout(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ void setRequestMethod(String x0) throws ProtocolException {
        super.setRequestMethod(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setRequestProperty(String x0, String x1) {
        super.setRequestProperty(x0, x1);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ void setUseCaches(boolean x0) {
        super.setUseCaches(x0);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.URLConnection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, java.net.HttpURLConnection
    public /* bridge */ /* synthetic */ boolean usingProxy() {
        return super.usingProxy();
    }

    public HttpsURLConnectionImpl(URL url, OkHttpClient client) {
        this(new HttpURLConnectionImpl(url, client));
    }

    public HttpsURLConnectionImpl(HttpURLConnectionImpl delegate) {
        super(delegate);
        this.delegate = delegate;
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection
    protected Handshake handshake() {
        if (this.delegate.httpEngine == null) {
            throw new IllegalStateException("Connection has not yet been established");
        }
        return this.delegate.httpEngine.hasResponse() ? this.delegate.httpEngine.getResponse().handshake() : this.delegate.handshake;
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.delegate.client.setHostnameVerifier(hostnameVerifier);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public HostnameVerifier getHostnameVerifier() {
        return this.delegate.client.getHostnameVerifier();
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(SSLSocketFactory sslSocketFactory) {
        this.delegate.client.setSslSocketFactory(sslSocketFactory);
    }

    @Override // com.squareup.okhttp.internal.huc.DelegatingHttpsURLConnection, javax.net.ssl.HttpsURLConnection
    public SSLSocketFactory getSSLSocketFactory() {
        return this.delegate.client.getSslSocketFactory();
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
