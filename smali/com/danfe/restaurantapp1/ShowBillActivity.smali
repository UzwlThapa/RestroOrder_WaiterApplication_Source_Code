###### Class com.danfe.restaurantapp1.ShowBillActivity (com.danfe.restaurantapp1.ShowBillActivity)
.class public Lcom/danfe/restaurantapp1/ShowBillActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShowBillActivity.java"


# static fields
.field public static selectedBillNo:I


# instance fields
.field AdvancePayment:Ljava/lang/Double;

.field BakeryDiscountPercent:I

.field BakerydiscountAmount:Ljava/lang/Double;

.field BarDiscountPercent:I

.field BardiscountAmount:Ljava/lang/Double;

.field private BaseURL:Ljava/lang/String;

.field BillEntered:I

.field Btnback:Landroid/widget/Button;

.field DiscountPercentKot:I

.field KotdiscountAmount:Ljava/lang/Double;

.field PizzaDiscountPercent:I

.field PizzadiscountAmount:Ljava/lang/Double;

.field RoomBookedDays:Ljava/lang/Integer;

.field RoomTotalCharge:Ljava/lang/Double;

.field TableId:Ljava/lang/String;

.field basicAmount:Landroid/widget/TextView;

.field private billingTermDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/BillingTermDb;",
            ">;"
        }
    .end annotation
.end field

.field bundle:Landroid/os/Bundle;

.field private costCenterHashMapValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field costcenterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private costcenterhashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field etDiscountBakeryAmt:Landroid/widget/EditText;

.field etDiscountBarAmt:Landroid/widget/EditText;

.field etDiscountKotAmt:Landroid/widget/EditText;

.field etDiscountPizzaAmt:Landroid/widget/EditText;

.field extraItemLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field extraItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field extraItemsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field extraLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field private getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

.field gsonObject:Lcom/google/gson/JsonObject;

.field layoutAdvanceAmt:Landroid/widget/LinearLayout;

.field layoutFragmentBilling:Landroid/widget/LinearLayout;

.field layoutNoData:Landroid/widget/LinearLayout;

.field layoutRemainingAmt:Landroid/widget/LinearLayout;

.field layoutRoomAmt:Landroid/widget/LinearLayout;

.field linearLayout:Landroid/widget/LinearLayout;

.field lvFragmentItemDisc:Landroid/widget/ListView;

.field netAmount:Landroid/widget/TextView;

.field newBasicAmount:Ljava/lang/Double;

.field newDiscountAmount:Ljava/lang/Double;

.field noDataAvailable:Landroid/widget/TextView;

.field orderDetailLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderDetailPerSeatNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderDetailsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field orderItemDetailLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderItemsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderListPerSeatNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderingUser:Ljava/lang/String;

.field rate:D

.field restAdapter:Lretrofit/RestAdapter;

.field restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field roomId:J

.field rvShowBill:Landroid/support/v7/widget/RecyclerView;

.field seatNo:I

.field selectedBill:I

.field shiftedByUserName:Ljava/lang/String;

.field showBillAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

.field showBilldate:Landroid/widget/TextView;

.field private showBillingAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

.field spDiscountType:Landroid/widget/Spinner;

.field spShowbill:Landroid/widget/Spinner;

.field subAmount:Landroid/widget/TextView;

.field subamount:Ljava/lang/Double;

.field tableDate:Ljava/lang/String;

.field tableId:I

.field tableRoom:Landroid/widget/TextView;

.field tableroom:Ljava/lang/String;

.field tablname:Ljava/lang/String;

.field tempExtraExtraLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field tempExtraItemsDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field tempExtraLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field tempOrderDetailDb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field temporaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field testExtraItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field totalamountresult:Ljava/lang/Double;

.field tvAdvanceAmt:Landroid/widget/TextView;

.field tvBillInfo:Landroid/widget/TextView;

.field tvBillName:Landroid/widget/TextView;

.field tvBillTableName:Landroid/widget/TextView;

.field tvDiscountBakery:Landroid/widget/TextView;

.field tvDiscountBar:Landroid/widget/TextView;

.field tvDiscountKot:Landroid/widget/TextView;

.field tvDiscountPizza:Landroid/widget/TextView;

.field tvRemainingAmt:Landroid/widget/TextView;

