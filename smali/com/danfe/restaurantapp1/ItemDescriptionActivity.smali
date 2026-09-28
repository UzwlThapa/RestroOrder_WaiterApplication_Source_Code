###### Class com.danfe.restaurantapp1.ItemDescriptionActivity (com.danfe.restaurantapp1.ItemDescriptionActivity)
.class public Lcom/danfe/restaurantapp1/ItemDescriptionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItemDescriptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private btnOk:Landroid/widget/Button;

.field private id:I

.field private imagePath:Ljava/lang/String;

.field private isCombo:Ljava/lang/Boolean;

.field private itemDescription:Ljava/lang/String;

.field private itemPrice:Ljava/lang/String;

.field private itemTitle:Ljava/lang/String;

.field private itemgroupDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field private ivDialogItemImage:Landroid/widget/ImageView;

.field private rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private tvDialogItemDescription:Landroid/widget/TextView;

.field private tvDialogItemName:Landroid/widget/TextView;

.field private tvDialogitemPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->BaseURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->btnOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 90
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->finish()V

    .line 92
    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->supportRequestWindowFeature(I)Z

    .line 42
    const v2, 0x7f03004a

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->BaseURL:Ljava/lang/String;

    .line 45
    :try_start_1c
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "item_id"

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->id:I

    .line 46
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_combo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->isCombo:Ljava/lang/Boolean;

    .line 47
    new-instance v2, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 48
    const v2, 0x7f0f018c

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->ivDialogItemImage:Landroid/widget/ImageView;

    .line 49
    const v2, 0x7f0f018d

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogItemName:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f0f018e

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogItemDescription:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0f018f

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogitemPrice:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f0f0190

    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->btnOk:Landroid/widget/Button;

    .line 53
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    .line 55
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->rDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->id:I

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->isCombo:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    .line 56
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->imagePath:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemTitle:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getDetails()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemDescription:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemPrice:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->BaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROI_Item/ImageItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "imgpath":Ljava/lang/String;
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0200b6

    .line 66
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->ivDialogItemImage:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 68
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogItemName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16e

    .line 70
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogItemDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_129
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogitemPrice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->itemgroupDbList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v1    # "imgpath":Ljava/lang/String;
    :goto_16d
    return-void

    .line 73
    .restart local v1    # "imgpath":Ljava/lang/String;
    :cond_16e
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemDescriptionActivity;->tvDialogItemDescription:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_175} :catch_176

    goto :goto_129

    .line 78
    .end local v1    # "imgpath":Ljava/lang/String;
    :catch_176
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ItemDescriptionEXC"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16d
.end method
