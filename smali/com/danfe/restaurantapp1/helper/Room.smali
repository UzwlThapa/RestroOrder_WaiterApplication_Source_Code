###### Class com.danfe.restaurantapp1.helper.Room (com.danfe.restaurantapp1.helper.Room)
.class public Lcom/danfe/restaurantapp1/helper/Room;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/Room$TableList;,
        Lcom/danfe/restaurantapp1/helper/Room$Roomlist;
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
            "Lcom/danfe/restaurantapp1/helper/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->roomlist:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->additionalProperties:Ljava/util/Map;

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
    .line 121
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDeleteBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->DeleteBy:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->InsertedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomTypeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->RoomTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomlist()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Room$Roomlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->roomlist:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->UpdateBy:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public setDeleteBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "DeleteBy"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->DeleteBy:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "Description"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->Description:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setInsertedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "InsertedBy"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->InsertedBy:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRoomTypeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->RoomTypeID:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public setRoomlist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Room$Roomlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/Room$Roomlist;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->roomlist:Ljava/util/List;

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->Title:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUpdateBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "UpdateBy"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room;->UpdateBy:Ljava/lang/String;

    .line 90
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Room.Roomlist (com.danfe.restaurantapp1.helper.Room$Roomlist)
.class public Lcom/danfe/restaurantapp1/helper/Room$Roomlist;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Room;
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
            "Lcom/danfe/restaurantapp1/helper/Room$TableList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Room;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/Room;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Room;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->this$0:Lcom/danfe/restaurantapp1/helper/Room;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->tableList:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->additionalProperties:Ljava/util/Map;

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
    .line 209
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomStatusId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->RoomStatusId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Room$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->tableList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->restroRoom:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->restroRoomId:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public setRoomStatusId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomStatusId"    # Ljava/lang/Integer;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->RoomStatusId:Ljava/lang/Integer;

    .line 206
    return-void
.end method

.method public setTableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Room$TableList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/Room$TableList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->tableList:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "Title"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$Roomlist;->Title:Ljava/lang/String;

    .line 192
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Room.TableList (com.danfe.restaurantapp1.helper.Room$TableList)
.class public Lcom/danfe/restaurantapp1/helper/Room$TableList;
.super Ljava/lang/Object;
.source "Room.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Room;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableList"
.end annotation


# instance fields
.field private MergeID:Ljava/lang/Integer;

.field private MergeTableList:Ljava/lang/Integer;

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

.field private restroRoom:Ljava/lang/Object;

.field private restroRoomId:Ljava/lang/Integer;

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/String;

.field private restrotablesStatusID:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Room;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/Room;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Room;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->this$0:Lcom/danfe/restaurantapp1/helper/Room;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->additionalProperties:Ljava/util/Map;

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
    .line 325
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getMergeID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->MergeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableList()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->MergeTableList:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restroRoom:Ljava/lang/Object;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrotablesStatusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public setMergeID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeID"    # Ljava/lang/Integer;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->MergeID:Ljava/lang/Integer;

    .line 244
    return-void
.end method

.method public setMergeTableList(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mergeTableList"    # Ljava/lang/Integer;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->MergeTableList:Ljava/lang/Integer;

    .line 236
    return-void
.end method

.method public setRestroRoom(Ljava/lang/Object;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/Object;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restroRoom:Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restroRoomId:Ljava/lang/Integer;

    .line 294
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotableId:Ljava/lang/Integer;

    .line 266
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotableTitle:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setRestrotablesStatusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotablesStatusID"    # Ljava/lang/Integer;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->restrotablesStatusID:Ljava/lang/Integer;

    .line 322
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/Integer;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Room$TableList;->SeatNo:Ljava/lang/Integer;

    .line 252
    return-void
.end method
