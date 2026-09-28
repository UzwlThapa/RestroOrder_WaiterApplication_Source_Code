###### Class com.danfe.restaurantapp1.helper.RecyclerItemClickListener (com.danfe.restaurantapp1.helper.RecyclerItemClickListener)
.class public Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;->mListener:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;

    .line 20
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$1;-><init>(Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 26
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;->mListener:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 32
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;->mListener:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 34
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.RecyclerItemClickListener.AnonymousClass1 (com.danfe.restaurantapp1.helper.RecyclerItemClickListener$1)
.class Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$1;->this$0:Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

###### Class com.danfe.restaurantapp1.helper.RecyclerItemClickListener.OnItemClickListener (com.danfe.restaurantapp1.helper.RecyclerItemClickListener$OnItemClickListener)
.class public interface abstract Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClick(Landroid/view/View;I)V
.end method
