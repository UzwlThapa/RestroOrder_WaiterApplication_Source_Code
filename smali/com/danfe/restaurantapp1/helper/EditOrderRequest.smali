###### Class com.danfe.restaurantapp1.helper.EditOrderRequest (com.danfe.restaurantapp1.helper.EditOrderRequest)
.class public Lcom/danfe/restaurantapp1/helper/EditOrderRequest;
.super Ljava/lang/Object;
.source "EditOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;
    }
.end annotation


# instance fields
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
            "Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field private OrderMasterID:Ljava/lang/Integer;

.field private Remarks:Ljava/lang/String;

.field private RoomId:Ljava/lang/Integer;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->additionalProperties:Ljava/util/Map;

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
    .line 240
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BasicAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BillNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->IsCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSplit()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->IsSplit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNetAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->NetAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getOrderDetailsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    return-object v0
.end method

.method public getOrderMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->OrderMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->Remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->RoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTableId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->TableId:Ljava/lang/String;

    return-object v0
.end method

.method public getTermAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->TermAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "BasicAmount"    # Ljava/lang/Double;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BasicAmount:Ljava/lang/Double;

    .line 111
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "BillNo"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BillNo:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BillPaid"    # Ljava/lang/Integer;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->BillPaid:Ljava/lang/Integer;

    .line 41
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->Date:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "GuestNo"    # Ljava/lang/Integer;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->GuestNo:Ljava/lang/Integer;

    .line 209
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->IsCancelled:Ljava/lang/Boolean;

    .line 167
    return-void
.end method

.method public setIsSplit(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsSplit"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->IsSplit:Ljava/lang/Boolean;

    .line 195
    return-void
.end method

.method public setNetAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "NetAmount"    # Ljava/lang/Double;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->NetAmount:Ljava/lang/Double;

    .line 139
    return-void
.end method

.method public setOrderDetailsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "OrderDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->OrderDetailsList:Ljava/util/List;

    .line 237
    return-void
.end method

.method public setOrderMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->OrderMasterID:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .registers 2
    .param p1, "Remarks"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->Remarks:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomId"    # Ljava/lang/Integer;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->RoomId:Ljava/lang/Integer;

    .line 223
    return-void
.end method

.method public setTableId(Ljava/lang/String;)V
    .registers 2
    .param p1, "TableId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->TableId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTermAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "TermAmount"    # Ljava/lang/Double;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->TermAmount:Ljava/lang/Double;

    .line 125
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "UserName"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;->UserName:Ljava/lang/String;

    .line 181
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.EditOrderRequest.OrderDetailsList (com.danfe.restaurantapp1.helper.EditOrderRequest$OrderDetailsList)
.class public Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;
.super Ljava/lang/Object;
.source "EditOrderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/EditOrderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderDetailsList"
.end annotation


# instance fields
.field private Amount:Ljava/lang/Double;

.field private BasicAmount:Ljava/lang/Integer;

.field private BillNo:Ljava/lang/Object;

.field private BillPaid:Ljava/lang/Integer;

.field private Date:Ljava/lang/Object;

.field private ExtraCharge:Ljava/lang/Double;

.field private IsCancelled:Ljava/lang/Boolean;

.field private Note:Ljava/lang/String;

.field private OrderDetailsID:Ljava/lang/Integer;

.field private OrderMasterId:Ljava/lang/Integer;

.field private Quantity:Ljava/lang/Integer;

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

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/Object;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/EditOrderRequest;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/EditOrderRequest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/EditOrderRequest;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->this$0:Lcom/danfe/restaurantapp1/helper/EditOrderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

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
    .line 545
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraCharge()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailsID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getROI_ItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getROI_ItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method public setAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Amount"    # Ljava/lang/Double;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Amount:Ljava/lang/Double;

    .line 326
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BasicAmount"    # Ljava/lang/Integer;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BasicAmount:Ljava/lang/Integer;

    .line 486
    return-void
.end method

.method public setBillNo(Ljava/lang/Object;)V
    .registers 2
    .param p1, "BillNo"    # Ljava/lang/Object;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BillNo:Ljava/lang/Object;

    .line 528
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "BillPaid"    # Ljava/lang/Integer;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->BillPaid:Ljava/lang/Integer;

    .line 458
    return-void
.end method

.method public setDate(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Date"    # Ljava/lang/Object;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Date:Ljava/lang/Object;

    .line 542
    return-void
.end method

.method public setExtraCharge(Ljava/lang/Double;)V
    .registers 2
    .param p1, "ExtraCharge"    # Ljava/lang/Double;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ExtraCharge:Ljava/lang/Double;

    .line 444
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->IsCancelled:Ljava/lang/Boolean;

    .line 340
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "Note"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Note:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setOrderDetailsID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderDetailsID"    # Ljava/lang/Integer;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->OrderDetailsID:Ljava/lang/Integer;

    .line 284
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->OrderMasterId:Ljava/lang/Integer;

    .line 402
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "Quantity"    # Ljava/lang/Integer;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Quantity:Ljava/lang/Integer;

    .line 298
    return-void
.end method

.method public setROI_ItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "ROI_ItemId"    # Ljava/lang/Integer;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ROI_ItemId:Ljava/lang/Integer;

    .line 365
    return-void
.end method

.method public setROI_ItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ROI_ItemName"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->ROI_ItemName:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Rate"    # Ljava/lang/Double;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Rate:Ljava/lang/Double;

    .line 312
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->restrotableId:Ljava/lang/Integer;

    .line 500
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/Object;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->restrotableTitle:Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SeatNo"    # Ljava/lang/Integer;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->SeatNo:Ljava/lang/Integer;

    .line 416
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest$OrderDetailsList;->Status:Ljava/lang/String;

    .line 472
    return-void
.end method
