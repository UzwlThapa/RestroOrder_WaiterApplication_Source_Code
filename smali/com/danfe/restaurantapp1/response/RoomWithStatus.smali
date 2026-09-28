###### Class com.danfe.restaurantapp1.response.RoomWithStatus (com.danfe.restaurantapp1.response.RoomWithStatus)
.class public Lcom/danfe/restaurantapp1/response/RoomWithStatus;
.super Ljava/lang/Object;
.source "RoomWithStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private roomWithStatusData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->roomWithStatusData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomWithStatusData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->roomWithStatusData:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->message:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRoomWithStatusData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "roomWithStatusData":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->roomWithStatusData:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->statusCode:Ljava/lang/Integer;

    .line 31
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.RoomWithStatus.RoomWithStatusData (com.danfe.restaurantapp1.response.RoomWithStatus$RoomWithStatusData)
.class public Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;
.super Ljava/lang/Object;
.source "RoomWithStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/RoomWithStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoomWithStatusData"
.end annotation


# instance fields
.field private restroRoom:Ljava/lang/String;
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

.field private roomStatusId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomStatusId"
    .end annotation
.end field

.field private roomType:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomType"
    .end annotation
.end field

.field private roomTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomTypeID"
    .end annotation
.end field

.field private tableList:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tableList"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/RoomWithStatus;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/RoomWithStatus;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/RoomWithStatus;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->this$0:Lcom/danfe/restaurantapp1/response/RoomWithStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomStatusId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomStatusId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomType:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoomTypeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableList()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->tableList:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->restroRoom:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->restroRoomId:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setRoomStatusId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomStatusId"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomStatusId:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public setRoomType(Ljava/lang/Object;)V
    .registers 2
    .param p1, "roomType"    # Ljava/lang/Object;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomType:Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public setRoomTypeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->roomTypeID:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public setTableList(Ljava/lang/Object;)V
    .registers 2
    .param p1, "tableList"    # Ljava/lang/Object;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->tableList:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->title:Ljava/lang/String;

    .line 104
    return-void
.end method
