###### Class com.danfe.restaurantapp1.response.WaiterListResponse (com.danfe.restaurantapp1.response.WaiterListResponse)
.class public Lcom/danfe/restaurantapp1/response/WaiterListResponse;
.super Ljava/lang/Object;
.source "WaiterListResponse.java"


# instance fields
.field private Department:Ljava/lang/Object;

.field private ItemName:Ljava/lang/Object;

.field private OrderDetailId:Ljava/lang/Integer;

.field private RoomName:Ljava/lang/Object;

.field private TableName:Ljava/lang/Object;

.field private WaiterIP:Ljava/lang/String;

.field private WaiterName:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->additionalProperties:Ljava/util/Map;

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
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDepartment()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->Department:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->ItemName:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrderDetailId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->OrderDetailId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->RoomName:Ljava/lang/Object;

    return-object v0
.end method

.method public getTableName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->TableName:Ljava/lang/Object;

    return-object v0
.end method

.method public getWaiterIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->WaiterIP:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->WaiterName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setDepartment(Ljava/lang/Object;)V
    .registers 2
    .param p1, "department"    # Ljava/lang/Object;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->Department:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public setItemName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->ItemName:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setOrderDetailId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderDetailId"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->OrderDetailId:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public setRoomName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "roomName"    # Ljava/lang/Object;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->RoomName:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public setTableName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tableName"    # Ljava/lang/Object;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->TableName:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public setWaiterIP(Ljava/lang/String;)V
    .registers 2
    .param p1, "waiterIP"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->WaiterIP:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWaiterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "waiterName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->WaiterName:Ljava/lang/String;

    .line 27
    return-void
.end method
