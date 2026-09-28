###### Class com.danfe.restaurantapp1.adapter.RoomTypeAdapter (com.danfe.restaurantapp1.adapter.RoomTypeAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RoomTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private roomTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomTypeDb;",
            ">;"
        }
    .end annotation
.end field

.field private roomTypeViewHolder:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

.field private selectedItemId:Ljava/lang/Long;

.field private selectedItems:Landroid/util/SparseBooleanArray;


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
            "Lcom/danfe/restaurantapp1/model/RoomTypeDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "roomTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomTypeDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->selectedItemId:Ljava/lang/Long;

    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeList:Ljava/util/List;

    .line 37
    sput-object p3, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    .line 38
    return-void
.end method

.method static synthetic access$000()Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->selectedItemId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 22
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;I)V
    .registers 6
    .param p1, "roomTypeViewHolder"    # Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeViewHolder:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

    .line 48
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeViewHolder:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->vName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_16
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->roomTypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_25

    .line 50
    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_22

    .line 49
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 64
    :cond_25
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007d

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.RoomTypeAdapter.RoomTypeViewHolder (com.danfe.restaurantapp1.adapter.RoomTypeAdapter$RoomTypeViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RoomTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoomTypeViewHolder"
.end annotation


# instance fields
.field ivSelection:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

.field protected vCard:Lcom/danfe/restaurantapp1/helper/CustomCardView;

.field protected vName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    const v0, 0x7f0f0242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->vName:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0f0244

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->ivSelection:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-static {}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->access$000()Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;II)V

    .line 94
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->access$102(Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;Ljava/lang/Long;)Ljava/lang/Long;

    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter$RoomTypeViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
