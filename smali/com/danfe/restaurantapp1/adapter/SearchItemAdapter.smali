###### Class com.danfe.restaurantapp1.adapter.SearchItemAdapter (com.danfe.restaurantapp1.adapter.SearchItemAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private BaseUrl:Ljava/lang/String;

.field private PItemID:Lcom/danfe/restaurantapp1/model/ItemgroupDb;

.field private context:Landroid/content/Context;

.field private itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

.field private itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

.field private itemgroupDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field private rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemListener"    # Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->BaseUrl:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemgroupDbs:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    .line 40
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->BaseUrl:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemgroupDbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 25
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .line 69
    .local v1, "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->BaseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROI_Item/ImageItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "imgpath":Ljava/lang/String;
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0200b6

    .line 77
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0200b6

    .line 78
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const/16 v3, 0x96

    const/16 v4, 0x96

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 81
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d0

    .line 82
    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 83
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0    # "imgpath":Ljava/lang/String;
    .end local v1    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :goto_c1
    return-void

    .line 87
    .restart local v0    # "imgpath":Ljava/lang/String;
    .restart local v1    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :cond_c2
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c1

    .line 94
    .end local v0    # "imgpath":Ljava/lang/String;
    .end local v1    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :catch_ce
    move-exception v2

    goto :goto_c1

    .line 90
    .restart local v0    # "imgpath":Ljava/lang/String;
    .restart local v1    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :cond_d0
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_db} :catch_ce

    goto :goto_c1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;Landroid/view/View;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->itemViewHolder:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    .line 62
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.SearchItemAdapter.ItemViewHolder (com.danfe.restaurantapp1.adapter.SearchItemAdapter$ItemViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field protected cardView:Landroid/support/v7/widget/CardView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

.field private tvPrice:Landroid/widget/TextView;

.field protected vImage:Landroid/widget/ImageView;

.field protected vName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    .line 111
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    const v0, 0x7f0f0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    .line 113
    const v0, 0x7f0f0125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0f0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0f0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->tvPrice:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    .line 146
    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v0

    .line 145
    invoke-interface {v1, p1, v2, v0}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerLongClicked(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->notifyDataSetChanged()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x7f0d0050

    const/4 v2, 0x0

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 133
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 140
    :cond_21
    :goto_21
    return v2

    .line 135
    :cond_22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 136
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_21
.end method
