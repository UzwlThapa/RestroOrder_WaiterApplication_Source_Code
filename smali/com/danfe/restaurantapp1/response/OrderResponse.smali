###### Class com.danfe.restaurantapp1.response.OrderResponse (com.danfe.restaurantapp1.response.OrderResponse)
.class public Lcom/danfe/restaurantapp1/response/OrderResponse;
.super Ljava/lang/Object;
.source "OrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;
    }
.end annotation


# instance fields
.field private CostCenterID:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

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

.field private coDiscount:Ljava/lang/Double;

.field private tableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->tableList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->additionalProperties:Ljava/util/Map;

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
    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCoDiscount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->coDiscount:Ljava/lang/Double;

    return-object v0
.end method

.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->CostCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->tableList:Ljava/util/List;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setCoDiscount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "coDiscount"    # Ljava/lang/Double;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->coDiscount:Ljava/lang/Double;

    .line 57
    return-void
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->CostCenterID:Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->CostCenterName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse;->tableList:Ljava/util/List;

    .line 71
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.OrderResponse.OrderList (com.danfe.restaurantapp1.response.OrderResponse$OrderList)
.class public Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;
.super Ljava/lang/Object;
.source "OrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/OrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderList"
.end annotation


# instance fields
.field private Amount:Ljava/lang/Double;

.field private AmountinWords:Ljava/lang/Object;

.field private BasicAmount:Ljava/lang/Double;

.field private Bevrage:Ljava/lang/Double;

.field private BillNo:Ljava/lang/Object;

.field private BillPaid:Ljava/lang/Integer;

.field private CostCenterId:Ljava/lang/Integer;

.field private CusName:Ljava/lang/Object;

.field private Date:Ljava/lang/String;

.field private ExtraCharge:Ljava/lang/Double;

.field private ExtraItem:Ljava/lang/Object;

.field private HomeDeliveyNumber:Ljava/lang/Integer;

.field private HomePackQty:Ljava/lang/Integer;

.field private ITName:Ljava/lang/String;

.field private ImagePath:Ljava/lang/String;

.field private IsCancelled:Ljava/lang/Boolean;

.field private IsHomeDelivery:Ljava/lang/Boolean;

.field private IsRunningOrder:Ljava/lang/Integer;

.field private ItemDescription:Ljava/lang/Object;

.field private ItemId:Ljava/lang/Integer;

.field private ItemName:Ljava/lang/Object;

.field private ItemStatus:Ljava/lang/String;

.field private Note:Ljava/lang/String;

.field private OrderDetailsID:Ljava/lang/Integer;

.field private OrderMasterId:Ljava/lang/Integer;

.field private Price:Ljava/lang/Double;

.field private Quantity:Ljava/lang/Float;

.field private ROI_ItemId:Ljava/lang/Integer;

.field private ROI_ItemName:Ljava/lang/Object;

.field private Rate:Ljava/lang/Double;

.field private SRate:Ljava/lang/Double;

.field private SeatNo:Ljava/lang/Integer;

.field private Status:Ljava/lang/Object;

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

.field private billtime:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private restroRoom:Ljava/lang/String;

.field private restroRoomId:Ljava/lang/Integer;

.field private restrotableId:Ljava/lang/Integer;

.field private restrotableTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/OrderResponse;

.field private totaldiscount:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/OrderResponse;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/OrderResponse;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->this$0:Lcom/danfe/restaurantapp1/response/OrderResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->additionalProperties:Ljava/util/Map;

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
    .line 675
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getAmountinWords()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->AmountinWords:Ljava/lang/Object;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BasicAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBevrage()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Bevrage:Ljava/lang/Double;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BillNo:Ljava/lang/Object;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BillPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBilltime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->billtime:Ljava/lang/String;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCusName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->CusName:Ljava/lang/Object;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraCharge()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ExtraCharge:Ljava/lang/Double;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ExtraItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getHomeDeliveyNumber()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->HomeDeliveyNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHomePackQty()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->HomePackQty:Ljava/lang/Integer;

    return-object v0
.end method

.method public getITName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ITName:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsHomeDelivery()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsHomeDelivery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsRunningOrder()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsRunningOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemDescription:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemName:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailsID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->OrderDetailsID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Price:Ljava/lang/Double;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Quantity:Ljava/lang/Float;

    return-object v0
.end method

.method public getROIItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ROI_ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getROIItemName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ROI_ItemName:Ljava/lang/Object;

    return-object v0
.end method

.method public getRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSRate()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->SRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Status:Ljava/lang/Object;

    return-object v0
.end method

.method public getTotaldiscount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->totaldiscount:Ljava/lang/Double;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-void
.end method

