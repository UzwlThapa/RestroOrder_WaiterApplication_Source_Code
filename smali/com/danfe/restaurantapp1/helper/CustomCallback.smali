###### Class com.danfe.restaurantapp1.helper.CustomCallback (com.danfe.restaurantapp1.helper.CustomCallback)
.class public Lcom/danfe/restaurantapp1/helper/CustomCallback;
.super Ljava/lang/Object;
.source "CustomCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public callback:Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;)V
    .registers 2
    .param p1, "callback"    # Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;

    .prologue
    .line 14
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/CustomCallback;, "Lcom/danfe/restaurantapp1/helper/CustomCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CustomCallback;->callback:Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;

    .line 16
    return-void
.end method


# virtual methods
.method public getCallback()Lretrofit/Callback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/CustomCallback;, "Lcom/danfe/restaurantapp1/helper/CustomCallback<TT;>;"
    new-instance v0, Lcom/danfe/restaurantapp1/helper/CustomCallback$1;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/helper/CustomCallback$1;-><init>(Lcom/danfe/restaurantapp1/helper/CustomCallback;)V

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.helper.CustomCallback.AnonymousClass1 (com.danfe.restaurantapp1.helper.CustomCallback$1)
.class Lcom/danfe/restaurantapp1/helper/CustomCallback$1;
.super Ljava/lang/Object;
.source "CustomCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CustomCallback;->getCallback()Lretrofit/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CustomCallback;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CustomCallback;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CustomCallback;

    .prologue
    .line 19
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/CustomCallback$1;, "Lcom/danfe/restaurantapp1/helper/CustomCallback$1;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CustomCallback$1;->this$0:Lcom/danfe/restaurantapp1/helper/CustomCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 3
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 27
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/CustomCallback$1;, "Lcom/danfe/restaurantapp1/helper/CustomCallback$1;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CustomCallback$1;->this$0:Lcom/danfe/restaurantapp1/helper/CustomCallback;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CustomCallback;->callback:Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;

    invoke-interface {v0, p1}, Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;->onCallbackFailure(Lretrofit/RetrofitError;)V

    .line 28
    return-void
.end method

.method public success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 4
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/CustomCallback$1;, "Lcom/danfe/restaurantapp1/helper/CustomCallback$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CustomCallback$1;->this$0:Lcom/danfe/restaurantapp1/helper/CustomCallback;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CustomCallback;->callback:Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;

    invoke-interface {v0, p1}, Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;->onCallbackSuccess(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CustomCallback.CallbackInterface (com.danfe.restaurantapp1.helper.CustomCallback$CallbackInterface)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/CustomCallback$CallbackInterface;
.super Ljava/lang/Object;
.source "CustomCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/CustomCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallbackInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCallbackFailure(Lretrofit/RetrofitError;)V
.end method

.method public abstract onCallbackSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
