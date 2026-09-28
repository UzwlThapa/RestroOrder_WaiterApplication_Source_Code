###### Class com.danfe.restaurantapp1.model.OrderDetailDb (com.danfe.restaurantapp1.model.OrderDetailDb)
.class public Lcom/danfe/restaurantapp1/model/OrderDetailDb;
.super Ljava/lang/Object;
.source "OrderDetailDb.java"


# instance fields
.field private CostCenterId:Ljava/lang/Integer;

.field private IsCombo:Ljava/lang/Boolean;

.field private Note:Ljava/lang/String;

.field private extra:Ljava/lang/Float;

.field private homePackQty:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private isCanceled:Ljava/lang/Boolean;

.field private itemId:Ljava/lang/Integer;

.field private orderExtraItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderMasterId:Ljava/lang/Integer;

.field private price:Ljava/lang/Double;

.field private quantity:Ljava/lang/Double;

.field private seatNo:Ljava/lang/Integer;

.field private status:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->id:Ljava/lang/Long;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 15
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "orderMasterId"    # Ljava/lang/Integer;
    .param p3, "itemId"    # Ljava/lang/Integer;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "quantity"    # Ljava/lang/Double;
    .param p6, "price"    # Ljava/lang/Double;
    .param p7, "isCanceled"    # Ljava/lang/Boolean;
    .param p8, "seatNo"    # Ljava/lang/Integer;
    .param p9, "Note"    # Ljava/lang/String;
    .param p10, "extra"    # Ljava/lang/Float;
    .param p11, "status"    # Ljava/lang/String;
    .param p12, "homePackQty"    # Ljava/lang/Integer;
    .param p13, "IsCombo"    # Ljava/lang/Boolean;
    .param p14, "CostCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->id:Ljava/lang/Long;

    .line 52
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->orderMasterId:Ljava/lang/Integer;

    .line 53
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->itemId:Ljava/lang/Integer;

    .line 54
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->title:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->quantity:Ljava/lang/Double;

    .line 56
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->price:Ljava/lang/Double;

    .line 57
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->isCanceled:Ljava/lang/Boolean;

    .line 58
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->seatNo:Ljava/lang/Integer;

    .line 59
    iput-object p9, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->Note:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->extra:Ljava/lang/Float;

    .line 61
    iput-object p11, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->status:Ljava/lang/String;

    .line 62
    iput-object p12, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->homePackQty:Ljava/lang/Integer;

    .line 63
    iput-object p13, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->IsCombo:Ljava/lang/Boolean;

    .line 64
    iput-object p14, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->CostCenterId:Ljava/lang/Integer;

    .line 65
    return-void
.end method


# virtual methods
.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->extra:Ljava/lang/Float;

    return-object v0
.end method

.method public getHomePackQty()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->homePackQty:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCanceled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->isCanceled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->IsCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->itemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->Note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderExtraItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->orderExtraItemList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->orderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->quantity:Ljava/lang/Double;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->seatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CostCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->CostCenterId:Ljava/lang/Integer;

    .line 178
    return-void
.end method

.method public setExtra(Ljava/lang/Float;)V
    .registers 2
    .param p1, "extra"    # Ljava/lang/Float;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->extra:Ljava/lang/Float;

    .line 146
    return-void
.end method

.method public setHomePackQty(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "homePackQty"    # Ljava/lang/Integer;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->homePackQty:Ljava/lang/Integer;

    .line 162
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->id:Ljava/lang/Long;

    .line 74
    return-void
.end method

.method public setIsCanceled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCanceled"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->isCanceled:Ljava/lang/Boolean;

    .line 122
    return-void
.end method

.method public setIsCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->IsCombo:Ljava/lang/Boolean;

    .line 170
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->itemId:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->Note:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setOrderExtraItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "orderExtraItemList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->orderExtraItemList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->orderMasterId:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->price:Ljava/lang/Double;

    .line 114
    return-void
.end method

.method public setQuantity(Ljava/lang/Double;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Double;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->quantity:Ljava/lang/Double;

    .line 106
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/Integer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->seatNo:Ljava/lang/Integer;

    .line 130
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->status:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->title:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 181
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, ""

    .line 184
    .local v1, "finalNotes":Ljava/lang/String;
    const-string v3, "ItemId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v3, "Quantity"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "ItemId"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v3, "OrderDetailsID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v3, "isCancelled"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCanceled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v3, "ItemId"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 192
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(?<=[,.!?;:])(?!$)"

    const-string v5, "$0 "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    :cond_7b
    const-string v3, "Note"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v3, "ExtraCharge"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getExtra()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v3, "HomePackQty"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getHomePackQty()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v3, "Status"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v3, "IsCombo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v3, "SeatNo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_ad} :catch_ae

    .line 204
    .end local v1    # "finalNotes":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_ad
    return-object v2

    .line 201
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_ae
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 204
    const/4 v2, 0x0

    goto :goto_ad
.end method

.method public toJsonForShift()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "ItemId"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "Quantity"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "IsCombo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21

    .line 219
    :goto_20
    return-object v1

    .line 215
    :catch_21
    move-exception v0

    .line 216
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_20
.end method
