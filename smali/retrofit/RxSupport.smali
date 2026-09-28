###### Class retrofit.RxSupport (retrofit.RxSupport)
.class final Lretrofit/RxSupport;
.super Ljava/lang/Object;
.source "RxSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RxSupport$Invoker;
    }
.end annotation


# instance fields
.field private final errorHandler:Lretrofit/ErrorHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final requestInterceptor:Lretrofit/RequestInterceptor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit/ErrorHandler;Lretrofit/RequestInterceptor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "errorHandler"    # Lretrofit/ErrorHandler;
    .param p3, "requestInterceptor"    # Lretrofit/RequestInterceptor;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lretrofit/RxSupport;->executor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p2, p0, Lretrofit/RxSupport;->errorHandler:Lretrofit/ErrorHandler;

    .line 28
    iput-object p3, p0, Lretrofit/RxSupport;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lretrofit/RxSupport;)Lretrofit/RequestInterceptor;
    .registers 2
    .param p0, "x0"    # Lretrofit/RxSupport;

    .prologue
    .line 14
    iget-object v0, p0, Lretrofit/RxSupport;->requestInterceptor:Lretrofit/RequestInterceptor;

    return-object v0
.end method

.method static synthetic access$100(Lretrofit/RxSupport;Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;
    .registers 5
    .param p0, "x0"    # Lretrofit/RxSupport;
    .param p1, "x1"    # Lrx/Subscriber;
    .param p2, "x2"    # Lretrofit/RxSupport$Invoker;
    .param p3, "x3"    # Lretrofit/RequestInterceptorTape;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lretrofit/RxSupport;->getRunnable(Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lretrofit/RxSupport;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "x0"    # Lretrofit/RxSupport;

    .prologue
    .line 14
    iget-object v0, p0, Lretrofit/RxSupport;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lretrofit/RxSupport;)Lretrofit/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lretrofit/RxSupport;

    .prologue
    .line 14
    iget-object v0, p0, Lretrofit/RxSupport;->errorHandler:Lretrofit/ErrorHandler;

    return-object v0
.end method

