###### Class com.danfe.restaurantapp1.model.RoomTypeDb (com.danfe.restaurantapp1.model.RoomTypeDb)
.class public Lcom/danfe/restaurantapp1/model/RoomTypeDb;
.super Ljava/lang/Object;
.source "RoomTypeDb.java"


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private restroRoom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->id:Ljava/lang/Long;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "restroRoom"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->id:Ljava/lang/Long;

    .line 22
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->restroRoom:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->description:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->id:Ljava/lang/Long;

    .line 32
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->restroRoom:Ljava/lang/String;

    .line 40
    return-void
.end method
