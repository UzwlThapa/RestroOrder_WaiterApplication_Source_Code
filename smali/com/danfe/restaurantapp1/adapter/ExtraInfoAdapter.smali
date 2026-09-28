###### Class com.danfe.restaurantapp1.adapter.ExtraInfoAdapter (com.danfe.restaurantapp1.adapter.ExtraInfoAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field extraItemsLists:Ljava/util/List;
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
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field orderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderExtraItems:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "extraItemsLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;>;"
    .local p3, "orderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->extraItemsLists:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderItemList:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "size":I
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    const-string v2, "Actual Extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 85
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    :cond_11
    :goto_11
    return v0

    .line 87
    :cond_12
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 88
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->extraItemsLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_11
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 23
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;I)V
    .registers 11
    .param p1, "vh"    # Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 50
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_51

    .line 54
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v4

    if-ne v5, v4, :cond_4e

    .line 56
    iget-object v5, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 52
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 61
    :cond_51
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 62
    .local v1, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 63
    .local v3, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->context:Landroid/content/Context;

    const-string v5, "Actual Extra"

    invoke-direct {v0, v4, v1, v5}, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 65
    .local v0, "extraInfoAdapter":Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;
    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    .end local v0    # "extraInfoAdapter":Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v2    # "i":I
    .end local v3    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_74
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->status:Ljava/lang/String;

    const-string v5, "Actual Extra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 70
    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->view:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 73
    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->textView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    iget-object v5, p1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->textView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderExtraItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (Rs."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->orderExtraItems:Ljava/util/List;

    .line 75
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_e4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.ExtraInfoAdapter.ExtraViewHolder (com.danfe.restaurantapp1.adapter.ExtraInfoAdapter$ExtraViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtraInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraViewHolder"
.end annotation


# instance fields
.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

    .line 99
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    const v0, 0x7f0f0167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->textView:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0f0169

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 102
    const v0, 0x7f0f0168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter$ExtraViewHolder;->view:Landroid/view/View;

    .line 103
    return-void
.end method
