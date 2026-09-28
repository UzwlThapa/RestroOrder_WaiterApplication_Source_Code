###### Class com.danfe.restaurantapp1.adapter.ShiftOrderAdapter (com.danfe.restaurantapp1.adapter.ShiftOrderAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShiftOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;,
        Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field context:Landroid/content/Context;

.field onItemClickListnerInterface:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;

.field orderDetailDbLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderExtraItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field orderExtraItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

.field status:Ljava/lang/String;

.field temporaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p3, "onItemClickListnerInterface"    # Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;",
            "Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "temporaryList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->status:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->onItemClickListnerInterface:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->status:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->orderExtraItems:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->status:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->status:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 145
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    .local v0, "count":I
    :goto_10
    return v0

    .line 147
    .end local v0    # "count":I
    :cond_11
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 159
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 30
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;I)V
    .registers 10
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 73
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->status:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 74
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvSn:Landroid/widget/TextView;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v3, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvItem:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v3, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvQty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_8c

    .line 80
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v2

    const-string v4, "Status"

    invoke-direct {v1, v3, v2, v4}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 81
    .local v1, "shiftOrderAdapter":Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 82
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v1    # "shiftOrderAdapter":Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->getItemCount()I

    move-result v2

    if-gez v2, :cond_a0

    .line 96
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->layouNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->layoutData:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    :cond_a0
    return-void

    .line 86
    :cond_a1
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvExtraItemlist:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvExtraItemlist:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 88
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v3, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvExtraItemlist:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Rs."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->orderExtraItems:Ljava/util/List;

    .line 89
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvSn:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8c
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;Landroid/view/View;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    .line 65
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->shiftOrderHolder:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.ShiftOrderAdapter.OnItemClickListnerInterface (com.danfe.restaurantapp1.adapter.ShiftOrderAdapter$OnItemClickListnerInterface)
.class public interface abstract Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;
.super Ljava/lang/Object;
.source "ShiftOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListnerInterface"
.end annotation


# virtual methods
.method public abstract onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
.end method

###### Class com.danfe.restaurantapp1.adapter.ShiftOrderAdapter.ShiftOrderHolder (com.danfe.restaurantapp1.adapter.ShiftOrderAdapter$ShiftOrderHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShiftOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShiftOrderHolder"
.end annotation


# instance fields
.field imageViewShift:Landroid/widget/ImageView;

.field layouNoData:Landroid/widget/LinearLayout;

.field layoutData:Landroid/widget/LinearLayout;

.field layoutExtra:Landroid/widget/LinearLayout;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field rvLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

.field tvExtraItemlist:Landroid/widget/TextView;

.field tvItem:Landroid/widget/TextView;

.field tvQty:Landroid/widget/TextView;

.field tvSn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    .line 112
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    const v0, 0x7f0f01d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->rvLayout:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f0f01da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvSn:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0f01db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvItem:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0f01dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvQty:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0f01e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->layouNoData:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0f0204

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->layoutData:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f0f01de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->layoutExtra:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0f01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 121
    const v0, 0x7f0f01e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->tvExtraItemlist:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->rvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->getLayoutPosition()I

    move-result v1

    .line 131
    .local v1, "clickedPosition":I
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .line 132
    .local v0, "clickedItem":Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    .line 138
    :goto_15
    return-void

    .line 134
    :pswitch_16
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$ShiftOrderHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->onItemClickListnerInterface:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;

    invoke-interface {v2, v1, v0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;->onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V

    goto :goto_15

    .line 132
    :pswitch_data_1e
    .packed-switch 0x7f0f01d9
        :pswitch_16
    .end packed-switch
.end method
