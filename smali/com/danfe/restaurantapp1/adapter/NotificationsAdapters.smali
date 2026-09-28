###### Class com.danfe.restaurantapp1.adapter.NotificationsAdapters (com.danfe.restaurantapp1.adapter.NotificationsAdapters)
.class public Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;
.super Landroid/widget/ArrayAdapter;
.source "NotificationsAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private notificationsDB:Lcom/danfe/restaurantapp1/model/NotificationsDB;

.field private notificationsDBList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/NotificationsDB;",
            ">;"
        }
    .end annotation
.end field

.field private popupDelete:Lcom/danfe/restaurantapp1/Interface/PopupDelete;

.field private restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private slidingAnimation:Landroid/view/animation/Animation;

.field private vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/PopupDelete;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "popupDelete"    # Lcom/danfe/restaurantapp1/Interface/PopupDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/NotificationsDB;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/PopupDelete;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "notificationsDBs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/NotificationsDB;>;"
    const v0, 0x7f030065

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDBList:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 46
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->popupDelete:Lcom/danfe/restaurantapp1/Interface/PopupDelete;

    .line 47
    const v0, 0x7f040017

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->slidingAnimation:Landroid/view/animation/Animation;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->slidingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDBList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Lcom/danfe/restaurantapp1/Interface/PopupDelete;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->popupDelete:Lcom/danfe/restaurantapp1/Interface/PopupDelete;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDBList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "cv"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 70
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    .line 72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    if-nez v0, :cond_95

    .line 73
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    const v2, 0x7f0f0195

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->tvDateTime:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    const v2, 0x7f0f0196

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->tvNotification:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    const v2, 0x7f0f0197

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->ivDeleteNotification:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    const v2, 0x7f0f0194

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->mainLayout:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDBList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/NotificationsDB;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDB:Lcom/danfe/restaurantapp1/model/NotificationsDB;

    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->tvDateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDB:Lcom/danfe/restaurantapp1/model/NotificationsDB;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/NotificationsDB;->getNotificationdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->tvNotification:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->notificationsDB:Lcom/danfe/restaurantapp1/model/NotificationsDB;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/NotificationsDB;->getNotification()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->ivDeleteNotification:Landroid/widget/ImageView;

    new-instance v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    invoke-direct {v1, p0, p1}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;-><init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    return-object v0

    .line 80
    :cond_95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->convertView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->vh:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;

    goto :goto_62
.end method

###### Class com.danfe.restaurantapp1.adapter.NotificationsAdapters.AnonymousClass1 (com.danfe.restaurantapp1.adapter.NotificationsAdapters$1)
.class Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;
.super Ljava/lang/Object;
.source "NotificationsAdapters.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    iput p2, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 89
    .local v0, "clickedView":Landroid/view/View;
    const v2, 0x7f0f0194

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 91
    .local v1, "layout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->access$000(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->access$000(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;-><init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 118
    return-void
.end method

###### Class com.danfe.restaurantapp1.adapter.NotificationsAdapters.AnonymousClass1.AnimationAnimationListenerC00051 (com.danfe.restaurantapp1.adapter.NotificationsAdapters$1$1)
.class Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;
.super Ljava/lang/Object;
.source "NotificationsAdapters.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->access$100(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    iget v4, v4, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->val$position:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/NotificationsDB;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/NotificationsDB;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 101
    .local v2, "id":J
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->access$200(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->getContext()Landroid/content/Context;

    move-result-object v4

    long-to-int v5, v2

    invoke-virtual {v1, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->deleteNotification(Landroid/content/Context;I)V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1$1;-><init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 96
    return-void
.end method

###### Class com.danfe.restaurantapp1.adapter.NotificationsAdapters.AnonymousClass1.AnimationAnimationListenerC00051.RunnableC00061 (com.danfe.restaurantapp1.adapter.NotificationsAdapters$1$1$1)
.class Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1$1;
.super Ljava/lang/Object;
.source "NotificationsAdapters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1$1;->this$2:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1$1;->this$2:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$1;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;->access$300(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)Lcom/danfe/restaurantapp1/Interface/PopupDelete;

    move-result-object v0

    invoke-interface {v0}, Lcom/danfe/restaurantapp1/Interface/PopupDelete;->refreshData()V

    .line 108
    return-void
.end method

###### Class com.danfe.restaurantapp1.adapter.NotificationsAdapters.ViewHolder (com.danfe.restaurantapp1.adapter.NotificationsAdapters$ViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationsAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivDeleteNotification:Landroid/widget/ImageView;

.field mainLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

.field tvDateTime:Landroid/widget/TextView;

.field tvNotification:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
