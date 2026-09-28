###### Class com.danfe.restaurantapp1.helper.RoomWithStatus (com.danfe.restaurantapp1.helper.RoomWithStatus)
.class public Lcom/danfe/restaurantapp1/helper/RoomWithStatus;
.super Ljava/lang/Object;
.source "RoomWithStatus.java"


# instance fields
.field private RoomStatusId:Ljava/lang/Integer;

.field private Title:Ljava/lang/String;

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

.field private tableList:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->additionalProperties:Ljava/util/Map;

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
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomStatusId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->RoomStatusId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableList()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->tableList:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->restroRoom:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->restroRoomId:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public setRoomStatusId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomStatusId"    # Ljava/lang/Integer;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->RoomStatusId:Ljava/lang/Integer;

    .line 105
    return-void
.end method

.method public setTableList(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tableList"    # Ljava/lang/Object;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->tableList:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RoomWithStatus;->Title:Ljava/lang/String;

    .line 87
    return-void
.end method