.method private getRunnable(Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;
    .registers 5
    .param p2, "invoker"    # Lretrofit/RxSupport$Invoker;
    .param p3, "interceptorTape"    # Lretrofit/RequestInterceptorTape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/RxSupport$Invoker;",
            "Lretrofit/RequestInterceptorTape;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    new-instance v0, Lretrofit/RxSupport$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lretrofit/RxSupport$2;-><init>(Lretrofit/RxSupport;Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)V

    return-object v0
.end method


# virtual methods
.method createRequestObservable(Lretrofit/RxSupport$Invoker;)Lrx/Observable;
    .registers 3
    .param p1, "invoker"    # Lretrofit/RxSupport$Invoker;

    .prologue
    .line 32
    new-instance v0, Lretrofit/RxSupport$1;

    invoke-direct {v0, p0, p1}, Lretrofit/RxSupport$1;-><init>(Lretrofit/RxSupport;Lretrofit/RxSupport$Invoker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class retrofit.RxSupport.AnonymousClass1 (retrofit.RxSupport$1)
.class Lretrofit/RxSupport$1;
.super Ljava/lang/Object;
.source "RxSupport.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxSupport;->createRequestObservable(Lretrofit/RxSupport$Invoker;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxSupport;

.field final synthetic val$invoker:Lretrofit/RxSupport$Invoker;


# direct methods
.method constructor <init>(Lretrofit/RxSupport;Lretrofit/RxSupport$Invoker;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit/RxSupport;

    .prologue
    .line 32
    iput-object p1, p0, Lretrofit/RxSupport$1;->this$0:Lretrofit/RxSupport;

    iput-object p2, p0, Lretrofit/RxSupport$1;->val$invoker:Lretrofit/RxSupport$Invoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 32
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit/RxSupport$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    new-instance v0, Lretrofit/RequestInterceptorTape;

    invoke-direct {v0}, Lretrofit/RequestInterceptorTape;-><init>()V

    .line 35
    .local v0, "interceptorTape":Lretrofit/RequestInterceptorTape;
    iget-object v3, p0, Lretrofit/RxSupport$1;->this$0:Lretrofit/RxSupport;

    invoke-static {v3}, Lretrofit/RxSupport;->access$000(Lretrofit/RxSupport;)Lretrofit/RequestInterceptor;

    move-result-object v3

    invoke-interface {v3, v0}, Lretrofit/RequestInterceptor;->intercept(Lretrofit/RequestInterceptor$RequestFacade;)V

    .line 37
    iget-object v3, p0, Lretrofit/RxSupport$1;->this$0:Lretrofit/RxSupport;

    iget-object v4, p0, Lretrofit/RxSupport$1;->val$invoker:Lretrofit/RxSupport$Invoker;

    invoke-static {v3, p1, v4, v0}, Lretrofit/RxSupport;->access$100(Lretrofit/RxSupport;Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;

    move-result-object v1

    .line 38
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 41
    .local v2, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->from(Ljava/util/concurrent/Future;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 42
    iget-object v3, p0, Lretrofit/RxSupport$1;->this$0:Lretrofit/RxSupport;

    invoke-static {v3}, Lretrofit/RxSupport;->access$200(Lretrofit/RxSupport;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

###### Class retrofit.RxSupport.AnonymousClass2 (retrofit.RxSupport$2)
.class Lretrofit/RxSupport$2;
.super Ljava/lang/Object;
.source "RxSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxSupport;->getRunnable(Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxSupport;

.field final synthetic val$interceptorTape:Lretrofit/RequestInterceptorTape;

.field final synthetic val$invoker:Lretrofit/RxSupport$Invoker;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lretrofit/RxSupport;Lrx/Subscriber;Lretrofit/RxSupport$Invoker;Lretrofit/RequestInterceptorTape;)V
    .registers 5
    .param p1, "this$0"    # Lretrofit/RxSupport;

    .prologue
    .line 49
    iput-object p1, p0, Lretrofit/RxSupport$2;->this$0:Lretrofit/RxSupport;

    iput-object p2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lretrofit/RxSupport$2;->val$invoker:Lretrofit/RxSupport$Invoker;

    iput-object p4, p0, Lretrofit/RxSupport$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 61
    :goto_8
    return-void

    .line 55
    :cond_9
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$invoker:Lretrofit/RxSupport$Invoker;

    iget-object v3, p0, Lretrofit/RxSupport$2;->val$interceptorTape:Lretrofit/RequestInterceptorTape;

    invoke-interface {v2, v3}, Lretrofit/RxSupport$Invoker;->invoke(Lretrofit/RequestInterceptor;)Lretrofit/ResponseWrapper;

    move-result-object v1

    .line 56
    .local v1, "wrapper":Lretrofit/ResponseWrapper;
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iget-object v3, v1, Lretrofit/ResponseWrapper;->responseBody:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V
    :try_end_1d
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_8

    .line 58
    .end local v1    # "wrapper":Lretrofit/ResponseWrapper;
    :catch_1e
    move-exception v0

    .line 59
    .local v0, "e":Lretrofit/RetrofitError;
    iget-object v2, p0, Lretrofit/RxSupport$2;->val$subscriber:Lrx/Subscriber;

    iget-object v3, p0, Lretrofit/RxSupport$2;->this$0:Lretrofit/RxSupport;

    invoke-static {v3}, Lretrofit/RxSupport;->access$300(Lretrofit/RxSupport;)Lretrofit/ErrorHandler;

    move-result-object v3

    invoke-interface {v3, v0}, Lretrofit/ErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

###### Class retrofit.RxSupport.Invoker (retrofit.RxSupport$Invoker)
.class interface abstract Lretrofit/RxSupport$Invoker;
.super Ljava/lang/Object;
.source "RxSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RxSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Invoker"
.end annotation


# virtual methods
.method public abstract invoke(Lretrofit/RequestInterceptor;)Lretrofit/ResponseWrapper;
.end method
