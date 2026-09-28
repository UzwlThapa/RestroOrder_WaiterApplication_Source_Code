###### Class com.danfe.restaurantapp1.adapter.ItemAdapter (com.danfe.restaurantapp1.adapter.ItemAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private BaseUrl:Ljava/lang/String;

.field private PItemID:Lcom/danfe/restaurantapp1/model/ItemgroupDb;

.field private context:Landroid/content/Context;

.field private imageSetCondition:Z

.field private itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

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

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

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
    .line 44
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->BaseUrl:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemgroupDbs:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    .line 48
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 49
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->BaseUrl:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v0, p1}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getEnableMenuImage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->imageSetCondition:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/model/ItemgroupDb;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "PItemID"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .param p4, "itemListener"    # Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            "Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->BaseUrl:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemgroupDbs:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->PItemID:Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .line 58
    iput-object p4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    .line 59
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v0, p1}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 60
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getEnableMenuImage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->imageSetCondition:Z

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemgroupDbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemListener:Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 133
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 136
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v3

    .line 140
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1a
    return-object v3

    .line 138
    :catch_1b
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 33
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;I)V
    .registers 13
    .param p1, "itemViewHolder"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v9, 0x1

    .line 76
    :try_start_1
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .line 77
    .local v2, "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    iget-object v3, p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 79
    iget-object v3, p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 80
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v9, :cond_183

    .line 82
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_30
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 90
    const-string v4, "ITEMSTATUS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_8d
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a8

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1a8

    .line 96
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19d

    .line 97
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$100(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$100(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->BaseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ROI_Item/ImageItem/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "imgpath":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_1b3

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1b3

    .line 110
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    const v4, 0x7f070001

    .line 111
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200b6

    .line 112
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 127
    .end local v1    # "imgpath":Ljava/lang/String;
    .end local v2    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :goto_182
    return-void

    .line 85
    .restart local v2    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :cond_183
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$000(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18c} :catch_18e

    goto/16 :goto_30

    .line 124
    .end local v2    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :catch_18e
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "menu set exc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :cond_19d
    :try_start_19d
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$100(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_108

    .line 103
    :cond_1a8
    invoke-static {p1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->access$100(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_108

    .line 115
    .restart local v1    # "imgpath":Ljava/lang/String;
    :cond_1b3
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200b6

    .line 117
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f0200b6

    .line 118
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1f4} :catch_18e

    goto :goto_182
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-boolean v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->imageSetCondition:Z

    if-eqz v1, :cond_1a

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    .line 150
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "itemView":Landroid/view/View;
    :goto_14
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;Landroid/view/View;)V

    return-object v1

    .line 154
    .end local v0    # "itemView":Landroid/view/View;
    :cond_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004c

    .line 155
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "itemView":Landroid/view/View;
    goto :goto_14
.end method

###### Class com.danfe.restaurantapp1.adapter.ItemAdapter.ItemViewHolder (com.danfe.restaurantapp1.adapter.ItemAdapter$ItemViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field protected cardView:Landroid/support/v7/widget/CardView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

.field private tvPrice:Landroid/widget/TextView;

.field private tvstockInfo:Landroid/widget/TextView;

.field protected vImage:Landroid/widget/ImageView;

.field protected vName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 171
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 173
    const v0, 0x7f0f0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    .line 174
    const v0, 0x7f0f0125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0f0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f0f0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0f0127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->tvstockInfo:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->tvstockInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->tvPrice:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getEnableOrderGrid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_80

    .line 190
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 191
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 192
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 193
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v5

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 194
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p1

    .line 190
    invoke-interface/range {v0 .. v6}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;I)V

    .line 205
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->notifyDataSetChanged()V

    .line 206
    return-void

    .line 196
    :cond_80
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getEnableOrderGrid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 198
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 200
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 201
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v5

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 202
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 203
    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v7

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, p1

    .line 198
    invoke-interface/range {v0 .. v7}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;IZ)V

    goto/16 :goto_7a
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 225
    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v0

    .line 224
    invoke-interface {v1, p1, v2, v0}, Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;->recyclerLongClicked(Landroid/view/View;ILjava/lang/Boolean;)V

    .line 226
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->notifyDataSetChanged()V

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x7f0d0050

    const/4 v2, 0x1

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$500(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 219
    :cond_22
    :goto_22
    return v2

    .line 215
    :cond_23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 216
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->cardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->access$500(Lcom/danfe/restaurantapp1/adapter/ItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_22
.end method
