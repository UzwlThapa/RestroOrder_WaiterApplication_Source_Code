###### Class com.danfe.restaurantapp1.helper.AbsRequestLoader (com.danfe.restaurantapp1.helper.AbsRequestLoader)
.class public abstract Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;
.super Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;
.source "AbsRequestLoader.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx",
        "<TD;>;",
        "Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public BaseURL:Ljava/lang/String;

.field data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;

.field public hasError:Z

.field public restAdapter:Lretrofit/RestAdapter;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->hasError:Z

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->BaseURL:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->BaseURL:Ljava/lang/String;

    .line 33
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->BaseURL:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 35
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/client/OkClient;

    invoke-direct {v1}, Lretrofit/client/OkClient;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;-><init>(Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;)V

    .line 37
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/android/AndroidLog;

    const-string v2, "api-debug"

    invoke-direct {v1, v2}, Lretrofit/android/AndroidLog;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->restAdapter:Lretrofit/RestAdapter;

    .line 46
    return-void
.end method


# virtual methods
.method public getCustomCallback()Lretrofit/Callback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    new-instance v0, Lcom/danfe/restaurantapp1/helper/CustomCallback;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/helper/CustomCallback;-><init>(Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;)V

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/CustomCallback;->getCallback()Lretrofit/Callback;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getRestAdapter()Lretrofit/RestAdapter;
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->hasError:Z

    return v0
.end method

.method public onCallbackFailure(Lretrofit/RetrofitError;)V
    .registers 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 92
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->setHasError(Z)V

    .line 93
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->setErrorMessage(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->onRequestFailure()V

    .line 95
    return-void
.end method

.method public onCallbackSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->setHasError(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->onRequestSuccess(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public abstract onRequestFailure()V
.end method

.method public abstract onRequestSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 61
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->errorMessage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setHasError(Z)V
    .registers 2
    .param p1, "hasError"    # Z

    .prologue
    .line 53
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    iput-boolean p1, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->hasError:Z

    .line 54
    return-void
.end method

.method public setResponseData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader<TD;TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;->data:Ljava/lang/Object;

    .line 82
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.AbsRequestLoader.AnonymousClass1 (com.danfe.restaurantapp1.helper.AbsRequestLoader$1)
.class Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;
.super Ljava/lang/Object;
.source "AbsRequestLoader.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;

    .prologue
    .line 37
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;->this$0:Lcom/danfe/restaurantapp1/helper/AbsRequestLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .registers 5
    .param p1, "requestFacade"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 40
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;, "Lcom/danfe/restaurantapp1/helper/AbsRequestLoader$1;"
    const-string v0, "enter"

    .line 41
    .local v0, "authorizationValue":Ljava/lang/String;
    const-string v1, "Authorization"

    const-string v2, "enter"

    invoke-interface {p1, v1, v2}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
