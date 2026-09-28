###### Class com.danfe.restaurantapp1.response.KitchenOrderApiData (com.danfe.restaurantapp1.response.KitchenOrderApiData)
.class public Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;
.super Ljava/lang/Object;
.source "KitchenOrderApiData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;,
        Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;
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

.field private orderResponseData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;",
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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->orderResponseData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderResponseData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->orderResponseData:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->message:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOrderResponseData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->orderResponseData:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->statusCode:Ljava/lang/Integer;

    .line 26
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.KitchenOrderApiData.OrderResponse (com.danfe.restaurantapp1.response.KitchenOrderApiData$OrderResponse)
.class public Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;
.super Ljava/lang/Object;
.source "KitchenOrderApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrderResponse"
.end annotation


# instance fields
.field private coDiscount:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coDiscount"
    .end annotation
.end field

.field private costCenterID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterID"
    .end annotation
.end field

.field private costCenterName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterName"
    .end annotation
.end field

.field private defaultPrinter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DefaultPrinter"
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
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->this$0:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->tableList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCoDiscount()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->coDiscount:Ljava/lang/Float;

    return-object v0
.end method

.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->costCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->costCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPrinter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->defaultPrinter:Ljava/lang/String;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->tableList:Ljava/util/List;

    return-object v0
.end method

