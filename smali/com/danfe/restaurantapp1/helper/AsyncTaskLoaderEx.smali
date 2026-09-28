###### Class com.danfe.restaurantapp1.helper.AsyncTaskLoaderEx (com.danfe.restaurantapp1.helper.AsyncTaskLoaderEx)
.class public abstract Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "AsyncTaskLoaderEx.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->isReset()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 20
    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->onReleaseResources(Ljava/lang/Object;)V

    .line 24
    :cond_b
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    .line 25
    .local v0, "oldData":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 34
    :cond_18
    if-eqz v0, :cond_1d

    .line 35
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->onReleaseResources(Ljava/lang/Object;)V

    .line 37
    :cond_1d
    return-void
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->onReleaseResources(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected onReleaseResources(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method protected onReset()V
    .registers 2

    .prologue
    .line 71
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 73
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->onStopLoading()V

    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->onReleaseResources(Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    .line 79
    :cond_12
    return-void
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 41
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 42
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->deliverResult(Ljava/lang/Object;)V

    .line 49
    :cond_c
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->mData:Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 52
    :cond_16
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->forceLoad()V

    .line 54
    :cond_19
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 59
    .local p0, "this":Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;, "Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx<TT;>;"
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/AsyncTaskLoaderEx;->cancelLoad()Z

    .line 60
    return-void
.end method
