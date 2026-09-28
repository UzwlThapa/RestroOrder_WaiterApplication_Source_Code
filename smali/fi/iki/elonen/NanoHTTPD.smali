###### Class fi.iki.elonen.NanoHTTPD (fi.iki.elonen.NanoHTTPD)
.class public abstract Lfi/iki/elonen/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$1;,
        Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$TempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$TempFile;,
        Lfi/iki/elonen/NanoHTTPD$ServerRunnable;,
        Lfi/iki/elonen/NanoHTTPD$ResponseException;,
        Lfi/iki/elonen/NanoHTTPD$Response;,
        Lfi/iki/elonen/NanoHTTPD$Method;,
        Lfi/iki/elonen/NanoHTTPD$IHTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$HTTPSession;,
        Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;,
        Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;,
        Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;,
        Lfi/iki/elonen/NanoHTTPD$CookieHandler;,
        Lfi/iki/elonen/NanoHTTPD$Cookie;,
        Lfi/iki/elonen/NanoHTTPD$ClientHandler;,
        Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
    }
.end annotation


# static fields
.field private static final BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOUNDARY_REGEX:Ljava/lang/String; = "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_REGEX:Ljava/lang/String; = "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_ATTRIBUTE_REGEX:Ljava/lang/String; = "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_DISPOSITION_REGEX:Ljava/lang/String; = "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONTENT_TYPE_REGEX:Ljava/lang/String; = "([ |\t]*content-type[ |\t]*:)(.*)"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field protected static MIME_TYPES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388


# instance fields
.field protected asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

.field private final hostname:Ljava/lang/String;

.field private final myPort:I

.field private volatile myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;

.field private serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

.field private tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 472
    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 476
    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    .line 523
    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 527
    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    .line 531
    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    .line 1658
    const-class v0, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "port"    # I

    .prologue
    .line 1806
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 1807
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 1821
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    .line 1822
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    .line 1823
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V

    .line 1824
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;-><init>()V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V

    .line 1825
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 148
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 148
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_DISPOSITION_ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 148
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 148
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lfi/iki/elonen/NanoHTTPD;)I
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD;

    .prologue
    .line 148
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD;->myPort:I

    return v0
.end method

.method protected static decodeParameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1889
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1890
    .local v1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_5e

    .line 1891
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "&"

    invoke-direct {v5, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    .local v5, "st":Ljava/util/StringTokenizer;
    :cond_e
    :goto_e
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1893
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1894
    .local v0, "e":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1895
    .local v4, "sep":I
    if-ltz v4, :cond_53

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1896
    .local v2, "propertyName":Ljava/lang/String;
    :goto_2d
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 1897
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_3b
    if-ltz v4, :cond_5c

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1900
    .local v3, "propertyValue":Ljava/lang/String;
    :goto_47
    if-eqz v3, :cond_e

    .line 1901
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1895
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/String;
    :cond_53
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 1899
    .restart local v2    # "propertyName":Ljava/lang/String;
    :cond_5c
    const/4 v3, 0x0

    goto :goto_47

    .line 1905
    .end local v0    # "e":Ljava/lang/String;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v4    # "sep":I
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_5e
    return-object v1
.end method

.method protected static decodeParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1872
    .local p0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected static decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1917
    const/4 v0, 0x0

    .line 1919
    .local v0, "decoded":Ljava/lang/String;
    :try_start_1
    const-string v2, "UTF8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 1923
    :goto_7
    return-object v0

    .line 1920
    :catch_8
    move-exception v1

    .line 1921
    .local v1, "ignored":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Encoding not supported, ignored"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 1756
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1757
    .local v0, "dot":I
    const/4 v1, 0x0

    .line 1758
    .local v1, "mime":Ljava/lang/String;
    if-ltz v0, :cond_1d

    .line 1759
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->mimeTypes()Ljava/util/Map;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mime":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1761
    .restart local v1    # "mime":Ljava/lang/String;
    :cond_1d
    if-nez v1, :cond_21

    const-string v1, "application/octet-stream"

    .end local v1    # "mime":Ljava/lang/String;
    :cond_21
    return-object v1
.end method

.method private static loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V
    .registers 11
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v5, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1680
    .local v2, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1681
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 1682
    .local v4, "url":Ljava/net/URL;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_2e

    .line 1683
    .local v1, "properties":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 1685
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_1c
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1686
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_4a
    .catchall {:try_start_1c .. :try_end_27} :catchall_69

    .line 1690
    :try_start_27
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 1692
    :goto_2a
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2d} :catch_2e

    goto :goto_a

    .line 1694
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :catch_2e
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no mime types available at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1697
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    return-void

    .line 1687
    .restart local v1    # "properties":Ljava/util/Properties;
    .restart local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v3    # "stream":Ljava/io/InputStream;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_4a
    move-exception v0

    .line 1688
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4b
    sget-object v5, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not load mimetypes from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_69

    .line 1690
    :try_start_65
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    goto :goto_2a

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v5

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    throw v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_2e
.end method

