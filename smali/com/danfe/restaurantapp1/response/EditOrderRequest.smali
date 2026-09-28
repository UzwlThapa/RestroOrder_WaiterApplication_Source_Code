###### Class com.danfe.restaurantapp1.response.EditOrderRequest (com.danfe.restaurantapp1.response.EditOrderRequest)
.class public Lcom/danfe/restaurantapp1/response/EditOrderRequest;
.super Ljava/lang/Object;
.source "EditOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
    }
.end annotation


# instance fields
.field private AdvancePaid:Ljava/lang/Double;

.field private BasicAmount:Ljava/lang/Double;

.field private BillNo:Ljava/lang/String;

.field private BillPaid:Ljava/lang/Integer;

.field private Date:Ljava/lang/String;

.field private GuestNo:Ljava/lang/Integer;

.field private IsCancelled:Ljava/lang/Boolean;

.field private IsSplit:Ljava/lang/Boolean;

.field private NetAmount:Ljava/lang/Double;

.field private OrderDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field private OrderMasterID:Ljava/lang/Integer;

.field private Remarks:Ljava/lang/String;

.field private RoomBookedDays:Ljava/lang/Integer;

.field private RoomId:Ljava/lang/Integer;

.field private RoomRate:Ljava/lang/Double;

.field private RoomTotal:Ljava/lang/Double;

.field private TableId:Ljava/lang/String;

.field private TermAmount:Ljava/lang/Double;

.field private UserName:Ljava/lang/String;

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

.field private membershipId:Ljava/lang/Integer;

.field private names:Ljava/lang/String;

.field private phoneNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->additionalProperties:Ljava/util/Map;

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
    .line 307
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAdvancePaid()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->AdvancePaid:Ljava/lang/Double;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BasicAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->IsCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSplit()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->IsSplit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMembershipId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->membershipId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNames()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->names:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->NetAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getOrderDetailsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->OrderMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhoneNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->phoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->Remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomBookedDays()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomBookedDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRoomRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRoomTotal()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomTotal:Ljava/lang/Double;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->TableId:Ljava/lang/String;

    return-object v0
.end method

.method public getTermAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->TermAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public setAdvancePaid(Ljava/lang/Double;)V
    .registers 2
    .param p1, "advancePaid"    # Ljava/lang/Double;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->AdvancePaid:Ljava/lang/Double;

    .line 91
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "BasicAmount"    # Ljava/lang/Double;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BasicAmount:Ljava/lang/Double;

    .line 178
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "BillNo"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BillNo:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BillPaid"    # Ljava/lang/Integer;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->BillPaid:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->Date:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "GuestNo"    # Ljava/lang/Integer;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->GuestNo:Ljava/lang/Integer;

    .line 276
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->IsCancelled:Ljava/lang/Boolean;

    .line 234
    return-void
.end method

