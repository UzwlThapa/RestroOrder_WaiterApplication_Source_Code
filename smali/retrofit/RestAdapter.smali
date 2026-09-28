###### Class retrofit.RestAdapter (retrofit.RestAdapter)
.class public Lretrofit/RestAdapter;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RestAdapter$Builder;,
        Lretrofit/RestAdapter$RestHandler;,
        Lretrofit/RestAdapter$LogLevel;,
        Lretrofit/RestAdapter$Log;
    }
.end annotation


# static fields
.field static final IDLE_THREAD_NAME:Ljava/lang/String; = "Retrofit-Idle"

.field static final THREAD_PREFIX:Ljava/lang/String; = "Retrofit-"


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final clientProvider:Lretrofit/client/Client$Provider;

.field final converter:Lretrofit/converter/Converter;

.field final errorHandler:Lretrofit/ErrorHandler;

.field final httpExecutor:Ljava/util/concurrent/Executor;

.field final log:Lretrofit/RestAdapter$Log;

.field volatile logLevel:Lretrofit/RestAdapter$LogLevel;

.field private final profiler:Lretrofit/Profiler;

.field final requestInterceptor:Lretrofit/RequestInterceptor;

.field private rxSupport:Lretrofit/RxSupport;

.field final server:Lretrofit/Endpoint;

.field private final serviceMethodInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V
    .registers 12
    .param p1, "server"    # Lretrofit/Endpoint;
    .param p2, "clientProvider"    # Lretrofit/client/Client$Provider;
    .param p3, "httpExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "requestInterceptor"    # Lretrofit/RequestInterceptor;
    .param p6, "converter"    # Lretrofit/converter/Converter;
    .param p7, "profiler"    # Lretrofit/Profiler;
    .param p8, "errorHandler"    # Lretrofit/ErrorHandler;
    .param p9, "log"    # Lretrofit/RestAdapter$Log;
    .param p10, "logLevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    .line 166
    iput-object p2, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    .line 167
    iput-object p3, p0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 168
    iput-object p4, p0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 169
    iput-object p5, p0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 170
    iput-object p6, p0, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    .line 171
    iput-object p7, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    .line 172
    iput-object p8, p0, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    .line 173
    iput-object p9, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    .line 174
    iput-object p10, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;Lretrofit/RestAdapter$1;)V
    .registers 12
    .param p1, "x0"    # Lretrofit/Endpoint;
    .param p2, "x1"    # Lretrofit/client/Client$Provider;
    .param p3, "x2"    # Ljava/util/concurrent/Executor;
    .param p4, "x3"    # Ljava/util/concurrent/Executor;
    .param p5, "x4"    # Lretrofit/RequestInterceptor;
    .param p6, "x5"    # Lretrofit/converter/Converter;
    .param p7, "x6"    # Lretrofit/Profiler;
    .param p8, "x7"    # Lretrofit/ErrorHandler;
    .param p9, "x8"    # Lretrofit/RestAdapter$Log;
    .param p10, "x9"    # Lretrofit/RestAdapter$LogLevel;
    .param p11, "x10"    # Lretrofit/RestAdapter$1;

    .prologue
    .line 107
    invoke-direct/range {p0 .. p10}, Lretrofit/RestAdapter;-><init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;)V

    return-void
.end method

.method static synthetic access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;
    .registers 2
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 107
    iget-object v0, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;

    return-object v0
.end method

.method static synthetic access$002(Lretrofit/RestAdapter;Lretrofit/RxSupport;)Lretrofit/RxSupport;
    .registers 2
    .param p0, "x0"    # Lretrofit/RestAdapter;
    .param p1, "x1"    # Lretrofit/RxSupport;

    .prologue
    .line 107
    iput-object p1, p0, Lretrofit/RestAdapter;->rxSupport:Lretrofit/RxSupport;

    return-object p1
.end method

.method static synthetic access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    .registers 2
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 107
    iget-object v0, p0, Lretrofit/RestAdapter;->profiler:Lretrofit/Profiler;

    return-object v0
.end method

.method static synthetic access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;
    .registers 2
    .param p0, "x0"    # Lretrofit/RestAdapter;

    .prologue
    .line 107
    iget-object v0, p0, Lretrofit/RestAdapter;->clientProvider:Lretrofit/client/Client$Provider;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lretrofit/RestMethodInfo;
    .param p2, "x2"    # Lretrofit/client/Request;

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lretrofit/RestAdapter;->getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .registers 6
    .param p0, "x0"    # Lretrofit/RestAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lretrofit/client/Response;
    .param p3, "x3"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lretrofit/RestAdapter;->logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lretrofit/RestAdapter;Lretrofit/mime/TypedInput;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lretrofit/RestAdapter;
    .param p1, "x1"    # Lretrofit/mime/TypedInput;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lretrofit/RestAdapter;->logResponseBody(Lretrofit/mime/TypedInput;Ljava/lang/Object;)V

    return-void
.end method

