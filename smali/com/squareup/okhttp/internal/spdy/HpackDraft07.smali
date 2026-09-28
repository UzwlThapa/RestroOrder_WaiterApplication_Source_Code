###### Class com.squareup.okhttp.internal.spdy.HpackDraft07 (com.squareup.okhttp.internal.spdy.HpackDraft07)
.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;,
        Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;
    }
.end annotation


# static fields
.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 46
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v4, "GET"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v4, "POST"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v4, "/"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_PATH:Lokio/ByteString;

    const-string v4, "/index.html"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v4, "http"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v4, "https"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "200"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "204"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "206"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "304"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "400"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "404"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v4, "500"

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "accept-charset"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "accept-encoding"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "accept-language"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "accept-ranges"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "accept"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "access-control-allow-origin"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "age"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "allow"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "authorization"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "cache-control"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-disposition"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-encoding"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-language"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-length"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-location"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-range"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "content-type"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "cookie"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "date"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "etag"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "expect"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "expires"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "from"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "host"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "if-match"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "if-modified-since"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "if-none-match"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "if-range"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "if-unmodified-since"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "last-modified"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "link"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "location"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "max-forwards"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "proxy-authenticate"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "proxy-authorization"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "range"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "referer"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "refresh"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "retry-after"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "server"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "set-cookie"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "strict-transport-security"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "transfer-encoding"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "user-agent"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "vary"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "via"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Header;

    const-string v3, "www-authenticate"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 412
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->nameToFirstIndex()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()[Lcom/squareup/okhttp/internal/spdy/Header;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    return-object v0
.end method

.method static synthetic access$100(Lokio/ByteString;)Lokio/ByteString;
    .registers 2
    .param p0, "x0"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method private static checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 7
    .param p0, "name"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v2

    .local v2, "length":I
    :goto_5
    if-ge v1, v2, :cond_33

    .line 483
    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    .line 484
    .local v0, "c":B
    const/16 v3, 0x41

    if-lt v0, v3, :cond_30

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_30

    .line 485
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 482
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 488
    .end local v0    # "c":B
    :cond_33
    return-object p0
.end method

.method private static nameToFirstIndex()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 416
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lokio/ByteString;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 417
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 418
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 421
    :cond_2a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

###### Class com.squareup.okhttp.internal.spdy.HpackDraft07.Reader (com.squareup.okhttp.internal.spdy.HpackDraft07$Reader)
.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field headerCount:I

.field headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

.field headerTableByteCount:I

.field private maxHeaderTableByteCount:I

.field private maxHeaderTableByteCountSetting:I

.field nextHeaderIndex:I

.field referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ILokio/Source;)V
    .registers 5
    .param p1, "maxHeaderTableByteCountSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 125
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 131
    new-instance v0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 136
    new-instance v0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 137
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 140
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 141
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 142
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    .line 143
    return-void
.end method

.method private adjustHeaderTableByteCount()V
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    if-ge v0, v1, :cond_d

    .line 164
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-nez v0, :cond_e

    .line 165
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    .line 170
    :cond_d
    :goto_d
    return-void

    .line 167
    :cond_e
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    goto :goto_d
.end method

.method private clearHeaderTable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 176
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 177
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 178
    return-void
.end method

.method private clearReferenceSet()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 242
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .registers 9
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_4c

    .line 185
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_8
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 186
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 187
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 188
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 191
    :cond_2b
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 192
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 193
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 197
    .end local v1    # "j":I
    :cond_4c
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 317
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    .line 319
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    goto :goto_12
.end method

.method private headerTableIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 287
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/squareup/okhttp/internal/spdy/Header;

    .prologue
    const/4 v6, -0x1

    .line 329
    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    .line 330
    .local v1, "delta":I
    if-eq p1, v6, :cond_10

    .line 331
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 335
    :cond_10
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-le v1, v4, :cond_1d

    .line 336
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    .line 338
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_1c
    return-void

    .line 343
    :cond_1d
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    sub-int v0, v4, v5

    .line 344
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 346
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_93

    .line 347
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    if-le v4, v5, :cond_78

    .line 348
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lcom/squareup/okhttp/internal/spdy/Header;

    .line 349
    .local v2, "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v6, v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    array-length v4, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_5f

    .line 351
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast v4, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 352
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast v4, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 355
    :cond_5f
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 356
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 357
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 358
    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 360
    .end local v2    # "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_78
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 361
    .restart local p1    # "index":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 362
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    .line 363
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 369
    :goto_8d
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    goto :goto_1c

    .line 365
    :cond_93
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 366
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 367
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    goto :goto_8d
.end method

