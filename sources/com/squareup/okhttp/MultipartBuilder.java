package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes.dex */
public final class MultipartBuilder {
    private final String boundary;
    private final List<RequestBody> partBodies;
    private final List<Headers> partHeaders;
    private MediaType type;
    public static final MediaType MIXED = MediaType.parse("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.parse("multipart/alternative");
    public static final MediaType DIGEST = MediaType.parse("multipart/digest");
    public static final MediaType PARALLEL = MediaType.parse("multipart/parallel");
    public static final MediaType FORM = MediaType.parse("multipart/form-data");

    public MultipartBuilder() {
        this(UUID.randomUUID().toString());
    }

    public MultipartBuilder(String boundary) {
        this.type = MIXED;
        this.partHeaders = new ArrayList();
        this.partBodies = new ArrayList();
        this.boundary = boundary;
    }

    public MultipartBuilder type(MediaType type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (!type.type().equals("multipart")) {
            throw new IllegalArgumentException("multipart != " + type);
        }
        this.type = type;
        return this;
    }

    public MultipartBuilder addPart(RequestBody body) {
        return addPart(null, body);
    }

    public MultipartBuilder addPart(Headers headers, RequestBody body) {
        if (body == null) {
            throw new NullPointerException("body == null");
        }
        if (headers != null && headers.get("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (headers != null && headers.get("Content-Length") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        this.partHeaders.add(headers);
        this.partBodies.add(body);
        return this;
    }

    public RequestBody build() {
        if (this.partHeaders.isEmpty()) {
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
        return new MultipartRequestBody(this.type, this.boundary, this.partHeaders, this.partBodies);
    }

    private static final class MultipartRequestBody extends RequestBody {
        private final String boundary;
        private final MediaType contentType;
        private final List<RequestBody> partBodies;
        private final List<Headers> partHeaders;

        public MultipartRequestBody(MediaType type, String boundary, List<Headers> partHeaders, List<RequestBody> partBodies) {
            if (type == null) {
                throw new NullPointerException("type == null");
            }
            this.boundary = boundary;
            this.contentType = MediaType.parse(type + "; boundary=" + boundary);
            this.partHeaders = Util.immutableList(partHeaders);
            this.partBodies = Util.immutableList(partBodies);
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink sink) throws IOException {
            byte[] boundary = this.boundary.getBytes("UTF-8");
            boolean first = true;
            for (int i = 0; i < this.partHeaders.size(); i++) {
                Headers headers = this.partHeaders.get(i);
                RequestBody body = this.partBodies.get(i);
                writeBoundary(sink, boundary, first, false);
                writePart(sink, headers, body);
                first = false;
            }
            writeBoundary(sink, boundary, false, true);
        }

        private static void writeBoundary(BufferedSink sink, byte[] boundary, boolean first, boolean last) throws IOException {
            if (!first) {
                sink.writeUtf8("\r\n");
            }
            sink.writeUtf8("--");
            sink.write(boundary);
            if (last) {
                sink.writeUtf8("--");
            } else {
                sink.writeUtf8("\r\n");
            }
        }

        private void writePart(BufferedSink sink, Headers headers, RequestBody body) throws IOException {
            if (headers != null) {
                for (int i = 0; i < headers.size(); i++) {
                    sink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
                }
            }
            MediaType contentType = body.contentType();
            if (contentType != null) {
                sink.writeUtf8("Content-Type: ").writeUtf8(contentType.toString()).writeUtf8("\r\n");
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                sink.writeUtf8("Content-Length: ").writeUtf8(Long.toString(contentLength)).writeUtf8("\r\n");
            }
            sink.writeUtf8("\r\n");
            body.writeTo(sink);
        }
    }
}
