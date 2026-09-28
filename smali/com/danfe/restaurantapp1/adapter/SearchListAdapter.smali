###### Class com.danfe.restaurantapp1.adapter.SearchListAdapter (com.danfe.restaurantapp1.adapter.SearchListAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/danfe/restaurantapp1/model/DishDb;",
        ">;"
    }
.end annotation


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

.field private searchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/DishDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/DishDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "searchItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/DishDb;>;"
    const v0, 0x7f03007b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->BaseURL:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItems:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;
    .registers 3
    .param p1, "location"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/DishDb;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x64

    .line 52
    if-nez p2, :cond_c4

    .line 54
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;)V

    .line 57
    .local v0, "vh":Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;
    const v1, 0x7f0f0125

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->item:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0f012d

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0f012c

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0f012b

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0f0124

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_53
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    .line 73
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->BaseURL:Ljava/lang/String;

    .line 75
    iget-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/DishDb;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->item:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/DishDb;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->code:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/DishDb;->getItemcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/DishDb;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->BaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROItem/images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;->searchItem:Lcom/danfe/restaurantapp1/model/DishDb;

    .line 81
    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/DishDb;->getImageLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v4, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 84
    return-object p2

    .line 69
    .end local v0    # "vh":Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;
    :cond_c4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;

    .restart local v0    # "vh":Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;
    goto :goto_53
.end method

###### Class com.danfe.restaurantapp1.adapter.SearchListAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.SearchListAdapter$ViewHolder)
.class Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field code:Landroid/widget/TextView;

.field desc:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field item:Landroid/widget/TextView;

.field price:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/SearchListAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