.method public setCoDiscount(Ljava/lang/Float;)V
    .registers 2
    .param p1, "coDiscount"    # Ljava/lang/Float;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->coDiscount:Ljava/lang/Float;

    .line 94
    return-void
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->costCenterID:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->costCenterName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDefaultPrinter(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultPrinter"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->defaultPrinter:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTableList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->tableList:Ljava/util/List;

    .line 102
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.KitchenOrderApiData.TableList (com.danfe.restaurantapp1.response.KitchenOrderApiData$TableList)
.class public Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;
.super Ljava/lang/Object;
.source "KitchenOrderApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableList"
.end annotation


# instance fields
.field private address:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Address"
    .end annotation
.end field

.field private advancePayment:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdvancePayment"
    .end annotation
.end field

.field private amount:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Amount"
    .end annotation
.end field

.field private amountinWords:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AmountinWords"
    .end annotation
.end field

.field private bakery:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Bakery"
    .end annotation
.end field

.field private basicAmount:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BasicAmount"
    .end annotation
.end field

.field private bevrage:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Bevrage"
    .end annotation
.end field

.field private billNo:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BillNo"
    .end annotation
.end field

.field private billPaid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BillPaid"
    .end annotation
.end field

.field private billtime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billtime"
    .end annotation
.end field

.field private bookedDays:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BookedDays"
    .end annotation
.end field

.field private cCDiscount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CCDiscount"
    .end annotation
.end field

.field private cashier:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Cashier"
    .end annotation
.end field

.field private coDiscount:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coDiscount"
    .end annotation
.end field

.field private compId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CompId"
    .end annotation
.end field

.field private compMasterID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CompMasterID"
    .end annotation
.end field

.field private costCenterId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterId"
    .end annotation
.end field

.field private costCenterName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterName"
    .end annotation
.end field

.field private cusID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CusID"
    .end annotation
.end field

.field private cusName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CusName"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Date"
    .end annotation
.end field

.field private extraCharge:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtraCharge"
    .end annotation
.end field

.field private extraItem:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtraItem"
    .end annotation
.end field

.field private fiscalYear:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fiscalYear"
    .end annotation
.end field

.field private getWaiterLog:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GetWaiterLog"
    .end annotation
.end field

.field private guestNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GuestNo"
    .end annotation
.end field

.field private homeDeliveyNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HomeDeliveyNumber"
    .end annotation
.end field

.field private homePackQty:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HomePackQty"
    .end annotation
.end field

.field private iTName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ITName"
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ImagePath"
    .end annotation
.end field

.field private isCancelled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCancelled"
    .end annotation
.end field

.field private isCombo:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCombo"
    .end annotation
.end field

.field private isEveningDiscount:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsEveningDiscount"
    .end annotation
.end field

.field private isHomeDelivery:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsHomeDelivery"
    .end annotation
.end field

.field private isRunningOrder:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsRunningOrder"
    .end annotation
.end field

.field private isSplit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsSplit"
    .end annotation
.end field

.field private isTable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsTable"
    .end annotation
.end field

.field private itemDescription:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemDescription"
    .end annotation
.end field

.field private itemId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemId"
    .end annotation
.end field

.field private itemName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemName"
    .end annotation
.end field

.field private itemStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemStatus"
    .end annotation
.end field

.field private membershipID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MembershipID"
    .end annotation
.end field

.field private mergeTableName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MergeTableName"
    .end annotation
.end field

.field private mergedTables:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MergedTables"
    .end annotation
.end field

.field private nepaliInvoiceDate:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NepaliInvoiceDate"
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Note"
    .end annotation
.end field

.field private orderDetailsID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderDetailsID"
    .end annotation
.end field

.field private orderExtraItem:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderExtraItem"
    .end annotation
.end field

.field private orderMasterId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderMasterId"
    .end annotation
.end field

.field private pAN:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PAN"
    .end annotation
.end field

.field private pizza:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Pizza"
    .end annotation
.end field

.field private price:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Price"
    .end annotation
.end field

.field private printCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PrintCount"
    .end annotation
.end field

.field private quantity:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field private rOIItemId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ROI_ItemId"
    .end annotation
.end field

.field private rOIItemName:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ROI_ItemName"
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

.field private roomCharge:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomCharge"
    .end annotation
.end field

.field private roomRate:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RoomRate"
    .end annotation
.end field

.field private sRate:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SRate"
    .end annotation
.end field

.field private salesMasterId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "salesMasterId"
    .end annotation
.end field

.field private seatNo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SeatNo"
    .end annotation
.end field

.field private status:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

.field private totaldiscount:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totaldiscount"
    .end annotation
.end field

.field private waiter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Waiter"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->this$0:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->address:Ljava/lang/Object;

    return-object v0
.end method

.method public getAdvancePayment()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->advancePayment:Ljava/lang/Float;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->amount:Ljava/lang/Float;

    return-object v0
.end method

.method public getAmountinWords()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->amountinWords:Ljava/lang/Object;

    return-object v0
.end method

.method public getBakery()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bakery:Ljava/lang/Float;

    return-object v0
.end method

.method public getBasicAmount()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->basicAmount:Ljava/lang/Float;

    return-object v0
.end method

.method public getBevrage()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bevrage:Ljava/lang/Float;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billNo:Ljava/lang/Object;

    return-object v0
.end method

.method public getBillPaid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billPaid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBilltime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billtime:Ljava/lang/String;

    return-object v0
.end method

.method public getBookedDays()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bookedDays:Ljava/lang/Float;

    return-object v0
.end method

.method public getCCDiscount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cCDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCashier()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cashier:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoDiscount()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->coDiscount:Ljava/lang/Float;

    return-object v0
.end method

.method public getCompId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->compId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCompMasterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->compMasterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->costCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->costCenterName:Ljava/lang/Object;

    return-object v0
.end method

.method public getCusID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cusID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCusName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cusName:Ljava/lang/Object;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraCharge()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->extraCharge:Ljava/lang/Float;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->extraItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getFiscalYear()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->fiscalYear:Ljava/lang/Object;

    return-object v0
.end method

.method public getGetWaiterLog()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getWaiterLog:Ljava/lang/Object;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->guestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHomeDeliveyNumber()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->homeDeliveyNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHomePackQty()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->homePackQty:Ljava/lang/Integer;

    return-object v0
.end method

.method public getITName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->iTName:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsEveningDiscount()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isEveningDiscount:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsHomeDelivery()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isHomeDelivery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsRunningOrder()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isRunningOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsSplit()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isSplit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsTable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isTable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemDescription:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemName:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getMembershipID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->membershipID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMergeTableName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->mergeTableName:Ljava/lang/Object;

    return-object v0
.end method

.method public getMergedTables()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->mergedTables:Ljava/lang/Object;

    return-object v0
.end method

.method public getNepaliInvoiceDate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->nepaliInvoiceDate:Ljava/lang/Object;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailsID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderDetailsID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderExtraItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderExtraItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPAN()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->pAN:Ljava/lang/Object;

    return-object v0
.end method

.method public getPizza()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->pizza:Ljava/lang/Float;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->price:Ljava/lang/Float;

    return-object v0
.end method

.method public getPrintCount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->printCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->quantity:Ljava/lang/Float;

    return-object v0
.end method

.method public getROIItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rOIItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getROIItemName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rOIItemName:Ljava/lang/Object;

    return-object v0
.end method

.method public getRate()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public getRestroRoom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restroRoom:Ljava/lang/String;

    return-object v0
.end method

.method public getRestroRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restroRoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restrotableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restrotableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomCharge()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->roomCharge:Ljava/lang/Float;

    return-object v0
.end method

.method public getRoomRate()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->roomRate:Ljava/lang/Float;

    return-object v0
.end method

.method public getSRate()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->sRate:Ljava/lang/Float;

    return-object v0
.end method

.method public getSalesMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->salesMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->seatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->status:Ljava/lang/Object;

    return-object v0
.end method

.method public getTotaldiscount()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->totaldiscount:Ljava/lang/Float;

    return-object v0
.end method

.method public getWaiter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->waiter:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/Object;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/Object;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->address:Ljava/lang/Object;

    .line 731
    return-void
.end method

.method public setAdvancePayment(Ljava/lang/Float;)V
    .registers 2
    .param p1, "advancePayment"    # Ljava/lang/Float;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->advancePayment:Ljava/lang/Float;

    .line 787
    return-void
.end method

.method public setAmount(Ljava/lang/Float;)V
    .registers 2
    .param p1, "amount"    # Ljava/lang/Float;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->amount:Ljava/lang/Float;

    .line 395
    return-void
.end method

.method public setAmountinWords(Ljava/lang/Object;)V
    .registers 2
    .param p1, "amountinWords"    # Ljava/lang/Object;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->amountinWords:Ljava/lang/Object;

    .line 595
    return-void
.end method

.method public setBakery(Ljava/lang/Float;)V
    .registers 2
    .param p1, "bakery"    # Ljava/lang/Float;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bakery:Ljava/lang/Float;

    .line 843
    return-void
.end method

.method public setBasicAmount(Ljava/lang/Float;)V
    .registers 2
    .param p1, "basicAmount"    # Ljava/lang/Float;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->basicAmount:Ljava/lang/Float;

    .line 507
    return-void
.end method

.method public setBevrage(Ljava/lang/Float;)V
    .registers 2
    .param p1, "bevrage"    # Ljava/lang/Float;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bevrage:Ljava/lang/Float;

    .line 403
    return-void
.end method

.method public setBillNo(Ljava/lang/Object;)V
    .registers 2
    .param p1, "billNo"    # Ljava/lang/Object;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billNo:Ljava/lang/Object;

    .line 547
    return-void
.end method

.method public setBillPaid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billPaid"    # Ljava/lang/Integer;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billPaid:Ljava/lang/Integer;

    .line 491
    return-void
.end method

.method public setBilltime(Ljava/lang/String;)V
    .registers 2
    .param p1, "billtime"    # Ljava/lang/String;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->billtime:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setBookedDays(Ljava/lang/Float;)V
    .registers 2
    .param p1, "bookedDays"    # Ljava/lang/Float;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->bookedDays:Ljava/lang/Float;

    .line 771
    return-void
.end method

.method public setCCDiscount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "cCDiscount"    # Ljava/lang/Integer;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cCDiscount:Ljava/lang/Integer;

    .line 811
    return-void
.end method

.method public setCashier(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cashier"    # Ljava/lang/Object;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cashier:Ljava/lang/Object;

    .line 739
    return-void
.end method

.method public setCoDiscount(Ljava/lang/Float;)V
    .registers 2
    .param p1, "coDiscount"    # Ljava/lang/Float;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->coDiscount:Ljava/lang/Float;

    .line 803
    return-void
.end method

.method public setCompId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "compId"    # Ljava/lang/Integer;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->compId:Ljava/lang/Integer;

    .line 323
    return-void
.end method

.method public setCompMasterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "compMasterID"    # Ljava/lang/Integer;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->compMasterID:Ljava/lang/Integer;

    .line 331
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->costCenterId:Ljava/lang/Integer;

    .line 627
    return-void
.end method

.method public setCostCenterName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/Object;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->costCenterName:Ljava/lang/Object;

    .line 635
    return-void
.end method

.method public setCusID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "cusID"    # Ljava/lang/Integer;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cusID:Ljava/lang/Integer;

    .line 707
    return-void
.end method

.method public setCusName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "cusName"    # Ljava/lang/Object;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->cusName:Ljava/lang/Object;

    .line 715
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->date:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setExtraCharge(Ljava/lang/Float;)V
    .registers 2
    .param p1, "extraCharge"    # Ljava/lang/Float;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->extraCharge:Ljava/lang/Float;

    .line 467
    return-void
.end method

.method public setExtraItem(Ljava/lang/Object;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/Object;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->extraItem:Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public setFiscalYear(Ljava/lang/Object;)V
    .registers 2
    .param p1, "fiscalYear"    # Ljava/lang/Object;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->fiscalYear:Ljava/lang/Object;

    .line 555
    return-void
.end method

.method public setGetWaiterLog(Ljava/lang/Object;)V
    .registers 2
    .param p1, "getWaiterLog"    # Ljava/lang/Object;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getWaiterLog:Ljava/lang/Object;

    .line 867
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->guestNo:Ljava/lang/Integer;

    .line 451
    return-void
.end method

.method public setHomeDeliveyNumber(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "homeDeliveyNumber"    # Ljava/lang/Integer;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->homeDeliveyNumber:Ljava/lang/Integer;

    .line 483
    return-void
.end method

.method public setHomePackQty(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "homePackQty"    # Ljava/lang/Integer;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->homePackQty:Ljava/lang/Integer;

    .line 659
    return-void
.end method

.method public setITName(Ljava/lang/String;)V
    .registers 2
    .param p1, "iTName"    # Ljava/lang/String;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->iTName:Ljava/lang/String;

    .line 691
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->imagePath:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isCancelled:Ljava/lang/Boolean;

    .line 411
    return-void
.end method

.method public setIsCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isCombo:Ljava/lang/Boolean;

    .line 355
    return-void
.end method

.method public setIsEveningDiscount(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isEveningDiscount"    # Ljava/lang/Boolean;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isEveningDiscount:Ljava/lang/Boolean;

    .line 827
    return-void
.end method

.method public setIsHomeDelivery(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isHomeDelivery"    # Ljava/lang/Boolean;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isHomeDelivery:Ljava/lang/Boolean;

    .line 475
    return-void
.end method

.method public setIsRunningOrder(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isRunningOrder"    # Ljava/lang/Integer;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isRunningOrder:Ljava/lang/Integer;

    .line 643
    return-void
.end method

.method public setIsSplit(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "isSplit"    # Ljava/lang/Integer;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isSplit:Ljava/lang/Integer;

    .line 651
    return-void
.end method

.method public setIsTable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isTable"    # Ljava/lang/Boolean;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->isTable:Ljava/lang/Boolean;

    .line 795
    return-void
.end method

.method public setItemDescription(Ljava/lang/Object;)V
    .registers 2
    .param p1, "itemDescription"    # Ljava/lang/Object;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemDescription:Ljava/lang/Object;

    .line 579
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemId:Ljava/lang/Integer;

    .line 419
    return-void
.end method

.method public setItemName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/Object;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemName:Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public setItemStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemStatus"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->itemStatus:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setMembershipID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "membershipID"    # Ljava/lang/Integer;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->membershipID:Ljava/lang/Integer;

    .line 819
    return-void
.end method

.method public setMergeTableName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "mergeTableName"    # Ljava/lang/Object;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->mergeTableName:Ljava/lang/Object;

    .line 747
    return-void
.end method

.method public setMergedTables(Ljava/lang/Object;)V
    .registers 2
    .param p1, "mergedTables"    # Ljava/lang/Object;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->mergedTables:Ljava/lang/Object;

    .line 835
    return-void
.end method

.method public setNepaliInvoiceDate(Ljava/lang/Object;)V
    .registers 2
    .param p1, "nepaliInvoiceDate"    # Ljava/lang/Object;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->nepaliInvoiceDate:Ljava/lang/Object;

    .line 571
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->note:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setOrderDetailsID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderDetailsID"    # Ljava/lang/Integer;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderDetailsID:Ljava/lang/Integer;

    .line 363
    return-void
.end method

.method public setOrderExtraItem(Ljava/lang/Object;)V
    .registers 2
    .param p1, "orderExtraItem"    # Ljava/lang/Object;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderExtraItem:Ljava/lang/Object;

    .line 859
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "orderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->orderMasterId:Ljava/lang/Integer;

    .line 435
    return-void
.end method

.method public setPAN(Ljava/lang/Object;)V
    .registers 2
    .param p1, "pAN"    # Ljava/lang/Object;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->pAN:Ljava/lang/Object;

    .line 723
    return-void
.end method

.method public setPizza(Ljava/lang/Float;)V
    .registers 2
    .param p1, "pizza"    # Ljava/lang/Float;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->pizza:Ljava/lang/Float;

    .line 851
    return-void
.end method

.method public setPrice(Ljava/lang/Float;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/Float;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->price:Ljava/lang/Float;

    .line 619
    return-void
.end method

.method public setPrintCount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "printCount"    # Ljava/lang/Integer;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->printCount:Ljava/lang/Integer;

    .line 667
    return-void
.end method

.method public setQuantity(Ljava/lang/Float;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/Float;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->quantity:Ljava/lang/Float;

    .line 371
    return-void
.end method

.method public setROIItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "rOIItemId"    # Ljava/lang/Integer;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rOIItemId:Ljava/lang/Integer;

    .line 675
    return-void
.end method

.method public setROIItemName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "rOIItemName"    # Ljava/lang/Object;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rOIItemName:Ljava/lang/Object;

    .line 683
    return-void
.end method

.method public setRate(Ljava/lang/Float;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/Float;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->rate:Ljava/lang/Float;

    .line 379
    return-void
.end method

.method public setRestroRoom(Ljava/lang/String;)V
    .registers 2
    .param p1, "restroRoom"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restroRoom:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setRestroRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restroRoomId"    # Ljava/lang/Integer;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restroRoomId:Ljava/lang/Integer;

    .line 531
    return-void
.end method

.method public setRestrotableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "restrotableId"    # Ljava/lang/Integer;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restrotableId:Ljava/lang/Integer;

    .line 515
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->restrotableTitle:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setRoomCharge(Ljava/lang/Float;)V
    .registers 2
    .param p1, "roomCharge"    # Ljava/lang/Float;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->roomCharge:Ljava/lang/Float;

    .line 779
    return-void
.end method

.method public setRoomRate(Ljava/lang/Float;)V
    .registers 2
    .param p1, "roomRate"    # Ljava/lang/Float;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->roomRate:Ljava/lang/Float;

    .line 763
    return-void
.end method

.method public setSRate(Ljava/lang/Float;)V
    .registers 2
    .param p1, "sRate"    # Ljava/lang/Float;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->sRate:Ljava/lang/Float;

    .line 387
    return-void
.end method

.method public setSalesMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "salesMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->salesMasterId:Ljava/lang/Integer;

    .line 347
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "seatNo"    # Ljava/lang/Integer;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->seatNo:Ljava/lang/Integer;

    .line 443
    return-void
.end method

.method public setStatus(Ljava/lang/Object;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/Object;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->status:Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public setTotaldiscount(Ljava/lang/Float;)V
    .registers 2
    .param p1, "totaldiscount"    # Ljava/lang/Float;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->totaldiscount:Ljava/lang/Float;

    .line 603
    return-void
.end method

.method public setWaiter(Ljava/lang/String;)V
    .registers 2
    .param p1, "waiter"    # Ljava/lang/String;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->waiter:Ljava/lang/String;

    .line 755
    return-void
.end method
