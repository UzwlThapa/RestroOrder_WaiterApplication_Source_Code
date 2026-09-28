###### Class com.danfe.restaurantapp1.response.TableList (com.danfe.restaurantapp1.response.TableList)
.class public Lcom/danfe/restaurantapp1/response/TableList;
.super Ljava/lang/Object;
.source "TableList.java"


# instance fields
.field private billPaid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BillPaid"
    .end annotation
.end field

.field private compMasterID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CompMasterID"
    .end annotation
.end field

.field private guestNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GuestNo"
    .end annotation
.end field

.field private isCancelled:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCancelled"
    .end annotation
.end field

.field private isTable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsTable"
    .end annotation
.end field

.field private mergeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MergeID"
    .end annotation
.end field

.field private mergeTableList:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MergeTableList"
    .end annotation
.end field

.field private mergeTableName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MergeTableName"
    .end annotation
.end field

.field private orderMasterId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMasterId"
    .end annotation
.end field

.field private rate:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Rate"
    .end annotation
.end field

.field private restroRoom:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restroRoom"
    .end annotation
.end field

.field private restroRoomId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restroRoomId"
    .end annotation
.end field

.field private restrotableId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restrotableId"
    .end annotation
.end field

.field private restrotableTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restrotableTitle"
    .end annotation
.end field

.field private restrotablesStatusID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restrotablesStatusID"
    .end annotation
.end field

.field private seatcap:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Seatcap"
    .end annotation
.end field

.field private tableDate:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tableDate"
    .end annotation
.end field

.field private tabletime:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tabletime"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 20
    .param p1, "restrotableId"    # Ljava/lang/Integer;
    .param p2, "restrotableTitle"    # Ljava/lang/String;
    .param p3, "restroRoomId"    # Ljava/lang/Integer;
    .param p4, "restroRoom"    # Ljava/lang/Object;
    .param p5, "seatcap"    # Ljava/lang/Integer;
    .param p6, "mergeTableList"    # Ljava/lang/Integer;
    .param p7, "mergeID"    # Ljava/lang/Integer;
    .param p8, "mergeTableName"    # Ljava/lang/Object;
    .param p9, "restrotablesStatusID"    # Ljava/lang/Integer;
    .param p10, "billPaid"    # Ljava/lang/Integer;
    .param p11, "tableDate"    # Ljava/lang/Object;
    .param p12, "tabletime"    # Ljava/lang/Object;
    .param p13, "isCancelled"    # Ljava/lang/Integer;
    .param p14, "isTable"    # Ljava/lang/Boolean;
    .param p15, "rate"    # Ljava/lang/Double;
    .param p16, "orderMasterId"    # Ljava/lang/Integer;
    .param p17, "compMasterID"    # Ljava/lang/Integer;
    .param p18, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableId:Ljava/lang/Integer;

    .line 69
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableTitle:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoomId:Ljava/lang/Integer;

    .line 71
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoom:Ljava/lang/Object;

    .line 72
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/TableList;->seatcap:Ljava/lang/Integer;

    .line 73
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableList:Ljava/lang/Integer;

    .line 74
    iput-object p7, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeID:Ljava/lang/Integer;

    .line 75
    iput-object p8, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableName:Ljava/lang/Object;

    .line 76
    iput-object p9, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 77
    iput-object p10, p0, Lcom/danfe/restaurantapp1/response/TableList;->billPaid:Ljava/lang/Integer;

    .line 78
    iput-object p11, p0, Lcom/danfe/restaurantapp1/response/TableList;->tableDate:Ljava/lang/Object;

    .line 79
    iput-object p12, p0, Lcom/danfe/restaurantapp1/response/TableList;->tabletime:Ljava/lang/Object;

    .line 80
    iput-object p13, p0, Lcom/danfe/restaurantapp1/response/TableList;->isCancelled:Ljava/lang/Integer;

    .line 81
    iput-object p14, p0, Lcom/danfe/restaurantapp1/response/TableList;->isTable:Ljava/lang/Boolean;

    .line 82
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->rate:Ljava/lang/Double;

    .line 83
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->orderMasterId:Ljava/lang/Integer;

    .line 84
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->compMasterID:Ljava/lang/Integer;

    .line 85
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->guestNo:Ljava/lang/Integer;

    .line 86
    return-void
.end method


# virtual methods
.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->billPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCompMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->compMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->guestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->isCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->isTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableName:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->orderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoom:Ljava/lang/Object;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatcap()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->seatcap:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableDate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->tableDate:Ljava/lang/Object;

    return-object v0
.end method

.method public getTabletime()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableList;->tabletime:Ljava/lang/Object;

    return-object v0
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->billPaid:Ljava/lang/Integer;

    .line 166
    return-void
.end method

.method public setCompMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "compMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->compMasterID:Ljava/lang/Integer;

    .line 222
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->guestNo:Ljava/lang/Integer;

    .line 230
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->isCancelled:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->isTable:Ljava/lang/Boolean;

    .line 198
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeID:Ljava/lang/Integer;

    .line 142
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableList:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public setMergeTableName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "mergeTableName"    # Ljava/lang/Object;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->mergeTableName:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->orderMasterId:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Double;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->rate:Ljava/lang/Double;

    .line 206
    return-void
.end method

.method public setRestroRoom(Ljava/lang/Object;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/Object;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoom:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restroRoomId:Ljava/lang/Integer;

    .line 110
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableId:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotableTitle:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 158
    return-void
.end method

.method public setSeatcap(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatcap"    # Ljava/lang/Integer;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->seatcap:Ljava/lang/Integer;

    .line 126
    return-void
.end method

.method public setTableDate(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tableDate"    # Ljava/lang/Object;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->tableDate:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public setTabletime(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tabletime"    # Ljava/lang/Object;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableList;->tabletime:Ljava/lang/Object;

    .line 182
    return-void
.end method
