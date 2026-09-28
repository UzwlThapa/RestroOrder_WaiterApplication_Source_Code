###### Class retrofit.Platform (retrofit.Platform)
.class abstract Lretrofit/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/Platform$OkClientInstantiator;,
        Lretrofit/Platform$AppEngine;,
        Lretrofit/Platform$Android;,
        Lretrofit/Platform$Base;
    }
.end annotation


# static fields
.field static final HAS_RX_JAVA:Z

.field private static final PLATFORM:Lretrofit/Platform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Lretrofit/Platform;->findPlatform()Lretrofit/Platform;

    move-result-object v0

    sput-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    .line 40
    invoke-static {}, Lretrofit/Platform;->hasRxJavaOnClasspath()Z

    move-result v0

    sput-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Lretrofit/Platform;->hasOkHttpOnClasspath()Z

    move-result v0

    return v0
.end method

.method private static findPlatform()Lretrofit/Platform;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 48
    :try_start_1
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_12

    .line 50
    new-instance v0, Lretrofit/Platform$Android;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit/Platform$Android;-><init>(Lretrofit/Platform$1;)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 59
    :goto_10
    return-object v0

    .line 52
    :catch_11
    move-exception v0

    .line 55
    :cond_12
    const-string v0, "com.google.appengine.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 56
    new-instance v0, Lretrofit/Platform$AppEngine;

    invoke-direct {v0, v2}, Lretrofit/Platform$AppEngine;-><init>(Lretrofit/Platform$1;)V

    goto :goto_10

    .line 59
    :cond_20
    new-instance v0, Lretrofit/Platform$Base;

    invoke-direct {v0, v2}, Lretrofit/Platform$Base;-><init>(Lretrofit/Platform$1;)V

    goto :goto_10
.end method

.method static get()Lretrofit/Platform;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lretrofit/Platform;->PLATFORM:Lretrofit/Platform;

    return-object v0
.end method

.method private static hasOkHttpOnClasspath()Z
    .registers 1

    .prologue
    .line 172
    :try_start_0
    const-string v0, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_6
    return v0

    .line 174
    :catch_7
    move-exception v0

    .line 176
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static hasRxJavaOnClasspath()Z
    .registers 1

    .prologue
    .line 191
    :try_start_0
    const-string v0, "rx.Observable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_6
    return v0

    .line 193
    :catch_7
    move-exception v0

    .line 195
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method abstract defaultCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultClient()Lretrofit/client/Client$Provider;
.end method

.method abstract defaultConverter()Lretrofit/converter/Converter;
.end method

.method abstract defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultLog()Lretrofit/RestAdapter$Log;
.end method

###### Class retrofit.Platform.AnonymousClass1 (retrofit.Platform$1)
.class synthetic Lretrofit/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class retrofit.Platform.Android (retrofit.Platform$Android)
.class Lretrofit/Platform$Android;
.super Lretrofit/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Android"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lretrofit/Platform;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .registers 2
    .param p1, "x0"    # Lretrofit/Platform$1;

    .prologue
    .line 115
    invoke-direct {p0}, Lretrofit/Platform$Android;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 150
    new-instance v0, Lretrofit/android/MainThreadExecutor;

    invoke-direct {v0}, Lretrofit/android/MainThreadExecutor;-><init>()V

    return-object v0
.end method

