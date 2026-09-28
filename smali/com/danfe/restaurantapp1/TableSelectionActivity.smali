###### Class com.danfe.restaurantapp1.TableSelectionActivity (com.danfe.restaurantapp1.TableSelectionActivity)
.class public Lcom/danfe/restaurantapp1/TableSelectionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TableSelectionActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

.field public static selectedBillNo:I

.field private static shiftItemsToTablesService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private BaseUrl:Ljava/lang/String;

.field BillEntered:I

.field ItemId:Ljava/lang/String;

.field TableId:Ljava/lang/String;

.field ToSplitNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field btnShiftCancel:Landroid/widget/Button;

.field btnShiftItem:Landroid/widget/Button;

.field btnShiftTable:Landroid/widget/Button;

.field private checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field childJsonObject:Lorg/json/JSONObject;

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

.field filteredTableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field fromOrderMasterId:I

.field private getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field guestNo:I

.field initialQuantity:Ljava/lang/Double;

.field isAdded:Z

.field isCombo:Ljava/lang/Boolean;

.field isItemAlreadyShifted:Z

.field private jsonParser:Lcom/google/gson/JsonParser;

.field layoutData:Landroid/widget/LinearLayout;

.field layoutShift:Landroid/widget/LinearLayout;

.field noDataAvailable:Landroid/widget/TextView;

.field noDatas:Landroid/widget/TextView;

.field object:Lorg/json/JSONObject;

.field orderDetailDb:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

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

.field orderLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field private orderType:Ljava/lang/String;

.field personalRoom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomTypeDb;",
            ">;"
        }
    .end annotation
.end field

.field restAdapter:Lretrofit/RestAdapter;

.field restAdapter2:Lretrofit/RestAdapter;

.field restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field roomArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field

.field roomDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation
.end field

.field roomDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room;",
            ">;"
        }
    .end annotation
.end field

.field roomId:J

.field roomLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room;",
            ">;"
        }
    .end annotation
.end field

.field roomListst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field roomResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field

.field roomResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field

.field private roomWithStatusData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private rooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;"
        }
    .end annotation
.end field

.field rooomListResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room;",
            ">;"
        }
    .end annotation
.end field

.field rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

.field rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

.field scrollView:Landroid/widget/ScrollView;

.field seatNo:I

.field selectedBill:I

.field selectedQty:Ljava/lang/Double;

.field selectedQtyNo:Ljava/lang/String;

.field selectedTable:I

.field shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

.field shiftedAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

.field shiftedOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field shiftedTable:Landroid/widget/Spinner;

.field spShiftSeat:Landroid/widget/Spinner;

.field spShiftTableNo:Landroid/widget/Spinner;

.field spShiftTableTitle:Landroid/widget/Spinner;

.field spShiftedSeatNo:Landroid/widget/Spinner;

.field tableArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;"
        }
    .end annotation
.end field

.field tableDate:Ljava/lang/String;

.field tableDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field tableDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field tableId:I

.field tableIdnumber:I

.field tableListResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$Roomlist;",
            ">;"
        }
    .end annotation
.end field

.field tableListTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tableLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/TableList;",
            ">;"
        }
    .end annotation
.end field

.field tableListst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation
.end field

.field tableName:Ljava/lang/String;

.field tableNo:Ljava/lang/String;

.field tableResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/Room$TableList;",
            ">;"
        }
    .end annotation
.end field

.field tablename:Ljava/lang/String;

.field tableroom:Ljava/lang/String;

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

.field tempShiftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
            ">;"
        }
    .end annotation
.end field

.field tempShiftListPerTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;",
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

.field tosplitNo:Ljava/lang/String;

.field totalQty:Ljava/lang/Double;

.field tvShiftDate:Landroid/widget/TextView;

.field tvShiftTableTitle:Landroid/widget/TextView;

.field tvShiftWaiter:Landroid/widget/TextView;

.field waiterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 74
    iput v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    .line 81
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->initialQuantity:Ljava/lang/Double;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseURL:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseUrl:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    .line 112
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->isAdded:Z

    .line 113
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->isItemAlreadyShifted:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/TableSelectionActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getDataBasedOnSelectedTable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/TableSelectionActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getTablebasedOnRoom(Ljava/lang/String;)V

    return-void
.end method