.method public setAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "amount"    # Ljava/lang/Double;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Amount:Ljava/lang/Double;

    .line 196
    return-void
.end method

.method public setAmountinWords(Ljava/lang/Object;)V
    .registers 2
    .param p1, "amountinWords"    # Ljava/lang/Object;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->AmountinWords:Ljava/lang/Object;

    .line 518
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "basicAmount"    # Ljava/lang/Double;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BasicAmount:Ljava/lang/Double;

    .line 392
    return-void
.end method

.method public setBevrage(Ljava/lang/Double;)V
    .registers 2
    .param p1, "bevrage"    # Ljava/lang/Double;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Bevrage:Ljava/lang/Double;

    .line 210
    return-void
.end method

.method public setBillNo(Ljava/lang/Object;)V
    .registers 2
    .param p1, "billNo"    # Ljava/lang/Object;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BillNo:Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->BillPaid:Ljava/lang/Integer;

    .line 364
    return-void
.end method

.method public setBilltime(Ljava/lang/String;)V
    .registers 2
    .param p1, "billtime"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->billtime:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->CostCenterId:Ljava/lang/Integer;

    .line 574
    return-void
.end method

.method public setCusName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cusName"    # Ljava/lang/Object;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->CusName:Ljava/lang/Object;

    .line 672
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Date:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setExtraCharge(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraCharge"    # Ljava/lang/Double;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ExtraCharge:Ljava/lang/Double;

    .line 322
    return-void
.end method

.method public setExtraItem(Ljava/lang/Object;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/Object;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ExtraItem:Ljava/lang/Object;

    .line 308
    return-void
.end method

.method public setHomeDeliveyNumber(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "homeDeliveyNumber"    # Ljava/lang/Integer;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->HomeDeliveyNumber:Ljava/lang/Integer;

    .line 350
    return-void
.end method

.method public setHomePackQty(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "homePackQty"    # Ljava/lang/Integer;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->HomePackQty:Ljava/lang/Integer;

    .line 602
    return-void
.end method

.method public setITName(Ljava/lang/String;)V
    .registers 2
    .param p1, "iTName"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ITName:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ImagePath:Ljava/lang/String;

    .line 658
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsCancelled:Ljava/lang/Boolean;

    .line 224
    return-void
.end method

.method public setIsHomeDelivery(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isHomeDelivery"    # Ljava/lang/Boolean;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsHomeDelivery:Ljava/lang/Boolean;

    .line 336
    return-void
.end method

.method public setIsRunningOrder(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isRunningOrder"    # Ljava/lang/Integer;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->IsRunningOrder:Ljava/lang/Integer;

    .line 588
    return-void
.end method

.method public setItemDescription(Ljava/lang/Object;)V
    .registers 2
    .param p1, "itemDescription"    # Ljava/lang/Object;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemDescription:Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemId:Ljava/lang/Integer;

    .line 238
    return-void
.end method

.method public setItemName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/Object;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemName:Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public setItemStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemStatus"    # Ljava/lang/String;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ItemStatus:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Note:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setOrderDetailsID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderDetailsID"    # Ljava/lang/Integer;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->OrderDetailsID:Ljava/lang/Integer;

    .line 140
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->OrderMasterId:Ljava/lang/Integer;

    .line 266
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Price:Ljava/lang/Double;

    .line 560
    return-void
.end method

.method public setQuantity(Ljava/lang/Float;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Float;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Quantity:Ljava/lang/Float;

    .line 154
    return-void
.end method

.method public setROIItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "rOIItemId"    # Ljava/lang/Integer;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ROI_ItemId:Ljava/lang/Integer;

    .line 616
    return-void
.end method

.method public setROIItemName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "rOIItemName"    # Ljava/lang/Object;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->ROI_ItemName:Ljava/lang/Object;

    .line 630
    return-void
.end method

.method public setRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Double;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Rate:Ljava/lang/Double;

    .line 168
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restroRoom:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restroRoomId:Ljava/lang/Integer;

    .line 434
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restrotableId:Ljava/lang/Integer;

    .line 406
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->restrotableTitle:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setSRate(Ljava/lang/Double;)V
    .registers 2
    .param p1, "sRate"    # Ljava/lang/Double;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->SRate:Ljava/lang/Double;

    .line 182
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/Integer;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->SeatNo:Ljava/lang/Integer;

    .line 280
    return-void
.end method

.method public setStatus(Ljava/lang/Object;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/Object;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->Status:Ljava/lang/Object;

    .line 378
    return-void
.end method

.method public setTotaldiscount(Ljava/lang/Double;)V
    .registers 2
    .param p1, "totaldiscount"    # Ljava/lang/Double;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/OrderResponse$OrderList;->totaldiscount:Ljava/lang/Double;

    .line 532
    return-void
.end method
