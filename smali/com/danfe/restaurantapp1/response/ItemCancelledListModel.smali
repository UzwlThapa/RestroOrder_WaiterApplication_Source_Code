###### Class com.danfe.restaurantapp1.response.ItemCancelledListModel (com.danfe.restaurantapp1.response.ItemCancelledListModel)
.class public Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;
.super Ljava/lang/Object;
.source "ItemCancelledListModel.java"


# instance fields
.field private SeatNo:Ljava/lang/Integer;

.field private cancelledBy:Ljava/lang/String;

.field private item:Ljava/lang/String;

.field private orderBy:Ljava/lang/String;

.field private orderMasterID:Ljava/lang/Integer;

.field private quantity:Ljava/lang/Double;

.field private reason:Ljava/lang/String;

.field private responsible:Ljava/lang/String;

.field private tableId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 10
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "quantity"    # Ljava/lang/Double;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "cancelledBy"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "responsible"    # Ljava/lang/String;
    .param p7, "tableId"    # Ljava/lang/Integer;
    .param p8, "SeatNo"    # Ljava/lang/Integer;
    .param p9, "orderMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->item:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->quantity:Ljava/lang/Double;

    .line 37
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderBy:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->cancelledBy:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->reason:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->responsible:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->tableId:Ljava/lang/Integer;

    .line 42
    iput-object p8, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->SeatNo:Ljava/lang/Integer;

    .line 43
    iput-object p9, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderMasterID:Ljava/lang/Integer;

    .line 44
    return-void
.end method


# virtual methods
.method public getCancelledBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->cancelledBy:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->quantity:Ljava/lang/Double;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getResponsible()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->responsible:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->tableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCancelledBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "cancelledBy"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->cancelledBy:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->item:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderBy:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setOrderMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->orderMasterID:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setQuantity(Ljava/lang/Double;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Double;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->quantity:Ljava/lang/Double;

    .line 68
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->reason:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setResponsible(Ljava/lang/String;)V
    .registers 2
    .param p1, "responsible"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->responsible:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SeatNo"    # Ljava/lang/Integer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->SeatNo:Ljava/lang/Integer;

    .line 116
    return-void
.end method

.method public setTableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "tableId"    # Ljava/lang/Integer;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->tableId:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "Item"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "Quantity"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getQuantity()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "OrderBy"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getOrderBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "CanceledBy"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getCancelledBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "Reason"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "Responsible"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getResponsible()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v2, "tableId"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getTableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "SeatNo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getSeatNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "orderMasterID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_56} :catch_57

    .line 134
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_56
    return-object v1

    .line 131
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_57
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    const/4 v1, 0x0

    goto :goto_56
.end method
