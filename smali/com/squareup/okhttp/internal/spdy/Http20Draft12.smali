###### Class com.squareup.okhttp.internal.spdy.Http20Draft12 (com.squareup.okhttp.internal.spdy.Http20Draft12)
.class public final Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;,
        Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;,
        Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;,
        Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_SEGMENT:B = 0x2t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PAD_HIGH:B = 0x10t

.field static final FLAG_PAD_LOW:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final MAX_FRAME_SIZE:I = 0x3fff

.field static final TYPE_ALTSVC:B = 0xat

.field static final TYPE_BLOCKED:B = 0xbt

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;

    .line 45
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    return-void
.end method

.method static synthetic access$000()Lokio/ByteString;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->CONNECTION_PREFACE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lokio/BufferedSource;B)S
    .registers 3
    .param p0, "x0"    # Lokio/BufferedSource;
    .param p1, "x1"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->readPadding(Lokio/BufferedSource;B)S

    move-result v0

    return v0
.end method

.method static synthetic access$400(SBS)S
    .registers 4
    .param p0, "x0"    # S
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->lengthWithoutPadding(SBS)S

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(SBS)S
    .registers 7
    .param p0, "length"    # S
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_21

    .line 670
    add-int/lit8 v0, p0, -0x2

    int-to-short p0, v0

    .line 674
    :cond_7
    :goto_7
    if-le p2, p0, :cond_29

    .line 675
    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 671
    :cond_21
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    .line 672
    add-int/lit8 v0, p0, -0x1

    int-to-short p0, v0

    goto :goto_7

    .line 677
    :cond_29
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static readPadding(Lokio/BufferedSource;B)S
    .registers 7
    .param p0, "source"    # Lokio/BufferedSource;
    .param p1, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3fff

    const/4 v4, 0x0

    .line 652
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_14

    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_14

    .line 653
    const-string v1, "PROTOCOL_ERROR FLAG_PAD_HIGH set without FLAG_PAD_LOW"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 655
    :cond_14
    const/4 v0, 0x0

    .line 656
    .local v0, "padding":I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3b

    .line 657
    invoke-interface {p0}, Lokio/BufferedSource;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 661
    :cond_22
    :goto_22
    if-le v0, v3, :cond_46

    .line 662
    const-string v1, "PROTOCOL_ERROR padding > %d: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 658
    :cond_3b
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_22

    .line 659
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    goto :goto_22

    .line 664
    :cond_46
    int-to-short v1, v0

    return v1
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public maxFrameSize()I
    .registers 2

    .prologue
    .line 87
    const/16 v0, 0x3fff

    return v0
.end method

.method public newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;
    .registers 5
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 79
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;-><init>(Lokio/BufferedSource;IZ)V

    return-object v0
.end method

.method public newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;
    .registers 4
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 83
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;-><init>(Lokio/BufferedSink;Z)V

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.spdy.Http20Draft12.ContinuationSource (com.squareup.okhttp.internal.spdy.Http20Draft12$ContinuationSource)
.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:S

.field length:S

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 2
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    .line 611
    return-void
.end method

