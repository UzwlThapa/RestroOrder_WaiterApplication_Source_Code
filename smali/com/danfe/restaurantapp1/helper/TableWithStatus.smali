###### Class com.danfe.restaurantapp1.helper.TableWithStatus (com.danfe.restaurantapp1.helper.TableWithStatus)
.class public Lcom/danfe/restaurantapp1/helper/TableWithStatus;
.super Ljava/lang/Object;
.source "TableWithStatus.java"


# instance fields
.field private MergeID:Ljava/lang/Integer;

.field private MergeTableList:Ljava/lang/Integer;

.field private MergeTableName:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->additionalProperties:Ljava/util/Map;

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
    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatcap()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->Seatcap:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeID:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeTableList:Ljava/lang/Integer;

    .line 68
    return-void
.end method

.method public setMergeTableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mergeTableName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->MergeTableName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restroRoom:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restroRoomId:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotableId:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotableTitle:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->restrotablesStatusID:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setSeatcap(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatcap"    # Ljava/lang/Integer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/TableWithStatus;->Seatcap:Ljava/lang/Integer;

    .line 84
    return-void
.end method