.method public setIsSplit(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsSplit"    # Ljava/lang/Boolean;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->IsSplit:Ljava/lang/Boolean;

    .line 262
    return-void
.end method

.method public setMembershipId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "membershipId"    # Ljava/lang/Integer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->membershipId:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public setNames(Ljava/lang/String;)V
    .registers 2
    .param p1, "names"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->names:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNetAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "NetAmount"    # Ljava/lang/Double;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->NetAmount:Ljava/lang/Double;

    .line 206
    return-void
.end method

.method public setOrderDetailsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "OrderDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    .line 304
    return-void
.end method

.method public setOrderMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->OrderMasterID:Ljava/lang/Integer;

    .line 122
    return-void
.end method

.method public setPhoneNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->phoneNo:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .registers 2
    .param p1, "Remarks"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->Remarks:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setRoomBookedDays(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "roomBookedDays"    # Ljava/lang/Integer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomBookedDays:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method public setRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomId"    # Ljava/lang/Integer;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomId:Ljava/lang/Integer;

    .line 290
    return-void
.end method

.method public setRoomRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "roomRate"    # Ljava/lang/Double;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomRate:Ljava/lang/Double;

    .line 75
    return-void
.end method

.method public setRoomTotal(Ljava/lang/Double;)V
    .registers 2
    .param p1, "roomTotal"    # Ljava/lang/Double;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->RoomTotal:Ljava/lang/Double;

    .line 83
    return-void
.end method

.method public setTableId(Ljava/lang/String;)V
    .registers 2
    .param p1, "TableId"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->TableId:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setTermAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "TermAmount"    # Ljava/lang/Double;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->TermAmount:Ljava/lang/Double;

    .line 192
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "UserName"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->UserName:Ljava/lang/String;

    .line 248
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.EditOrderRequest.OrderDetailsList (com.danfe.restaurantapp1.response.EditOrderRequest$OrderDetailsList)
.class public Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
.super Ljava/lang/Object;
.source "EditOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/EditOrderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderDetailsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;
    }
.end annotation


# instance fields
.field private Amount:Ljava/lang/Double;

.field private BasicAmount:Ljava/lang/Integer;

.field private BillNo:Ljava/lang/Object;

.field private BillPaid:Ljava/lang/Integer;

.field private CostCenterId:Ljava/lang/Integer;

.field private Date:Ljava/lang/Object;

.field private ExtraCharge:Ljava/lang/Double;

.field private IsCancelled:Ljava/lang/Boolean;

.field private IsCombo:Ljava/lang/Boolean;

.field private Note:Ljava/lang/String;

.field private OrderDetailsID:Ljava/lang/Integer;

.field private OrderMasterId:Ljava/lang/Integer;

.field private Quantity:Ljava/lang/Double;

.field private ROI_ItemId:Ljava/lang/Integer;

.field private ROI_ItemName:Ljava/lang/String;

.field private Rate:Ljava/lang/Double;

.field private SeatNo:Ljava/lang/Integer;

.field private Status:Ljava/lang/String;

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

.field private orderExtraItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    .line 343
    return-void
.end method

.method public constructor <init>(Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
    .registers 3
    .param p1, "orderDetailsList"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    .line 374
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    .line 375
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Double;

    .line 376
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    .line 377
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    .line 378
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    .line 379
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    .line 380
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    .line 381
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    .line 382
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    .line 383
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    .line 384
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    .line 385
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    .line 386
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    .line 388
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    .line 389
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/String;

    .line 390
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    .line 391
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    .line 392
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCombo:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCombo:Ljava/lang/Boolean;

    .line 393
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->CostCenterId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->CostCenterId:Ljava/lang/Integer;

    .line 394
    iget-object v0, p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;)V
    .registers 24
    .param p1, "orderDetailsID"    # Ljava/lang/Integer;
    .param p2, "quantity"    # Ljava/lang/Double;
    .param p3, "rate"    # Ljava/lang/Double;
    .param p4, "amount"    # Ljava/lang/Double;
    .param p5, "isCancelled"    # Ljava/lang/Boolean;
    .param p6, "ROI_ItemId"    # Ljava/lang/Integer;
    .param p7, "ROI_ItemName"    # Ljava/lang/String;
    .param p8, "orderMasterId"    # Ljava/lang/Integer;
    .param p9, "seatNo"    # Ljava/lang/Integer;
    .param p10, "note"    # Ljava/lang/String;
    .param p11, "extraCharge"    # Ljava/lang/Double;
    .param p12, "billPaid"    # Ljava/lang/Integer;
    .param p13, "status"    # Ljava/lang/String;
    .param p14, "basicAmount"    # Ljava/lang/Integer;
    .param p15, "restrotableId"    # Ljava/lang/Integer;
    .param p16, "restrotableTitle"    # Ljava/lang/String;
    .param p17, "billNo"    # Ljava/lang/Object;
    .param p18, "date"    # Ljava/lang/Object;
    .param p19, "isCombo"    # Ljava/lang/Boolean;
    .param p20, "costCenterId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p21, "orderExtraItem":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    .line 350
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    .line 351
    iput-object p2, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Double;

    .line 352
    iput-object p3, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    .line 353
    iput-object p4, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    .line 354
    iput-object p5, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    .line 355
    iput-object p6, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    .line 356
    iput-object p7, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    .line 357
    iput-object p8, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    .line 358
    iput-object p9, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    .line 359
    iput-object p10, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    .line 360
    iput-object p11, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    .line 361
    iput-object p12, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    .line 362
    iput-object p13, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    .line 364
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    .line 365
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    .line 368
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCombo:Ljava/lang/Boolean;

    .line 369
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->CostCenterId:Ljava/lang/Integer;

    .line 370
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 371
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
    .line 704
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraCharge()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailsID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderExtraItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Double;

    return-object v0
.end method

.method public getROI_ItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getROI_ItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "additionalProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    .line 399
    return-void
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public setAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Amount"    # Ljava/lang/Double;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    .line 473
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BasicAmount"    # Ljava/lang/Integer;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    .line 633
    return-void
.end method

.method public setBillNo(Ljava/lang/Object;)V
    .registers 2
    .param p1, "BillNo"    # Ljava/lang/Object;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    .line 675
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BillPaid"    # Ljava/lang/Integer;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    .line 605
    return-void
.end method

.method public setCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "combo"    # Ljava/lang/Boolean;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCombo:Ljava/lang/Boolean;

    .line 415
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->CostCenterId:Ljava/lang/Integer;

    .line 407
    return-void
.end method

.method public setDate(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Date"    # Ljava/lang/Object;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public setExtraCharge(Ljava/lang/Double;)V
    .registers 2
    .param p1, "ExtraCharge"    # Ljava/lang/Double;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    .line 591
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    .line 487
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "Note"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setOrderDetailsID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderDetailsID"    # Ljava/lang/Integer;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    .line 431
    return-void
.end method

.method public setOrderExtraItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->orderExtraItem:Ljava/util/List;

    .line 690
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    .line 549
    return-void
.end method

.method public setQuantity(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Quantity"    # Ljava/lang/Double;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Double;

    .line 445
    return-void
.end method

.method public setROI_ItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "ROI_ItemId"    # Ljava/lang/Integer;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    .line 512
    return-void
.end method

.method public setROI_ItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ROI_ItemName"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Rate"    # Ljava/lang/Double;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    .line 459
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    .line 647
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SeatNo"    # Ljava/lang/Integer;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    .line 563
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    .line 619
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.EditOrderRequest.OrderDetailsList.orderExtraItem (com.danfe.restaurantapp1.response.EditOrderRequest$OrderDetailsList$orderExtraItem)
.class public Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;
.super Ljava/lang/Object;
.source "EditOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "orderExtraItem"
.end annotation


# instance fields
.field private ExtraItem:Ljava/lang/String;

.field private ExtraItemID:Ljava/lang/Integer;

.field private ExtraPrice:Ljava/lang/Double;

.field private ItemID:Ljava/lang/Integer;

.field private ItemStatus:Ljava/lang/String;

.field private Quantity:Ljava/lang/Integer;

.field private SeatNo:Ljava/lang/String;

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

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->this$0:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->additionalProperties:Ljava/util/Map;

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
    .line 783
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ItemStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->Quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->SeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "additionalProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->additionalProperties:Ljava/util/Map;

    .line 772
    return-void
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    return-void
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraItem:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public setExtraItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "extraItemID"    # Ljava/lang/Integer;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraItemID:Ljava/lang/Integer;

    .line 744
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Double;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ExtraPrice:Ljava/lang/Double;

    .line 768
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemID"    # Ljava/lang/Integer;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ItemID:Ljava/lang/Integer;

    .line 736
    return-void
.end method

.method public setItemStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemStatus"    # Ljava/lang/String;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->ItemStatus:Ljava/lang/String;

    .line 780
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->Quantity:Ljava/lang/Integer;

    .line 760
    return-void
.end method

.method public setSeatNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/String;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->SeatNo:Ljava/lang/String;

    .line 728
    return-void
.end method