.method private isStaticHeader(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 265
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int/2addr p1, v2

    .line 266
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2d

    .line 267
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header index too large "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2d
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    aget-object v1, v2, p1

    .line 270
    .local v1, "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-nez v2, :cond_3d

    .line 271
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :goto_3c
    return-void

    .line 273
    .restart local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_3d
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    goto :goto_3c

    .line 276
    .end local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_42
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v0

    .line 277
    .local v0, "headerTableIndex":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 278
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 281
    :cond_5c
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->toggle(I)V

    goto :goto_3c
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 6
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 305
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 306
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 307
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 311
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 312
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 313
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 292
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 293
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 298
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 299
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method


# virtual methods
.method emitReferenceSet()V
    .registers 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-eq v0, v1, :cond_25

    .line 246
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 247
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 250
    :cond_25
    return-void
.end method

.method getAndReset()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 260
    return-object v0
.end method

.method maxHeaderTableByteCount()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    return v0
.end method

.method maxHeaderTableByteCountSetting(I)V
    .registers 3
    .param p1, "newMaxHeaderTableByteCountSetting"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 158
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 159
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    .line 160
    return-void
.end method

.method readByteString()Lokio/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    .line 401
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_27

    const/4 v1, 0x1

    .line 402
    .local v1, "huffmanDecode":Z
    :goto_b
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v2

    .line 404
    .local v2, "length":I
    if-eqz v1, :cond_29

    .line 405
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->get()Lcom/squareup/okhttp/internal/spdy/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 407
    :goto_26
    return-object v3

    .line 401
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_27
    const/4 v1, 0x0

    goto :goto_b

    .line 407
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_29
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_26
.end method

.method readHeaders()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x40

    const/16 v5, 0x10

    const/16 v4, 0xf

    .line 206
    :goto_8
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 207
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 208
    .local v0, "b":I
    if-ne v0, v7, :cond_22

    .line 209
    new-instance v2, Ljava/io/IOException;

    const-string v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_22
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v7, :cond_32

    .line 211
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 212
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readIndexedHeader(I)V

    goto :goto_8

    .line 213
    .end local v1    # "index":I
    :cond_32
    if-ne v0, v6, :cond_38

    .line 214
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_8

    .line 215
    :cond_38
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v6, :cond_48

    .line 216
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 217
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_8

    .line 218
    .end local v1    # "index":I
    :cond_48
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a3

    .line 219
    and-int/lit8 v2, v0, 0x10

    if-ne v2, v5, :cond_73

    .line 220
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_6f

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid header table state change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_6f
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    goto :goto_8

    .line 223
    :cond_73
    invoke-virtual {p0, v0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 224
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-ltz v2, :cond_83

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    if-le v2, v3, :cond_9e

    .line 226
    :cond_83
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid header table byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_9e
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    goto/16 :goto_8

    .line 230
    :cond_a3
    if-eq v0, v5, :cond_a7

    if-nez v0, :cond_ac

    .line 231
    :cond_a7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_8

    .line 233
    :cond_ac
    invoke-virtual {p0, v0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 234
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_8

    .line 237
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_b7
    return-void
.end method

.method readInt(II)I
    .registers 8
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    and-int v1, p1, p2

    .line 378
    .local v1, "prefix":I
    if-ge v1, p2, :cond_5

    .line 395
    .end local v1    # "prefix":I
    :goto_4
    return v1

    .line 383
    .restart local v1    # "prefix":I
    :cond_5
    move v2, p2

    .line 384
    .local v2, "result":I
    const/4 v3, 0x0

    .line 386
    .local v3, "shift":I
    :goto_7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    .line 387
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_16

    .line 388
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 389
    add-int/lit8 v3, v3, 0x7

    goto :goto_7

    .line 391
    :cond_16
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 395
    goto :goto_4
.end method

###### Class com.squareup.okhttp.internal.spdy.HpackDraft07.Writer (com.squareup.okhttp.internal.spdy.HpackDraft07$Writer)
.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .registers 2
    .param p1, "out"    # Lokio/Buffer;

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    .line 429
    return-void
.end method


# virtual methods
.method writeByteString(Lokio/ByteString;)V
    .registers 5
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeInt(III)V

    .line 473
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 474
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v6, 0x0

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_6
    if-ge v0, v2, :cond_4d

    .line 436
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v1

    .line 437
    .local v1, "name":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 438
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_39

    .line 440
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeInt(III)V

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    .line 435
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 443
    :cond_39
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v4, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 444
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    .line 445
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_36

    .line 448
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_4d
    return-void
.end method

.method writeInt(III)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    if-ge p1, p2, :cond_a

    .line 454
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 469
    :goto_9
    return-void

    .line 459
    :cond_a
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 460
    sub-int/2addr p1, p2

    .line 463
    :goto_12
    const/16 v1, 0x80

    if-lt p1, v1, :cond_22

    .line 464
    and-int/lit8 v0, p1, 0x7f

    .line 465
    .local v0, "b":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 466
    ushr-int/lit8 p1, p1, 0x7

    .line 467
    goto :goto_12

    .line 468
    .end local v0    # "b":I
    :cond_22
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_9
.end method
