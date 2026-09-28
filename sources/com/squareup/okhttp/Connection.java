package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.http.HttpConnection;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpTransport;
import com.squareup.okhttp.internal.http.SpdyTransport;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public final class Connection {
    private Handshake handshake;
    private HttpConnection httpConnection;
    private long idleStartTimeNs;
    private Object owner;
    private final ConnectionPool pool;
    private int recycleCount;
    private final Route route;
    private Socket socket;
    private SpdyConnection spdyConnection;
    private boolean connected = false;
    private Protocol protocol = Protocol.HTTP_1_1;

    public Connection(ConnectionPool pool, Route route) {
        this.pool = pool;
        this.route = route;
    }

    Object getOwner() {
        Object obj;
        synchronized (this.pool) {
            obj = this.owner;
        }
        return obj;
    }

    void setOwner(Object owner) {
        if (!isSpdy()) {
            synchronized (this.pool) {
                if (this.owner != null) {
                    throw new IllegalStateException("Connection already has an owner!");
                }
                this.owner = owner;
            }
        }
    }

    boolean clearOwner() {
        boolean z;
        synchronized (this.pool) {
            if (this.owner == null) {
                z = false;
            } else {
                this.owner = null;
                z = true;
            }
        }
        return z;
    }

    void closeIfOwnedBy(Object owner) throws IOException {
        if (isSpdy()) {
            throw new IllegalStateException();
        }
        synchronized (this.pool) {
            if (this.owner == owner) {
                this.owner = null;
                this.socket.close();
            }
        }
    }

    void connect(int connectTimeout, int readTimeout, int writeTimeout, Request tunnelRequest) throws IOException {
        if (this.connected) {
            throw new IllegalStateException("already connected");
        }
        if (this.route.proxy.type() != Proxy.Type.HTTP) {
            this.socket = new Socket(this.route.proxy);
        } else {
            this.socket = this.route.address.socketFactory.createSocket();
        }
        this.socket.setSoTimeout(readTimeout);
        Platform.get().connectSocket(this.socket, this.route.inetSocketAddress, connectTimeout);
        if (this.route.address.sslSocketFactory != null) {
            upgradeToTls(tunnelRequest, readTimeout, writeTimeout);
        } else {
            this.httpConnection = new HttpConnection(this.pool, this, this.socket);
        }
        this.connected = true;
    }

    private void upgradeToTls(Request tunnelRequest, int readTimeout, int writeTimeout) throws IOException {
        String maybeProtocol;
        Platform platform = Platform.get();
        if (tunnelRequest != null) {
            makeTunnel(tunnelRequest, readTimeout, writeTimeout);
        }
        this.socket = this.route.address.sslSocketFactory.createSocket(this.socket, this.route.address.uriHost, this.route.address.uriPort, true);
        SSLSocket sslSocket = (SSLSocket) this.socket;
        platform.configureTls(sslSocket, this.route.address.uriHost, this.route.tlsVersion);
        boolean useNpn = this.route.supportsNpn();
        if (useNpn) {
            platform.setProtocols(sslSocket, this.route.address.protocols);
        }
        sslSocket.startHandshake();
        if (!this.route.address.hostnameVerifier.verify(this.route.address.uriHost, sslSocket.getSession())) {
            throw new IOException("Hostname '" + this.route.address.uriHost + "' was not verified");
        }
        this.handshake = Handshake.get(sslSocket.getSession());
        if (useNpn && (maybeProtocol = platform.getSelectedProtocol(sslSocket)) != null) {
            this.protocol = Protocol.get(maybeProtocol);
        }
        if (this.protocol == Protocol.SPDY_3 || this.protocol == Protocol.HTTP_2) {
            sslSocket.setSoTimeout(0);
            this.spdyConnection = new SpdyConnection.Builder(this.route.address.getUriHost(), true, this.socket).protocol(this.protocol).build();
            this.spdyConnection.sendConnectionPreface();
            return;
        }
        this.httpConnection = new HttpConnection(this.pool, this, this.socket);
    }

    boolean isConnected() {
        return this.connected;
    }

    public Route getRoute() {
        return this.route;
    }

    public Socket getSocket() {
        return this.socket;
    }

    boolean isAlive() {
        return (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) ? false : true;
    }

    boolean isReadable() {
        if (this.httpConnection != null) {
            return this.httpConnection.isReadable();
        }
        return true;
    }

    void resetIdleStartTime() {
        if (this.spdyConnection != null) {
            throw new IllegalStateException("spdyConnection != null");
        }
        this.idleStartTimeNs = System.nanoTime();
    }

    boolean isIdle() {
        return this.spdyConnection == null || this.spdyConnection.isIdle();
    }

    boolean isExpired(long keepAliveDurationNs) {
        return getIdleStartTimeNs() < System.nanoTime() - keepAliveDurationNs;
    }

    long getIdleStartTimeNs() {
        return this.spdyConnection == null ? this.idleStartTimeNs : this.spdyConnection.getIdleStartTimeNs();
    }

    public Handshake getHandshake() {
        return this.handshake;
    }

    Transport newTransport(HttpEngine httpEngine) throws IOException {
        return this.spdyConnection != null ? new SpdyTransport(httpEngine, this.spdyConnection) : new HttpTransport(httpEngine, this.httpConnection);
    }

    boolean isSpdy() {
        return this.spdyConnection != null;
    }

    public Protocol getProtocol() {
        return this.protocol;
    }

    void setProtocol(Protocol protocol) {
        if (protocol == null) {
            throw new IllegalArgumentException("protocol == null");
        }
        this.protocol = protocol;
    }

    void setTimeouts(int readTimeoutMillis, int writeTimeoutMillis) throws IOException {
        if (!this.connected) {
            throw new IllegalStateException("setTimeouts - not connected");
        }
        if (this.httpConnection != null) {
            this.socket.setSoTimeout(readTimeoutMillis);
            this.httpConnection.setTimeouts(readTimeoutMillis, writeTimeoutMillis);
        }
    }

    void incrementRecycleCount() {
        this.recycleCount++;
    }

    int recycleCount() {
        return this.recycleCount;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:104)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private void makeTunnel(com.squareup.okhttp.Request r9, int r10, int r11) throws java.io.IOException {
        /*
            r8 = this;
            com.squareup.okhttp.internal.http.HttpConnection r2 = new com.squareup.okhttp.internal.http.HttpConnection
            com.squareup.okhttp.ConnectionPool r4 = r8.pool
            java.net.Socket r5 = r8.socket
            r2.<init>(r4, r8, r5)
            r2.setTimeouts(r10, r11)
            java.net.URL r3 = r9.url()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "CONNECT "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r5 = r3.getHost()
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r5 = ":"
            java.lang.StringBuilder r4 = r4.append(r5)
            int r5 = r3.getPort()
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r5 = " HTTP/1.1"
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r0 = r4.toString()
        L3b:
            com.squareup.okhttp.Headers r4 = r9.headers()
            r2.writeRequest(r4, r0)
            r2.flush()
            com.squareup.okhttp.Response$Builder r4 = r2.readResponse()
            com.squareup.okhttp.Response$Builder r4 = r4.request(r9)
            com.squareup.okhttp.Response r1 = r4.build()
            r2.emptyResponseBody()
            int r4 = r1.code()
            switch(r4) {
                case 200: goto L78;
                case 407: goto L8a;
                default: goto L5b;
            }
        L5b:
            java.io.IOException r4 = new java.io.IOException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Unexpected response code for CONNECT: "
            java.lang.StringBuilder r5 = r5.append(r6)
            int r6 = r1.code()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L78:
            long r4 = r2.bufferSize()
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto La2
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "TLS tunnel buffered too many bytes!"
            r4.<init>(r5)
            throw r4
        L8a:
            com.squareup.okhttp.Route r4 = r8.route
            com.squareup.okhttp.Address r4 = r4.address
            com.squareup.okhttp.Authenticator r4 = r4.authenticator
            com.squareup.okhttp.Route r5 = r8.route
            java.net.Proxy r5 = r5.proxy
            com.squareup.okhttp.Request r9 = com.squareup.okhttp.internal.http.OkHeaders.processAuthHeader(r4, r1, r5)
            if (r9 != 0) goto L3b
            java.io.IOException r4 = new java.io.IOException
            java.lang.String r5 = "Failed to authenticate with proxy"
            r4.<init>(r5)
            throw r4
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.Connection.makeTunnel(com.squareup.okhttp.Request, int, int):void");
    }
}
