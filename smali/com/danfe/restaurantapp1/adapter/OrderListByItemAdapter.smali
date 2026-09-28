###### Class com.danfe.restaurantapp1.adapter.OrderListByItemAdapter (com.danfe.restaurantapp1.adapter.OrderListByItemAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OrderListByItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;
    }
.end annotation


# instance fields
.field BaseURL:Ljava/lang/String;

.field context:Landroid/content/Context;

.field itemListByNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemListByName;",
            ">;"
        }
    .end annotation
.end field

.field myconvertView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemListByName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "itemListByNames":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemListByName;>;"
    const v0, 0x7f030047

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->BaseURL:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->itemListByNames:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->itemListByNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 41
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v6, 0x7f0200b6

    const/16 v5, 0x96

    .line 57
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    .line 58
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    if-nez v2, :cond_da

    .line 60
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030047

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;)V

    .line 62
    .local v1, "vh":Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    const v3, 0x7f0f016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemImg:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    const v3, 0x7f0f016e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemQty:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    const v3, 0x7f0f0215

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemNotes:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    const v3, 0x7f0f016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemName:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_59
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->BaseURL:Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->BaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROI_Item/ImageItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->itemListByNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "imagePath":Ljava/lang/String;
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v5, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemImg:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    iget-object v3, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->itemListByNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->itemQty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->itemListByNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getTotalqty()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    return-object v2

    .line 75
    .end local v0    # "imagePath":Ljava/lang/String;
    .end local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;
    :cond_da
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->myconvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;

    .restart local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;
    goto/16 :goto_59
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderListByItemAdapter.OrderByListViewHolder (com.danfe.restaurantapp1.adapter.OrderListByItemAdapter$OrderByListViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;
.super Ljava/lang/Object;
.source "OrderListByItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderByListViewHolder"
.end annotation


# instance fields
.field completeNum:Landroid/widget/TextView;

.field itemImg:Landroid/widget/ImageView;

.field itemName:Landroid/widget/TextView;

.field itemNotes:Landroid/widget/TextView;

.field itemQty:Landroid/widget/TextView;

.field li_complete:Landroid/widget/LinearLayout;

.field li_ordered:Landroid/widget/LinearLayout;

.field li_progress:Landroid/widget/LinearLayout;

.field orderedNum:Landroid/widget/TextView;

.field progressNum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter$OrderByListViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
