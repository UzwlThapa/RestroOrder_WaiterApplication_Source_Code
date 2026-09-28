###### Class com.danfe.restaurantapp1.adapter.BillingAdapter (com.danfe.restaurantapp1.adapter.BillingAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/BillingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private actualamount:Ljava/lang/Double;

.field private actualdis:Ljava/lang/Double;

.field private amount:Ljava/lang/Double;

.field private amountDisc:I

.field private amountDiscNew:I

.field private amountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private amountarray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private billingTermList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private costcenter:I

.field private costcenterhashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private costcentername:Ljava/lang/String;

.field private discountamount:Ljava/lang/Double;

.field private discountarray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private finalhashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private itemPriceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:I

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field public sendDiscount:Ljava/lang/Double;

.field public sendamount:Ljava/lang/Double;

.field private tempHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private totalamount:Ljava/lang/Double;

.field private updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

.field private valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "updateTotalPrice"    # Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "costcenterhashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Double;>;"
    const-wide/16 v2, 0x0

    .line 46
    const v0, 0x7f030075

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->sendDiscount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->sendamount:Ljava/lang/Double;

    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    .line 49
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->tempHashMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->keyList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    .line 57
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 76
    new-instance v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/BillingAdapter;)V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    .line 77
    if-nez p2, :cond_122

    .line 78
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030075

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f0225

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_name:Landroid/widget/TextView;

    .line 80
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f0226

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_amount:Landroid/widget/TextView;

    .line 81
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f0228

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    .line 82
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f022a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    .line 83
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f0227

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_percent:Landroid/widget/TextView;

    .line 84
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    const v4, 0x7f0f0229

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_equals:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_191

    .line 93
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    .local v2, "id":I
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostcenterNamebyId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "costcentername":Ljava/lang/String;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_name:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_amount:Landroid/widget/TextView;

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    .line 99
    iget v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    if-lez v4, :cond_12c

    .line 100
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amount:Ljava/lang/Double;

    .line 101
    iget v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    int-to-double v6, v4

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    .line 102
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 103
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_11e
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->notifyDataSetChanged()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_121} :catch_17a

    .line 134
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v2    # "id":I
    :goto_121
    return-object p2

    .line 87
    :cond_122
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    goto/16 :goto_6c

    .line 106
    .restart local v0    # "costcentername":Ljava/lang/String;
    .restart local v2    # "id":I
    :cond_12c
    if-lez p1, :cond_18d

    .line 107
    :try_start_12e
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->keyList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 108
    .local v3, "idnew":I
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDiscNew:I

    .line 109
    iget v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDiscNew:I

    if-lez v4, :cond_189

    .line 110
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    .line 111
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 112
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    const-string v5, "0%"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_179} :catch_17a

    goto :goto_11e

    .line 131
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v2    # "id":I
    .end local v3    # "idnew":I
    :catch_17a
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "exceptionhere"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "costcentername":Ljava/lang/String;
    .restart local v2    # "id":I
    .restart local v3    # "idnew":I
    :cond_189
    :try_start_189
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->setNoDiscountView(I)V

    goto :goto_11e

    .line 120
    .end local v3    # "idnew":I
    :cond_18d
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->setNoDiscountView(I)V

    goto :goto_11e

    .line 126
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_191
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 127
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->tempHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 128
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 129
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a5} :catch_17a

    goto/16 :goto_121
.end method

.method public setNoDiscountView(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x8

    .line 138
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    .line 139
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 140
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_percent:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_equals:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public updateTotalAmount()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 149
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_103

    .line 150
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_b
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 151
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    .local v1, "id":I
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v8, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    .line 153
    iget v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    if-lez v5, :cond_74

    .line 154
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amount:Ljava/lang/Double;

    .line 155
    iget v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountDisc:I

    int-to-double v8, v5

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    .line 156
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amount:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 157
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 160
    :cond_74
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    .line 161
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    .line 162
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->totalamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 167
    .end local v1    # "id":I
    :cond_93
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_dd

    .line 168
    const-wide/16 v2, 0x0

    .line 169
    .local v2, "dis":D
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 170
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v2, v8

    goto :goto_a3

    .line 171
    .end local v0    # "d":Ljava/lang/Double;
    :cond_b5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualdis:Ljava/lang/Double;

    .line 175
    .end local v2    # "dis":D
    :goto_bb
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_fc

    .line 176
    const-wide/16 v6, 0x0

    .line 177
    .local v6, "sum":D
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 178
    .restart local v0    # "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_cb

    .line 173
    .end local v0    # "d":Ljava/lang/Double;
    .end local v6    # "sum":D
    :cond_dd
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualdis:Ljava/lang/Double;

    goto :goto_bb

    .line 179
    .restart local v6    # "sum":D
    :cond_e4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualamount:Ljava/lang/Double;

    .line 182
    .end local v6    # "sum":D
    :goto_ea
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualdis:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v10, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualamount:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v5, v8, v9, v10, v11}, Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;->onPriceUpdate(DD)V

    .line 188
    .end local v4    # "position":I
    :goto_fb
    return-void

    .line 181
    .restart local v4    # "position":I
    :cond_fc
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualamount:Ljava/lang/Double;

    goto :goto_ea

    .line 184
    .end local v4    # "position":I
    :cond_103
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualdis:Ljava/lang/Double;

    .line 185
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualamount:Ljava/lang/Double;

    .line 186
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualdis:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v10, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->actualamount:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v5, v8, v9, v10, v11}, Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;->onPriceUpdate(DD)V

    goto :goto_fb
.end method

###### Class com.danfe.restaurantapp1.adapter.BillingAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.BillingAdapter$ViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

.field tv_costcenter_amount:Landroid/widget/TextView;

.field tv_costcenter_discount:Landroid/widget/TextView;

.field tv_costcenter_name:Landroid/widget/TextView;

.field tv_equals:Landroid/widget/TextView;

.field tv_percent:Landroid/widget/TextView;

.field tv_totalamount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/BillingAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/BillingAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
