###### Class com.danfe.restaurantapp1.response.FullRestroRoomData (com.danfe.restaurantapp1.response.FullRestroRoomData)
.class public Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
.super Ljava/lang/Object;
.source "FullRestroRoomData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;,
        Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;,
        Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->data:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->statusCode:Ljava/lang/Integer;

    .line 27
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.FullRestroRoomData.Room (com.danfe.restaurantapp1.response.FullRestroRoomData$Room)
.class public Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;
.super Ljava/lang/Object;
.source "FullRestroRoomData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Room"
.end annotation


# instance fields
.field private deleteBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeleteBy"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field private insertedBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InsertedBy"
    .end annotation
.end field

.field private roomTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomTypeID"
    .end annotation
.end field

.field private roomlist:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roomlist"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field

.field private updateBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UpdateBy"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->roomlist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeleteBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->deleteBy:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->insertedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomTypeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->roomTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->roomlist:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->updateBy:Ljava/lang/String;

    return-object v0
.end method

.method public setDeleteBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "deleteBy"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->deleteBy:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->description:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setInsertedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "insertedBy"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->insertedBy:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setRoomTypeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->roomTypeID:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public setRoomlist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->roomlist:Ljava/util/List;

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->title:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUpdateBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateBy"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->updateBy:Ljava/lang/String;

    .line 109
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.FullRestroRoomData.Roomlist (com.danfe.restaurantapp1.response.FullRestroRoomData$Roomlist)
.class public Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;
.super Ljava/lang/Object;
.source "FullRestroRoomData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Roomlist"
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

.field private tableList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tableList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->tableList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomStatusId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomStatusId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomType:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoomTypeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->tableList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->restroRoom:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->restroRoomId:Ljava/lang/Integer;

    .line 159
    return-void
.end method

.method public setRoomStatusId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomStatusId"    # Ljava/lang/Integer;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomStatusId:Ljava/lang/Integer;

    .line 191
    return-void
.end method

.method public setRoomType(Ljava/lang/Object;)V
    .registers 2
    .param p1, "roomType"    # Ljava/lang/Object;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomType:Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public setRoomTypeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->roomTypeID:Ljava/lang/Integer;

    .line 199
    return-void
.end method

.method public setTableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->tableList:Ljava/util/List;

    .line 175
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->title:Ljava/lang/String;

    .line 183
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.FullRestroRoomData.TableList (com.danfe.restaurantapp1.response.FullRestroRoomData$TableList)
.class public Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;
.super Ljava/lang/Object;
.source "FullRestroRoomData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableList"
.end annotation


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

.field private mergeTableName:Ljava/lang/String;
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

.field private orderNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderNo"
    .end annotation
.end field

.field private rate:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Rate"
    .end annotation
.end field

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

.field private tableDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tableDate"
    .end annotation
.end field

.field private tabletime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tabletime"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

.field private tokenNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TokenNo"
    .end annotation
.end field

.field private userModuleID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserModuleID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->this$0:Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->billPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCompMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->compMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->guestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->isCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->isTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->orderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->orderNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatcap()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->seatcap:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tableDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTabletime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tabletime:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tokenNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserModuleID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->userModuleID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->billPaid:Ljava/lang/Integer;

    .line 356
    return-void
.end method

.method public setCompMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "compMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->compMasterID:Ljava/lang/Integer;

    .line 412
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->guestNo:Ljava/lang/Integer;

    .line 420
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->isCancelled:Ljava/lang/Integer;

    .line 380
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->isTable:Ljava/lang/Boolean;

    .line 388
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeID:Ljava/lang/Integer;

    .line 332
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeTableList:Ljava/lang/Integer;

    .line 324
    return-void
.end method

.method public setMergeTableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "mergeTableName"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->mergeTableName:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->orderMasterId:Ljava/lang/Integer;

    .line 404
    return-void
.end method

.method public setOrderNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderNo"    # Ljava/lang/Integer;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->orderNo:Ljava/lang/Integer;

    .line 428
    return-void
.end method

.method public setRate(Ljava/lang/Float;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Float;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->rate:Ljava/lang/Float;

    .line 396
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restroRoom:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restroRoomId:Ljava/lang/Integer;

    .line 300
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotableId:Ljava/lang/Integer;

    .line 284
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotableTitle:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 348
    return-void
.end method

.method public setSeatcap(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatcap"    # Ljava/lang/Integer;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->seatcap:Ljava/lang/Integer;

    .line 316
    return-void
.end method

.method public setTableDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableDate"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tableDate:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setTabletime(Ljava/lang/String;)V
    .registers 2
    .param p1, "tabletime"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tabletime:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setTokenNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "tokenNo"    # Ljava/lang/Integer;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->tokenNo:Ljava/lang/Integer;

    .line 436
    return-void
.end method

.method public setUserModuleID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "userModuleID"    # Ljava/lang/Integer;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->userModuleID:Ljava/lang/Integer;

    .line 444
    return-void
.end method
