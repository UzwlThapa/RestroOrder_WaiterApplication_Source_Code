###### Class com.danfe.restaurantapp1.response.Room (com.danfe.restaurantapp1.response.Room)
.class public Lcom/danfe/restaurantapp1/response/Room;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/Room$TableList;,
        Lcom/danfe/restaurantapp1/response/Room$Roomlist;
    }
.end annotation


# instance fields
.field private DeleteBy:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private InsertedBy:Ljava/lang/String;

.field private RoomTypeID:Ljava/lang/Integer;

.field private Title:Ljava/lang/String;

.field private UpdateBy:Ljava/lang/String;

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

.field private roomlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "roomTypeID"    # Ljava/lang/Integer;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "insertedBy"    # Ljava/lang/String;
    .param p5, "updateBy"    # Ljava/lang/String;
    .param p6, "deleteBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p7, "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/Room$Roomlist;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->roomlist:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->additionalProperties:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->RoomTypeID:Ljava/lang/Integer;

    .line 24
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/Room;->Title:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/Room;->Description:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/Room;->InsertedBy:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/Room;->UpdateBy:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/Room;->DeleteBy:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/danfe/restaurantapp1/response/Room;->roomlist:Ljava/util/List;

    .line 30
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
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDeleteBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->DeleteBy:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->InsertedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomTypeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->RoomTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->roomlist:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->UpdateBy:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setDeleteBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "DeleteBy"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->DeleteBy:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "Description"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->Description:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setInsertedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "InsertedBy"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->InsertedBy:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRoomTypeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->RoomTypeID:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setRoomlist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/Room$Roomlist;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->roomlist:Ljava/util/List;

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->Title:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUpdateBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "UpdateBy"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room;->UpdateBy:Ljava/lang/String;

    .line 100
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.Room.Roomlist (com.danfe.restaurantapp1.response.Room$Roomlist)
.class public Lcom/danfe/restaurantapp1/response/Room$Roomlist;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/Room;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Roomlist"
.end annotation


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

.field private tableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/Room;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/Room;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 8
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/Room;
    .param p2, "restroRoomId"    # Ljava/lang/Integer;
    .param p3, "restroRoom"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "roomStatusId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p4, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/Room$TableList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->this$0:Lcom/danfe/restaurantapp1/response/Room;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->tableList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->additionalProperties:Ljava/util/Map;

    .line 149
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoomId:Ljava/lang/Integer;

    .line 150
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoom:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->tableList:Ljava/util/List;

    .line 152
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->Title:Ljava/lang/String;

    .line 153
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->RoomStatusId:Ljava/lang/Integer;

    .line 154
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
    .line 227
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomStatusId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->RoomStatusId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->tableList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoom:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->restroRoomId:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public setRoomStatusId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomStatusId"    # Ljava/lang/Integer;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->RoomStatusId:Ljava/lang/Integer;

    .line 224
    return-void
.end method

.method public setTableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/Room$TableList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->tableList:Ljava/util/List;

    .line 196
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$Roomlist;->Title:Ljava/lang/String;

    .line 210
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.Room.TableList (com.danfe.restaurantapp1.response.Room$TableList)
.class public Lcom/danfe/restaurantapp1/response/Room$TableList;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/Room;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableList"
.end annotation


# instance fields
.field private BillPaid:Ljava/lang/Integer;

.field private GuestNo:Ljava/lang/Integer;

.field private IsTable:Ljava/lang/Boolean;

.field private MergeID:Ljava/lang/Integer;

.field private MergeTableList:Ljava/lang/Integer;

.field private OrderMasterId:Ljava/lang/Integer;

.field private Rate:Ljava/lang/Double;

.field private SeatNo:Ljava/lang/Integer;

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

.field private isCancelled:Ljava/lang/Integer;

.field private restroRoom:Ljava/lang/Object;

.field private restroRoomId:Ljava/lang/Integer;

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/String;

.field private restrotablesStatusID:Ljava/lang/Integer;

.field private tableDate:Ljava/lang/String;

.field private tabletime:Ljava/lang/String;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/Room;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/Room;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 20
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/Room;
    .param p2, "restrotableId"    # Ljava/lang/Integer;
    .param p3, "restrotableTitle"    # Ljava/lang/String;
    .param p4, "restroRoomId"    # Ljava/lang/Integer;
    .param p5, "restroRoom"    # Ljava/lang/Object;
    .param p6, "restrotablesStatusID"    # Ljava/lang/Integer;
    .param p7, "seatNo"    # Ljava/lang/Integer;
    .param p8, "mergeTableList"    # Ljava/lang/Integer;
    .param p9, "mergeID"    # Ljava/lang/Integer;
    .param p10, "billPaid"    # Ljava/lang/Integer;
    .param p11, "tableDate"    # Ljava/lang/String;
    .param p12, "tabletime"    # Ljava/lang/String;
    .param p13, "isCancelled"    # Ljava/lang/Integer;
    .param p14, "isTable"    # Ljava/lang/Boolean;
    .param p15, "rate"    # Ljava/lang/Double;
    .param p16, "orderMasterId"    # Ljava/lang/Integer;
    .param p17, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->this$0:Lcom/danfe/restaurantapp1/response/Room;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->additionalProperties:Ljava/util/Map;

    .line 260
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableId:Ljava/lang/Integer;

    .line 261
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableTitle:Ljava/lang/String;

    .line 262
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoomId:Ljava/lang/Integer;

    .line 263
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoom:Ljava/lang/Object;

    .line 264
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 265
    iput-object p7, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->SeatNo:Ljava/lang/Integer;

    .line 266
    iput-object p8, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeTableList:Ljava/lang/Integer;

    .line 267
    iput-object p9, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeID:Ljava/lang/Integer;

    .line 268
    iput-object p10, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->BillPaid:Ljava/lang/Integer;

    .line 269
    iput-object p11, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tableDate:Ljava/lang/String;

    .line 270
    iput-object p12, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tabletime:Ljava/lang/String;

    .line 271
    iput-object p13, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->isCancelled:Ljava/lang/Integer;

    .line 272
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->IsTable:Ljava/lang/Boolean;

    .line 273
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->Rate:Ljava/lang/Double;

    .line 274
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->OrderMasterId:Ljava/lang/Integer;

    .line 275
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->GuestNo:Ljava/lang/Integer;

    .line 276
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
    .line 453
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->isCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->IsTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->Rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoom:Ljava/lang/Object;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tableDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTabletime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tabletime:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->BillPaid:Ljava/lang/Integer;

    .line 384
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->GuestNo:Ljava/lang/Integer;

    .line 466
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->isCancelled:Ljava/lang/Integer;

    .line 426
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->IsTable:Ljava/lang/Boolean;

    .line 434
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeID:Ljava/lang/Integer;

    .line 292
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->MergeTableList:Ljava/lang/Integer;

    .line 284
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->OrderMasterId:Ljava/lang/Integer;

    .line 450
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Double;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->Rate:Ljava/lang/Double;

    .line 442
    return-void
.end method

.method public setRestroRoom(Ljava/lang/Object;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/Object;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoom:Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restroRoomId:Ljava/lang/Integer;

    .line 342
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableId:Ljava/lang/Integer;

    .line 314
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotableTitle:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 370
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/Integer;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->SeatNo:Ljava/lang/Integer;

    .line 300
    return-void
.end method

.method public setTableDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableDate"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tableDate:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setTabletime(Ljava/lang/String;)V
    .registers 2
    .param p1, "tabletime"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Room$TableList;->tabletime:Ljava/lang/String;

    .line 412
    return-void
.end method