.method public static makeSSLSocketFactory(Ljava/lang/String;[C)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 8
    .param p0, "keyAndTrustStoreClasspathPath"    # Ljava/lang/String;
    .param p1, "passphrase"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1737
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 1738
    .local v2, "keystore":Ljava/security/KeyStore;
    const-class v4, Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1739
    .local v3, "keystoreStream":Ljava/io/InputStream;
    invoke-virtual {v2, v3, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1740
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 1741
    .local v1, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v1, v2, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1742
    invoke-static {v2, v1}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v4

    return-object v4

    .line 1743
    .end local v1    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    .end local v2    # "keystore":Ljava/security/KeyStore;
    .end local v3    # "keystoreStream":Ljava/io/InputStream;
    :catch_21
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;Ljavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 5
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "loadedKeyFactory"    # Ljavax/net/ssl/KeyManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1725
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0, v1}, Lfi/iki/elonen/NanoHTTPD;->makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 1726
    :catch_9
    move-exception v0

    .line 1727
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeSSLSocketFactory(Ljava/security/KeyStore;[Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 8
    .param p0, "loadedKeyStore"    # Ljava/security/KeyStore;
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1705
    const/4 v2, 0x0

    .line 1707
    .local v2, "res":Ljavax/net/ssl/SSLServerSocketFactory;
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 1708
    .local v3, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1709
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1710
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1711
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v2

    .line 1715
    return-object v2

    .line 1712
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v3    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1f
    move-exception v1

    .line 1713
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static mimeTypes()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1666
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    if-nez v0, :cond_2a

    .line 1667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    .line 1668
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/default-mimetypes.properties"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1669
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    const-string v1, "META-INF/nanohttpd/mimetypes.properties"

    invoke-static {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->loadMimeTypes(Ljava/util/Map;Ljava/lang/String;)V

    .line 1670
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1671
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "no mime types found in the classpath! please provide mimetypes.properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1674
    :cond_2a
    sget-object v0, Lfi/iki/elonen/NanoHTTPD;->MIME_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method public static newChunkedResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 9
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;

    .prologue
    .line 1970
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 12
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/InputStream;
    .param p3, "totalBytes"    # J

    .prologue
    .line 1977
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 9
    .param p0, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1984
    if-nez p2, :cond_11

    .line 1985
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v5, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x0

    invoke-static {p0, p1, v2, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    .line 1994
    :goto_10
    return-object v2

    .line 1989
    :cond_11
    :try_start_11
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_16} :catch_23

    move-result-object v0

    .line 1994
    .local v0, "bytes":[B
    :goto_17
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v3, v0

    int-to-long v4, v3

    invoke-static {p0, p1, v2, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    goto :goto_10

    .line 1990
    .end local v0    # "bytes":[B
    :catch_23
    move-exception v1

    .line 1991
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "encoding problem, responding nothing"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1992
    new-array v0, v5, [B

    .restart local v0    # "bytes":[B
    goto :goto_17
.end method

.method public static newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2002
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private static final safeClose(Ljava/lang/Object;)V
    .registers 5
    .param p0, "closeable"    # Ljava/lang/Object;

    .prologue
    .line 1766
    if-eqz p0, :cond_b

    .line 1767
    :try_start_2
    instance-of v1, p0, Ljava/io/Closeable;

    if-eqz v1, :cond_c

    .line 1768
    check-cast p0, Ljava/io/Closeable;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 1780
    .local v0, "e":Ljava/io/IOException;
    .restart local p0    # "closeable":Ljava/lang/Object;
    :cond_b
    :goto_b
    return-void

    .line 1769
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    instance-of v1, p0, Ljava/net/Socket;

    if-eqz v1, :cond_21

    .line 1770
    check-cast p0, Ljava/net/Socket;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_b

    .line 1777
    .restart local p0    # "closeable":Ljava/lang/Object;
    :catch_16
    move-exception v0

    .line 1778
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not close"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1771
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    :try_start_21
    instance-of v1, p0, Ljava/net/ServerSocket;

    if-eqz v1, :cond_2b

    .line 1772
    check-cast p0, Ljava/net/ServerSocket;

    .end local p0    # "closeable":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_b

    .line 1774
    .restart local p0    # "closeable":Ljava/lang/Object;
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown object to close"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_33} :catch_16
.end method


# virtual methods
.method public declared-synchronized closeAllConnections()V
    .registers 2

    .prologue
    .line 1831
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->stop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1832
    monitor-exit p0

    return-void

    .line 1831
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    .registers 5
    .param p1, "finalAccept"    # Ljava/net/Socket;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 1845
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lfi/iki/elonen/NanoHTTPD$1;)V

    return-object v0
.end method

.method protected createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 1857
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;-><init>(Lfi/iki/elonen/NanoHTTPD;ILfi/iki/elonen/NanoHTTPD$1;)V

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1952
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public final getListeningPort()I
    .registers 2

    .prologue
    .line 1936
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_5
.end method

.method public getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
    .registers 2

    .prologue
    .line 1944
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    return-object v0
.end method

.method public getTempFileManagerFactory()Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
    .registers 2

    .prologue
    .line 1956
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    return-object v0
.end method

.method public final isAlive()Z
    .registers 2

    .prologue
    .line 1940
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->wasStarted()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public makeSecure(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .registers 4
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .prologue
    .line 1963
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;

    invoke-direct {v0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;-><init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 1964
    return-void
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 11
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .prologue
    .line 2016
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2017
    .local v5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v2

    .line 2018
    .local v2, "method":Lfi/iki/elonen/NanoHTTPD$Method;
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0, v2}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2020
    :cond_19
    :try_start_19
    invoke-interface {p1, v5}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_37
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_19 .. :try_end_1c} :catch_58

    .line 2028
    :cond_1c
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v4

    .line 2029
    .local v4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getQueryParameterString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .end local v4    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_36
    return-object v0

    .line 2021
    :catch_37
    move-exception v6

    .line 2022
    .local v6, "ioe":Ljava/io/IOException;
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_36

    .line 2023
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_58
    move-exception v7

    .line 2024
    .local v7, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    invoke-virtual {v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v7}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_36
.end method

.method public serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Lfi/iki/elonen/NanoHTTPD$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2053
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Not Found"

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncRunner(Lfi/iki/elonen/NanoHTTPD$AsyncRunner;)V
    .registers 2
    .param p1, "asyncRunner"    # Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .prologue
    .line 2063
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    .line 2064
    return-void
.end method

.method public setServerSocketFactory(Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;)V
    .registers 2
    .param p1, "serverSocketFactory"    # Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .prologue
    .line 1948
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->serverSocketFactory:Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    .line 1949
    return-void
.end method

.method public setTempFileManagerFactory(Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;)V
    .registers 2
    .param p1, "tempFileManagerFactory"    # Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .prologue
    .line 2073
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD;->tempFileManagerFactory:Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    .line 2074
    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2083
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD;->start(I)V

    .line 2084
    return-void
.end method

.method public start(I)V
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2090
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfi/iki/elonen/NanoHTTPD;->start(IZ)V

    .line 2091
    return-void
.end method

.method public start(IZ)V
    .registers 7
    .param p1, "timeout"    # I
    .param p2, "daemon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2104
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD;->getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;

    move-result-object v1

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;->create()Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 2105
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 2107
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->createServerRunnable(I)Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    move-result-object v0

    .line 2108
    .local v0, "serverRunnable":Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 2109
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2110
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const-string v2, "NanoHttpd Main Listener"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2111
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2112
    :goto_2c
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-nez v1, :cond_40

    .line 2114
    const-wide/16 v2, 0xa

    :try_start_3a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_2c

    .line 2115
    :catch_3e
    move-exception v1

    goto :goto_2c

    .line 2121
    :cond_40
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 2122
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 2124
    :cond_4b
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 2131
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->safeClose(Ljava/lang/Object;)V

    .line 2132
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closeAll()V

    .line 2133
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v1, :cond_13

    .line 2134
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 2139
    :cond_13
    :goto_13
    return-void

    .line 2136
    :catch_14
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .registers 4
    .param p1, "r"    # Lfi/iki/elonen/NanoHTTPD$Response;

    .prologue
    .line 1932
    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lfi/iki/elonen/NanoHTTPD$Response;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final wasStarted()Z
    .registers 2

    .prologue
    .line 2142
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

###### Class fi.iki.elonen.NanoHTTPD.AnonymousClass1 (fi.iki.elonen.NanoHTTPD$1)
.class synthetic Lfi/iki/elonen/NanoHTTPD$1;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class fi.iki.elonen.NanoHTTPD.AsyncRunner (fi.iki.elonen.NanoHTTPD$AsyncRunner)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$AsyncRunner;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncRunner"
.end annotation


# virtual methods
.method public abstract closeAll()V
.end method

.method public abstract closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
.end method

.method public abstract exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
.end method

###### Class fi.iki.elonen.NanoHTTPD.ClientHandler (fi.iki.elonen.NanoHTTPD$ClientHandler)
.class public Lfi/iki/elonen/NanoHTTPD$ClientHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientHandler"
.end annotation


# instance fields
.field private final acceptSocket:Ljava/net/Socket;

.field private final inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V
    .registers 4
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "acceptSocket"    # Ljava/net/Socket;

    .prologue
    .line 171
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    .line 173
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;Lfi/iki/elonen/NanoHTTPD$1;)V
    .registers 5
    .param p1, "x0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "x1"    # Ljava/io/InputStream;
    .param p3, "x2"    # Ljava/net/Socket;
    .param p4, "x3"    # Lfi/iki/elonen/NanoHTTPD$1;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 183
    const/4 v4, 0x0

    .line 185
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 186
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$100(Lfi/iki/elonen/NanoHTTPD;)Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;

    move-result-object v1

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;->create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-result-object v2

    .line 187
    .local v2, "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;-><init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 188
    .local v0, "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    :goto_20
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_61

    .line 189
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->execute()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c
    .catchall {:try_start_1 .. :try_end_2b} :catchall_76

    goto :goto_20

    .line 191
    .end local v0    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :catch_2c
    move-exception v6

    .line 199
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2d
    instance-of v1, v6, Ljava/net/SocketException;

    if-eqz v1, :cond_3d

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    :cond_3d
    instance-of v1, v6, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_4c

    .line 200
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Communication with the client broken"

    invoke-virtual {v1, v3, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_76

    .line 203
    :cond_4c
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v1, v1, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    .line 208
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_60
    return-void

    .line 203
    .restart local v0    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .restart local v2    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :cond_61
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v1}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v1, v1, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v1, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    goto :goto_60

    .line 203
    .end local v0    # "session":Lfi/iki/elonen/NanoHTTPD$HTTPSession;
    .end local v2    # "tempFileManager":Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    :catchall_76
    move-exception v1

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 204
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 205
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->acceptSocket:Ljava/net/Socket;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 206
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v3, v3, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    invoke-interface {v3, p0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V

    throw v1
.end method

###### Class fi.iki.elonen.NanoHTTPD.Cookie (fi.iki.elonen.NanoHTTPD$Cookie)
.class public Lfi/iki/elonen/NanoHTTPD$Cookie;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cookie"
.end annotation


# instance fields
.field private final e:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "numDays"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    .line 230
    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    .line 236
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public static getHTTPTime(I)Ljava/lang/String;
    .registers 5
    .param p0, "days"    # I

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 216
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 217
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 218
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getHTTPHeader()Ljava/lang/String;
    .registers 5

    .prologue
    .line 240
    const-string v0, "%s=%s; expires=%s"

    .line 241
    .local v0, "fmt":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->v:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Cookie;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class fi.iki.elonen.NanoHTTPD.CookieHandler (fi.iki.elonen.NanoHTTPD$CookieHandler)
.class public Lfi/iki/elonen/NanoHTTPD$CookieHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CookieHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfi/iki/elonen/NanoHTTPD$Cookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    .line 256
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    .line 259
    const-string v7, "cookie"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 260
    .local v4, "raw":Ljava/lang/String;
    if-eqz v4, :cond_46

    .line 261
    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_46

    aget-object v5, v0, v2

    .line 263
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "data":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_43

    .line 265
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 269
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_46
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, "-delete-"

    const/16 v1, -0x1e

    invoke-virtual {p0, p1, v0, v1}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Lfi/iki/elonen/NanoHTTPD$Cookie;)V
    .registers 3
    .param p1, "cookie"    # Lfi/iki/elonen/NanoHTTPD$Cookie;

    .prologue
    .line 299
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Cookie;

    invoke-static {p3}, Lfi/iki/elonen/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lfi/iki/elonen/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public unloadQueue(Lfi/iki/elonen/NanoHTTPD$Response;)V
    .registers 6
    .param p1, "response"    # Lfi/iki/elonen/NanoHTTPD$Response;

    .prologue
    .line 325
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$Cookie;

    .line 326
    .local v0, "cookie":Lfi/iki/elonen/NanoHTTPD$Cookie;
    const-string v2, "Set-Cookie"

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Cookie;->getHTTPHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 328
    .end local v0    # "cookie":Lfi/iki/elonen/NanoHTTPD$Cookie;
    :cond_1c
    return-void
.end method

###### Class fi.iki.elonen.NanoHTTPD.DefaultAsyncRunner (fi.iki.elonen.NanoHTTPD$DefaultAsyncRunner)
.class public Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAsyncRunner"
.end annotation


# instance fields
.field private requestCount:J

.field private final running:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoHTTPD$ClientHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public closeAll()V
    .registers 5

    .prologue
    .line 356
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 357
    .local v0, "clientHandler":Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->close()V

    goto :goto_b

    .line 359
    .end local v0    # "clientHandler":Lfi/iki/elonen/NanoHTTPD$ClientHandler;
    :cond_1b
    return-void
.end method

.method public closed(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .registers 3
    .param p1, "clientHandler"    # Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .prologue
    .line 363
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method public exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    .registers 8
    .param p1, "clientHandler"    # Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .prologue
    .line 368
    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    .line 369
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHttpd Request Processor (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method

.method public getRunning()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoHTTPD$ClientHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.DefaultServerSocketFactory (fi.iki.elonen.NanoHTTPD$DefaultServerSocketFactory)
.class public Lfi/iki/elonen/NanoHTTPD$DefaultServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultServerSocketFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/net/ServerSocket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.DefaultTempFile (fi.iki.elonen.NanoHTTPD$DefaultTempFile)
.class public Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFile"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final fstream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "tempdir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const-string v0, "NanoHTTPD-"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    .line 393
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    .line 394
    return-void
.end method


# virtual methods
.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_15

    .line 400
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "could not delete temporary file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_15
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;->fstream:Ljava/io/OutputStream;

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.DefaultTempFileManager (fi.iki.elonen.NanoHTTPD$DefaultTempFileManager)
.class public Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTempFileManager"
.end annotation


# instance fields
.field private final tempFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoHTTPD$TempFile;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    .line 433
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 434
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 436
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    .line 437
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 7

    .prologue
    .line 441
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$TempFile;

    .line 443
    .local v0, "file":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :try_start_12
    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$TempFile;->delete()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 444
    :catch_16
    move-exception v2

    .line 445
    .local v2, "ignored":Ljava/lang/Exception;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "could not delete file "

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 448
    .end local v0    # "file":Lfi/iki/elonen/NanoHTTPD$TempFile;
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_23
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 449
    return-void
.end method

.method public createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;
    .registers 4
    .param p1, "filename_hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tmpdir:Ljava/io/File;

    invoke-direct {v0, v1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;-><init>(Ljava/io/File;)V

    .line 454
    .local v0, "tempFile":Lfi/iki/elonen/NanoHTTPD$DefaultTempFile;
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;->tempFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.DefaultTempFileManagerFactory (fi.iki.elonen.NanoHTTPD$DefaultTempFileManagerFactory)
.class Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTempFileManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$1;)V
    .registers 3
    .param p1, "x0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "x1"    # Lfi/iki/elonen/NanoHTTPD$1;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lfi/iki/elonen/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .registers 2

    .prologue
    .line 466
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lfi/iki/elonen/NanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.HTTPSession (fi.iki.elonen.NanoHTTPD$HTTPSession)
.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000

.field public static final MAX_HEADER_SIZE:I = 0x400

.field private static final MEMORY_STORE_LIMIT:I = 0x400

.field private static final REQUEST_BUFFER_LEN:I = 0x200


# instance fields
.field private cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inputStream:Ljava/io/BufferedInputStream;

.field private method:Lfi/iki/elonen/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 569
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 571
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 572
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 573
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .registers 8
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 575
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 577
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    .line 578
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 579
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1e
    const-string v0, "127.0.0.1"

    :goto_20
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    .line 580
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 581
    return-void

    .line 579
    :cond_2a
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 16
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 589
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 639
    :goto_6
    return-void

    .line 594
    :cond_7
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 595
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 596
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1c

    .line 636
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_1c
    move-exception v1

    .line 637
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 599
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_3c
    :try_start_3c
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_55

    .line 602
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    .line 605
    :cond_55
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 608
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 609
    .local v4, "qmi":I
    if-ltz v4, :cond_b8

    .line 610
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 611
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    :goto_73
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 621
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 626
    :goto_7f
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "line":Ljava/lang/String;
    :goto_83
    if-eqz v2, :cond_cd

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_cd

    .line 628
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 629
    .local v3, "p":I
    if-ltz v3, :cond_b3

    .line 630
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_b3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 633
    goto :goto_83

    .line 613
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":I
    :cond_b8
    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_73

    .line 623
    :cond_bd
    const-string v7, "HTTP/1.1"

    iput-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    .line 624
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_7f

    .line 635
    .restart local v2    # "line":Ljava/lang/String;
    :cond_cd
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_d2} :catch_1c

    goto/16 :goto_6
.end method

.method private decodeMultipartFormData(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .registers 35
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "fbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 646
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v6

    .line 647
    .local v6, "boundary_idxs":[I
    array-length v0, v6

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_25

    .line 648
    new-instance v26, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v27, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v28, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct/range {v26 .. v28}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26
    :try_end_23
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_23} :catch_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_99

    .line 723
    .end local v6    # "boundary_idxs":[I
    :catch_23
    move-exception v25

    .line 724
    .local v25, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    throw v25

    .line 651
    .end local v25    # "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    .restart local v6    # "boundary_idxs":[I
    :cond_25
    const/16 v26, 0x400

    :try_start_27
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 652
    .local v21, "part_header_buff":[B
    const/4 v5, 0x0

    .local v5, "bi":I
    :goto_2e
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v5, v0, :cond_20f

    .line 653
    aget v26, v6, v5

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 654
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v26

    const/16 v27, 0x400

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    .line 655
    .local v16, "len":I
    :goto_50
    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 656
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    new-instance v27, Ljava/io/ByteArrayInputStream;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static/range {p2 .. p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 658
    .local v14, "in":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 660
    .local v12, "headerLines":I
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 661
    .local v18, "mpline":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    .line 662
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_a9

    .line 663
    new-instance v26, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v27, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v28, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct/range {v26 .. v28}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26
    :try_end_99
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_27 .. :try_end_99} :catch_23
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_99} :catch_99

    .line 725
    .end local v5    # "bi":I
    .end local v6    # "boundary_idxs":[I
    .end local v12    # "headerLines":I
    .end local v14    # "in":Ljava/io/BufferedReader;
    .end local v16    # "len":I
    .end local v18    # "mpline":Ljava/lang/String;
    .end local v21    # "part_header_buff":[B
    :catch_99
    move-exception v10

    .line 726
    .local v10, "e":Ljava/lang/Exception;
    new-instance v26, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v27, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26

    .line 654
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "bi":I
    .restart local v6    # "boundary_idxs":[I
    .restart local v21    # "part_header_buff":[B
    :cond_a6
    const/16 v16, 0x400

    goto :goto_50

    .line 666
    .restart local v12    # "headerLines":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    .restart local v18    # "mpline":Ljava/lang/String;
    :cond_a9
    const/16 v23, 0x0

    .local v23, "part_name":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "file_name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 668
    .local v7, "content_type":Ljava/lang/String;
    :try_start_ad
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 669
    add-int/lit8 v12, v12, 0x1

    .line 670
    :goto_b3
    if-eqz v18, :cond_147

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_147

    .line 671
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 672
    .local v17, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v26

    if-eqz v26, :cond_11f

    .line 673
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 674
    .local v4, "attributeString":Ljava/lang/String;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 675
    :cond_e5
    :goto_e5
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_11f

    .line 676
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 677
    .local v15, "key":Ljava/lang/String;
    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10a

    .line 678
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_e5

    .line 679
    :cond_10a
    const-string v26, "filename"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e5

    .line 680
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_e5

    .line 684
    .end local v4    # "attributeString":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    :cond_11f
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$500()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 685
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v26

    if-eqz v26, :cond_13f

    .line 686
    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 688
    :cond_13f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 689
    add-int/lit8 v12, v12, 0x1

    .line 690
    goto/16 :goto_b3

    .line 691
    .end local v17    # "matcher":Ljava/util/regex/Matcher;
    :cond_147
    const/16 v22, 0x0

    .local v22, "part_header_len":I
    move v13, v12

    .line 692
    .end local v12    # "headerLines":I
    .local v13, "headerLines":I
    :goto_14a
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "headerLines":I
    .restart local v12    # "headerLines":I
    if-lez v13, :cond_15a

    .line 693
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->scipOverNewLine([BI)I

    move-result v22

    move v13, v12

    .end local v12    # "headerLines":I
    .restart local v13    # "headerLines":I
    goto :goto_14a

    .line 696
    .end local v13    # "headerLines":I
    .restart local v12    # "headerLines":I
    :cond_15a
    add-int/lit8 v26, v16, -0x4

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_16c

    .line 697
    new-instance v26, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v27, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v28, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct/range {v26 .. v28}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26

    .line 699
    :cond_16c
    aget v26, v6, v5

    add-int v20, v26, v22

    .line 700
    .local v20, "part_data_start":I
    add-int/lit8 v26, v5, 0x1

    aget v26, v6, v26

    add-int/lit8 v19, v26, -0x4

    .line 702
    .local v19, "part_data_end":I
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 703
    if-nez v7, :cond_1a0

    .line 705
    sub-int v26, v19, v20

    move/from16 v0, v26

    new-array v9, v0, [B

    .line 706
    .local v9, "data_bytes":[B
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 707
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v9    # "data_bytes":[B
    :goto_19c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2e

    .line 710
    :cond_1a0
    sub-int v26, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v11}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 711
    .local v24, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1c9

    .line 712
    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :goto_1c1
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19c

    .line 714
    :cond_1c9
    const/4 v8, 0x2

    .line 715
    .local v8, "count":I
    :goto_1ca
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1ee

    .line 716
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ca

    .line 718
    :cond_1ee
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20e
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_ad .. :try_end_20e} :catch_23
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_20e} :catch_99

    goto :goto_1c1

    .line 728
    .end local v7    # "content_type":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v11    # "file_name":Ljava/lang/String;
    .end local v12    # "headerLines":I
    .end local v14    # "in":Ljava/io/BufferedReader;
    .end local v16    # "len":I
    .end local v18    # "mpline":Ljava/lang/String;
    .end local v19    # "part_data_end":I
    .end local v20    # "part_data_start":I
    .end local v22    # "part_header_len":I
    .end local v23    # "part_name":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    :cond_20f
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 745
    const-string v3, ""

    iput-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 760
    :cond_6
    return-void

    .line 749
    :cond_7
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    .line 750
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 752
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 754
    .local v1, "sep":I
    if-ltz v1, :cond_3d

    .line 755
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 757
    :cond_3d
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method private findHeaderEnd([BI)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "splitbyte":I
    :goto_5
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_36

    .line 888
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_26

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_26

    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_26

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_26

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_26

    .line 889
    add-int/lit8 v1, v0, 0x4

    .line 898
    :goto_25
    return v1

    .line 893
    :cond_26
    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_33

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_33

    .line 894
    add-int/lit8 v1, v0, 0x2

    goto :goto_25

    .line 896
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 898
    :cond_36
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "contentTypeHeader"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1084
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1085
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "defaultValue":Ljava/lang/String;
    :cond_f
    return-object p3
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .registers 15
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    const/4 v11, 0x0

    .line 907
    new-array v5, v11, [I

    .line 908
    .local v5, "res":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, p2

    if-ge v9, v10, :cond_c

    move-object v6, v5

    .line 944
    .end local v5    # "res":[I
    .local v6, "res":[I
    :goto_b
    return-object v6

    .line 912
    .end local v6    # "res":[I
    .restart local v5    # "res":[I
    :cond_c
    const/4 v8, 0x0

    .line 913
    .local v8, "search_window_pos":I
    array-length v9, p2

    add-int/lit16 v9, v9, 0x1000

    new-array v7, v9, [B

    .line 915
    .local v7, "search_window":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, v7

    if-ge v9, v10, :cond_35

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 916
    .local v0, "first_fill":I
    :goto_1d
    invoke-virtual {p1, v7, v11, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 917
    array-length v9, p2

    sub-int v3, v0, v9

    .line 921
    .local v3, "new_bytes":I
    :cond_23
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_24
    if-ge v2, v3, :cond_4e

    .line 922
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    array-length v9, p2

    if-ge v1, v9, :cond_32

    .line 923
    add-int v9, v2, v1

    aget-byte v9, v7, v9

    aget-byte v10, p2, v1

    if-eq v9, v10, :cond_37

    .line 921
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 915
    .end local v0    # "first_fill":I
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "new_bytes":I
    :cond_35
    array-length v0, v7

    goto :goto_1d

    .line 925
    .restart local v0    # "first_fill":I
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "new_bytes":I
    :cond_37
    array-length v9, p2

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_4b

    .line 927
    array-length v9, v5

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [I

    .line 928
    .local v4, "new_res":[I
    array-length v9, v5

    invoke-static {v5, v11, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    array-length v9, v5

    add-int v10, v8, v2

    aput v10, v4, v9

    .line 930
    move-object v5, v4

    .line 922
    .end local v4    # "new_res":[I
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 934
    .end local v1    # "i":I
    :cond_4e
    add-int/2addr v8, v3

    .line 937
    array-length v9, v7

    array-length v10, p2

    sub-int/2addr v9, v10

    array-length v10, p2

    invoke-static {v7, v9, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    array-length v9, v7

    array-length v10, p2

    sub-int v3, v9, v10

    .line 941
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v9, v3, :cond_64

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 942
    :cond_64
    array-length v9, p2

    invoke-virtual {p1, v7, v9, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 943
    if-gtz v3, :cond_23

    move-object v6, v5

    .line 944
    .end local v5    # "res":[I
    .restart local v6    # "res":[I
    goto :goto_b
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .registers 6

    .prologue
    .line 979
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v1

    .line 980
    .local v1, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    .line 981
    .end local v1    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :catch_13
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "filename_hint"    # Ljava/lang/String;

    .prologue
    .line 1093
    const-string v4, ""

    .line 1094
    .local v4, "path":Ljava/lang/String;
    if-lez p3, :cond_33

    .line 1095
    const/4 v2, 0x0

    .line 1097
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_5
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v7, p4}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v6

    .line 1098
    .local v6, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1099
    .local v5, "src":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_34
    .catchall {:try_start_5 .. :try_end_18} :catchall_3b

    .line 1100
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1101
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1102
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1103
    invoke-interface {v6}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_43
    .catchall {:try_start_18 .. :try_end_2f} :catchall_40

    move-result-object v4

    .line 1107
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1110
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "src":Ljava/nio/ByteBuffer;
    .end local v6    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :cond_33
    return-object v4

    .line 1104
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_34
    move-exception v1

    .line 1105
    .local v1, "e":Ljava/lang/Exception;
    :goto_35
    :try_start_35
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3b

    .line 1107
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3b
    move-exception v7

    :goto_3c
    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw v7

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "src":Ljava/nio/ByteBuffer;
    .restart local v6    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :catchall_40
    move-exception v7

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3c

    .line 1104
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_43
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_35
.end method

.method private scipOverNewLine([BI)I
    .registers 5
    .param p1, "part_header_buff"    # [B
    .param p2, "index"    # I

    .prologue
    .line 731
    :goto_0
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    .line 732
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 734
    :cond_9
    add-int/lit8 p2, p2, 0x1

    return p2
.end method


# virtual methods
.method public execute()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v12, 0x0

    .line 771
    .local v12, "r":Lfi/iki/elonen/NanoHTTPD$Response;
    const/16 v17, 0x2000

    :try_start_3
    move/from16 v0, v17

    new-array v5, v0, [B

    .line 772
    .local v5, "buf":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 773
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 775
    const/4 v14, -0x1

    .line 776
    .local v14, "read":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x2000

    invoke-virtual/range {v17 .. v18}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_23
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_23} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_23} :catch_82
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_3 .. :try_end_23} :catch_1f4
    .catchall {:try_start_3 .. :try_end_23} :catchall_59

    .line 778
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_36} :catch_67
    .catch Ljava/net/SocketException; {:try_start_23 .. :try_end_36} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_23 .. :try_end_36} :catch_82
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_23 .. :try_end_36} :catch_1f4
    .catchall {:try_start_23 .. :try_end_36} :catchall_59

    move-result v14

    .line 784
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_a6

    .line 786
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 788
    new-instance v17, Ljava/net/SocketException;

    const-string v18, "NanoHttpd Shutdown"

    invoke-direct/range {v17 .. v18}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_57
    .catch Ljava/net/SocketException; {:try_start_3d .. :try_end_57} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_57} :catch_82
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_57} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_3d .. :try_end_57} :catch_1f4
    .catchall {:try_start_3d .. :try_end_57} :catchall_59

    .line 857
    .end local v5    # "buf":[B
    .end local v14    # "read":I
    :catch_57
    move-exception v7

    .line 859
    .local v7, "e":Ljava/net/SocketException;
    :try_start_58
    throw v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 874
    .end local v7    # "e":Ljava/net/SocketException;
    :catchall_59
    move-exception v17

    invoke-static {v12}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    throw v17

    .line 779
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :catch_67
    move-exception v7

    .line 780
    .local v7, "e":Ljava/lang/Exception;
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 782
    new-instance v17, Ljava/net/SocketException;

    const-string v18, "NanoHttpd Shutdown"

    invoke-direct/range {v17 .. v18}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_82
    .catch Ljava/net/SocketException; {:try_start_68 .. :try_end_82} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_68 .. :try_end_82} :catch_82
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_82} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_68 .. :try_end_82} :catch_1f4
    .catchall {:try_start_68 .. :try_end_82} :catchall_59

    .line 860
    .end local v5    # "buf":[B
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v14    # "read":I
    :catch_82
    move-exception v16

    .line 864
    .local v16, "ste":Ljava/net/SocketTimeoutException;
    :try_start_83
    throw v16
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_59

    .line 796
    .end local v16    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :cond_84
    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v19, v0

    move/from16 v0, v19

    rsub-int v0, v0, 0x2000

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v14

    .line 790
    :cond_a6
    if-lez v14, :cond_d2

    .line 791
    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    .line 793
    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v17, v0

    if-lez v17, :cond_84

    .line 799
    :cond_d2
    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_101

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->reset()V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 804
    :cond_101
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    if-nez v17, :cond_1e9

    .line 806
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    .line 812
    :goto_11f
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v18, Ljava/io/ByteArrayInputStream;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v5, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 815
    .local v8, "hin":Ljava/io/BufferedReader;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 816
    .local v11, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v11, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_182

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string v18, "remote-addr"

    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string v18, "http-client-ip"

    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_182
    const-string v17, "method"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v17, v0

    if-nez v17, :cond_224

    .line 825
    new-instance v17, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v18, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v19, "BAD REQUEST: Syntax error."

    invoke-direct/range {v17 .. v19}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v17
    :try_end_1a8
    .catch Ljava/net/SocketException; {:try_start_84 .. :try_end_1a8} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_84 .. :try_end_1a8} :catch_82
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_1a8} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_84 .. :try_end_1a8} :catch_1f4
    .catchall {:try_start_84 .. :try_end_1a8} :catchall_59

    .line 865
    .end local v5    # "buf":[B
    .end local v8    # "hin":Ljava/io/BufferedReader;
    .end local v11    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "read":I
    :catch_1a8
    move-exception v9

    .line 866
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_1a9
    sget-object v17, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v18, "text/plain"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v15

    .line 867
    .local v15, "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_1dc
    .catchall {:try_start_1a9 .. :try_end_1dc} :catchall_59

    .line 874
    invoke-static {v12}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 877
    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v15    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    :goto_1e8
    return-void

    .line 808
    .restart local v5    # "buf":[B
    .restart local v14    # "read":I
    :cond_1e9
    :try_start_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V
    :try_end_1f2
    .catch Ljava/net/SocketException; {:try_start_1e9 .. :try_end_1f2} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e9 .. :try_end_1f2} :catch_82
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1f2} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_1e9 .. :try_end_1f2} :catch_1f4
    .catchall {:try_start_1e9 .. :try_end_1f2} :catchall_59

    goto/16 :goto_11f

    .line 869
    .end local v5    # "buf":[B
    .end local v14    # "read":I
    :catch_1f4
    move-exception v13

    .line 870
    .local v13, "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    :try_start_1f5
    invoke-virtual {v13}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v17

    const-string v18, "text/plain"

    invoke-virtual {v13}, Lfi/iki/elonen/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v15

    .line 871
    .restart local v15    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_217
    .catchall {:try_start_1f5 .. :try_end_217} :catchall_59

    .line 874
    invoke-static {v12}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_1e8

    .line 828
    .end local v13    # "re":Lfi/iki/elonen/NanoHTTPD$ResponseException;
    .end local v15    # "resp":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v5    # "buf":[B
    .restart local v8    # "hin":Ljava/io/BufferedReader;
    .restart local v11    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "read":I
    :cond_224
    :try_start_224
    const-string v17, "uri"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    .line 830
    new-instance v17, Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;-><init>(Lfi/iki/elonen/NanoHTTPD;Ljava/util/Map;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string v18, "connection"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 833
    .local v6, "connection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "HTTP/1.1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28e

    if-eqz v6, :cond_273

    const-string v17, "(?i).*close.*"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_28e

    :cond_273
    const/4 v10, 0x1

    .line 840
    .local v10, "keepAlive":Z
    :goto_274
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v12

    .line 844
    if-nez v12, :cond_290

    .line 845
    new-instance v17, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v18, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v19, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct/range {v17 .. v19}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v17

    .line 833
    .end local v10    # "keepAlive":Z
    :cond_28e
    const/4 v10, 0x0

    goto :goto_274

    .line 847
    .restart local v10    # "keepAlive":Z
    :cond_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v17, v0

    const-string v18, "accept-encoding"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 848
    .local v4, "acceptEncoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lfi/iki/elonen/NanoHTTPD$CookieHandler;->unloadQueue(Lfi/iki/elonen/NanoHTTPD$Response;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lfi/iki/elonen/NanoHTTPD;->useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z

    move-result v17

    if-eqz v17, :cond_2fd

    if-eqz v4, :cond_2fd

    const-string v17, "gzip"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2fd

    const/16 v17, 0x1

    :goto_2d0
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->setGzipEncoding(Z)V

    .line 851
    invoke-virtual {v12, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->setKeepAlive(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    .line 854
    if-eqz v10, :cond_2f5

    const-string v17, "close"

    const-string v18, "connection"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_300

    .line 855
    :cond_2f5
    new-instance v17, Ljava/net/SocketException;

    const-string v18, "NanoHttpd Shutdown"

    invoke-direct/range {v17 .. v18}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2fd
    .catch Ljava/net/SocketException; {:try_start_224 .. :try_end_2fd} :catch_57
    .catch Ljava/net/SocketTimeoutException; {:try_start_224 .. :try_end_2fd} :catch_82
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_2fd} :catch_1a8
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_224 .. :try_end_2fd} :catch_1f4
    .catchall {:try_start_224 .. :try_end_2fd} :catchall_59

    .line 850
    :cond_2fd
    const/16 v17, 0x0

    goto :goto_2d0

    .line 874
    :cond_300
    invoke-static {v12}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_1e8
.end method

.method public getBodySize()J
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 997
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1001
    :goto_18
    return-wide v0

    .line 998
    :cond_19
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v0, v1, :cond_26

    .line 999
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_18

    .line 1001
    :cond_26
    const-wide/16 v0, 0x0

    goto :goto_18
.end method

.method public getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->cookies:Lfi/iki/elonen/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public final getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 988
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation

    .prologue
    .line 1006
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 1008
    .local v14, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBodySize()J

    move-result-wide v16

    .line 1009
    .local v16, "size":J
    const/4 v8, 0x0

    .line 1010
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 1013
    .local v15, "request_data_output":Ljava/io/DataOutput;
    const-wide/16 v2, 0x400

    cmp-long v2, v16, v2

    if-gez v2, :cond_58

    .line 1014
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1015
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    .end local v15    # "request_data_output":Ljava/io/DataOutput;
    invoke-direct {v15, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1022
    .restart local v15    # "request_data_output":Ljava/io/DataOutput;
    :goto_17
    const/16 v2, 0x200

    new-array v9, v2, [B

    .line 1023
    .local v9, "buf":[B
    :cond_1b
    :goto_1b
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-ltz v2, :cond_5e

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_5e

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    const-wide/16 v6, 0x200

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v2, v9, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    .line 1025
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v2, v2

    sub-long v16, v16, v2

    .line 1026
    move-object/from16 v0, p0

    iget v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    if-lez v2, :cond_1b

    .line 1027
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->rlen:I

    invoke-interface {v15, v9, v2, v3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_1b

    .line 1079
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "buf":[B
    .end local v15    # "request_data_output":Ljava/io/DataOutput;
    .end local v16    # "size":J
    :catchall_53
    move-exception v2

    invoke-static {v14}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw v2

    .line 1017
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "request_data_output":Ljava/io/DataOutput;
    .restart local v16    # "size":J
    :cond_58
    :try_start_58
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v14

    .line 1018
    move-object v15, v14

    goto :goto_17

    .line 1031
    .restart local v9    # "buf":[B
    :cond_5e
    const/4 v5, 0x0

    .line 1032
    .local v5, "fbuf":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_b7

    .line 1033
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1041
    :goto_6e
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 1042
    const-string v10, ""

    .line 1043
    .local v10, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v3, "content-type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1045
    .local v11, "contentTypeHeader":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1046
    .local v18, "st":Ljava/util/StringTokenizer;
    if-eqz v11, :cond_9f

    .line 1047
    new-instance v18, Ljava/util/StringTokenizer;

    .end local v18    # "st":Ljava/util/StringTokenizer;
    const-string v2, ",; "

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1049
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 1053
    :cond_9f
    const-string v2, "multipart/form-data"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1055
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 1056
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$ResponseException;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v4, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$ResponseException;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v2

    .line 1035
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "contentTypeHeader":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_b7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    .line 1036
    const-wide/16 v2, 0x0

    invoke-virtual {v14, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_6e

    .line 1059
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "contentTypeHeader":Ljava/lang/String;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :cond_cd
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$600()Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$700()Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v4, "US-ASCII"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v4}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getAttributeFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_ef
    .catchall {:try_start_58 .. :try_end_ef} :catchall_53

    .line 1079
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "contentTypeHeader":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_ef
    :goto_ef
    invoke-static {v14}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    .line 1081
    return-void

    .line 1062
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v11    # "contentTypeHeader":Ljava/lang/String;
    .restart local v18    # "st":Ljava/util/StringTokenizer;
    :cond_f3
    :try_start_f3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v12, v2, [B

    .line 1063
    .local v12, "postBytes":[B
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1064
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1066
    .local v13, "postLine":Ljava/lang/String;
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_ef

    .line 1068
    :cond_117
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_ef

    .line 1072
    const-string v2, "postData"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ef

    .line 1075
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v11    # "contentTypeHeader":Ljava/lang/String;
    .end local v12    # "postBytes":[B
    .end local v13    # "postLine":Ljava/lang/String;
    .end local v18    # "st":Ljava/util/StringTokenizer;
    :cond_125
    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->method:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 1076
    const-string v2, "content"

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3, v4, v6}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_144
    .catchall {:try_start_f3 .. :try_end_144} :catchall_53

    goto :goto_ef
.end method

###### Class fi.iki.elonen.NanoHTTPD.IHTTPSession (fi.iki.elonen.NanoHTTPD$IHTTPSession)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHTTPSession"
.end annotation


# virtual methods
.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCookies()Lfi/iki/elonen/NanoHTTPD$CookieHandler;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getMethod()Lfi/iki/elonen/NanoHTTPD$Method;
.end method

.method public abstract getParms()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueryParameterString()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract parseBody(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfi/iki/elonen/NanoHTTPD$ResponseException;
        }
    .end annotation
.end method

###### Class fi.iki.elonen.NanoHTTPD.Method (fi.iki.elonen.NanoHTTPD$Method)
.class public final enum Lfi/iki/elonen/NanoHTTPD$Method;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfi/iki/elonen/NanoHTTPD$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum GET:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum POST:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum PUT:Lfi/iki/elonen/NanoHTTPD$Method;

.field public static final enum TRACE:Lfi/iki/elonen/NanoHTTPD$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1153
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1154
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1155
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1156
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1157
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1158
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1159
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1160
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1161
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v1, "PATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1152
    const/16 v0, 0x9

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v3

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v4

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->DELETE:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->TRACE:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->CONNECT:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->PATCH:Lfi/iki/elonen/NanoHTTPD$Method;

    aput-object v2, v0, v1

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 6
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 1164
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD$Method;->values()[Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v0

    .local v0, "arr$":[Lfi/iki/elonen/NanoHTTPD$Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 1165
    .local v3, "m":Lfi/iki/elonen/NanoHTTPD$Method;
    invoke-virtual {v3}, Lfi/iki/elonen/NanoHTTPD$Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1169
    .end local v3    # "m":Lfi/iki/elonen/NanoHTTPD$Method;
    :goto_14
    return-object v3

    .line 1164
    .restart local v3    # "m":Lfi/iki/elonen/NanoHTTPD$Method;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1169
    .end local v3    # "m":Lfi/iki/elonen/NanoHTTPD$Method;
    :cond_18
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1152
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 1

    .prologue
    .line 1152
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.Response (fi.iki.elonen.NanoHTTPD$Response)
.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;,
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .registers 12
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "totalBytes"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    .line 1310
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 1311
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1312
    if-nez p3, :cond_2b

    .line 1313
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1314
    iput-wide v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 1319
    :goto_1f
    iget-wide v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_26

    move v0, v1

    :cond_26
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1320
    iput-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 1321
    return-void

    .line 1316
    :cond_2b
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1317
    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_1f
.end method

.method private static headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1371
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1372
    .local v0, "alreadySent":Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1373
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1374
    goto :goto_9

    .line 1375
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_1b
    return v0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .registers 14
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1471
    const-wide/16 v0, 0x4000

    .line 1472
    .local v0, "BUFFER_SIZE":J
    long-to-int v8, v0

    new-array v2, v8, [B

    .line 1473
    .local v2, "buff":[B
    const-wide/16 v8, -0x1

    cmp-long v8, p2, v8

    if-nez v8, :cond_22

    const/4 v6, 0x1

    .line 1474
    .local v6, "sendEverything":Z
    :cond_d
    :goto_d
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_15

    if-eqz v6, :cond_21

    .line 1475
    :cond_15
    if-eqz v6, :cond_24

    move-wide v4, v0

    .line 1476
    .local v4, "bytesToRead":J
    :goto_18
    iget-object v8, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v9, v4

    invoke-virtual {v8, v2, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1477
    .local v3, "read":I
    if-gtz v3, :cond_29

    .line 1485
    .end local v3    # "read":I
    .end local v4    # "bytesToRead":J
    :cond_21
    return-void

    .end local v6    # "sendEverything":Z
    :cond_22
    move v6, v7

    .line 1473
    goto :goto_d

    .line 1475
    .restart local v6    # "sendEverything":Z
    :cond_24
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_18

    .line 1480
    .restart local v3    # "read":I
    .restart local v4    # "bytesToRead":J
    :cond_29
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1481
    if-nez v6, :cond_d

    .line 1482
    int-to-long v8, v3

    sub-long/2addr p2, v8

    goto :goto_d
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .registers 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1448
    iget-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v1, :cond_12

    .line 1449
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1450
    .local v0, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    .line 1451
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 1455
    .end local v0    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :goto_11
    return-void

    .line 1453
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    goto :goto_11
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .registers 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pending"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1438
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v1, v2, :cond_18

    iget-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v1, :cond_18

    .line 1439
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {v0, p1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1440
    .local v0, "chunkedOutputStream":Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    .line 1441
    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    .line 1445
    .end local v0    # "chunkedOutputStream":Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;
    :goto_17
    return-void

    .line 1443
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    goto :goto_17
.end method

.method protected static sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1489
    .local v1, "headerName":Ljava/lang/String;
    const-string v3, "content-length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1491
    :try_start_1c
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_25} :catch_27

    move-result-wide p2

    .line 1499
    .end local v1    # "headerName":Ljava/lang/String;
    .end local p2    # "size":J
    :goto_26
    return-wide p2

    .line 1492
    .restart local v1    # "headerName":Ljava/lang/String;
    .restart local p2    # "size":J
    :catch_27
    move-exception v0

    .line 1493
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_26

    .line 1498
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_26
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1334
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 1326
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1328
    :cond_9
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 1338
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1342
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1343
    .local v0, "headerName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1344
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1347
    .end local v0    # "headerName":Ljava/lang/String;
    :goto_24
    return-object v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1351
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lfi/iki/elonen/NanoHTTPD$Method;
    .registers 2

    .prologue
    .line 1355
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method protected send(Ljava/io/OutputStream;)V
    .registers 14
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1382
    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1383
    .local v4, "mime":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1384
    .local v0, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1387
    :try_start_14
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    if-nez v9, :cond_2d

    .line 1388
    new-instance v9, Ljava/lang/Error;

    const-string v10, "sendResponse(): Status can\'t be null."

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_20

    .line 1432
    :catch_20
    move-exception v2

    .line 1433
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v11, "Could not send response to the client"

    invoke-virtual {v9, v10, v11, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1435
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_2c
    return-void

    .line 1390
    :cond_2d
    :try_start_2d
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v10, p1, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1391
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP/1.1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-interface {v10}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    if-eqz v4, :cond_7f

    .line 1394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    :cond_7f
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_8d

    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "Date"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b2

    .line 1398
    :cond_8d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Date: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    :cond_b2
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_f5

    .line 1402
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1403
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1404
    .local v8, "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c0

    .line 1408
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_f5
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "connection"

    invoke-static {v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_121

    .line 1409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v9, :cond_165

    const-string v9, "keep-alive"

    :goto_110
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    :cond_121
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "content-length"

    invoke-static {v9, v10}, Lfi/iki/elonen/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 1413
    const/4 v9, 0x0

    iput-boolean v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1416
    :cond_12e
    iget-boolean v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v9, :cond_13b

    .line 1417
    const-string v9, "Content-Encoding: gzip\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    .line 1421
    :cond_13b
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v9, :cond_168

    iget-wide v6, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    .line 1422
    .local v6, "pending":J
    :goto_141
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v10, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v9, v10, :cond_16b

    iget-boolean v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v9, :cond_16b

    .line 1423
    const-string v9, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    :cond_150
    :goto_150
    const-string v9, "\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 1429
    invoke-direct {p0, p1, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    .line 1430
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1431
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v9}, Lfi/iki/elonen/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 1409
    .end local v6    # "pending":J
    :cond_165
    const-string v9, "close"

    goto :goto_110

    .line 1421
    :cond_168
    const-wide/16 v6, 0x0

    goto :goto_141

    .line 1424
    .restart local v6    # "pending":J
    :cond_16b
    iget-boolean v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v9, :cond_150

    .line 1425
    iget-object v9, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-static {v5, v9, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_174} :catch_20

    move-result-wide v6

    goto :goto_150
.end method

.method public setChunkedTransfer(Z)V
    .registers 2
    .param p1, "chunkedTransfer"    # Z

    .prologue
    .line 1503
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    .line 1504
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 1507
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 1508
    return-void
.end method

.method public setGzipEncoding(Z)V
    .registers 2
    .param p1, "encodeAsGzip"    # Z

    .prologue
    .line 1363
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    .line 1364
    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 2
    .param p1, "useKeepAlive"    # Z

    .prologue
    .line 1367
    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    .line 1368
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1511
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 1512
    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .registers 2
    .param p1, "requestMethod"    # Lfi/iki/elonen/NanoHTTPD$Method;

    .prologue
    .line 1515
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 1516
    return-void
.end method

.method public setStatus(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;)V
    .registers 2
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .prologue
    .line 1519
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    .line 1520
    return-void
.end method

###### Class fi.iki.elonen.NanoHTTPD.Response.ChunkedOutputStream (fi.iki.elonen.NanoHTTPD$Response$ChunkedOutputStream)
.class Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkedOutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1240
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "0\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1266
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1244
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 1247
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->write([BII)V

    .line 1248
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->write([BII)V

    .line 1253
    return-void
.end method

.method public write([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1257
    if-nez p3, :cond_3

    .line 1262
    :goto_2
    return-void

    .line 1259
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "%x\r\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1260
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1261
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2
.end method

###### Class fi.iki.elonen.NanoHTTPD.Response.IStatus (fi.iki.elonen.NanoHTTPD$Response$IStatus)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$Response$IStatus;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatus"
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getRequestStatus()I
.end method

###### Class fi.iki.elonen.NanoHTTPD.Response.Status (fi.iki.elonen.NanoHTTPD$Response$Status)
.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfi/iki/elonen/NanoHTTPD$Response$Status;",
        ">;",
        "Lfi/iki/elonen/NanoHTTPD$Response$IStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1189
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "SWITCH_PROTOCOL"

    const/16 v2, 0x65

    const-string v3, "Switching Protocols"

    invoke-direct {v0, v1, v5, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1190
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v6, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1191
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v7, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1192
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v8, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1193
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v9, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1194
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "PARTIAL_CONTENT"

    const/4 v2, 0x5

    const/16 v3, 0xce

    const-string v4, "Partial Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1195
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "REDIRECT"

    const/4 v2, 0x6

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1196
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_MODIFIED"

    const/4 v2, 0x7

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1197
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x8

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1198
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x9

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1199
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0xa

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1200
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0xb

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1201
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0xc

    const/16 v3, 0x195

    const-string v4, "Method Not Allowed"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1202
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v2, 0xd

    const/16 v3, 0x196

    const-string v4, "Not Acceptable"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1203
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0xe

    const/16 v3, 0x198

    const-string v4, "Request Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1204
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "CONFLICT"

    const/16 v2, 0xf

    const/16 v3, 0x199

    const-string v4, "Conflict"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1205
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v2, 0x10

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1206
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0x11

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1207
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x12

    const/16 v3, 0x1f5

    const-string v4, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1208
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "UNSUPPORTED_HTTP_VERSION"

    const/16 v2, 0x13

    const/16 v3, 0x1f9

    const-string v4, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1188
    const/16 v0, 0x14

    new-array v0, v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CREATED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->ACCEPTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v8

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->PARTIAL_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REDIRECT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_MODIFIED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNAUTHORIZED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->FORBIDDEN:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->METHOD_NOT_ALLOWED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_ACCEPTABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->REQUEST_TIMEOUT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->CONFLICT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->RANGE_NOT_SATISFIABLE:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_IMPLEMENTED:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;->UNSUPPORTED_HTTP_VERSION:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    aput-object v2, v0, v1

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "requestStatus"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1215
    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    .line 1216
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    .line 1217
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1188
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .registers 1

    .prologue
    .line 1188
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->$VALUES:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .registers 2

    .prologue
    .line 1226
    iget v0, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->requestStatus:I

    return v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.ResponseException (fi.iki.elonen.NanoHTTPD$ResponseException)
.class public final Lfi/iki/elonen/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lfi/iki/elonen/NanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V
    .registers 3
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1530
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1531
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1532
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "status"    # Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1535
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1536
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 1537
    return-void
.end method


# virtual methods
.method public getStatus()Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .registers 2

    .prologue
    .line 1540
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ResponseException;->status:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    return-object v0
.end method

###### Class fi.iki.elonen.NanoHTTPD.SecureServerSocketFactory (fi.iki.elonen.NanoHTTPD$SecureServerSocketFactory)
.class public Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureServerSocketFactory"
.end annotation


# instance fields
.field private sslProtocols:[Ljava/lang/String;

.field private sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLServerSocketFactory;[Ljava/lang/String;)V
    .registers 3
    .param p1, "sslServerSocketFactory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p2, "sslProtocols"    # [Ljava/lang/String;

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 501
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    .line 502
    return-void
.end method


# virtual methods
.method public create()Ljava/net/ServerSocket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "ss":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslServerSocketFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    .end local v0    # "ss":Ljavax/net/ssl/SSLServerSocket;
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 508
    .restart local v0    # "ss":Ljavax/net/ssl/SSLServerSocket;
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 509
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$SecureServerSocketFactory;->sslProtocols:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 513
    :goto_13
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    .line 514
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 515
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 516
    return-object v0

    .line 511
    :cond_1d
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_13
.end method

###### Class fi.iki.elonen.NanoHTTPD.ServerRunnable (fi.iki.elonen.NanoHTTPD$ServerRunnable)
.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private final timeout:I


# direct methods
.method private constructor <init>(Lfi/iki/elonen/NanoHTTPD;I)V
    .registers 4
    .param p2, "timeout"    # I

    .prologue
    .line 1555
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 1556
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    .line 1557
    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoHTTPD;ILfi/iki/elonen/NanoHTTPD$1;)V
    .registers 4
    .param p1, "x0"    # Lfi/iki/elonen/NanoHTTPD;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lfi/iki/elonen/NanoHTTPD$1;

    .prologue
    .line 1547
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;-><init>(Lfi/iki/elonen/NanoHTTPD;I)V

    return-void
.end method

.method static synthetic access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    .prologue
    .line 1547
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return v0
.end method

.method static synthetic access$1500(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .registers 2
    .param p0, "x0"    # Lfi/iki/elonen/NanoHTTPD$ServerRunnable;

    .prologue
    .line 1547
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1562
    :try_start_0
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v4

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$800(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v6}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 1563
    const/4 v3, 0x1

    iput-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_62

    .line 1570
    :cond_25
    :try_start_25
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 1571
    .local v1, "finalAccept":Ljava/net/Socket;
    iget v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v3, :cond_38

    .line 1572
    iget v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1574
    :cond_38
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1575
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v3, v3, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    move-result-object v4

    invoke-interface {v3, v4}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_49} :catch_66

    .line 1579
    .end local v1    # "finalAccept":Ljava/net/Socket;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_49
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1580
    :goto_55
    return-void

    .line 1562
    :cond_56
    :try_start_56
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v5}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_62

    goto :goto_1f

    .line 1564
    :catch_62
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    goto :goto_55

    .line 1576
    .end local v0    # "e":Ljava/io/IOException;
    :catch_66
    move-exception v0

    .line 1577
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Communication with the client broken"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49
.end method

###### Class fi.iki.elonen.NanoHTTPD.ServerSocketFactory (fi.iki.elonen.NanoHTTPD$ServerSocketFactory)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServerSocketFactory"
.end annotation


# virtual methods
.method public abstract create()Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class fi.iki.elonen.NanoHTTPD.TempFile (fi.iki.elonen.NanoHTTPD$TempFile)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$TempFile;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFile"
.end annotation


# virtual methods
.method public abstract delete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract open()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class fi.iki.elonen.NanoHTTPD.TempFileManager (fi.iki.elonen.NanoHTTPD$TempFileManager)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$TempFileManager;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFileManager"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createTempFile(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class fi.iki.elonen.NanoHTTPD.TempFileManagerFactory (fi.iki.elonen.NanoHTTPD$TempFileManagerFactory)
.class public interface abstract Lfi/iki/elonen/NanoHTTPD$TempFileManagerFactory;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempFileManagerFactory"
.end annotation


# virtual methods
.method public abstract create()Lfi/iki/elonen/NanoHTTPD$TempFileManager;
.end method
