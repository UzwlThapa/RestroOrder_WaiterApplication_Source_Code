###### Class com.danfe.restaurantapp1.adapter.RoomAdapter (com.danfe.restaurantapp1.adapter.RoomAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/RoomAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private roomDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItem:Ljava/lang/Long;

.field private slideDown:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemListener"    # Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "roomDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->selectedItem:Ljava/lang/Long;

    .line 31
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->roomDbs:Ljava/util/List;

    .line 33
    sput-object p3, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    .line 34
    const v0, 0x7f04001a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->slideDown:Landroid/view/animation/Animation;

    .line 35
    return-void
.end method

.method static synthetic access$000()Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/RoomAdapter;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->selectedItem:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->roomDbs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->roomDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 22
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;I)V
    .registers 7
    .param p1, "roomViewHolder"    # Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->roomDbs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/RoomDb;

    .line 46
    .local v0, "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRoomStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_49

    .line 48
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vIndicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :goto_2e
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->selectedItem:Ljava/lang/Long;

    if-ne v1, v2, :cond_5c

    .line 55
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 62
    :goto_48
    return-void

    .line 50
    :cond_49
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vIndicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    .line 59
    :cond_5c
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_48
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007c

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.RoomAdapter.RoomViewHolder (com.danfe.restaurantapp1.adapter.RoomAdapter$RoomViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RoomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/RoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoomViewHolder"
.end annotation


# instance fields
.field protected selectedIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

.field protected vIndicator:Landroid/widget/ImageView;

.field protected vName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/RoomAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    const v0, 0x7f0f0242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vName:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0f0243

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->vIndicator:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-static {}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->access$000()Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;II)V

    .line 86
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->access$102(Lcom/danfe/restaurantapp1/adapter/RoomAdapter;Ljava/lang/Long;)Ljava/lang/Long;

    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomAdapter$RoomViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
