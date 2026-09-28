###### Class com.danfe.restaurantapp1.response.TableWithStatus (com.danfe.restaurantapp1.response.TableWithStatus)
.class public Lcom/danfe/restaurantapp1/response/TableWithStatus;
.super Ljava/lang/Object;
.source "TableWithStatus.java"


# instance fields
.field private BillPaid:Ljava/lang/Integer;

.field private GuestNo:Ljava/lang/Integer;

.field private IsCancelled:Ljava/lang/Integer;

.field private IsTable:Ljava/lang/Boolean;

.field private MergeID:Ljava/lang/Integer;

.field private MergeTableList:Ljava/lang/Integer;

.field private MergeTableName:Ljava/lang/String;

.field private OrderMasterId:Ljava/lang/Integer;

.field private Rate:Ljava/lang/Double;

.field private Seatcap:Ljava/lang/Integer;

.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private restroRoom:Ljava/lang/String;

.field private restroRoomId:Ljava/lang/Integer;

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/String;

.field private restrotablesStatusID:Ljava/lang/Integer;

.field private tableDate:Ljava/lang/String;

.field private tabletime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAdditionalProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->IsCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->IsTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->Rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatcap()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->Seatcap:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->tableDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTabletime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->tabletime:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->BillPaid:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->GuestNo:Ljava/lang/Integer;

    .line 228
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->IsCancelled:Ljava/lang/Integer;

    .line 188
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->IsTable:Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeID:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeTableList:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setMergeTableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mergeTableName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->MergeTableName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->OrderMasterId:Ljava/lang/Integer;

    .line 212
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Double;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->Rate:Ljava/lang/Double;

    .line 204
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restroRoom:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restroRoomId:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotableId:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotableTitle:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->restrotablesStatusID:Ljava/lang/Integer;

    .line 116
    return-void
.end method

.method public setSeatcap(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatcap"    # Ljava/lang/Integer;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->Seatcap:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setTableDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableDate"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->tableDate:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setTabletime(Ljava/lang/String;)V
    .registers 2
    .param p1, "tabletime"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/TableWithStatus;->tabletime:Ljava/lang/String;

    .line 170
    return-void
.end method