.field tvRoomAmt:Landroid/widget/TextView;

.field tvTotaldiscountFragment:Landroid/widget/TextView;

.field tvWaiterName:Landroid/widget/TextView;

.field updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

.field view:Landroid/view/View;

.field waiterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->selectedBill:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->BaseURL:Ljava/lang/String;

    .line 95
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costCenterHashMapValue:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/danfe/restaurantapp1/ShowBillActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costCenterHashMapValue:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->billingTermDbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/danfe/restaurantapp1/ShowBillActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->billingTermDbs:Ljava/util/List;

    return-object p1
.end method

.method private getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;
    .registers 14
    .param p1, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 892
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 895
    .local v5, "price":Ljava/lang/Double;
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_7f

    .line 896
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7f

    .line 897
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v1

    .line 900
    .local v1, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7c

    .line 901
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v0

    .line 902
    .local v0, "extraItemId":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v4

    .line 903
    .local v4, "orderDetailDbItemId":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 904
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 900
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 896
    .end local v0    # "extraItemId":Ljava/lang/Integer;
    .end local v4    # "orderDetailDbItemId":Ljava/lang/Integer;
    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 910
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_7f
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getPrice()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6
.end method

.method private getPredefinedValue(IJ)Ljava/util/List;
    .registers 10
    .param p1, "tableId"    # I
    .param p2, "roomId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 683
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "TableId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    const-string v3, "RoomId"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 686
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 687
    .local v1, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 689
    const-string v3, "getPredefinedValue"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_57

    .line 693
    .end local v1    # "jsonParser":Lcom/google/gson/JsonParser;
    :goto_2b
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->BaseURL:Ljava/lang/String;

    .line 694
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 695
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 697
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 698
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 699
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v5, Lcom/danfe/restaurantapp1/ShowBillActivity$5;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/ShowBillActivity$5;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V

    invoke-interface {v3, v4, v5}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 777
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    return-object v3

    .line 690
    :catch_57
    move-exception v0

    .line 691
    .local v0, "je":Lorg/json/JSONException;
    const-string v3, "json exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private updateCostCenter()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 834
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->lvFragmentItemDisc:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 835
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempOrderDetailDb:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_176

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempOrderDetailDb:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_176

    .line 836
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_149

    .line 837
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 838
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_af

    .line 839
    const-string v6, "updateCostCenter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 842
    .local v0, "costcenterid":I
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v0    # "costcenterid":I
    :cond_8c
    new-instance v5, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    invoke-direct {v5, v6, v7, v8}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;)V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillingAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    .line 866
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->lvFragmentItemDisc:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillingAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 867
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillingAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/adapter/ShowBillingAdapter;->updateTotalAmount()V

    .line 884
    :goto_a7
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 887
    return-void

    .line 844
    :cond_af
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_b0
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8c

    .line 845
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 846
    .local v2, "rate":Ljava/lang/Double;
    const-string v6, "ItemId"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 848
    .restart local v0    # "costcenterid":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_e4
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_145

    .line 849
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 850
    .local v1, "newcostcenterid":I
    if-ne v1, v0, :cond_12c

    .line 851
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 852
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 854
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_12c
    :goto_12c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    .line 856
    :cond_12f
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v2

    .line 857
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12c

    .line 844
    .end local v1    # "newcostcenterid":I
    :cond_145
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b0

    .line 870
    .end local v0    # "costcenterid":I
    .end local v2    # "rate":Ljava/lang/Double;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_149
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->lvFragmentItemDisc:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 871
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 872
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->subAmount:Landroid/widget/TextView;

    const-string v6, "0.00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->basicAmount:Landroid/widget/TextView;

    const-string v6, " 0.00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->netAmount:Landroid/widget/TextView;

    const-string v6, " 0.00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    const-string v6, "0.00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_a7

    .line 881
    :cond_176
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempOrderDetailDb:Ljava/util/List;

    .line 882
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->updateCostCenter()V

    goto/16 :goto_a7
.end method


# virtual methods
.method public FilterBillOrderItemLists(I)V
    .registers 7
    .param p1, "selectedBillOrders"    # I

    .prologue
    .line 666
    sput p1, Lcom/danfe/restaurantapp1/ShowBillActivity;->selectedBillNo:I

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "billNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->selectedBillNo:I

    if-ge v1, v3, :cond_18

    .line 671
    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 674
    :cond_18
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 675
    .local v2, "myAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spShowbill:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 677
    return-void
