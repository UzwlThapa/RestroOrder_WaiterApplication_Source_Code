###### Class com.danfe.restaurantapp1.adapter.StockListAdapter (com.danfe.restaurantapp1.adapter.StockListAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/StockListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field itemgroupDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
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
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "itemgroupDbList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->itemgroupDbs:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 23
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;I)V
    .registers 9
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;
    .param p2, "position"    # I

    .prologue
    const v5, 0x7f0200b6

    const/16 v4, 0x96

    .line 41
    iget-object v2, p1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->editText:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 42
    iget-object v3, p1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "BaseURL":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROI_Item/ImageItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "imagePath":Ljava/lang/String;
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v4, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->imageView:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 54
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 34
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;-><init>(Lcom/danfe/restaurantapp1/adapter/StockListAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.StockListAdapter.MyStockView (com.danfe.restaurantapp1.adapter.StockListAdapter$MyStockView)
.class public Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/StockListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyStockView"
.end annotation


# instance fields
.field editText:Landroid/widget/EditText;

.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/StockListAdapter;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/StockListAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/StockListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->this$0:Lcom/danfe/restaurantapp1/adapter/StockListAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    const v0, 0x7f0f0164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->textView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0f0165

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->editText:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0f0166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/StockListAdapter$MyStockView;->imageView:Landroid/widget/ImageView;

    .line 70
    return-void
.end method