.method static getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/RestMethodInfo;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    monitor-enter p0

    .line 211
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestMethodInfo;

    .line 212
    .local v0, "methodInfo":Lretrofit/RestMethodInfo;
    if-nez v0, :cond_11

    .line 213
    new-instance v0, Lretrofit/RestMethodInfo;

    .end local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    invoke-direct {v0, p1}, Lretrofit/RestMethodInfo;-><init>(Ljava/lang/reflect/Method;)V

    .line 214
    .restart local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_11
    monitor-exit p0

    return-object v0

    .line 217
    .end local v0    # "methodInfo":Lretrofit/RestMethodInfo;
    :catchall_13
    move-exception v1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static getRequestInfo(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    .registers 11
    .param p0, "serverUrl"    # Ljava/lang/String;
    .param p1, "methodDetails"    # Lretrofit/RestMethodInfo;
    .param p2, "request"    # Lretrofit/client/Request;

    .prologue
    .line 519
    const-wide/16 v4, 0x0

    .line 520
    .local v4, "contentLength":J
    const/4 v6, 0x0

    .line 522
    .local v6, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v7

    .line 523
    .local v7, "body":Lretrofit/mime/TypedOutput;
    if-eqz v7, :cond_11

    .line 524
    invoke-interface {v7}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v4

    .line 525
    invoke-interface {v7}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v6

    .line 528
    :cond_11
    new-instance v0, Lretrofit/Profiler$RequestInformation;

    iget-object v1, p1, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iget-object v3, p1, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lretrofit/Profiler$RequestInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method private logAndReplaceResponse(Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    .registers 18
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lretrofit/client/Response;
    .param p3, "elapsedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, "<--- HTTP %s %s (%sms)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lretrofit/client/Response;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 466
    iget-object v7, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_b8

    .line 467
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lretrofit/client/Header;

    .line 468
    .local v6, "header":Lretrofit/client/Header;
    iget-object v8, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v6}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 471
    .end local v6    # "header":Lretrofit/client/Header;
    :cond_4f
    const-wide/16 v4, 0x0

    .line 472
    .local v4, "bodySize":J
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 473
    .local v0, "body":Lretrofit/mime/TypedInput;
    if-eqz v0, :cond_a3

    .line 474
    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v4

    .line 476
    iget-object v7, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v7}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v7

    sget-object v8, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v8}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_a3

    .line 477
    invoke-virtual {p2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7a

    .line 478
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, ""

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 481
    :cond_7a
    instance-of v7, v0, Lretrofit/mime/TypedByteArray;

    if-nez v7, :cond_86

    .line 483
    invoke-static {p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object p2

    .line 484
    invoke-virtual {p2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    :cond_86
    move-object v7, v0

    .line 487
    check-cast v7, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v7}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v1

    .line 488
    .local v1, "bodyBytes":[B
    array-length v7, v1

    int-to-long v4, v7

    .line 489
    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "bodyMime":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "bodyCharset":Ljava/lang/String;
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 495
    .end local v1    # "bodyBytes":[B
    .end local v2    # "bodyCharset":Ljava/lang/String;
    .end local v3    # "bodyMime":Ljava/lang/String;
    :cond_a3
    iget-object v7, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v8, "<--- END HTTP (%s-byte body)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 498
    .end local v0    # "body":Lretrofit/mime/TypedInput;
    .end local v4    # "bodySize":J
    :cond_b8
    return-object p2
.end method

.method private logResponseBody(Lretrofit/mime/TypedInput;Ljava/lang/Object;)V
    .registers 5
    .param p1, "body"    # Lretrofit/mime/TypedInput;
    .param p2, "convert"    # Ljava/lang/Object;

    .prologue
    .line 502
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 503
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v1, "<--- BODY:"

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 506
    :cond_1e
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lretrofit/Utils;->validateServiceClass(Ljava/lang/Class;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit/RestAdapter$RestHandler;

    .line 195
    invoke-virtual {p0, p1}, Lretrofit/RestAdapter;->getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lretrofit/RestAdapter$RestHandler;-><init>(Lretrofit/RestAdapter;Ljava/util/Map;)V

    .line 194
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lretrofit/RestAdapter$LogLevel;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method getMethodInfoCache(Ljava/lang/Class;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    monitor-enter v2

    .line 200
    :try_start_3
    iget-object v1, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 201
    .local v0, "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    if-nez v0, :cond_17

    .line 202
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    .restart local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iget-object v1, p0, Lretrofit/RestAdapter;->serviceMethodInfoCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_17
    monitor-exit v2

    return-object v0

    .line 206
    .end local v0    # "methodInfoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;[Ljava/lang/Object;)Lretrofit/client/Request;
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "request"    # Lretrofit/client/Request;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v12, "---> %s %s %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_112

    .line 414
    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_39
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lretrofit/client/Header;

    .line 415
    .local v9, "header":Lretrofit/client/Header;
    move-object/from16 v0, p0

    iget-object v12, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v9}, Lretrofit/client/Header;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 418
    .end local v9    # "header":Lretrofit/client/Header;
    :cond_51
    const-string v8, "no"

    .line 419
    .local v8, "bodySize":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v2

    .line 420
    .local v2, "body":Lretrofit/mime/TypedOutput;
    if-eqz v2, :cond_fc

    .line 421
    invoke-interface {v2}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "bodyMime":Ljava/lang/String;
    if-eqz v5, :cond_79

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 426
    :cond_79
    invoke-interface {v2}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v6

    .line 427
    .local v6, "bodyLength":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-byte"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 428
    const-wide/16 v12, -0x1

    cmp-long v11, v6, v12

    if-eqz v11, :cond_b0

    .line 429
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 432
    :cond_b0
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_113

    .line 433
    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d3

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v12, ""

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 436
    :cond_d3
    instance-of v11, v2, Lretrofit/mime/TypedByteArray;

    if-nez v11, :cond_df

    .line 438
    invoke-static/range {p2 .. p2}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Request;)Lretrofit/client/Request;

    move-result-object p2

    .line 439
    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v2

    :cond_df
    move-object v11, v2

    .line 442
    check-cast v11, Lretrofit/mime/TypedByteArray;

    invoke-virtual {v11}, Lretrofit/mime/TypedByteArray;->getBytes()[B

    move-result-object v3

    .line 443
    .local v3, "bodyBytes":[B
    invoke-interface {v2}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "bodyCharset":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 455
    .end local v3    # "bodyBytes":[B
    .end local v4    # "bodyCharset":Ljava/lang/String;
    .end local v5    # "bodyMime":Ljava/lang/String;
    .end local v6    # "bodyLength":J
    :cond_fc
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v12, "---> END %s (%s body)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 458
    .end local v2    # "body":Lretrofit/mime/TypedOutput;
    .end local v8    # "bodySize":Ljava/lang/String;
    :cond_112
    return-object p2

    .line 445
    .restart local v2    # "body":Lretrofit/mime/TypedOutput;
    .restart local v5    # "bodyMime":Ljava/lang/String;
    .restart local v6    # "bodyLength":J
    .restart local v8    # "bodySize":Ljava/lang/String;
    :cond_113
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v11}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v11

    sget-object v12, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v12}, Lretrofit/RestAdapter$LogLevel;->ordinal()I

    move-result v12

    if-lt v11, v12, :cond_fc

    .line 446
    invoke-virtual/range {p2 .. p2}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_136

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v12, "---> REQUEST:"

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 449
    :cond_136
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_137
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v10, v11, :cond_fc

    .line 450
    move-object/from16 v0, p0

    iget-object v11, v0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p3, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto :goto_137
.end method

.method logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, "---- ERROR %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p2, :cond_31

    .end local p2    # "url":Ljava/lang/String;
    :goto_a
    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 512
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 513
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lretrofit/RestAdapter;->log:Lretrofit/RestAdapter$Log;

    const-string v2, "---- END ERROR"

    invoke-interface {v1, v2}, Lretrofit/RestAdapter$Log;->log(Ljava/lang/String;)V

    .line 515
    return-void

    .line 510
    .end local v0    # "sw":Ljava/io/StringWriter;
    .restart local p2    # "url":Ljava/lang/String;
    :cond_31
    const-string p2, ""

    goto :goto_a
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)V
    .registers 4
    .param p1, "loglevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 179
    iget-object v0, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    if-nez v0, :cond_c

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_c
    iput-object p1, p0, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 183
    return-void
.end method

###### Class retrofit.RestAdapter.AnonymousClass1 (retrofit.RestAdapter$1)
.class synthetic Lretrofit/RestAdapter$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class retrofit.RestAdapter.Builder (retrofit.RestAdapter$Builder)
.class public Lretrofit/RestAdapter$Builder;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private clientProvider:Lretrofit/client/Client$Provider;

.field private converter:Lretrofit/converter/Converter;

.field private endpoint:Lretrofit/Endpoint;

.field private errorHandler:Lretrofit/ErrorHandler;

.field private httpExecutor:Ljava/util/concurrent/Executor;

.field private log:Lretrofit/RestAdapter$Log;

.field private logLevel:Lretrofit/RestAdapter$LogLevel;

.field private profiler:Lretrofit/Profiler;

.field private requestInterceptor:Lretrofit/RequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    return-void
.end method

.method private ensureSaneDefaults()V
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    if-nez v0, :cond_e

    .line 688
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultConverter()Lretrofit/converter/Converter;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    .line 690
    :cond_e
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    if-nez v0, :cond_1c

    .line 691
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultClient()Lretrofit/client/Client$Provider;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    .line 693
    :cond_1c
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2a

    .line 694
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultHttpExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 696
    :cond_2a
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_38

    .line 697
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 699
    :cond_38
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    if-nez v0, :cond_40

    .line 700
    sget-object v0, Lretrofit/ErrorHandler;->DEFAULT:Lretrofit/ErrorHandler;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    .line 702
    :cond_40
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    if-nez v0, :cond_4e

    .line 703
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/Platform;->defaultLog()Lretrofit/RestAdapter$Log;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    .line 705
    :cond_4e
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    if-nez v0, :cond_56

    .line 706
    sget-object v0, Lretrofit/RequestInterceptor;->NONE:Lretrofit/RequestInterceptor;

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 708
    :cond_56
    return-void
.end method


# virtual methods
.method public build()Lretrofit/RestAdapter;
    .registers 13

    .prologue
    .line 678
    iget-object v0, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    if-nez v0, :cond_c

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_c
    invoke-direct {p0}, Lretrofit/RestAdapter$Builder;->ensureSaneDefaults()V

    .line 682
    new-instance v0, Lretrofit/RestAdapter;

    iget-object v1, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    iget-object v2, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    iget-object v3, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    iget-object v6, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    iget-object v7, p0, Lretrofit/RestAdapter$Builder;->profiler:Lretrofit/Profiler;

    iget-object v8, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    iget-object v9, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    iget-object v10, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lretrofit/RestAdapter;-><init>(Lretrofit/Endpoint;Lretrofit/client/Client$Provider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lretrofit/RequestInterceptor;Lretrofit/converter/Converter;Lretrofit/Profiler;Lretrofit/ErrorHandler;Lretrofit/RestAdapter$Log;Lretrofit/RestAdapter$LogLevel;Lretrofit/RestAdapter$1;)V

    return-object v0
.end method

.method public setClient(Lretrofit/client/Client$Provider;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "clientProvider"    # Lretrofit/client/Client$Provider;

    .prologue
    .line 592
    if-nez p1, :cond_a

    .line 593
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client provider may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->clientProvider:Lretrofit/client/Client$Provider;

    .line 596
    return-object p0
.end method

.method public setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "client"    # Lretrofit/client/Client;

    .prologue
    .line 580
    if-nez p1, :cond_a

    .line 581
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_a
    new-instance v0, Lretrofit/RestAdapter$Builder$1;

    invoke-direct {v0, p0, p1}, Lretrofit/RestAdapter$Builder$1;-><init>(Lretrofit/RestAdapter$Builder;Lretrofit/client/Client;)V

    invoke-virtual {p0, v0}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client$Provider;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "converter"    # Lretrofit/converter/Converter;

    .prologue
    .line 630
    if-nez p1, :cond_a

    .line 631
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Converter may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->converter:Lretrofit/converter/Converter;

    .line 634
    return-object p0
.end method

.method public setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 562
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 563
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Endpoint may not be blank."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_14
    invoke-static {p1}, Lretrofit/Endpoints;->newFixedEndpoint(Ljava/lang/String;)Lretrofit/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    .line 566
    return-object p0
.end method

.method public setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "endpoint"    # Lretrofit/Endpoint;

    .prologue
    .line 571
    if-nez p1, :cond_a

    .line 572
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->endpoint:Lretrofit/Endpoint;

    .line 575
    return-object p0
.end method

.method public setErrorHandler(Lretrofit/ErrorHandler;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "errorHandler"    # Lretrofit/ErrorHandler;

    .prologue
    .line 651
    if-nez p1, :cond_a

    .line 652
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error handler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->errorHandler:Lretrofit/ErrorHandler;

    .line 655
    return-object p0
.end method

.method public setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;
    .registers 5
    .param p1, "httpExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 608
    if-nez p1, :cond_a

    .line 609
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTTP executor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_a
    if-nez p2, :cond_11

    .line 612
    new-instance p2, Lretrofit/Utils$SynchronousExecutor;

    .end local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    invoke-direct {p2}, Lretrofit/Utils$SynchronousExecutor;-><init>()V

    .line 614
    .restart local p2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    :cond_11
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 615
    iput-object p2, p0, Lretrofit/RestAdapter$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 616
    return-object p0
.end method

.method public setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "log"    # Lretrofit/RestAdapter$Log;

    .prologue
    .line 660
    if-nez p1, :cond_a

    .line 661
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->log:Lretrofit/RestAdapter$Log;

    .line 664
    return-object p0
.end method

.method public setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "logLevel"    # Lretrofit/RestAdapter$LogLevel;

    .prologue
    .line 669
    if-nez p1, :cond_a

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Log level may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->logLevel:Lretrofit/RestAdapter$LogLevel;

    .line 673
    return-object p0
.end method

.method public setProfiler(Lretrofit/Profiler;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "profiler"    # Lretrofit/Profiler;

    .prologue
    .line 639
    if-nez p1, :cond_a

    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Profiler may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->profiler:Lretrofit/Profiler;

    .line 643
    return-object p0
.end method

.method public setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;
    .registers 4
    .param p1, "requestInterceptor"    # Lretrofit/RequestInterceptor;

    .prologue
    .line 621
    if-nez p1, :cond_a

    .line 622
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Request interceptor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_a
    iput-object p1, p0, Lretrofit/RestAdapter$Builder;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 625
    return-object p0
.end method

###### Class retrofit.RestAdapter.Builder.AnonymousClass1 (retrofit.RestAdapter$Builder$1)
.class Lretrofit/RestAdapter$Builder$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RestAdapter$Builder;

.field final synthetic val$client:Lretrofit/client/Client;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$Builder;Lretrofit/client/Client;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit/RestAdapter$Builder;

    .prologue
    .line 583
    iput-object p1, p0, Lretrofit/RestAdapter$Builder$1;->this$0:Lretrofit/RestAdapter$Builder;

    iput-object p2, p0, Lretrofit/RestAdapter$Builder$1;->val$client:Lretrofit/client/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lretrofit/RestAdapter$Builder$1;->val$client:Lretrofit/client/Client;

    return-object v0
.end method

###### Class retrofit.RestAdapter.Log (retrofit.RestAdapter$Log)
.class public interface abstract Lretrofit/RestAdapter$Log;
.super Ljava/lang/Object;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Log"
.end annotation


# static fields
.field public static final NONE:Lretrofit/RestAdapter$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    new-instance v0, Lretrofit/RestAdapter$Log$1;

    invoke-direct {v0}, Lretrofit/RestAdapter$Log$1;-><init>()V

    sput-object v0, Lretrofit/RestAdapter$Log;->NONE:Lretrofit/RestAdapter$Log;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method

###### Class retrofit.RestAdapter.Log.AnonymousClass1 (retrofit.RestAdapter$Log$1)
.class final Lretrofit/RestAdapter$Log$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lretrofit/RestAdapter$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

###### Class retrofit.RestAdapter.LogLevel (retrofit.RestAdapter$LogLevel)
.class public final enum Lretrofit/RestAdapter$LogLevel;
.super Ljava/lang/Enum;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lretrofit/RestAdapter$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lretrofit/RestAdapter$LogLevel;

.field public static final enum BASIC:Lretrofit/RestAdapter$LogLevel;

.field public static final enum FULL:Lretrofit/RestAdapter$LogLevel;

.field public static final enum HEADERS:Lretrofit/RestAdapter$LogLevel;

.field public static final enum HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

.field public static final enum NONE:Lretrofit/RestAdapter$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lretrofit/RestAdapter$LogLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lretrofit/RestAdapter$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    .line 128
    new-instance v0, Lretrofit/RestAdapter$LogLevel;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lretrofit/RestAdapter$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    .line 130
    new-instance v0, Lretrofit/RestAdapter$LogLevel;

    const-string v1, "HEADERS"

    invoke-direct {v0, v1, v4}, Lretrofit/RestAdapter$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    .line 132
    new-instance v0, Lretrofit/RestAdapter$LogLevel;

    const-string v1, "HEADERS_AND_ARGS"

    invoke-direct {v0, v1, v5}, Lretrofit/RestAdapter$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    .line 138
    new-instance v0, Lretrofit/RestAdapter$LogLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v6}, Lretrofit/RestAdapter$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Lretrofit/RestAdapter$LogLevel;

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS:Lretrofit/RestAdapter$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->HEADERS_AND_ARGS:Lretrofit/RestAdapter$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lretrofit/RestAdapter$LogLevel;->$VALUES:[Lretrofit/RestAdapter$LogLevel;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lretrofit/RestAdapter$LogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lretrofit/RestAdapter$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method

.method public static values()[Lretrofit/RestAdapter$LogLevel;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->$VALUES:[Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, [Lretrofit/RestAdapter$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lretrofit/RestAdapter$LogLevel;

    return-object v0
.end method


# virtual methods
.method public log()Z
    .registers 2

    .prologue
    .line 141
    sget-object v0, Lretrofit/RestAdapter$LogLevel;->NONE:Lretrofit/RestAdapter$LogLevel;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

###### Class retrofit.RestAdapter.RestHandler (retrofit.RestAdapter$RestHandler)
.class Lretrofit/RestAdapter$RestHandler;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestHandler"
.end annotation


# instance fields
.field private final methodDetailsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lretrofit/RestAdapter;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/RestMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "methodDetailsCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lretrofit/RestMethodInfo;>;"
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    .line 225
    return-void
.end method

.method static synthetic access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "x0"    # Lretrofit/RestAdapter$RestHandler;
    .param p1, "x1"    # Lretrofit/RequestInterceptor;
    .param p2, "x2"    # Lretrofit/RestMethodInfo;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28
    .param p1, "requestInterceptor"    # Lretrofit/RequestInterceptor;
    .param p2, "methodInfo"    # Lretrofit/RestMethodInfo;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 292
    const/16 v20, 0x0

    .line 294
    .local v20, "url":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lretrofit/RestMethodInfo;->init()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->server:Lretrofit/Endpoint;

    invoke-interface {v2}, Lretrofit/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "serverUrl":Ljava/lang/String;
    new-instance v12, Lretrofit/RequestBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, p2

    invoke-direct {v12, v14, v0, v2}, Lretrofit/RequestBuilder;-><init>(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/converter/Converter;)V

    .line 298
    .local v12, "requestBuilder":Lretrofit/RequestBuilder;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lretrofit/RequestBuilder;->setArguments([Ljava/lang/Object;)V

    .line 300
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 302
    invoke-virtual {v12}, Lretrofit/RequestBuilder;->build()Lretrofit/client/Request;

    move-result-object v11

    .line 303
    .local v11, "request":Lretrofit/client/Request;
    invoke-virtual {v11}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 305
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_71

    .line 307
    const-string v2, "?"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 308
    .local v15, "substrEnd":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_49

    .line 309
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v15

    .line 311
    :cond_49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Retrofit-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 312
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 311
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 315
    .end local v15    # "substrEnd":I
    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    const-string v22, "HTTP"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v11, v1}, Lretrofit/RestAdapter;->logAndReplaceRequest(Ljava/lang/String;Lretrofit/client/Request;[Ljava/lang/Object;)Lretrofit/client/Request;

    move-result-object v11

    .line 320
    :cond_8b
    const/4 v7, 0x0

    .line 321
    .local v7, "profilerObject":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    if-eqz v2, :cond_a2

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/Profiler;->beforeCall()Ljava/lang/Object;

    move-result-object v7

    .line 325
    .end local v7    # "profilerObject":Ljava/lang/Object;
    :cond_a2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 326
    .local v16, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2}, Lretrofit/RestAdapter;->access$300(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/client/Client$Provider;->get()Lretrofit/client/Client;

    move-result-object v2

    invoke-interface {v2, v11}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v13

    .line 327
    .local v13, "response":Lretrofit/client/Response;
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v16

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 329
    .local v4, "elapsedTime":J
    invoke-virtual {v13}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    .line 330
    .local v6, "statusCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    if-eqz v2, :cond_e3

    .line 331
    move-object/from16 v0, p2

    invoke-static {v14, v0, v11}, Lretrofit/RestAdapter;->access$400(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;

    move-result-object v3

    .line 333
    .local v3, "requestInfo":Lretrofit/Profiler$RequestInformation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2}, Lretrofit/RestAdapter;->access$200(Lretrofit/RestAdapter;)Lretrofit/Profiler;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lretrofit/Profiler;->afterCall(Lretrofit/Profiler$RequestInformation;JILjava/lang/Object;)V

    .line 336
    .end local v3    # "requestInfo":Lretrofit/Profiler$RequestInformation;
    :cond_e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v20

    invoke-static {v2, v0, v13, v4, v5}, Lretrofit/RestAdapter;->access$500(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;

    move-result-object v13

    .line 341
    :cond_f9
    move-object/from16 v0, p2

    iget-object v0, v0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    .line 343
    .local v19, "type":Ljava/lang/reflect/Type;
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_222

    const/16 v2, 0x12c

    if-ge v6, v2, :cond_222

    .line 345
    const-class v2, Lretrofit/client/Response;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 346
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isStreaming:Z

    if-nez v2, :cond_11b

    .line 348
    invoke-static {v13}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v13

    .line 351
    :cond_11b
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_11f
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_11f} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11f} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11f} :catch_235
    .catchall {:try_start_2 .. :try_end_11f} :catchall_1de

    if-eqz v2, :cond_134

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_132

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_132
    move-object v9, v13

    :cond_133
    :goto_133
    return-object v9

    .line 354
    :cond_134
    :try_start_134
    new-instance v9, Lretrofit/ResponseWrapper;

    invoke-direct {v9, v13, v13}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_139
    .catch Lretrofit/RetrofitError; {:try_start_134 .. :try_end_139} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_139} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_134 .. :try_end_139} :catch_235
    .catchall {:try_start_134 .. :try_end_139} :catchall_1de

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_133

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_133

    .line 357
    :cond_14b
    :try_start_14b
    invoke-virtual {v13}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v8

    .line 358
    .local v8, "body":Lretrofit/mime/TypedInput;
    if-nez v8, :cond_182

    .line 359
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_155
    .catch Lretrofit/RetrofitError; {:try_start_14b .. :try_end_155} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_155} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_155} :catch_235
    .catchall {:try_start_14b .. :try_end_155} :catchall_1de

    if-eqz v2, :cond_16a

    .line 360
    const/4 v9, 0x0

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_133

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_133

    .line 362
    :cond_16a
    :try_start_16a
    new-instance v9, Lretrofit/ResponseWrapper;

    const/4 v2, 0x0

    invoke-direct {v9, v13, v2}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_170
    .catch Lretrofit/RetrofitError; {:try_start_16a .. :try_end_170} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_170} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_170} :catch_235
    .catchall {:try_start_16a .. :try_end_170} :catchall_1de

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_133

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_133

    .line 365
    :cond_182
    :try_start_182
    new-instance v21, Lretrofit/ExceptionCatchingTypedInput;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lretrofit/ExceptionCatchingTypedInput;-><init>(Lretrofit/mime/TypedInput;)V
    :try_end_189
    .catch Lretrofit/RetrofitError; {:try_start_182 .. :try_end_189} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_189} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_182 .. :try_end_189} :catch_235
    .catchall {:try_start_182 .. :try_end_189} :catchall_1de

    .line 367
    .local v21, "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :try_start_189
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 368
    .local v9, "convert":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v2, v8, v9}, Lretrofit/RestAdapter;->access$600(Lretrofit/RestAdapter;Lretrofit/mime/TypedInput;Ljava/lang/Object;)V

    .line 369
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z
    :try_end_1a2
    .catch Lretrofit/converter/ConversionException; {:try_start_189 .. :try_end_1a2} :catch_1d0
    .catch Lretrofit/RetrofitError; {:try_start_189 .. :try_end_1a2} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1a2} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_1a2} :catch_235
    .catchall {:try_start_189 .. :try_end_1a2} :catchall_1de

    if-eqz v2, :cond_1b7

    .line 402
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_133

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v22, "Retrofit-Idle"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_133

    .line 372
    :cond_1b7
    :try_start_1b7
    new-instance v2, Lretrofit/ResponseWrapper;

    invoke-direct {v2, v13, v9}, Lretrofit/ResponseWrapper;-><init>(Lretrofit/client/Response;Ljava/lang/Object;)V
    :try_end_1bc
    .catch Lretrofit/converter/ConversionException; {:try_start_1b7 .. :try_end_1bc} :catch_1d0
    .catch Lretrofit/RetrofitError; {:try_start_1b7 .. :try_end_1bc} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1bc} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_1b7 .. :try_end_1bc} :catch_235
    .catchall {:try_start_1b7 .. :try_end_1bc} :catchall_1de

    .line 402
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    move/from16 v22, v0

    if-nez v22, :cond_1cd

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    const-string v23, "Retrofit-Idle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_1cd
    move-object v9, v2

    goto/16 :goto_133

    .line 373
    .end local v9    # "convert":Ljava/lang/Object;
    :catch_1d0
    move-exception v10

    .line 376
    .local v10, "e":Lretrofit/converter/ConversionException;
    :try_start_1d1
    invoke-virtual/range {v21 .. v21}, Lretrofit/ExceptionCatchingTypedInput;->threwException()Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 377
    invoke-virtual/range {v21 .. v21}, Lretrofit/ExceptionCatchingTypedInput;->getThrownException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1dc
    .catch Lretrofit/RetrofitError; {:try_start_1d1 .. :try_end_1dc} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1dc} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1dc} :catch_235
    .catchall {:try_start_1d1 .. :try_end_1dc} :catchall_1de

    .line 389
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lretrofit/mime/TypedInput;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    .end local v21    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :catch_1dc
    move-exception v10

    .line 390
    .local v10, "e":Lretrofit/RetrofitError;
    :try_start_1dd
    throw v10
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1de

    .line 402
    .end local v10    # "e":Lretrofit/RetrofitError;
    :catchall_1de
    move-exception v2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    move/from16 v22, v0

    if-nez v22, :cond_1f0

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    const-string v23, "Retrofit-Idle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_1f0
    throw v2

    .line 381
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v8    # "body":Lretrofit/mime/TypedInput;
    .local v10, "e":Lretrofit/converter/ConversionException;
    .restart local v11    # "request":Lretrofit/client/Request;
    .restart local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .restart local v13    # "response":Lretrofit/client/Response;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v16    # "start":J
    .restart local v19    # "type":Ljava/lang/reflect/Type;
    .restart local v21    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :cond_1f1
    const/4 v2, 0x0

    :try_start_1f2
    invoke-static {v13, v2}, Lretrofit/Utils;->replaceResponseBody(Lretrofit/client/Response;Lretrofit/mime/TypedInput;)Lretrofit/client/Response;

    move-result-object v13

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v13, v2, v1, v10}, Lretrofit/RetrofitError;->conversionError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_205
    .catch Lretrofit/RetrofitError; {:try_start_1f2 .. :try_end_205} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_205} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_1f2 .. :try_end_205} :catch_235
    .catchall {:try_start_1f2 .. :try_end_205} :catchall_1de

    .line 391
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v8    # "body":Lretrofit/mime/TypedInput;
    .end local v10    # "e":Lretrofit/converter/ConversionException;
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    .end local v21    # "wrapped":Lretrofit/ExceptionCatchingTypedInput;
    :catch_205
    move-exception v10

    .line 392
    .local v10, "e":Ljava/io/IOException;
    :try_start_206
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v2, v10, v0}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 395
    :cond_21b
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lretrofit/RetrofitError;->networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_222
    .catchall {:try_start_206 .. :try_end_222} :catchall_1de

    .line 387
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v4    # "elapsedTime":J
    .restart local v6    # "statusCode":I
    .restart local v11    # "request":Lretrofit/client/Request;
    .restart local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .restart local v13    # "response":Lretrofit/client/Response;
    .restart local v14    # "serverUrl":Ljava/lang/String;
    .restart local v16    # "start":J
    .restart local v19    # "type":Ljava/lang/reflect/Type;
    :cond_222
    :try_start_222
    invoke-static {v13}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lretrofit/client/Response;)Lretrofit/client/Response;

    move-result-object v13

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->converter:Lretrofit/converter/Converter;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v13, v2, v1}, Lretrofit/RetrofitError;->httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_235
    .catch Lretrofit/RetrofitError; {:try_start_222 .. :try_end_235} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_235} :catch_205
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_235} :catch_235
    .catchall {:try_start_222 .. :try_end_235} :catchall_1de

    .line 396
    .end local v4    # "elapsedTime":J
    .end local v6    # "statusCode":I
    .end local v11    # "request":Lretrofit/client/Request;
    .end local v12    # "requestBuilder":Lretrofit/RequestBuilder;
    .end local v13    # "response":Lretrofit/client/Response;
    .end local v14    # "serverUrl":Ljava/lang/String;
    .end local v16    # "start":J
    .end local v19    # "type":Ljava/lang/reflect/Type;
    :catch_235
    move-exception v18

    .line 397
    .local v18, "t":Ljava/lang/Throwable;
    :try_start_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v2, v2, Lretrofit/RestAdapter;->logLevel:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v2}, Lretrofit/RestAdapter$LogLevel;->log()Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lretrofit/RestAdapter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 400
    :cond_24d
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v2

    throw v2
    :try_end_256
    .catchall {:try_start_236 .. :try_end_256} :catchall_1de
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 232
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_c
    return-object v0

    .line 236
    :cond_d
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->methodDetailsCache:Ljava/util/Map;

    invoke-static {v0, p2}, Lretrofit/RestAdapter;->getMethodInfo(Ljava/util/Map;Ljava/lang/reflect/Method;)Lretrofit/RestMethodInfo;

    move-result-object v6

    .line 238
    .local v6, "methodInfo":Lretrofit/RestMethodInfo;
    iget-boolean v0, v6, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-eqz v0, :cond_34

    .line 240
    :try_start_17
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-direct {p0, v0, v6, p3}, Lretrofit/RestAdapter$RestHandler;->invokeRequest(Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Lretrofit/RetrofitError; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_c

    .line 241
    :catch_20
    move-exception v8

    .line 242
    .local v8, "error":Lretrofit/RetrofitError;
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    invoke-interface {v0, v8}, Lretrofit/ErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v9

    .line 243
    .local v9, "newError":Ljava/lang/Throwable;
    if-nez v9, :cond_33

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error handler returned null for wrapped exception."

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_33
    throw v9

    .line 251
    .end local v8    # "error":Lretrofit/RetrofitError;
    .end local v9    # "newError":Ljava/lang/Throwable;
    :cond_34
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_48

    .line 252
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asynchronous invocation requires calling setExecutors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_48
    iget-boolean v0, v6, Lretrofit/RestMethodInfo;->isObservable:Z

    if-eqz v0, :cond_86

    .line 256
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v0}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 257
    sget-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_7e

    .line 258
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    new-instance v1, Lretrofit/RxSupport;

    iget-object v3, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v3, v3, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v4, v4, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    iget-object v7, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v7, v7, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-direct {v1, v3, v4, v7}, Lretrofit/RxSupport;-><init>(Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptor;)V

    invoke-static {v0, v1}, Lretrofit/RestAdapter;->access$002(Lretrofit/RestAdapter;Lretrofit/RxSupport;)Lretrofit/RxSupport;

    .line 263
    :cond_6e
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    invoke-static {v0}, Lretrofit/RestAdapter;->access$000(Lretrofit/RestAdapter;)Lretrofit/RxSupport;

    move-result-object v0

    new-instance v1, Lretrofit/RestAdapter$RestHandler$1;

    invoke-direct {v1, p0, v6, p3}, Lretrofit/RestAdapter$RestHandler$1;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lretrofit/RxSupport;->createRequestObservable(Lretrofit/RxSupport$Invoker;)Lrx/Observable;

    move-result-object v0

    goto :goto_c

    .line 260
    :cond_7e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observable method found but no RxJava on classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_86
    new-instance v5, Lretrofit/RequestInterceptorTape;

    invoke-direct {v5}, Lretrofit/RequestInterceptorTape;-><init>()V

    .line 273
    .local v5, "interceptorTape":Lretrofit/RequestInterceptorTape;
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v0, v0, Lretrofit/RestAdapter;->requestInterceptor:Lretrofit/RequestInterceptor;

    invoke-interface {v0, v5}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 275
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v2, p3, v0

    check-cast v2, Lretrofit/Callback;

    .line 276
    .local v2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<*>;"
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v10, v0, Lretrofit/RestAdapter;->httpExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit/RestAdapter$RestHandler$2;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v3, v1, Lretrofit/RestAdapter;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler;->this$0:Lretrofit/RestAdapter;

    iget-object v4, v1, Lretrofit/RestAdapter;->errorHandler:Lretrofit/ErrorHandler;

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lretrofit/RestAdapter$RestHandler$2;-><init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/Callback;Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    goto/16 :goto_c
.end method