.method defaultClient()Lretrofit/client/Client$Provider;
    .registers 4

    .prologue
    .line 122
    invoke-static {}, Lretrofit/Platform;->access$300()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 123
    invoke-static {}, Lretrofit/Platform$OkClientInstantiator;->instantiate()Lretrofit/client/Client;

    move-result-object v0

    .line 129
    .local v0, "client":Lretrofit/client/Client;
    :goto_a
    new-instance v1, Lretrofit/Platform$Android$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$Android$1;-><init>(Lretrofit/Platform$Android;Lretrofit/client/Client;)V

    return-object v1

    .line 124
    .end local v0    # "client":Lretrofit/client/Client;
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1c

    .line 125
    new-instance v0, Lretrofit/android/AndroidApacheClient;

    invoke-direct {v0}, Lretrofit/android/AndroidApacheClient;-><init>()V

    .restart local v0    # "client":Lretrofit/client/Client;
    goto :goto_a

    .line 127
    .end local v0    # "client":Lretrofit/client/Client;
    :cond_1c
    new-instance v0, Lretrofit/client/UrlConnectionClient;

    invoke-direct {v0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .restart local v0    # "client":Lretrofit/client/Client;
    goto :goto_a
.end method

.method defaultConverter()Lretrofit/converter/Converter;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lretrofit/Platform$Android$2;

    invoke-direct {v0, p0}, Lretrofit/Platform$Android$2;-><init>(Lretrofit/Platform$Android;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lretrofit/RestAdapter$Log;
    .registers 3

    .prologue
    .line 154
    new-instance v0, Lretrofit/android/AndroidLog;

    const-string v1, "Retrofit"

    invoke-direct {v0, v1}, Lretrofit/android/AndroidLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class retrofit.Platform.Android.AnonymousClass1 (retrofit.Platform$Android$1)
.class Lretrofit/Platform$Android$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Android;->defaultClient()Lretrofit/client/Client$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Android;

.field final synthetic val$client:Lretrofit/client/Client;


# direct methods
.method constructor <init>(Lretrofit/Platform$Android;Lretrofit/client/Client;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit/Platform$Android;

    .prologue
    .line 129
    iput-object p1, p0, Lretrofit/Platform$Android$1;->this$0:Lretrofit/Platform$Android;

    iput-object p2, p0, Lretrofit/Platform$Android$1;->val$client:Lretrofit/client/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lretrofit/Platform$Android$1;->val$client:Lretrofit/client/Client;

    return-object v0
.end method

###### Class retrofit.Platform.Android.AnonymousClass2 (retrofit.Platform$Android$2)
.class Lretrofit/Platform$Android$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Android;->defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Android;


# direct methods
.method constructor <init>(Lretrofit/Platform$Android;)V
    .registers 2
    .param p1, "this$0"    # Lretrofit/Platform$Android;

    .prologue
    .line 137
    iput-object p1, p0, Lretrofit/Platform$Android$2;->this$0:Lretrofit/Platform$Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lretrofit/Platform$Android$2$1;

    invoke-direct {v1, p0, p1}, Lretrofit/Platform$Android$2$1;-><init>(Lretrofit/Platform$Android$2;Ljava/lang/Runnable;)V

    const-string v2, "Retrofit-Idle"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class retrofit.Platform.Android.AnonymousClass2.AnonymousClass1 (retrofit.Platform$Android$2$1)
.class Lretrofit/Platform$Android$2$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Android$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/Platform$Android$2;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lretrofit/Platform$Android$2;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$1"    # Lretrofit/Platform$Android$2;

    .prologue
    .line 139
    iput-object p1, p0, Lretrofit/Platform$Android$2$1;->this$1:Lretrofit/Platform$Android$2;

    iput-object p2, p0, Lretrofit/Platform$Android$2$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 141
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 142
    iget-object v0, p0, Lretrofit/Platform$Android$2$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    return-void
.end method

###### Class retrofit.Platform.AppEngine (retrofit.Platform$AppEngine)
.class Lretrofit/Platform$AppEngine;
.super Lretrofit/Platform$Base;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppEngine"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lretrofit/Platform$Base;-><init>(Lretrofit/Platform$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .registers 2
    .param p1, "x0"    # Lretrofit/Platform$1;

    .prologue
    .line 158
    invoke-direct {p0}, Lretrofit/Platform$AppEngine;-><init>()V

    return-void
.end method


# virtual methods
.method defaultClient()Lretrofit/client/Client$Provider;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Lretrofit/appengine/UrlFetchClient;

    invoke-direct {v0}, Lretrofit/appengine/UrlFetchClient;-><init>()V

    .line 161
    .local v0, "client":Lretrofit/appengine/UrlFetchClient;
    new-instance v1, Lretrofit/Platform$AppEngine$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$AppEngine$1;-><init>(Lretrofit/Platform$AppEngine;Lretrofit/appengine/UrlFetchClient;)V

    return-object v1
.end method

###### Class retrofit.Platform.AppEngine.AnonymousClass1 (retrofit.Platform$AppEngine$1)
.class Lretrofit/Platform$AppEngine$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$AppEngine;->defaultClient()Lretrofit/client/Client$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$AppEngine;

.field final synthetic val$client:Lretrofit/appengine/UrlFetchClient;


# direct methods
.method constructor <init>(Lretrofit/Platform$AppEngine;Lretrofit/appengine/UrlFetchClient;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit/Platform$AppEngine;

    .prologue
    .line 161
    iput-object p1, p0, Lretrofit/Platform$AppEngine$1;->this$0:Lretrofit/Platform$AppEngine;

    iput-object p2, p0, Lretrofit/Platform$AppEngine$1;->val$client:Lretrofit/appengine/UrlFetchClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lretrofit/Platform$AppEngine$1;->val$client:Lretrofit/appengine/UrlFetchClient;

    return-object v0
.end method

###### Class retrofit.Platform.Base (retrofit.Platform$Base)
.class Lretrofit/Platform$Base;
.super Lretrofit/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Base"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lretrofit/Platform;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Platform$1;)V
    .registers 2
    .param p1, "x0"    # Lretrofit/Platform$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lretrofit/Platform$Base;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 102
    new-instance v0, Lretrofit/Utils$SynchronousExecutor;

    invoke-direct {v0}, Lretrofit/Utils$SynchronousExecutor;-><init>()V

    return-object v0
.end method

.method defaultClient()Lretrofit/client/Client$Provider;
    .registers 3

    .prologue
    .line 76
    invoke-static {}, Lretrofit/Platform;->access$300()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 77
    invoke-static {}, Lretrofit/Platform$OkClientInstantiator;->instantiate()Lretrofit/client/Client;

    move-result-object v0

    .line 81
    .local v0, "client":Lretrofit/client/Client;
    :goto_a
    new-instance v1, Lretrofit/Platform$Base$1;

    invoke-direct {v1, p0, v0}, Lretrofit/Platform$Base$1;-><init>(Lretrofit/Platform$Base;Lretrofit/client/Client;)V

    return-object v1

    .line 79
    .end local v0    # "client":Lretrofit/client/Client;
    :cond_10
    new-instance v0, Lretrofit/client/UrlConnectionClient;

    invoke-direct {v0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    .restart local v0    # "client":Lretrofit/client/Client;
    goto :goto_a
.end method

.method defaultConverter()Lretrofit/converter/Converter;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Lretrofit/converter/GsonConverter;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {v0, v1}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lretrofit/Platform$Base$2;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$2;-><init>(Lretrofit/Platform$Base;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lretrofit/RestAdapter$Log;
    .registers 2

    .prologue
    .line 106
    new-instance v0, Lretrofit/Platform$Base$3;

    invoke-direct {v0, p0}, Lretrofit/Platform$Base$3;-><init>(Lretrofit/Platform$Base;)V

    return-object v0
.end method

###### Class retrofit.Platform.Base.AnonymousClass1 (retrofit.Platform$Base$1)
.class Lretrofit/Platform$Base$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/client/Client$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Base;->defaultClient()Lretrofit/client/Client$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;

.field final synthetic val$client:Lretrofit/client/Client;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;Lretrofit/client/Client;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit/Platform$Base;

    .prologue
    .line 81
    iput-object p1, p0, Lretrofit/Platform$Base$1;->this$0:Lretrofit/Platform$Base;

    iput-object p2, p0, Lretrofit/Platform$Base$1;->val$client:Lretrofit/client/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lretrofit/client/Client;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lretrofit/Platform$Base$1;->val$client:Lretrofit/client/Client;

    return-object v0
.end method

###### Class retrofit.Platform.Base.AnonymousClass2 (retrofit.Platform$Base$2)
.class Lretrofit/Platform$Base$2;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Base;->defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;)V
    .registers 2
    .param p1, "this$0"    # Lretrofit/Platform$Base;

    .prologue
    .line 89
    iput-object p1, p0, Lretrofit/Platform$Base$2;->this$0:Lretrofit/Platform$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lretrofit/Platform$Base$2$1;

    invoke-direct {v1, p0, p1}, Lretrofit/Platform$Base$2$1;-><init>(Lretrofit/Platform$Base$2;Ljava/lang/Runnable;)V

    const-string v2, "Retrofit-Idle"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class retrofit.Platform.Base.AnonymousClass2.AnonymousClass1 (retrofit.Platform$Base$2$1)
.class Lretrofit/Platform$Base$2$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Base$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit/Platform$Base$2;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base$2;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$1"    # Lretrofit/Platform$Base$2;

    .prologue
    .line 91
    iput-object p1, p0, Lretrofit/Platform$Base$2$1;->this$1:Lretrofit/Platform$Base$2;

    iput-object p2, p0, Lretrofit/Platform$Base$2$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 94
    iget-object v0, p0, Lretrofit/Platform$Base$2$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method

###### Class retrofit.Platform.Base.AnonymousClass3 (retrofit.Platform$Base$3)
.class Lretrofit/Platform$Base$3;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lretrofit/RestAdapter$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/Platform$Base;->defaultLog()Lretrofit/RestAdapter$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/Platform$Base;


# direct methods
.method constructor <init>(Lretrofit/Platform$Base;)V
    .registers 2
    .param p1, "this$0"    # Lretrofit/Platform$Base;

    .prologue
    .line 106
    iput-object p1, p0, Lretrofit/Platform$Base$3;->this$0:Lretrofit/Platform$Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    return-void
.end method

###### Class retrofit.Platform.OkClientInstantiator (retrofit.Platform$OkClientInstantiator)
.class Lretrofit/Platform$OkClientInstantiator;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OkClientInstantiator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate()Lretrofit/client/Client;
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lretrofit/client/OkClient;

    invoke-direct {v0}, Lretrofit/client/OkClient;-><init>()V

    return-object v0
.end method
