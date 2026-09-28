###### Class com.danfe.restaurantapp1.adapter.DishAdapter (com.danfe.restaurantapp1.adapter.DishAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/DishAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DishAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;
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
.field private dishDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/DishDb;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
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
    .line 26
    .local p2, "dishDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/DishDb;>;"
    const v0, 0x7f030076

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->dishDbs:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->dishDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->dishDbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/DishDb;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_ae

    .line 47
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030076

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/DishAdapter;)V

    .line 49
    .local v1, "vh":Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;
    const v2, 0x7f0f0125

    .line 50
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0f0124

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f0f012b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemCode:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0f012c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemDesc:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0f012d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemRate:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_51
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->getItem(I)Lcom/danfe/restaurantapp1/model/DishDb;

    move-result-object v0

    .line 61
    .local v0, "dishDb":Lcom/danfe/restaurantapp1/model/DishDb;
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DishDb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DishDb;->getItemcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DishDb;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemRate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DishDb;->getPriceWithCurr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ROItem/images/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DishDb;->getImageLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const/16 v3, 0x7d

    const/16 v4, 0x41

    .line 69
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->itemImg:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 72
    return-object p2

    .line 58
    .end local v0    # "dishDb":Lcom/danfe/restaurantapp1/model/DishDb;
    .end local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;
    :cond_ae
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;

    .restart local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;
    goto :goto_51
.end method

###### Class com.danfe.restaurantapp1.adapter.DishAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.DishAdapter$ViewHolder)
.class Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DishAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/DishAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field itemCode:Landroid/widget/TextView;

.field itemDesc:Landroid/widget/TextView;

.field itemImg:Landroid/widget/ImageView;

.field itemName:Landroid/widget/TextView;

.field itemRate:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/DishAdapter;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/DishAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/DishAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/DishAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/DishAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