.end method

.method public getDataBasedOnSelectedValue(I)V
    .registers 8
    .param p1, "SelectedBill"    # I

    .prologue
    const/4 v5, 0x0

    .line 784
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->temporaryList:Ljava/util/List;

    .line 785
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 787
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2e

    .line 789
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->temporaryList:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 793
    :cond_31
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->temporaryList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    .line 794
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->rvShowBill:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 795
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBillAdapter:Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/adapter/ShowBillAdapter;->notifyDataSetChanged()V

    .line 797
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 799
    const/4 v0, 0x0

    :goto_52
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 800
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_77

    .line 801
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 805
    :cond_7a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraItemsDbs:Ljava/util/List;

    .line 806
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraExtraLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b8

    .line 807
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8a
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraExtraLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b8

    .line 808
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraExtraLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_b5

    .line 809
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraItemsDbs:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraExtraLists:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 815
    .end local v1    # "j":I
    :cond_b8
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gez v2, :cond_cc

    .line 816
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->noDataAvailable:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->rvShowBill:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 820
    :cond_cc
    const/4 v0, 0x0

    :goto_cd
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e3

    .line 821
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 824
    :cond_e3
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->updateCostCenter()V

    .line 825
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 916
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 918
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v3, 0x7f03006d

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->setContentView(I)V

    .line 108
    const v3, 0x7f0f01e3

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spShowbill:Landroid/widget/Spinner;

    .line 109
    const v3, 0x7f0f007e

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillName:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0f01e4

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillTableName:Landroid/widget/TextView;

    .line 111
    const v3, 0x7f0f01e7

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBilldate:Landroid/widget/TextView;

    .line 112
    const v3, 0x7f0f01eb

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->rvShowBill:Landroid/support/v7/widget/RecyclerView;

    .line 113
    const v3, 0x7f0f01e6

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableRoom:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f0f0099

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->noDataAvailable:Landroid/widget/TextView;

    .line 115
    const v3, 0x7f0f01f6

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->subAmount:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f0f01fc

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->basicAmount:Landroid/widget/TextView;

    .line 117
    const v3, 0x7f0f01fe

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->netAmount:Landroid/widget/TextView;

    .line 118
    const v3, 0x7f0f01f7

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutNoData:Landroid/widget/LinearLayout;

    .line 119
    const v3, 0x7f0f01e8

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvWaiterName:Landroid/widget/TextView;

    .line 120
    const v3, 0x7f0f01f8

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->lvFragmentItemDisc:Landroid/widget/ListView;

    .line 121
    const v3, 0x7f0f01fd

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    .line 122
    const v3, 0x7f0f01f9

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f0f01ee

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountKot:Landroid/widget/TextView;

    .line 125
    const v3, 0x7f0f01ef

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    .line 126
    const v3, 0x7f0f01f0

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBar:Landroid/widget/TextView;

    .line 127
    const v3, 0x7f0f01f1

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    .line 128
    const v3, 0x7f0f01f2

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBakery:Landroid/widget/TextView;

    .line 129
    const v3, 0x7f0f01f3

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    .line 130
    const v3, 0x7f0f01f4

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountPizza:Landroid/widget/TextView;

    .line 131
    const v3, 0x7f0f01f5

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    .line 134
    const v3, 0x7f0f01fa

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRoomAmt:Landroid/widget/LinearLayout;

    .line 135
    const v3, 0x7f0f01ff

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutAdvanceAmt:Landroid/widget/LinearLayout;

    .line 136
    const v3, 0x7f0f0201

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRemainingAmt:Landroid/widget/LinearLayout;

    .line 137
    const v3, 0x7f0f01fb

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvRoomAmt:Landroid/widget/TextView;

    .line 138
    const v3, 0x7f0f0200

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvAdvanceAmt:Landroid/widget/TextView;

    .line 139
    const v3, 0x7f0f0202

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvRemainingAmt:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f0f01ed

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 144
    new-instance v3, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 147
    const v3, 0x7f0f0203

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->Btnback:Landroid/widget/Button;

    .line 148
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->Btnback:Landroid/widget/Button;

    new-instance v4, Lcom/danfe/restaurantapp1/ShowBillActivity$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/ShowBillActivity$1;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->BaseURL:Ljava/lang/String;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailLists:Ljava/util/List;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailPerSeatNo:Ljava/util/List;

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    .line 160
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraItemLists:Ljava/util/List;

    .line 161
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterhashmap:Ljava/util/HashMap;

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costcenterList:Ljava/util/List;

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraLists:Ljava/util/List;

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraItemsLists:Ljava/util/List;

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempOrderDetailDb:Ljava/util/List;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderListPerSeatNo:Ljava/util/List;

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraLists:Ljava/util/List;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tempExtraExtraLists:Ljava/util/List;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->testExtraItems:Ljava/util/List;

    .line 171
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->costCenterHashMapValue:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "discountListType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "Select"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v3, "Percent"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v3, "Flat"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030051

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 179
    .local v0, "discountAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 181
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    new-instance v4, Lcom/danfe/restaurantapp1/ShowBillActivity$2;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/ShowBillActivity$2;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->updateCostCenter()V

    .line 276
    new-instance v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/ShowBillActivity$3;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->updateTotalPrice:Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;

    .line 629
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oldTableId"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableId:I

    .line 630
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "roomId"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->roomId:J

    .line 631
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tableName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tablname:Ljava/lang/String;

    .line 632
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tableDate"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableDate:Ljava/lang/String;

    .line 633
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tableroom"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableroom:Ljava/lang/String;

    .line 634
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "waiterName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->waiterName:Ljava/lang/String;

    .line 635
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shiftedByUserName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->shiftedByUserName:Ljava/lang/String;

    .line 637
    iget v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableId:I

    iget-wide v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->roomId:J

    invoke-direct {p0, v3, v4, v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getPredefinedValue(IJ)Ljava/util/List;

    .line 639
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillTableName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tablname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBilldate:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 641
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->showBilldate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableRoom:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->tableroom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->spShowbill:Landroid/widget/Spinner;

    new-instance v4, Lcom/danfe/restaurantapp1/ShowBillActivity$4;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/ShowBillActivity$4;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 660
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 661
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity;->rvShowBill:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 663
    return-void
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass1 (com.danfe.restaurantapp1.ShowBillActivity$1)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$1;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$1;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$1;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/ShowBillActivity;->onBackPressed()V

    .line 152
    return-void
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass2 (com.danfe.restaurantapp1.ShowBillActivity$2)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$2;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "DiscountTypeTitle":Ljava/lang/String;
    const-string v2, "DiscountTypeTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Percent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 187
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 188
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 193
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 197
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 198
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 199
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 229
    :cond_9a
    :goto_9a
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$100(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$002(Lcom/danfe/restaurantapp1/ShowBillActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 233
    const/4 v1, 0x1

    .local v1, "x":I
    :goto_a6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_315

    .line 235
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24f

    .line 236
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 237
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountKot:Landroid/widget/TextView;

    const-string v3, "KOT (Rs. 0.00 )"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 243
    :goto_d0
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_280

    .line 244
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 245
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBar:Landroid/widget/TextView;

    const-string v3, "Bar (Rs. 0.00 )"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 250
    :goto_f7
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b1

    .line 251
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBakery:Landroid/widget/TextView;

    const-string v3, "Bakery (Rs. 0.00 )"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 257
    :goto_11f
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2e3

    .line 258
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 259
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountPizza:Landroid/widget/TextView;

    const-string v3, "Pizza (Rs. 0.00 )"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 233
    :goto_147
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a6

    .line 200
    .end local v1    # "x":I
    :cond_14b
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Flat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1eb

    .line 201
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 202
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 207
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 208
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 209
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 210
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 211
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 212
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 213
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 214
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 215
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 216
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 217
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    goto/16 :goto_9a

    .line 218
    :cond_1eb
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 219
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 220
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 221
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 222
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 223
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9a

    .line 240
    .restart local v1    # "x":I
    :cond_24f
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountKot:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KOT (Rs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 247
    :cond_280
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBar:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bar (Rs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f7

    .line 254
    :cond_2b1
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountBakery:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bakery (Rs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11f

    .line 261
    :cond_2e3
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvDiscountPizza:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pizza (Rs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$2;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v4

    const/16 v5, 0x61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_147

    .line 266
    :cond_315
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass3 (com.danfe.restaurantapp1.ShowBillActivity$3)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$3;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPriceUpdate(DD)V
    .registers 24
    .param p1, "totaldiscount"    # D
    .param p3, "totalamount"    # D

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 282
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double v10, v10, p3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 284
    .local v6, "totalAmountWithRoomCharge":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$202(Lcom/danfe/restaurantapp1/ShowBillActivity;Ljava/util/List;)Ljava/util/List;

    .line 285
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllBillingTerminAsc(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$202(Lcom/danfe/restaurantapp1/ShowBillActivity;Ljava/util/List;)Ljava/util/List;

    .line 286
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const-wide/16 v10, 0x0

    cmpl-double v9, p1, v10

    if-lez v9, :cond_327

    .line 288
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_68
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_4a8

    .line 296
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->basicAmount:Landroid/widget/TextView;

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double v14, v14, p3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    add-double v10, p3, p1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    .line 299
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->subAmount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x40000000    # 2.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 305
    const v9, 0x800005

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 306
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 309
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    .line 310
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvRoomAmt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvAdvanceAmt:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->AdvancePayment:Ljava/lang/Double;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_334

    .line 313
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRoomAmt:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutAdvanceAmt:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRemainingAmt:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    :cond_153
    :goto_153
    new-instance v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;-><init>(Lcom/danfe/restaurantapp1/ShowBillActivity$3;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 571
    .local v3, "etTextWatcher":Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 577
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_43b

    .line 578
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 579
    .local v7, "tvBillInfo":Landroid/widget/TextView;
    const-string v9, "sans-serif-condensed"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0077

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900bc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 582
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_364

    .line 584
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    .line 588
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 592
    .local v2, "disamount":Ljava/lang/Double;
    if-nez v4, :cond_25d

    .line 593
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v12, v12, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 595
    :cond_25d
    const/4 v9, 0x1

    if-ne v4, v9, :cond_291

    .line 597
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 598
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 602
    :cond_291
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<b>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (+"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "%) :</b> "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .end local v2    # "disamount":Ljava/lang/Double;
    :cond_2fc
    :goto_2fc
    new-instance v8, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 611
    .local v8, "view":Landroid/view/View;
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    const/4 v9, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x5

    const/4 v12, 0x5

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 614
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17f

    .line 290
    .end local v3    # "etTextWatcher":Landroid/text/TextWatcher;
    .end local v4    # "i":I
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "tvBillInfo":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_327
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    const-string v10, "0.00"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_68

    .line 316
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_334
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_153

    .line 317
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRoomAmt:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutAdvanceAmt:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutRemainingAmt:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_153

    .line 603
    .restart local v3    # "etTextWatcher":Landroid/text/TextWatcher;
    .restart local v4    # "i":I
    .restart local v7    # "tvBillInfo":Landroid/widget/TextView;
    :cond_364
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2fc

    .line 604
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    .line 605
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 606
    .restart local v2    # "disamount":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 607
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<b>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " (-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "%) :</b> "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2fc

    .line 616
    .end local v2    # "disamount":Ljava/lang/Double;
    .end local v7    # "tvBillInfo":Landroid/widget/TextView;
    :cond_43b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->netAmount:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v14, v14, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvRemainingAmt:Landroid/widget/TextView;

    const-string v10, "%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ShowBillActivity;->AdvancePayment:Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    .end local v3    # "etTextWatcher":Landroid/text/TextWatcher;
    .end local v4    # "i":I
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_4a7
    return-void

    .line 624
    :cond_4a8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->netAmount:Landroid/widget/TextView;

    const-string v10, " 0.00"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a7
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass3.AnonymousClass1 (com.danfe.restaurantapp1.ShowBillActivity$3$1)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity$3;->onPriceUpdate(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

.field final synthetic val$params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity$3;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 569
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 17
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 332
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_a6d

    .line 334
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f7

    .line 335
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 337
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 338
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    :cond_3b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    const/4 v3, 0x1

    if-ne v1, v3, :cond_14d

    .line 343
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 344
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 345
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 350
    :goto_68
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 351
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 352
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 357
    :goto_91
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 358
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 359
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 364
    :goto_ba
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 365
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 366
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 342
    :goto_e3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 347
    :cond_e7
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    goto/16 :goto_68

    .line 354
    :cond_101
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    goto/16 :goto_91

    .line 361
    :cond_11b
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    goto :goto_ba

    .line 368
    :cond_134
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    goto :goto_e3

    .line 375
    :cond_14d
    const-string v3, "DiscountPercentKot: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  BarDiscountPercent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  BakeryDiscountPercent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  PizzaDiscountPercent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x1

    :goto_196
    const/4 v3, 0x1

    if-ne v1, v3, :cond_659

    .line 380
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Percent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40d

    .line 381
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 382
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 383
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 384
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 385
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 386
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 387
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 388
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 389
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a5

    .line 390
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 391
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 396
    :goto_224
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3bf

    .line 397
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 398
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 403
    :goto_24d
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d9

    .line 404
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 405
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 410
    :goto_276
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    .line 411
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 412
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 419
    :goto_29f
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    if-eqz v3, :cond_2df

    .line 420
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 421
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 424
    :cond_2df
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    if-eqz v3, :cond_31f

    .line 425
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 426
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 429
    :cond_31f
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    if-eqz v3, :cond_360

    .line 430
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x5f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 431
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 434
    :cond_360
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    if-eqz v3, :cond_3a1

    .line 435
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$000(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v5, 0x61

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    int-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 436
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 379
    :cond_3a1
    :goto_3a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_196

    .line 393
    :cond_3a5
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    goto/16 :goto_224

    .line 400
    :cond_3bf
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    goto/16 :goto_24d

    .line 407
    :cond_3d9
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    goto/16 :goto_276

    .line 414
    :cond_3f3
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    goto/16 :goto_29f

    .line 440
    :cond_40d
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Flat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_611

    .line 441
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 442
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 443
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 444
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 445
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 446
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 447
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 448
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 449
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a9

    .line 450
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    .line 451
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 456
    :goto_498
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c3

    .line 457
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    .line 458
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 463
    :goto_4c1
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5dd

    .line 464
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    .line 465
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 470
    :goto_4ea
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f7

    .line 471
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    .line 472
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    .line 477
    :goto_513
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    if-eqz v3, :cond_538

    .line 478
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 479
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 482
    :cond_538
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    if-eqz v3, :cond_55d

    .line 483
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 484
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 487
    :cond_55d
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    if-eqz v3, :cond_582

    .line 488
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 489
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 492
    :cond_582
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    if-eqz v3, :cond_3a1

    .line 493
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 494
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    goto/16 :goto_3a1

    .line 453
    :cond_5a9
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountKotAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->DiscountPercentKot:I

    goto/16 :goto_498

    .line 460
    :cond_5c3
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBarAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BarDiscountPercent:I

    goto/16 :goto_4c1

    .line 467
    :cond_5dd
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountBakeryAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakeryDiscountPercent:I

    goto/16 :goto_4ea

    .line 474
    :cond_5f7
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->etDiscountPizzaAmt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzaDiscountPercent:I

    goto/16 :goto_513

    .line 497
    :cond_611
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->spDiscountType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a1

    .line 499
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    .line 500
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    .line 501
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    .line 502
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    goto/16 :goto_3a1

    .line 506
    :cond_659
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->KotdiscountAmount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->BardiscountAmount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->BakerydiscountAmount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->PizzadiscountAmount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    .line 507
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    .line 508
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->basicAmount:Landroid/widget/TextView;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvTotaldiscountFragment:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ShowBillActivity;->newDiscountAmount:Ljava/lang/Double;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .end local v1    # "i":I
    :cond_701
    :goto_701
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_702
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a02

    .line 518
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    .line 519
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    const-string v4, "sans-serif-condensed"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 520
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 522
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_925

    .line 524
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    .line 526
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 529
    .local v0, "disamount":Ljava/lang/Double;
    if-nez v1, :cond_800

    .line 530
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 532
    :cond_800
    const/4 v3, 0x1

    if-ne v1, v3, :cond_834

    .line 534
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 535
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 536
    :cond_834
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (+"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%) :</b> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .end local v0    # "disamount":Ljava/lang/Double;
    :cond_8a5
    :goto_8a5
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 545
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 548
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8e4

    .line 549
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 552
    :cond_8e4
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_702

    .line 512
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_8f7
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_701

    .line 513
    const-string v3, "Kot: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "amount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->subamount:Ljava/lang/Double;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    goto/16 :goto_701

    .line 537
    .restart local v1    # "i":I
    :cond_925
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a5

    .line 538
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    .line 539
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-wide v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->rate:D

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 540
    .restart local v0    # "disamount":Ljava/lang/Double;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->newBasicAmount:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    .line 541
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvBillInfo:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->access$200(Lcom/danfe/restaurantapp1/ShowBillActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%) :</b> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8a5

    .line 557
    .end local v0    # "disamount":Ljava/lang/Double;
    :cond_a02
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->layoutFragmentBilling:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ShowBillActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 559
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->netAmount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvRemainingAmt:Landroid/widget/TextView;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity;->totalamountresult:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v7, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/ShowBillActivity$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity$3;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity;->AdvancePayment:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    .end local v1    # "i":I
    :cond_a6d
    return-void
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass4 (com.danfe.restaurantapp1.ShowBillActivity$4)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$4;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ShowBillActivity;->spShowbill:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/danfe/restaurantapp1/ShowBillActivity;->selectedBill:I

    .line 650
    const-string v0, "selectedBill: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ShowBillActivity;->spShowbill:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$4;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v1, v1, Lcom/danfe/restaurantapp1/ShowBillActivity;->selectedBill:I

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/ShowBillActivity;->getDataBasedOnSelectedValue(I)V

    .line 652
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ShowBillActivity.AnonymousClass5 (com.danfe.restaurantapp1.ShowBillActivity$5)
.class Lcom/danfe/restaurantapp1/ShowBillActivity$5;
.super Ljava/lang/Object;
.source "ShowBillActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ShowBillActivity;->getPredefinedValue(IJ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/danfe/restaurantapp1/response/EditOrderRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ShowBillActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ShowBillActivity;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 773
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 24
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 702
    if-eqz p1, :cond_214

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getUserName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderingUser:Ljava/lang/String;

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getGuestNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getTableId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->TableId:Ljava/lang/String;

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getRoomTotal()Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomTotalCharge:Ljava/lang/Double;

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getAdvancePaid()Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->AdvancePayment:Ljava/lang/Double;

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getRoomBookedDays()Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->RoomBookedDays:Ljava/lang/Integer;

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->tvWaiterName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderingUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->FilterBillOrderItemLists(I)V

    .line 718
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    .line 720
    .local v17, "extraItemAmount":Ljava/lang/Double;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_214

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraLists:Ljava/util/List;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f8

    .line 723
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_f8

    .line 724
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraLists:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->extraLists:Ljava/util/List;

    .line 725
    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 724
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    .line 723
    add-int/lit8 v19, v19, 0x1

    goto :goto_b0

    .line 730
    .end local v19    # "j":I
    :cond_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v0, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 731
    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 732
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 733
    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 734
    move/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 735
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 736
    move/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 737
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 738
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v11, v11, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 739
    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v12, v12, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 740
    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getExtraCharge()Ljava/lang/Double;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 741
    move/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getStatus()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v15, v15, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    .line 742
    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderDetailsLists:Ljava/util/List;

    move-object/from16 v16, v0

    .line 743
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 730
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_70

    .line 750
    .end local v17    # "extraItemAmount":Ljava/lang/Double;
    .end local v18    # "i":I
    :cond_214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    if-lez v2, :cond_279

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->FilterBillOrderItemLists(I)V

    .line 757
    :cond_229
    :goto_229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_296

    .line 758
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_2ab

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemsLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->seatNo:I

    .line 758
    add-int/lit8 v18, v18, 0x1

    goto :goto_237

    .line 752
    .end local v18    # "i":I
    :cond_279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    if-nez v2, :cond_229

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    const/4 v3, 0x1

    iput v3, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ShowBillActivity;->FilterBillOrderItemLists(I)V

    goto :goto_229

    .line 763
    :cond_296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->noDataAvailable:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->rvShowBill:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 766
    :cond_2ab
    const-string v2, "seatNo: "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->seatNo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->this$0:Lcom/danfe/restaurantapp1/ShowBillActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ShowBillActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 768
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 699
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/ShowBillActivity$5;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method