###### Class retrofit.RestAdapter.RestHandler.AnonymousClass1 (retrofit.RestAdapter$RestHandler$1)
.class Lretrofit/RestAdapter$RestHandler$1;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lretrofit/RxSupport$Invoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RestAdapter$RestHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/RestAdapter$RestHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$methodInfo:Lretrofit/RestMethodInfo;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$1"    # Lretrofit/RestAdapter$RestHandler;

    .prologue
    .line 263
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler$1;->this$1:Lretrofit/RestAdapter$RestHandler;

    iput-object p2, p0, Lretrofit/RestAdapter$RestHandler$1;->val$methodInfo:Lretrofit/RestMethodInfo;

    iput-object p3, p0, Lretrofit/RestAdapter$RestHandler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lretrofit/RequestInterceptor;)Lretrofit/ResponseWrapper;
    .registers 5
    .param p1, "requestInterceptor"    # Lretrofit/RequestInterceptor;

    .prologue
    .line 265
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler$1;->this$1:Lretrofit/RestAdapter$RestHandler;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler$1;->val$methodInfo:Lretrofit/RestMethodInfo;

    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler$1;->val$args:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lretrofit/RestAdapter$RestHandler;->access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/ResponseWrapper;

    return-object v0
.end method

###### Class retrofit.RestAdapter.RestHandler.AnonymousClass2 (retrofit.RestAdapter$RestHandler$2)
.class Lretrofit/RestAdapter$RestHandler$2;
.super Lretrofit/CallbackRunnable;
.source "RestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RestAdapter$RestHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/RestAdapter$RestHandler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$interceptorTape:Lretrofit/RequestInterceptorTape;

