###### Class com.danfe.restaurantapp1.model.RoomDb (com.danfe.restaurantapp1.model.RoomDb)
.class public Lcom/danfe/restaurantapp1/model/RoomDb;
.super Ljava/lang/Object;
.source "RoomDb.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private restroRoom:Ljava/lang/String;

.field private roomStatus:Ljava/lang/Integer;

.field private roomTypeId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->id:Ljava/lang/Long;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "restroRoom"    # Ljava/lang/String;
    .param p3, "roomStatus"    # Ljava/lang/Integer;
    .param p4, "roomTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->id:Ljava/lang/Long;

    .line 23
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->restroRoom:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomStatus:Ljava/lang/Integer;

    .line 25
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomTypeId:Ljava/lang/Integer;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomStatus()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomTypeId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->id:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->restroRoom:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRoomStatus(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomStatus"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomStatus:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setRoomTypeId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomDb;->roomTypeId:Ljava/lang/Integer;

    .line 58
    return-void
.end method
