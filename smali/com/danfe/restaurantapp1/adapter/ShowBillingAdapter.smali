###### Class com.danfe.restaurantapp1.adapter.ShowBillingAdapter (com.danfe.restaurantapp1.adapter.ShowBillingAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ShowBillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;
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

.field private vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;


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

    .line 47
    const v0, 0x7f030070

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->sendDiscount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->sendamount:Ljava/lang/Double;

    .line 48
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    .line 50
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->tempHashMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->keyList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 77
    new-instance v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    .line 78
    if-nez p2, :cond_135

    .line 79
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030070

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_name:Landroid/widget/TextView;

    .line 81
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_amount:Landroid/widget/TextView;

    .line 82
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_rs:Landroid/widget/TextView;

    .line 83
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    .line 84
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f0210

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_percent:Landroid/widget/TextView;

    .line 86
    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    const v3, 0x7f0f020f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_equals:Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_79
    :try_start_79
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_197

    .line 95
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, "id":I
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostcenterNamebyId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "costcentername":Ljava/lang/String;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_name:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_amount:Landroid/widget/TextView;

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    .line 101
    iget v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    if-lez v3, :cond_13f

    .line 102
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amount:Ljava/lang/Double;

    .line 103
    iget v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    .line 104
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amount:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 105
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_131
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->notifyDataSetChanged()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_134} :catch_18d

    .line 136
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v1    # "id":I
    :goto_134
    return-object p2

    .line 89
    :cond_135
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    goto/16 :goto_79

    .line 108
    .restart local v0    # "costcentername":Ljava/lang/String;
    .restart local v1    # "id":I
    :cond_13f
    if-lez p1, :cond_193

    .line 109
    :try_start_141
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->keyList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 110
    .local v2, "idnew":I
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDiscNew:I

    .line 111
    iget v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDiscNew:I

    if-lez v3, :cond_18f

    .line 112
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    .line 113
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 114
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    const-string v4, "(0%)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_131

    .line 133
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "idnew":I
    :catch_18d
    move-exception v3

    goto :goto_134

    .line 118
    .restart local v0    # "costcentername":Ljava/lang/String;
    .restart local v1    # "id":I
    .restart local v2    # "idnew":I
    :cond_18f
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->setNoDiscountView(I)V

    goto :goto_131

    .line 122
    .end local v2    # "idnew":I
    :cond_193
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->setNoDiscountView(I)V

    goto :goto_131

    .line 128
    .end local v0    # "costcentername":Ljava/lang/String;
    .end local v1    # "id":I
    :cond_197
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 129
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->tempHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 130
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 131
    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1ab} :catch_18d

    goto :goto_134
.end method

.method public setNoDiscountView(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    const/16 v5, 0x8

    .line 140
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    .line 141
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    const-string v1, "(0%)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_costcenter_discount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_percent:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_equals:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->vh:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->tv_totalamount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public updateTotalAmount()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 151
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_fb

    .line 152
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_b
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_93

    .line 153
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->keyList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    .local v1, "id":I
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v8, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getDiscountbyCostcenter(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    .line 155
    iget v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    if-lez v5, :cond_74

    .line 156
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amount:Ljava/lang/Double;

    .line 157
    iget v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountDisc:I

    int-to-double v8, v5

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

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

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    .line 158
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amount:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 159
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 163
    :cond_74
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    .line 164
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->valueList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    .line 165
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->totalamount:Ljava/lang/Double;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 170
    .end local v1    # "id":I
    :cond_93
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_dd

    .line 171
    const-wide/16 v2, 0x0

    .line 172
    .local v2, "dis":D
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->discountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 173
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v2, v8

    goto :goto_a3

    .line 174
    .end local v0    # "d":Ljava/lang/Double;
    :cond_b5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualdis:Ljava/lang/Double;

    .line 178
    .end local v2    # "dis":D
    :goto_bb
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_fc

    .line 179
    const-wide/16 v6, 0x0

    .line 180
    .local v6, "sum":D
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->amountarray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 181
    .restart local v0    # "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_cb

    .line 176
    .end local v0    # "d":Ljava/lang/Double;
    .end local v6    # "sum":D
    :cond_dd
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualdis:Ljava/lang/Double;

    goto :goto_bb

    .line 182
    .restart local v6    # "sum":D
    :cond_e4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualamount:Ljava/lang/Double;

    .line 185
    .end local v6    # "sum":D
    :goto_ea
    iget-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualdis:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v10, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualamount:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v5, v8, v9, v10, v11}, Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;->onPriceUpdate(DD)V

    .line 187
    .end local v4    # "position":I
    :cond_fb
    return-void

    .line 184
    .restart local v4    # "position":I
    :cond_fc
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->actualamount:Ljava/lang/Double;

    goto :goto_ea
.end method

###### Class com.danfe.restaurantapp1.adapter.ShowBillingAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.ShowBillingAdapter$ViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShowBillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

.field tv_costcenter_amount:Landroid/widget/TextView;

.field tv_costcenter_discount:Landroid/widget/TextView;

.field tv_costcenter_name:Landroid/widget/TextView;

.field tv_equals:Landroid/widget/TextView;

.field tv_percent:Landroid/widget/TextView;

.field tv_rs:Landroid/widget/TextView;

.field tv_totalamount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
