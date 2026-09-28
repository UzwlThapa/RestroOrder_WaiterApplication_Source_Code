###### Class com.danfe.restaurantapp1.adapter.ExtraDataAdapter (com.danfe.restaurantapp1.adapter.ExtraDataAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field extraItemDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "extraItemDb":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 20
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
    .param p2, "position"    # I

    .prologue
    .line 38
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->extraItemName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (Rs. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ordered"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 42
    iget-object v0, p1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->quantity:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 44
    :cond_58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_80

    .line 46
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->quantity:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->extraItemDbs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_7f
    return-void

    .line 49
    :cond_80
    iget-object v0, p1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->quantity:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 31
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;-><init>(Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.ExtraDataAdapter.ExtraDataViewholder (com.danfe.restaurantapp1.adapter.ExtraDataAdapter$ExtraDataViewholder)
.class public Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraDataViewholder"
.end annotation


# instance fields
.field extraItemName:Landroid/widget/TextView;

.field public quantity:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->this$0:Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    const v0, 0x7f0f0164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->extraItemName:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0f0165

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->quantity:Landroid/widget/EditText;

    .line 68
    return-void
.end method
