###### Class com.danfe.restaurantapp1.model.TableDb (com.danfe.restaurantapp1.model.TableDb)
.class public Lcom/danfe/restaurantapp1/model/TableDb;
.super Ljava/lang/Object;
.source "TableDb.java"


# instance fields
.field private BillPaid:Ljava/lang/Integer;

.field private GuestNo:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private isCancelled:Ljava/lang/Integer;

.field private isChecked:Ljava/lang/Boolean;

.field private isTable:Ljava/lang/Boolean;

.field private mergeId:Ljava/lang/Integer;

.field private mergeTableId:Ljava/lang/Integer;

.field private number:Ljava/lang/String;

.field private orderMasterId:Ljava/lang/Integer;

.field private rate:Ljava/lang/Double;

.field private roomId:Ljava/lang/Integer;

.field private tableCapacity:Ljava/lang/Integer;

.field private tableDate:Ljava/lang/String;

.field private tableStatus:Ljava/lang/Integer;

.field private tabletime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->id:Ljava/lang/Long;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 18
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "tableStatus"    # Ljava/lang/Integer;
    .param p4, "tableCapacity"    # Ljava/lang/Integer;
    .param p5, "mergeTableId"    # Ljava/lang/Integer;
    .param p6, "mergeId"    # Ljava/lang/Integer;
    .param p7, "roomId"    # Ljava/lang/Integer;
    .param p8, "billPaid"    # Ljava/lang/Integer;
    .param p9, "tableDate"    # Ljava/lang/String;
    .param p10, "tabletime"    # Ljava/lang/String;
    .param p11, "isCancelled"    # Ljava/lang/Integer;
    .param p12, "isChecked"    # Ljava/lang/Boolean;
    .param p13, "isTable"    # Ljava/lang/Boolean;
    .param p14, "rate"    # Ljava/lang/Double;
    .param p15, "orderMasterId"    # Ljava/lang/Integer;
    .param p16, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->id:Ljava/lang/Long;

    .line 41
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/TableDb;->number:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableStatus:Ljava/lang/Integer;

    .line 43
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableCapacity:Ljava/lang/Integer;

    .line 44
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeTableId:Ljava/lang/Integer;

    .line 45
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeId:Ljava/lang/Integer;

    .line 46
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/TableDb;->roomId:Ljava/lang/Integer;

    .line 47
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/TableDb;->BillPaid:Ljava/lang/Integer;

    .line 48
    iput-object p9, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableDate:Ljava/lang/String;

    .line 49
    iput-object p10, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tabletime:Ljava/lang/String;

    .line 50
    iput-object p11, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isCancelled:Ljava/lang/Integer;

    .line 51
    iput-object p12, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isChecked:Ljava/lang/Boolean;

    .line 52
    iput-object p13, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isTable:Ljava/lang/Boolean;

    .line 53
    iput-object p14, p0, Lcom/danfe/restaurantapp1/model/TableDb;->rate:Ljava/lang/Double;

    .line 54
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->orderMasterId:Ljava/lang/Integer;

    .line 55
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->GuestNo:Ljava/lang/Integer;

    .line 56
    return-void
.end method


# virtual methods
.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsChecked()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeTableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->orderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->roomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableCapacity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableCapacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTableStatus()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabletime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tabletime:Ljava/lang/String;

    return-object v0
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->BillPaid:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->GuestNo:Ljava/lang/Integer;

    .line 184
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->id:Ljava/lang/Long;

    .line 64
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isCancelled:Ljava/lang/Integer;

    .line 144
    return-void
.end method

.method public setIsChecked(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isChecked"    # Ljava/lang/Boolean;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isChecked:Ljava/lang/Boolean;

    .line 152
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->isTable:Ljava/lang/Boolean;

    .line 160
    return-void
.end method

.method public setMergeId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeId"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeId:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setMergeTableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableId"    # Ljava/lang/Integer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->mergeTableId:Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->number:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->orderMasterId:Ljava/lang/Integer;

    .line 176
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Double;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->rate:Ljava/lang/Double;

    .line 168
    return-void
.end method

.method public setRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomId"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->roomId:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public setTableCapacity(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "tableCapacity"    # Ljava/lang/Integer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableCapacity:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method public setTableDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableDate"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableDate:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTableStatus(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "tableStatus"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tableStatus:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setTabletime(Ljava/lang/String;)V
    .registers 2
    .param p1, "tabletime"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/TableDb;->tabletime:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 11

    .prologue
    const/4 v9, -0x1

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_6
    const-string v6, "table"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v6, "TableID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_50

    .line 194
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "mergeId":J
    :goto_39
    const-string v6, "MergeID"

    invoke-virtual {v1, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_5a

    .line 200
    const-wide/16 v4, 0x0

    .line 204
    .local v4, "mergeTableId":J
    :goto_4a
    const-string v6, "MergeTableList"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 209
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mergeId":J
    .end local v4    # "mergeTableId":J
    :goto_4f
    return-object v1

    .line 196
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_50
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v2, v6

    .restart local v2    # "mergeId":J
    goto :goto_39

    .line 202
    :cond_5a
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_61} :catch_64

    move-result v6

    int-to-long v4, v6

    .restart local v4    # "mergeTableId":J
    goto :goto_4a

    .line 206
    .end local v2    # "mergeId":J
    .end local v4    # "mergeTableId":J
    :catch_64
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    const/4 v1, 0x0

    goto :goto_4f
.end method