.field final synthetic val$methodInfo:Lretrofit/RestMethodInfo;


# direct methods
.method constructor <init>(Lretrofit/RestAdapter$RestHandler;Lretrofit/Callback;Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptorTape;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "this$1"    # Lretrofit/RestAdapter$RestHandler;
    .param p2, "callback"    # Lretrofit/Callback;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "errorHandler"    # Lretrofit/ErrorHandler;

    .prologue
    .line 276
    iput-object p1, p0, Lretrofit/RestAdapter$RestHandler$2;->this$1:Lretrofit/RestAdapter$RestHandler;

    iput-object p5, p0, Lretrofit/RestAdapter$RestHandler$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    iput-object p6, p0, Lretrofit/RestAdapter$RestHandler$2;->val$methodInfo:Lretrofit/RestMethodInfo;

    iput-object p7, p0, Lretrofit/RestAdapter$RestHandler$2;->val$args:[Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lretrofit/CallbackRunnable;-><init>(Lretrofit/Callback;Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public obtainResponse()Lretrofit/ResponseWrapper;
    .registers 5

    .prologue
    .line 278
    iget-object v0, p0, Lretrofit/RestAdapter$RestHandler$2;->this$1:Lretrofit/RestAdapter$RestHandler;

    iget-object v1, p0, Lretrofit/RestAdapter$RestHandler$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    iget-object v2, p0, Lretrofit/RestAdapter$RestHandler$2;->val$methodInfo:Lretrofit/RestMethodInfo;

    iget-object v3, p0, Lretrofit/RestAdapter$RestHandler$2;->val$args:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lretrofit/RestAdapter$RestHandler;->access$100(Lretrofit/RestAdapter$RestHandler;Lretrofit/RequestInterceptor;Lretrofit/RestMethodInfo;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/ResponseWrapper;

    return-object v0
.end method
