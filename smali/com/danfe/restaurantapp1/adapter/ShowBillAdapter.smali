###### Class com.danfe.restaurantapp1.adapter.ShowBillAdapter (com.danfe.restaurantapp1.adapter.ShowBillAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShowBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

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

.field showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "temporaryList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->status:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    .line 40
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
    .line 41
    .local p2, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->status:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->status:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->status:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 157
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    .local v0, "count":I
    :goto_10
    return v0

    .line 160
    .end local v0    # "count":I
    :cond_11
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_10
.end method

.method public getItemViewType(I)I
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 49
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 27
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;I)V
    .registers 15
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 66
    .local v0, "extraAmount":Ljava/lang/Double;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->status:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 68
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvSn:Landroid/widget/TextView;

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v5, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvItem:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v5, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvQty:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v5, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvRate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 73
    .local v3, "sum":Ljava/lang/Double;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvAmnt:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_e3

    .line 77
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->temporaryList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v4

    const-string v6, "Status"

    invoke-direct {v2, v5, v4, v6}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 78
    .local v2, "showBillAdapter":Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v4, v9, v9}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 79
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    .end local v1    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v2    # "showBillAdapter":Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;
    .end local v3    # "sum":Ljava/lang/Double;
    :cond_e3
    :goto_e3
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->getItemCount()I

    move-result v4

    if-gez v4, :cond_f7

    .line 103
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->layouNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->layoutData:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :cond_f7
    return-void

    .line 84
    :cond_f8
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemlist:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemlist:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v5, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemlist:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Rs."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    .line 87
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v6, v4

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 91
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemAmount:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemAmount:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemAmount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvSn:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvRate:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvAmnt:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;Landroid/view/View;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    .line 56
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->showBillHolder:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.ShowBillAdapter.ShowBillHolder (com.danfe.restaurantapp1.adapter.ShowBillAdapter$ShowBillHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShowBillAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBillHolder"
.end annotation


# instance fields
.field layouNoData:Landroid/widget/LinearLayout;

.field layoutData:Landroid/widget/LinearLayout;

.field layoutExtra:Landroid/widget/LinearLayout;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

.field tvAmnt:Landroid/widget/TextView;

.field tvExtraItemAmount:Landroid/widget/TextView;

.field tvExtraItemlist:Landroid/widget/TextView;

.field tvItem:Landroid/widget/TextView;

.field tvQty:Landroid/widget/TextView;

.field tvRate:Landroid/widget/TextView;

.field tvSn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    .line 137
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    const v0, 0x7f0f01da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvSn:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0f01db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvItem:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0f01dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvQty:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0f0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvRate:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0f0206

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvAmnt:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0f01e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->layouNoData:Landroid/widget/LinearLayout;

    .line 144
    const v0, 0x7f0f0204

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->layoutData:Landroid/widget/LinearLayout;

    .line 145
    const v0, 0x7f0f01de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->layoutExtra:Landroid/widget/LinearLayout;

    .line 146
    const v0, 0x7f0f01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 147
    const v0, 0x7f0f0207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemlist:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0f0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter$ShowBillHolder;->tvExtraItemAmount:Landroid/widget/TextView;

    .line 150
    return-void
.end method