.method private readContinuationHeader()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 636
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 637
    .local v0, "previousStreamId":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 638
    .local v2, "w1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 639
    .local v3, "w2":I
    const/high16 v4, 0x3fff0000    # 1.9921875f

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 640
    const v4, 0xff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v1, v4

    .line 641
    .local v1, "type":B
    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 642
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v4

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    iget-short v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v7, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v9, v5, v6, v1, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 643
    :cond_41
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 644
    iget-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    iget-short v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    invoke-static {v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result v4

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 645
    const v4, 0x7fffffff

    and-int/2addr v4, v3

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 646
    const/16 v4, 0x9

    if-eq v1, v4, :cond_72

    const-string v4, "%s != TYPE_CONTINUATION"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 647
    :cond_72
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    if-eq v4, v0, :cond_7f

    const-string v4, "TYPE_CONTINUATION streamId changed"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 648
    :cond_7f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 614
    :goto_2
    iget-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    if-nez v4, :cond_1d

    .line 615
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->skip(J)V

    .line 616
    const/4 v4, 0x0

    iput-short v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 617
    iget-byte v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_19

    move-wide v0, v2

    .line 625
    :goto_18
    return-wide v0

    .line 618
    :cond_19
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->readContinuationHeader()V

    goto :goto_2

    .line 622
    :cond_1d
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    int-to-long v6, v5

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v0

    .line 623
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_30

    move-wide v0, v2

    goto :goto_18

    .line 624
    :cond_30
    iget-short v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    goto :goto_18
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.spdy.Http20Draft12.FrameLogger (com.squareup.okhttp.internal.spdy.Http20Draft12$FrameLogger)
.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;
.super Ljava/lang/Object;
.source "Http20Draft12.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .prologue
    .line 737
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "DATA"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "HEADERS"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "PRIORITY"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "RST_STREAM"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "SETTINGS"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string v19, "PUSH_PROMISE"

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string v19, "PING"

    aput-object v19, v17, v18

    const/16 v18, 0x7

    const-string v19, "GOAWAY"

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, "WINDOW_UPDATE"

    aput-object v19, v17, v18

    const/16 v18, 0x9

    const-string v19, "CONTINUATION"

    aput-object v19, v17, v18

    const/16 v18, 0xa

    const-string v19, "ALTSVC"

    aput-object v19, v17, v18

    const/16 v18, 0xb

    const-string v19, "BLOCKED"

    aput-object v19, v17, v18

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 756
    const/16 v17, 0x40

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 757
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 760
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_67
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_97

    .line 761
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    const-string v18, "%8s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x20

    const/16 v20, 0x30

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v6

    .line 760
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 764
    :cond_97
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    .line 765
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x1

    const-string v19, "END_STREAM"

    aput-object v19, v17, v18

    .line 766
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x2

    const-string v19, "END_SEGMENT"

    aput-object v19, v17, v18

    .line 767
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x3

    const-string v19, "END_STREAM|END_SEGMENT"

    aput-object v19, v17, v18

    .line 768
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [I

    fill-array-data v14, :array_1d4

    .line 771
    .local v14, "prefixFlags":[I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x8

    const-string v19, "PAD_LOW"

    aput-object v19, v17, v18

    .line 772
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x18

    const-string v19, "PAD_LOW|PAD_HIGH"

    aput-object v19, v17, v18

    .line 773
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1de

    .line 775
    .local v16, "suffixFlags":[I
    move-object v1, v14

    .local v1, "arr$":[I
    array-length v10, v1

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .local v8, "i$":I
    :goto_df
    if-ge v8, v10, :cond_117

    aget v13, v1, v8

    .line 776
    .local v13, "prefixFlag":I
    move-object/from16 v2, v16

    .local v2, "arr$":[I
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_e7
    if-ge v7, v11, :cond_113

    aget v15, v2, v7

    .line 777
    .local v15, "suffixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 776
    add-int/lit8 v7, v7, 0x1

    goto :goto_e7

    .line 775
    .end local v15    # "suffixFlag":I
    :cond_113
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_df

    .line 781
    .end local v2    # "arr$":[I
    .end local v11    # "len$":I
    .end local v13    # "prefixFlag":I
    :cond_117
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x4

    const-string v19, "END_HEADERS"

    aput-object v19, v17, v18

    .line 782
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x20

    const-string v19, "PRIORITY"

    aput-object v19, v17, v18

    .line 783
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v18, 0x24

    const-string v19, "END_HEADERS|PRIORITY"

    aput-object v19, v17, v18

    .line 784
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [I

    fill-array-data v5, :array_1e6

    .line 787
    .local v5, "frameFlags":[I
    move-object v1, v5

    .restart local v1    # "arr$":[I
    array-length v10, v1

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v9, v7

    .end local v1    # "arr$":[I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_13c
    if-ge v9, v10, :cond_1b5

    aget v4, v1, v9

    .line 788
    .local v4, "frameFlag":I
    move-object v2, v14

    .restart local v2    # "arr$":[I
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v7, 0x0

    .end local v9    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v2    # "arr$":[I
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .restart local v8    # "i$":I
    :goto_144
    if-ge v8, v11, :cond_1b1

    aget v13, v2, v8

    .line 789
    .restart local v13    # "prefixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 790
    move-object/from16 v3, v16

    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_171
    if-ge v7, v12, :cond_1ad

    aget v15, v3, v7

    .line 791
    .restart local v15    # "suffixFlag":I
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v18, v13, v4

    or-int v18, v18, v15

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x7c

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v20, v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 790
    add-int/lit8 v7, v7, 0x1

    goto :goto_171

    .line 788
    .end local v15    # "suffixFlag":I
    :cond_1ad
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_144

    .line 787
    .end local v3    # "arr$":[I
    .end local v12    # "len$":I
    .end local v13    # "prefixFlag":I
    :cond_1b1
    add-int/lit8 v7, v9, 0x1

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v9, v7

    .end local v7    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_13c

    .line 797
    .end local v4    # "frameFlag":I
    :cond_1b5
    const/4 v6, 0x0

    :goto_1b6
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1d2

    .line 798
    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v17, v17, v6

    if-nez v17, :cond_1cf

    sget-object v17, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    sget-object v18, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v18, v18, v6

    aput-object v18, v17, v6

    .line 797
    :cond_1cf
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b6

    .line 800
    :cond_1d2
    return-void

    .line 768
    nop

    :array_1d4
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 773
    :array_1de
    .array-data 4
        0x8
        0x18
    .end array-data

    .line 784
    :array_1e6
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .prologue
    .line 713
    if-nez p1, :cond_5

    const-string v1, ""

    .line 733
    :goto_4
    return-object v1

    .line 714
    :cond_5
    packed-switch p0, :pswitch_data_48

    .line 726
    :pswitch_8
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_31

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 728
    .local v0, "result":Ljava/lang/String;
    :goto_11
    const/4 v1, 0x5

    if-ne p0, v1, :cond_36

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_36

    .line 729
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 717
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_21
    const/4 v1, 0x1

    if-ne p1, v1, :cond_27

    const-string v1, "ACK"

    goto :goto_4

    :cond_27
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_4

    .line 724
    :pswitch_2c
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_4

    .line 726
    :cond_31
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v1, p1

    goto :goto_11

    .line 730
    .restart local v0    # "result":Ljava/lang/String;
    :cond_36
    if-nez p0, :cond_45

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_45

    .line 731
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_45
    move-object v1, v0

    .line 733
    goto :goto_4

    .line 714
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_2c
        :pswitch_21
        :pswitch_8
        :pswitch_21
        :pswitch_2c
        :pswitch_2c
        :pswitch_8
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .registers 12
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 701
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_32

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->TYPES:[Ljava/lang/String;

    aget-object v1, v2, p3

    .line 702
    .local v1, "formattedType":Ljava/lang/String;
    :goto_b
    invoke-static {p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "formattedFlags":Ljava/lang/String;
    const-string v3, "%s 0x%08x %5d %-13s %s"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p0, :cond_41

    const-string v2, "<<"

    :goto_18
    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v2, 0x4

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 701
    .end local v0    # "formattedFlags":Ljava/lang/String;
    .end local v1    # "formattedType":Ljava/lang/String;
    :cond_32
    const-string v2, "0x%02x"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 703
    .restart local v0    # "formattedFlags":Ljava/lang/String;
    .restart local v1    # "formattedType":Ljava/lang/String;
    :cond_41
    const-string v2, ">>"

    goto :goto_18
.end method

###### Class com.squareup.okhttp.internal.spdy.Http20Draft12.Reader (com.squareup.okhttp.internal.spdy.Http20Draft12$Reader)
.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .registers 6
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    .line 100
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    .line 101
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    .line 102
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    .line 103
    return-void
.end method

.method private readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 19
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v12, 0xffffffffL

    and-long v6, v0, v12

    .line 356
    .local v6, "maxAge":J
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int v5, v0, v1

    .line 357
    .local v5, "port":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v10, v0, 0xff

    .line 359
    .local v10, "protocolLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v12, v10

    invoke-interface {v0, v12, v13}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    .line 360
    .local v3, "protocol":Lokio/ByteString;
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 361
    .local v8, "hostLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v12, v8

    invoke-interface {v0, v12, v13}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "host":Ljava/lang/String;
    add-int/lit8 v0, p2, -0x9

    sub-int/2addr v0, v10

    sub-int v9, v0, v8

    .line 363
    .local v9, "originLength":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v12, v9

    invoke-interface {v0, v12, v13}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "origin":Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p4

    .line 364
    invoke-interface/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V

    .line 365
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 220
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_16

    move v1, v0

    .line 221
    .local v1, "inFinished":Z
    :goto_7
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_18

    .line 222
    .local v0, "gzipped":Z
    :goto_b
    if-eqz v0, :cond_1a

    .line 223
    const-string v4, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .end local v0    # "gzipped":Z
    .end local v1    # "inFinished":Z
    :cond_16
    move v1, v3

    .line 220
    goto :goto_7

    .restart local v1    # "inFinished":Z
    :cond_18
    move v0, v3

    .line 221
    goto :goto_b

    .line 226
    .restart local v0    # "gzipped":Z
    :cond_1a
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v3, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v2

    .line 227
    .local v2, "padding":S
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 229
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v1, p4, v3, p2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 230
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 231
    return-void
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 14
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 329
    const/16 v5, 0x8

    if-ge p2, v5, :cond_15

    const-string v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 330
    :cond_15
    if-eqz p4, :cond_20

    const-string v5, "TYPE_GOAWAY streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 331
    :cond_20
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 332
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 333
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 334
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v1

    .line 335
    .local v1, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v1, :cond_43

    .line 336
    const-string v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 338
    :cond_43
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 339
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_4e

    .line 340
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 342
    :cond_4e
    invoke-interface {p1, v3, v1, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    .line 343
    return-void
.end method

.method private readHeaderBlock(SSBI)Ljava/util/List;
    .registers 7
    .param p1, "length"    # S
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSBI)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p1, v1, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->left:S

    iput-short p1, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->length:S

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->continuation:Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$ContinuationSource;->streamId:I

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readHeaders()V

    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emitReferenceSet()V

    .line 214
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getAndReset()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p4, :cond_c

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 187
    :cond_c
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    .line 189
    .local v2, "endStream":Z
    :goto_11
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v7

    .line 191
    .local v7, "padding":S
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_21

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 v0, p2, -0x5

    int-to-short p2, v0

    .line 196
    :cond_21
    invoke-static {p2, p3, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$400(SBS)S

    move-result p2

    .line 198
    invoke-direct {p0, p2, v7, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v4, -0x1

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    .line 201
    return-void

    .end local v2    # "endStream":Z
    .end local v5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    .end local v7    # "padding":S
    :cond_32
    move v2, v1

    .line 187
    goto :goto_11
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 12
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 319
    const/16 v4, 0x8

    if-eq p2, v4, :cond_15

    const-string v4, "TYPE_PING length != 8: %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 320
    :cond_15
    if-eqz p4, :cond_20

    const-string v4, "TYPE_PING streamId != 0"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 321
    :cond_20
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 322
    .local v1, "payload1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 323
    .local v2, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_34

    .line 324
    .local v0, "ack":Z
    :goto_30
    invoke-interface {p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 325
    return-void

    .end local v0    # "ack":Z
    :cond_34
    move v0, v3

    .line 323
    goto :goto_30
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V
    .registers 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 242
    .local v2, "w1":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_1f

    const/4 v0, 0x1

    .line 243
    .local v0, "exclusive":Z
    :goto_c
    const v4, 0x7fffffff

    and-int v1, v2, v4

    .line 244
    .local v1, "streamDependency":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v4, 0x1

    .line 245
    .local v3, "weight":I
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->priority(IIIZ)V

    .line 246
    return-void

    .line 242
    .end local v0    # "exclusive":Z
    .end local v1    # "streamDependency":I
    .end local v3    # "weight":I
    :cond_1f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x5

    if-eq p2, v0, :cond_14

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_14
    if-nez p4, :cond_1f

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 237
    :cond_1f
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;I)V

    .line 238
    return-void
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    if-nez p4, :cond_c

    .line 308
    const-string v3, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 310
    :cond_c
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {v3, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$300(Lokio/BufferedSource;B)S

    move-result v1

    .line 311
    .local v1, "padding":S
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 312
    .local v2, "promisedStreamId":I
    add-int/lit8 v3, p2, -0x4

    int-to-short p2, v3

    .line 313
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaderBlock(SSBI)Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    invoke-interface {p1, p4, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 315
    return-void
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 250
    const/4 v2, 0x4

    if-eq p2, v2, :cond_14

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 251
    :cond_14
    if-nez p4, :cond_1f

    const-string v2, "TYPE_RST_STREAM streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 252
    :cond_1f
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 253
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 254
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_3a

    .line 255
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 257
    :cond_3a
    invoke-interface {p1, p4, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 258
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 262
    if-eqz p4, :cond_d

    const-string v4, "TYPE_SETTINGS streamId != 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 263
    :cond_d
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_20

    .line 264
    if-eqz p2, :cond_1c

    const-string v4, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 265
    :cond_1c
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ackSettings()V

    .line 303
    :cond_1f
    :goto_1f
    return-void

    .line 269
    :cond_20
    rem-int/lit8 v4, p2, 0x5

    if-eqz v4, :cond_33

    const-string v4, "TYPE_SETTINGS length %% 5 != 0: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 270
    :cond_33
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 271
    .local v2, "settings":Lcom/squareup/okhttp/internal/spdy/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, p2, :cond_79

    .line 272
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v1

    .line 273
    .local v1, "id":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 275
    .local v3, "value":I
    packed-switch v1, :pswitch_data_8c

    .line 295
    const-string v4, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 279
    :pswitch_59
    if-eqz v3, :cond_67

    if-eq v3, v5, :cond_67

    .line 280
    const-string v4, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 284
    :pswitch_66
    const/4 v1, 0x4

    .line 297
    :cond_67
    :pswitch_67
    invoke-virtual {v2, v1, v7, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 271
    add-int/lit8 v0, v0, 0x5

    goto :goto_39

    .line 287
    :pswitch_6d
    const/4 v1, 0x7

    .line 288
    if-gez v3, :cond_67

    .line 289
    const-string v4, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 299
    .end local v1    # "id":I
    .end local v3    # "value":I
    :cond_79
    invoke-interface {p1, v7, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 300
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v4

    if-ltz v4, :cond_1f

    .line 301
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->hpackReader:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;->getHeaderTableSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting(I)V

    goto :goto_1f

    .line 275
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_67
        :pswitch_59
        :pswitch_66
        :pswitch_6d
        :pswitch_67
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "length"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    const/4 v2, 0x4

    if-eq p2, v2, :cond_14

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 348
    :cond_14
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long v0, v2, v4

    .line 349
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_35

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 350
    :cond_35
    invoke-interface {p1, p4, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    .line 351
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 369
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    :try_start_2
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 119
    .local v5, "w1":I
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_4c

    move-result v6

    .line 125
    .local v6, "w2":I
    const/high16 v9, 0x3fff0000    # 1.9921875f

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x10

    int-to-short v2, v9

    .line 126
    .local v2, "length":S
    const v9, 0xff00

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v4, v9

    .line 127
    .local v4, "type":B
    and-int/lit16 v9, v5, 0xff

    int-to-byte v1, v9

    .line 129
    .local v1, "flags":B
    const v9, 0x7fffffff

    and-int v3, v6, v9

    .line 130
    .local v3, "streamId":I
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v9

    invoke-static {v7, v3, v2, v4, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    :cond_3a
    packed-switch v4, :pswitch_data_88

    .line 178
    :pswitch_3d
    const-string v9, "PROTOCOL_ERROR: unknown frame type %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 120
    .end local v1    # "flags":B
    .end local v2    # "length":S
    .end local v3    # "streamId":I
    .end local v4    # "type":B
    .end local v5    # "w1":I
    .end local v6    # "w2":I
    :catch_4c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v7, v8

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4e
    :goto_4e
    return v7

    .line 134
    .restart local v1    # "flags":B
    .restart local v2    # "length":S
    .restart local v3    # "streamId":I
    .restart local v4    # "type":B
    .restart local v5    # "w1":I
    .restart local v6    # "w2":I
    :pswitch_4f
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readData(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 138
    :pswitch_53
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 142
    :pswitch_57
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPriority(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 146
    :pswitch_5b
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 150
    :pswitch_5f
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 154
    :pswitch_63
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 158
    :pswitch_67
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 162
    :pswitch_6b
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 166
    :pswitch_6f
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 170
    :pswitch_73
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->readAlternateService(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;SBI)V

    goto :goto_4e

    .line 174
    :pswitch_77
    if-eqz v2, :cond_4e

    const-string v9, "TYPE_BLOCKED length != 0: %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 132
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
        :pswitch_3d
        :pswitch_73
        :pswitch_77
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->client:Z

    if-eqz v1, :cond_7

    .line 112
    :cond_6
    return-void

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 108
    .local v0, "connectionPreface":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    :cond_37
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 110
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

###### Class com.squareup.okhttp.internal.spdy.Http20Draft12.Writer (com.squareup.okhttp.internal.spdy.Http20Draft12$Writer)
.class final Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;
.super Ljava/lang/Object;
.source "Http20Draft12.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http20Draft12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field private final hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 5
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    .line 381
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->client:Z

    .line 382
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    .line 383
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    .line 384
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 465
    :goto_2
    cmp-long v1, p2, v6

    if-lez v1, :cond_24

    .line 466
    const-wide/16 v2, 0x3fff

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 467
    .local v0, "length":I
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 468
    const/16 v2, 0x9

    cmp-long v1, p2, v6

    if-nez v1, :cond_22

    const/4 v1, 0x4

    :goto_16
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 469
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_2

    .line 468
    :cond_22
    const/4 v1, 0x0

    goto :goto_16

    .line 471
    .end local v0    # "length":I
    :cond_24
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_10

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 393
    :cond_10
    const/4 v1, 0x0

    .line 394
    .local v1, "length":I
    const/4 v3, 0x4

    .line 395
    .local v3, "type":B
    const/4 v0, 0x1

    .line 396
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 397
    .local v2, "streamId":I
    :try_start_14
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 398
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_d

    .line 399
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    .line 572
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 573
    monitor-exit p0

    return-void

    .line 571
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->client:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    if-nez v0, :cond_16

    .line 409
    :goto_14
    monitor-exit p0

    return-void

    .line 404
    :cond_16
    :try_start_16
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 405
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 407
    :cond_3d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 408
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_4f
    .catchall {:try_start_16 .. :try_end_4f} :catchall_d

    goto :goto_14
.end method

.method public declared-synchronized data(ZILokio/Buffer;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->data(ZILokio/Buffer;I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 489
    monitor-exit p0

    return-void

    .line 488
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 494
    :cond_10
    const/4 v0, 0x0

    .line 495
    .local v0, "flags":B
    if-eqz p1, :cond_15

    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 496
    :cond_15
    :try_start_15
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_d

    .line 497
    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 502
    if-lez p4, :cond_c

    .line 503
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 505
    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 389
    monitor-exit p0

    return-void
.end method

.method frameHeader(IIBB)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3fff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 577
    :cond_1b
    if-le p2, v2, :cond_33

    .line 578
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 580
    :cond_33
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_47

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 581
    :cond_47
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 582
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 583
    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_10

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 541
    :cond_10
    :try_start_10
    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    const-string v4, "errorCode.httpCode == -1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 542
    :cond_1f
    array-length v4, p3

    add-int/lit8 v1, v4, 0x8

    .line 543
    .local v1, "length":I
    const/4 v3, 0x7

    .line 544
    .local v3, "type":B
    const/4 v0, 0x0

    .line 545
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 546
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 547
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 548
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget v5, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 549
    array-length v4, p3

    if-lez v4, :cond_3c

    .line 550
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 552
    :cond_3c
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_d

    .line 553
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    .line 429
    monitor-exit p0

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .registers 14
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_c
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1e

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 451
    :cond_1e
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    invoke-virtual {v5, p3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeHeaders(Ljava/util/List;)V

    .line 453
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 454
    .local v0, "byteCount":J
    const-wide/16 v6, 0x3fff

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 455
    .local v3, "length":I
    const/4 v4, 0x1

    .line 456
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_53

    const/4 v2, 0x4

    .line 457
    .local v2, "flags":B
    :goto_37
    if-eqz p1, :cond_3c

    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 458
    :cond_3c
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 459
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 461
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_52

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p2, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->writeContinuationFrames(IJ)V

    .line 462
    :cond_52
    return-void

    .line 456
    .end local v2    # "flags":B
    :cond_53
    const/4 v2, 0x0

    goto :goto_37
.end method

.method public declared-synchronized ping(ZII)V
    .registers 10
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v4, :cond_10

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 528
    :cond_10
    const/16 v1, 0x8

    .line 529
    .local v1, "length":I
    const/4 v3, 0x6

    .line 530
    .local v3, "type":B
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    .line 531
    .local v0, "flags":B
    :goto_16
    const/4 v2, 0x0

    .line 532
    .local v2, "streamId":I
    :try_start_17
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 533
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 534
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 535
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_d

    .line 536
    monitor-exit p0

    return-void

    .line 530
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_2b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v5, :cond_10

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 434
    :cond_10
    :try_start_10
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_22

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 435
    :cond_22
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;

    invoke-virtual {v5, p3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeHeaders(Ljava/util/List;)V

    .line 437
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 438
    .local v0, "byteCount":J
    const-wide/16 v6, 0x3ffb

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 439
    .local v3, "length":I
    const/4 v4, 0x5

    .line 440
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_5e

    const/4 v2, 0x4

    .line 441
    .local v2, "flags":B
    :goto_3b
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p0, p1, v5, v4, v2}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 442
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 443
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 445
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_5c

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p1, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->writeContinuationFrames(IJ)V
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_d

    .line 446
    :cond_5c
    monitor-exit p0

    return-void

    .line 440
    .end local v2    # "flags":B
    :cond_5e
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 476
    :cond_10
    :try_start_10
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 478
    :cond_1b
    const/4 v1, 0x4

    .line 479
    .local v1, "length":I
    const/4 v2, 0x3

    .line 480
    .local v2, "type":B
    const/4 v0, 0x0

    .line 481
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 482
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 483
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    .line 484
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .registers 10
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/io/IOException;

    const-string v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v6

    monitor-exit p0

    throw v6

    .line 509
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/Settings;->size()I

    move-result v6

    mul-int/lit8 v3, v6, 0x5

    .line 510
    .local v3, "length":I
    const/4 v5, 0x4

    .line 511
    .local v5, "type":B
    const/4 v0, 0x0

    .line 512
    .local v0, "flags":B
    const/4 v4, 0x0

    .line 513
    .local v4, "streamId":I
    invoke-virtual {p0, v4, v3, v5, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    const/16 v6, 0xa

    if-ge v1, v6, :cond_43

    .line 515
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 514
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 516
    :cond_2a
    move v2, v1

    .line 517
    .local v2, "id":I
    const/4 v6, 0x4

    if-ne v2, v6, :cond_3e

    const/4 v2, 0x3

    .line 519
    :cond_2f
    :goto_2f
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 520
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    goto :goto_27

    .line 518
    :cond_3e
    const/4 v6, 0x7

    if-ne v2, v6, :cond_2f

    const/4 v2, 0x4

    goto :goto_2f

    .line 522
    .end local v2    # "id":I
    :cond_43
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6}, Lokio/BufferedSink;->flush()V
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_d

    .line 523
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 423
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    if-eqz p2, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 415
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_18
    invoke-virtual {p0, p1, p3, p5}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->headers(ZILjava/util/List;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_9

    .line 417
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->closed:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 558
    :cond_10
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1d

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2e

    .line 559
    :cond_1d
    :try_start_1d
    const-string v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 562
    :cond_2e
    const/4 v1, 0x4

    .line 563
    .local v1, "length":I
    const/16 v2, 0x8

    .line 564
    .local v2, "type":B
    const/4 v0, 0x0

    .line 565
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->frameHeader(IIBB)V

    .line 566
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 567
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http20Draft12$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_d

    .line 568
    monitor-exit p0

    return-void
.end method