.method private getDataBasedOnSelectedTable(Ljava/lang/String;)V
    .registers 8
    .param p1, "spShitedTableTitle"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 482
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 483
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    .line 484
    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 483
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    .line 481
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_3e
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListTitle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 488
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListTitle:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, "Select"

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 489
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4c
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_68

    .line 490
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListTitle:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 492
    :cond_68
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030050

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListTitle:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 493
    .local v2, "tableNoAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 495
    return-void
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
    .line 555
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 557
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "TableId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string v3, "RoomId"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 560
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 561
    .local v1, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 563
    const-string v3, "getPredefinedValue"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_57

    .line 567
    .end local v1    # "jsonParser":Lcom/google/gson/JsonParser;
    :goto_2b
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseURL:Ljava/lang/String;

    .line 568
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 569
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 571
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 572
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 573
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v5, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-interface {v3, v4, v5}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 635
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    return-object v3

    .line 564
    :catch_57
    move-exception v0

    .line 565
    .local v0, "je":Lorg/json/JSONException;
    const-string v3, "json exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private getTablebasedOnRoom(Ljava/lang/String;)V
    .registers 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b0

    .line 383
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 384
    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTables(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    .line 385
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 386
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_41
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_ac

    .line 387
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_79

    .line 388
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_79

    .line 389
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_79
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a9

    .line 395
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_a9

    .line 396
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 382
    .end local v1    # "j":I
    :cond_ac
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 404
    :cond_b0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "tabelLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v4, "tableNoLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 407
    const-string v5, "Select"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c3
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_dd

    .line 410
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    .line 413
    :cond_dd
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030050

    invoke-direct {v3, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 414
    .local v3, "tableNoAdapter":Landroid/widget/ArrayAdapter;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 416
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftedTable:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 476
    return-void
.end method


# virtual methods
.method public FilterBillOrderItemLists(I)V
    .registers 7
    .param p1, "selectedBillOrders"    # I

    .prologue
    .line 499
    sput p1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBillNo:I

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "billNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    const/4 v3, 0x0

    const-string v4, "All"

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    sget v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBillNo:I

    if-ge v1, v3, :cond_21

    .line 506
    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 508
    :cond_21
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 509
    .local v2, "myAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 512
    return-void
.end method

.method public ShiftTable(Ljava/lang/String;)V
    .registers 7
    .param p1, "shiftedBy"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    .line 330
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 333
    :try_start_e
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    const-string v3, "fromOrderMasterId"

    iget v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->fromOrderMasterId:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    const-string v3, "fromSplitNo"

    iget v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    const-string v3, "toTable"

    iget v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableIdnumber:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    const-string v3, "toSplitNo"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tosplitNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    const-string v3, "shiftedBy"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_39} :catch_69

    .line 343
    :goto_39
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->object:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 344
    const-string v2, "ShiftTable Response: "

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;

    .line 347
    .local v1, "sendTransferService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;->shift(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 375
    return-void

    .line 340
    .end local v1    # "sendTransferService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;
    :catch_69
    move-exception v0

    .line 341
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_39
.end method

.method public getDataBasedOnSelectedValue(I)V
    .registers 7
    .param p1, "SelectedBill"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 515
    iget v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    if-nez v1, :cond_25

    .line 516
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 518
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 521
    .end local v0    # "i":I
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    .line 522
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2d
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 523
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_52

    .line 524
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 530
    :cond_55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tempShiftList:Ljava/util/List;

    .line 531
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->refreshAdapter()V

    .line 533
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_82

    .line 534
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_81

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_81

    .line 535
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 542
    :cond_81
    :goto_81
    return-void

    .line 539
    :cond_82
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_81
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 640
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 641
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 666
    :goto_7
    return-void

    .line 652
    :sswitch_8
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->onBackPressed()V

    goto :goto_7

    .line 656
    :sswitch_c
    iget v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableIdnumber:I

    if-nez v0, :cond_1b

    .line 657
    const-string v0, "Please Select the Table"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 660
    :cond_1b
    const-string v0, "shiftTable"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderType:Ljava/lang/String;

    .line 661
    new-instance v0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    const-string v2, "shiftTable"

    iget v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->fromOrderMasterId:I

    iget v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableId:I

    iget v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_7

    .line 650
    :sswitch_data_2e
    .sparse-switch
        0x7f0f009a -> :sswitch_8
        0x7f0f0121 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->setContentView(I)V

    .line 135
    const v4, 0x7f0f008d

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    .line 136
    const v4, 0x7f0f007f

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    .line 137
    const v4, 0x7f0f008f

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    .line 138
    const v4, 0x7f0f0086

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftTableTitle:Landroid/widget/TextView;

    .line 139
    const v4, 0x7f0f0081

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftDate:Landroid/widget/TextView;

    .line 140
    const v4, 0x7f0f0083

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftWaiter:Landroid/widget/TextView;

    .line 141
    const v4, 0x7f0f009a

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->btnShiftCancel:Landroid/widget/Button;

    .line 142
    const v4, 0x7f0f0121

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->btnShiftTable:Landroid/widget/Button;

    .line 143
    const v4, 0x7f0f0098

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

    .line 144
    const v4, 0x7f0f0090

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableNo:Landroid/widget/Spinner;

    .line 145
    const v4, 0x7f0f0091

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftedTable:Landroid/widget/Spinner;

    .line 146
    const v4, 0x7f0f011f

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftedSeatNo:Landroid/widget/Spinner;

    .line 147
    const v4, 0x7f0f0120

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDataAvailable:Landroid/widget/TextView;

    .line 148
    const v4, 0x7f0f011e

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->layoutData:Landroid/widget/LinearLayout;

    .line 149
    const v4, 0x7f0f008b

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDatas:Landroid/widget/TextView;

    .line 150
    const v4, 0x7f0f008c

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->scrollView:Landroid/widget/ScrollView;

    .line 152
    const v4, 0x7f0f01d7

    invoke-virtual {p0, v4}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->layoutShift:Landroid/widget/LinearLayout;

    .line 154
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "oldTableId"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableId:I

    .line 155
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "roomId"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomId:J

    .line 156
    const-string v4, "TableId: "

    iget v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromOrderMasterId"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->fromOrderMasterId:I

    .line 158
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tableName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tablename:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tableDate"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDate:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tableroom"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableroom:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "waiterName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->waiterName:Ljava/lang/String;

    .line 162
    new-instance v4, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    .line 164
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {v4, p0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllRoomType(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    .line 166
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseURL:Ljava/lang/String;

    .line 167
    new-instance v2, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "prefs":Lcom/danfe/restaurantapp1/helper/Preferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Services"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseUrl:Ljava/lang/String;

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailLists:Ljava/util/List;

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    .line 173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemsLists:Ljava/util/List;

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableLists:Ljava/util/List;

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tempExtraLists:Ljava/util/List;

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->extraItemsLists:Ljava/util/List;

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tempShiftList:Ljava/util/List;

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tempExtraExtraLists:Ljava/util/List;

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tempShiftListPerTable:Ljava/util/List;

    .line 181
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableResponseList:Ljava/util/List;

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomResponseList:Ljava/util/List;

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rooomListResponse:Ljava/util/List;

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListResponse:Ljava/util/List;

    .line 185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListTitle:Ljava/util/List;

    .line 186
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomDetailsList:Ljava/util/List;

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomDbList:Ljava/util/List;

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomResponse:Ljava/util/List;

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomArrayList:Ljava/util/List;

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableArrayList:Ljava/util/List;

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomListst:Ljava/util/List;

    .line 192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableListst:Ljava/util/List;

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbList:Ljava/util/List;

    .line 194
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderLists:Ljava/util/List;

    .line 196
    iget v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableId:I

    iget-wide v6, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomId:J

    invoke-direct {p0, v4, v6, v7}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getPredefinedValue(IJ)Ljava/util/List;

    .line 197
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftTableTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftDate:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftDate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tvShiftWaiter:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->waiterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v4, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .line 203
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseURL:Ljava/lang/String;

    .line 204
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 207
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BaseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restAdapter2:Lretrofit/RestAdapter;

    .line 209
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->btnShiftCancel:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->btnShiftTable:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    new-instance v5, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/RecyclerView;->setLongClickable(Z)V

    .line 233
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/danfe/restaurantapp1/TableSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$2;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v9, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 242
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 285
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomListst:Ljava/util/List;

    const-string v5, "Select"

    invoke-interface {v4, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_295
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2b1

    .line 287
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomListst:Ljava/util/List;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_295

    .line 289
    :cond_2b1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030050

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->roomListst:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 290
    .local v3, "tableListAdapter":Landroid/widget/ArrayAdapter;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 293
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    new-instance v5, Lcom/danfe/restaurantapp1/TableSelectionActivity$3;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$3;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableNo:Landroid/widget/Spinner;

    new-instance v5, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 325
    return-void
.end method

.method public onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "orderDetailsLists"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .prologue
    .line 645
    return-void
.end method

.method public refreshAdapter()V
    .registers 4

    .prologue
    .line 547
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->temporaryList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    .line 548
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 549
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->notifyDataSetChanged()V

    .line 550
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass1 (com.danfe.restaurantapp1.TableSelectionActivity$1)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$1;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

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
    .line 216
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 217
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    .line 218
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getDataBasedOnSelectedValue(I)V

    .line 224
    :goto_22
    return-void

    .line 220
    :cond_23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    .line 221
    const-string v0, "selectedBill: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->selectedBill:I

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getDataBasedOnSelectedValue(I)V

    goto :goto_22
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
    .line 229
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass2 (com.danfe.restaurantapp1.TableSelectionActivity$2)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$2;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass3 (com.danfe.restaurantapp1.TableSelectionActivity$3)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$3;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 296
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "spShitedTableTitle":Ljava/lang/String;
    const-string v1, "spShitedTableTitle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->access$000(Lcom/danfe/restaurantapp1/TableSelectionActivity;Ljava/lang/String;)V

    .line 301
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
    .line 306
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass4 (com.danfe.restaurantapp1.TableSelectionActivity$4)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$4;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 313
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "tableTitle":Ljava/lang/String;
    const-string v1, "TableTitle "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->access$100(Lcom/danfe/restaurantapp1/TableSelectionActivity;Ljava/lang/String;)V

    .line 317
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
    .line 322
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass5 (com.danfe.restaurantapp1.TableSelectionActivity$5)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$5;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->ShiftTable(Ljava/lang/String;)V
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
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 366
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table shift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 371
    :goto_1c
    return-void

    .line 368
    :catch_1d
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tbShiftexc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 351
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 352
    .local v1, "statuscode":I
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_31

    .line 354
    const-string v2, "successshift"

    const-string v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    const-string v3, "Table was Shifted."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 356
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->finish()V

    .line 361
    :goto_30
    return-void

    .line 358
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shifting Item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error Shifting item"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-static {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_30
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 347
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableSelectionActivity$5;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass6 (com.danfe.restaurantapp1.TableSelectionActivity$6)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$6;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->getTablebasedOnRoom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

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
    .line 419
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 421
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableNo:Ljava/lang/String;

    .line 422
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllTables(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a6

    .line 424
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 426
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableIdnumber:I

    .line 427
    const-string v3, "tableIdnumber: "

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableIdnumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getGuestNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->guestNo:I

    .line 430
    const-string v3, "tosplitNO"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->guestNo:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 437
    .end local v1    # "i":I
    :cond_a6
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    .line 438
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 440
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, "new"

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 441
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c1
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->guestNo:I

    if-ge v2, v3, :cond_d7

    .line 442
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1

    .line 444
    :cond_d7
    const-string v3, "tosplitlength: "

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030050

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ToSplitNo:Ljava/util/List;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 447
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftedSeatNo:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 449
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftedSeatNo:Landroid/widget/Spinner;

    new-instance v4, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;-><init>(Lcom/danfe/restaurantapp1/TableSelectionActivity$6;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 468
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
    .line 473
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass6.AnonymousClass1 (com.danfe.restaurantapp1.TableSelectionActivity$6$1)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 452
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftedSeatNo:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 453
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tosplitNo:Ljava/lang/String;

    .line 458
    :goto_21
    return-void

    .line 455
    :cond_22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableSelectionActivity$6;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableSelectionActivity;->spShiftedSeatNo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->tosplitNo:Ljava/lang/String;

    goto :goto_21
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
    .line 463
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableSelectionActivity.AnonymousClass7 (com.danfe.restaurantapp1.TableSelectionActivity$7)
.class Lcom/danfe/restaurantapp1/TableSelectionActivity$7;
.super Ljava/lang/Object;
.source "TableSelectionActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableSelectionActivity;->getPredefinedValue(IJ)Ljava/util/List;
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableSelectionActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableSelectionActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 631
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 22
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 576
    if-eqz p1, :cond_159

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getGuestNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getTableId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->TableId:Ljava/lang/String;

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->FilterBillOrderItemLists(I)V

    .line 584
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_16e

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v0, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 586
    move/from16 v0, v17

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

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 588
    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 589
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 590
    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 591
    move/from16 v0, v17

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

    iget-object v9, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 592
    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 593
    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v11, v11, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 594
    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v12, v12, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 595
    move/from16 v0, v17

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

    iget-object v13, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 596
    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getStatus()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v15, v15, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    .line 597
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    move-object/from16 v16, v0

    .line 598
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 585
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_33

    .line 602
    .end local v17    # "i":I
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDataAvailable:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->layoutData:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    :cond_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    if-lez v2, :cond_1ef

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->FilterBillOrderItemLists(I)V

    .line 614
    :cond_183
    :goto_183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_20d

    .line 615
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_222

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemsLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->seatNo:I

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderDetailsLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->fromOrderMasterId:I

    .line 615
    add-int/lit8 v17, v17, 0x1

    goto :goto_191

    .line 609
    .end local v17    # "i":I
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    if-nez v2, :cond_183

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    const/4 v3, 0x1

    iput v3, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->FilterBillOrderItemLists(I)V

    goto/16 :goto_183

    .line 621
    :cond_20d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->noDataAvailable:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 624
    :cond_222
    const-string v2, "seatNo: "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->seatNo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableSelectionActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 626
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 573
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableSelectionActivity$7;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method
