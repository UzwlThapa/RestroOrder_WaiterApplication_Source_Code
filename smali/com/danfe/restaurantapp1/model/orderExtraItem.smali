###### Class com.danfe.restaurantapp1.model.orderExtraItem (com.danfe.restaurantapp1.model.orderExtraItem)
.class public Lcom/danfe/restaurantapp1/model/orderExtraItem;
.super Ljava/lang/Object;
.source "orderExtraItem.java"


# instance fields
.field private ExtraItem:Ljava/lang/String;

.field private ExtraItemID:Ljava/lang/Integer;

.field private ExtraPrice:Ljava/lang/Double;

.field private ItemID:Ljava/lang/Integer;

.field private ItemStatus:Ljava/lang/String;

.field private Quantity:Ljava/lang/Integer;

.field private SeatNo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "itemID"    # Ljava/lang/Integer;
    .param p2, "extraItemID"    # Ljava/lang/Integer;
    .param p3, "extraItem"    # Ljava/lang/String;
    .param p4, "extraPrice"    # Ljava/lang/Double;
    .param p5, "quantity"    # Ljava/lang/Integer;
    .param p6, "itemStatus"    # Ljava/lang/String;
    .param p7, "seatNo"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemID:Ljava/lang/Integer;

    .line 22
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItemID:Ljava/lang/Integer;

    .line 23
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItem:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraPrice:Ljava/lang/Double;

    .line 25
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->Quantity:Ljava/lang/Integer;

    .line 26
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemStatus:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->SeatNo:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->Quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->SeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItem:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setExtraItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "extraItemID"    # Ljava/lang/Integer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraItemID:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Double;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ExtraPrice:Ljava/lang/Double;

    .line 76
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemID"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemID:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setItemStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemStatus"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->ItemStatus:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->Quantity:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setSeatNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/orderExtraItem;->SeatNo:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toExtraJson()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "ItemID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, "ExtraItemID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "ExtraItem"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "ExtraPrice"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "Quantity"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "SeatNo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 100
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_3b
    return-object v1

    .line 97
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_3c
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    const/4 v1, 0x0

    goto :goto_3b
.end method
