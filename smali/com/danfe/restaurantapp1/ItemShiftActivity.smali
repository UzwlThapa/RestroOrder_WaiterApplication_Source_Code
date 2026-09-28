###### Class com.danfe.restaurantapp1.ItemShiftActivity (com.danfe.restaurantapp1.ItemShiftActivity)
.class public Lcom/danfe/restaurantapp1/ItemShiftActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItemShiftActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static selectedBillNo:I

.field private static shiftItemsToTablesService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private BaseUrl:Ljava/lang/String;

.field BillEntered:I

.field ItemId:Ljava/lang/String;

.field TableId:Ljava/lang/String;

.field btnShiftCancel:Landroid/widget/Button;

.field btnShiftItem:Landroid/widget/Button;

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

.field private getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field isAdded:Z

.field isCombo:Ljava/lang/Boolean;

.field isItemAlreadyShifted:Z

.field private jsonParser:Lcom/google/gson/JsonParser;

.field layoutData:Landroid/widget/LinearLayout;

.field noDataAvailable:Landroid/widget/TextView;

.field noDatas:Landroid/widget/TextView;

.field object:Lorg/json/JSONObject;

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

.field roomId:J

.field roomListArray:Ljava/util/List;
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

.field rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

.field rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

.field scrollView:Landroid/widget/ScrollView;

.field seatNo:I

.field selectedBill:I

.field selectedQtyNo:Ljava/lang/String;

.field selectedSplitNo:I

.field shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

.field shiftedAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

.field private shiftedByUserName:Ljava/lang/String;

.field shiftedTable:Landroid/widget/Spinner;

.field spShiftSeat:Landroid/widget/Spinner;

.field spShiftSplitNo:Landroid/widget/Spinner;

.field spShiftTableNo:Landroid/widget/Spinner;

.field spShiftTableTitle:Landroid/widget/Spinner;

.field splitNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

.field toSplitNo:I

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

    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 69
    iput v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBill:I

    iput v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    iput v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    .line 75
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->totalQty:Ljava/lang/Double;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseURL:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseUrl:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    .line 98
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isAdded:Z

    .line 99
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isItemAlreadyShifted:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/ItemShiftActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getDataBasedOnSelectedTable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/ItemShiftActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getTablebasedOnRoom(Ljava/lang/String;)V

    return-void
.end method

.method private getDataBasedOnSelectedTable(Ljava/lang/String;)V
    .registers 8
    .param p1, "spShitedTableTitle"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 416
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 417
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    .line 418
    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 417
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    .line 415
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_3e
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListTitle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 422
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListTitle:Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, "Select"

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 423
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4c
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_68

    .line 424
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListTitle:Ljava/util/List;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 426
    :cond_68
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030050

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListTitle:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 427
    .local v2, "tableNoAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 429
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
    .line 487
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 489
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "TableId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v3, "RoomId"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 492
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 493
    .local v1, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 495
    const-string v3, "getPredefinedValue"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_57

    .line 500
    .end local v1    # "jsonParser":Lcom/google/gson/JsonParser;
    :goto_2b
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseURL:Ljava/lang/String;

    .line 501
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 502
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 503
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 504
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v5, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;

    invoke-direct {v5, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-interface {v3, v4, v5}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 565
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    return-object v3

    .line 496
    :catch_57
    move-exception v0

    .line 497
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
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b0

    .line 335
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 336
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

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

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    .line 337
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 338
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_41
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_ac

    .line 339
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_79

    .line 340
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_79

    .line 341
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_79
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a9

    .line 347
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_a9

    .line 348
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 334
    .end local v1    # "j":I
    :cond_ac
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 356
    :cond_b0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "tabelLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v4, "tableNoLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "Select"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c0
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_da

    .line 361
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->filteredTableList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 364
    :cond_da
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030050

    invoke-direct {v3, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 365
    .local v3, "tableNoAdapter":Landroid/widget/ArrayAdapter;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 367
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedTable:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 410
    return-void
.end method


# virtual methods
.method public FilterBillOrderItemLists(I)V
    .registers 7
    .param p1, "selectedBillOrders"    # I

    .prologue
    .line 433
    sput p1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBillNo:I

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v0, "billNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBillNo:I

    if-ge v1, v3, :cond_18

    .line 438
    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 441
    :cond_18
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 442
    .local v2, "myAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 445
    return-void
.end method

.method public ShiftItem(Ljava/lang/String;)V
    .registers 9
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedByUserName:Ljava/lang/String;

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "shiftedByUserName"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedByUserName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftItem:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    .line 286
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->childJsonObject:Lorg/json/JSONObject;

    .line 287
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 288
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lcom/google/gson/JsonParser;

    invoke-direct {v4}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 291
    :try_start_30
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "fromTable"

    iget v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableId:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 292
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "fromSplitNo"

    iget v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBill:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "toTable"

    iget v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableIdnumber:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "toSplitNo"

    iget v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "shiftedBy"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    const-string v5, "itemList"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_62} :catch_7d

    .line 302
    :goto_62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_63
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_82

    .line 303
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->toJsonForShift()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 298
    .end local v1    # "i":I
    :catch_7d
    move-exception v0

    .line 299
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_62

    .line 307
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i":I
    :cond_82
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    iput-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 308
    const-string v4, "shiftOrderResponse"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->object:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restAdapter2:Lretrofit/RestAdapter;

    const-class v5, Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;

    sput-object v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftItemsToTablesService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;

    .line 310
    sget-object v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftItemsToTablesService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-interface {v4, v5, v6}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;->postShiftItemsToTables(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 330
    return-void
.end method

.method public getDataBasedOnSelectedValue(I)V
    .registers 7
    .param p1, "SelectedBill"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 450
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_30

    .line 451
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 456
    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 457
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->refreshAdapter()V

    .line 459
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_60

    .line 460
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_5f

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5f

    .line 461
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 469
    :cond_5f
    :goto_5f
    return-void

    .line 465
    :cond_60
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDatas:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_5f
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 570
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 571
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 714
    :goto_8
    return-void

    .line 695
    :pswitch_9
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 696
    const-string v0, "No FullRestroRoomData Available to Shift"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 697
    :cond_1b
    iget v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableIdnumber:I

    if-nez v0, :cond_29

    .line 698
    const-string v0, "Please select table from the list."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 699
    :cond_29
    iget v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    if-nez v0, :cond_37

    .line 700
    const-string v0, "Please select given Split No. to Shift Item"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 701
    :cond_37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 702
    const-string v0, "Please select atleast one item to desired table!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 705
    :cond_49
    const-string v0, "shiftItem"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderType:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    const-string v1, "shiftItem"

    invoke-virtual {v0, p0, v1}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 711
    :pswitch_55
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->onBackPressed()V

    goto :goto_8

    .line 692
    nop

    :pswitch_data_5a
    .packed-switch 0x7f0f009a
        :pswitch_55
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v5, 0x7f03001b

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->setContentView(I)V

    .line 110
    const v5, 0x7f0f008d

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    .line 111
    const v5, 0x7f0f007f

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSeat:Landroid/widget/Spinner;

    .line 112
    const v5, 0x7f0f008f

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    .line 113
    const v5, 0x7f0f0086

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftTableTitle:Landroid/widget/TextView;

    .line 114
    const v5, 0x7f0f0081

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftDate:Landroid/widget/TextView;

    .line 115
    const v5, 0x7f0f0083

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftWaiter:Landroid/widget/TextView;

    .line 116
    const v5, 0x7f0f009b

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftItem:Landroid/widget/Button;

    .line 117
    const v5, 0x7f0f009a

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftCancel:Landroid/widget/Button;

    .line 118
    const v5, 0x7f0f0098

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

    .line 119
    const v5, 0x7f0f0090

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableNo:Landroid/widget/Spinner;

    .line 120
    const v5, 0x7f0f0091

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedTable:Landroid/widget/Spinner;

    .line 121
    const v5, 0x7f0f0099

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDataAvailable:Landroid/widget/TextView;

    .line 122
    const v5, 0x7f0f0084

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->layoutData:Landroid/widget/LinearLayout;

    .line 123
    const v5, 0x7f0f008b

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDatas:Landroid/widget/TextView;

    .line 124
    const v5, 0x7f0f008c

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->scrollView:Landroid/widget/ScrollView;

    .line 125
    const v5, 0x7f0f0093

    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    .line 128
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "oldTableId"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableId:I

    .line 129
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "roomId"

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomId:J

    .line 130
    const-string v5, "TableId: "

    iget v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "tableName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tablename:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "tableDate"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDate:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "tableroom"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableroom:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "waiterName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->waiterName:Ljava/lang/String;

    .line 135
    new-instance v5, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    .line 137
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {v5, p0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllRoomType(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    .line 139
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseURL:Ljava/lang/String;

    .line 140
    new-instance v3, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, "prefs":Lcom/danfe/restaurantapp1/helper/Preferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseUrl:Ljava/lang/String;

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    .line 145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemsLists:Ljava/util/List;

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableLists:Ljava/util/List;

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempExtraLists:Ljava/util/List;

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->extraItemsLists:Ljava/util/List;

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempExtraExtraLists:Ljava/util/List;

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftListPerTable:Ljava/util/List;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomListArray:Ljava/util/List;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListTitle:Ljava/util/List;

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomDbList:Ljava/util/List;

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomListst:Ljava/util/List;

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableListst:Ljava/util/List;

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbList:Ljava/util/List;

    .line 161
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftTableTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 163
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftDate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tvShiftWaiter:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->waiterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v5, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v5}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .line 167
    new-instance v5, Lretrofit/RestAdapter$Builder;

    invoke-direct {v5}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BaseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->restAdapter2:Lretrofit/RestAdapter;

    .line 168
    iget v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableId:I

    iget-wide v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomId:J

    invoke-direct {p0, v5, v6, v7}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getPredefinedValue(IJ)Ljava/util/List;

    .line 170
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftCancel:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftItem:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSeat:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v11}, Landroid/support/v7/widget/RecyclerView;->setLongClickable(Z)V

    .line 221
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$3;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$3;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v11, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 230
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 232
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v11, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 233
    .local v2, "linearLayoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 236
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomListst:Ljava/util/List;

    const-string v6, "Select"

    invoke-interface {v5, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24c
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_268

    .line 238
    iget-object v6, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomListst:Ljava/util/List;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->personalRoom:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_24c

    .line 240
    :cond_268
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030050

    iget-object v7, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->roomListst:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 241
    .local v4, "tableListAdapter":Landroid/widget/ArrayAdapter;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 244
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$4;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$4;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableNo:Landroid/widget/Spinner;

    new-instance v6, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 276
    return-void
.end method

.method public onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "orderLists"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .prologue
    .line 577
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 578
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03006b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 579
    .local v8, "viewDialog":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 586
    const v9, 0x7f0f01d5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 587
    .local v7, "tvShiftItemTitle":Landroid/widget/TextView;
    const v9, 0x7f0f01d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 588
    .local v1, "layoutShift":Landroid/widget/LinearLayout;
    const v9, 0x7f0f007f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 589
    .local v5, "spShiftQty":Landroid/widget/Spinner;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 590
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 589
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->ItemId:Ljava/lang/String;

    .line 594
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isCombo:Ljava/lang/Boolean;

    .line 595
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v9

    iput-object v9, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->totalQty:Ljava/lang/Double;

    .line 596
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v6, "totalQtyNo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .local v2, "i":D
    :goto_8a
    iget-object v9, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->totalQty:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v9, v2, v10

    if-gez v9, :cond_a2

    .line 598
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v10

    goto :goto_8a

    .line 601
    :cond_a2
    const/4 v9, 0x0

    const-string v10, "Select"

    invoke-interface {v6, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 602
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f030051

    invoke-direct {v4, v9, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 603
    .local v4, "myAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 605
    new-instance v9, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;

    invoke-direct {v9, p0, v5}, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 617
    new-instance v9, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;

    invoke-direct {v9, p0, p1, p2, v0}, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;-><init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 687
    return-void
.end method

.method public refreshAdapter()V
    .registers 4

    .prologue
    .line 473
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter$OnItemClickListnerInterface;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    .line 474
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 475
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftOrderAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ShiftOrderAdapter;->notifyDataSetChanged()V

    .line 478
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

    .line 479
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift2:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 480
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedAdapter:Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ShiftedOrderAdapter;->notifyDataSetChanged()V

    .line 482
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass1 (com.danfe.restaurantapp1.ItemShiftActivity$1)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$1;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

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
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBill:I

    .line 179
    const-string v0, "selectedBill: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSeat:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$1;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedBill:I

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getDataBasedOnSelectedValue(I)V

    .line 181
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
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass10 (com.danfe.restaurantapp1.ItemShiftActivity$10)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$10;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

.field final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog;

.field final synthetic val$orderLists:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;Landroid/app/AlertDialog;)V
    .registers 5
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iput p2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$position:I

    iput-object p3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$orderLists:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$alertDialogBuilder:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$position:I

    move/from16 v20, v0

    .line 621
    .local v20, "shiftedItemIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c8

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableIdnumber:I

    if-nez v2, :cond_2f

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const-string v3, "Please select table from the list."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 682
    :goto_2e
    return-void

    .line 625
    :cond_2f
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_121

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$orderLists:Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2bb

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->totalQty:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->setQuantity(Ljava/lang/Double;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isItemAlreadyShifted:Z

    .line 630
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_df

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v2

    if-ne v3, v2, :cond_255

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isItemAlreadyShifted:Z

    .line 634
    move/from16 v20, v18

    .line 639
    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-boolean v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->isItemAlreadyShifted:Z

    if-eqz v2, :cond_259

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->setQuantity(Ljava/lang/Double;)V

    .line 655
    .end local v18    # "j":I
    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->refreshAdapter()V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 659
    const/16 v17, 0x0

    :goto_139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_2bf

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v0, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailLists:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRestrotableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    .line 662
    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRestrotableTitle()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 663
    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getBasicAmount()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 664
    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v11, v11, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 665
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

    iget-object v15, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v15, v15, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    .line 666
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 661
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_139

    .line 630
    .restart local v18    # "j":I
    :cond_255
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_96

    .line 643
    :cond_259
    new-instance v19, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;-><init>(Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V

    .line 644
    .local v19, "newOrderList":Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_297

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->temporaryList:Ljava/util/List;

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 647
    :cond_297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->setQuantity(Ljava/lang/Double;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tempShiftList:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_121

    .line 625
    .end local v18    # "j":I
    .end local v19    # "newOrderList":Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;
    :cond_2bb
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_31

    .line 671
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->val$alertDialogBuilder:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_2e

    .line 678
    .end local v17    # "i":I
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$10;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const-string v3, "Please select atleast one quantity."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2e
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass2 (com.danfe.restaurantapp1.ItemShiftActivity$2)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$2;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 192
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "spSelectedSplit":Ljava/lang/String;
    const-string v2, "Select"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "New"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 194
    :cond_1d
    const-string v2, "Split No New: "

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v2, "New"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 196
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    if-lt v2, v4, :cond_47

    .line 197
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    .line 212
    :goto_46
    return-void

    .line 200
    :cond_47
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iput v4, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    goto :goto_46

    .line 203
    :cond_4c
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    goto :goto_46

    .line 207
    :cond_52
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "selectedSplit":Ljava/lang/String;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedSplitNo:I

    .line 209
    const-string v2, "Split No: "

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$2;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
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
    .line 217
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass3 (com.danfe.restaurantapp1.ItemShiftActivity$3)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$3;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$3;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass4 (com.danfe.restaurantapp1.ItemShiftActivity$4)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$4;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$4;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

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
    .line 247
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$4;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableTitle:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "spShitedTableTitle":Ljava/lang/String;
    const-string v1, "spShitedTableTitle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$4;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->access$000(Lcom/danfe/restaurantapp1/ItemShiftActivity;Ljava/lang/String;)V

    .line 252
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
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass5 (com.danfe.restaurantapp1.ItemShiftActivity$5)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$5;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

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
    .line 264
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "tableTitle":Ljava/lang/String;
    const-string v1, "TableTitle "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$5;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftTableNo:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->access$100(Lcom/danfe/restaurantapp1/ItemShiftActivity;Ljava/lang/String;)V

    .line 268
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
    .line 273
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass6 (com.danfe.restaurantapp1.ItemShiftActivity$6)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$6;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->ShiftItem(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 327
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 328
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 313
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 314
    .local v1, "statusCode":I
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_32

    .line 317
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const-string v3, "Item Shifted to Table successfully"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->onBackPressed()V

    .line 319
    iget-object v2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->btnShiftItem:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    :goto_31
    return-void

    .line 321
    :cond_32
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

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-static {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_31
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 310
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/ItemShiftActivity$6;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass7 (com.danfe.restaurantapp1.ItemShiftActivity$7)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$7;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->getTablebasedOnRoom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 370
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 371
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->shiftedTable:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableNo:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_da

    .line 374
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 376
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableIdnumber:I

    .line 377
    const-string v3, "tableIdnumber: "

    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v4, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableIdnumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->tableDbs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getGuestNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    .line 381
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->splitNo:Ljava/util/List;

    .line 382
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->splitNo:Ljava/util/List;

    const-string v4, "Select"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    if-lt v3, v6, :cond_b4

    .line 384
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9e
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->toSplitNo:I

    if-ge v1, v3, :cond_bd

    .line 385
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->splitNo:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 389
    .end local v1    # "j":I
    :cond_b4
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->splitNo:Ljava/util/List;

    const-string v4, "New"

    invoke-interface {v3, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 394
    :cond_bd
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030050

    iget-object v5, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ItemShiftActivity;->splitNo:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 395
    .local v2, "myAdapter":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$7;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->spShiftSplitNo:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 373
    .end local v2    # "myAdapter":Landroid/widget/ArrayAdapter;
    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    .line 402
    .end local v0    # "i":I
    :cond_da
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
    .line 407
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass8 (com.danfe.restaurantapp1.ItemShiftActivity$8)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$8;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->getPredefinedValue(IJ)Ljava/util/List;
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 561
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 22
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 507
    if-eqz p1, :cond_159

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getGuestNo()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getTableId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->TableId:Ljava/lang/String;

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->FilterBillOrderItemLists(I)V

    .line 515
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_16e

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v0, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v18, v0

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 517
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

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 519
    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 520
    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 521
    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 522
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

    iget-object v9, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 523
    move/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v10, v10, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 524
    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v11, v11, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 525
    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v12, v12, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 526
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

    iget-object v13, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v13, v13, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 527
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

    iget-object v15, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v15, v15, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    .line 528
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderDetailsLists:Ljava/util/List;

    move-object/from16 v16, v0

    .line 529
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 516
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_33

    .line 533
    .end local v17    # "i":I
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDataAvailable:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->layoutData:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    :cond_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    if-lez v2, :cond_1d3

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->FilterBillOrderItemLists(I)V

    .line 545
    :cond_183
    :goto_183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f0

    .line 546
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_205

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemsLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->seatNo:I

    .line 546
    add-int/lit8 v17, v17, 0x1

    goto :goto_191

    .line 540
    .end local v17    # "i":I
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    if-nez v2, :cond_183

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    const/4 v3, 0x1

    iput v3, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->BillEntered:I

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->FilterBillOrderItemLists(I)V

    goto :goto_183

    .line 551
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->noDataAvailable:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->rvMenuShift1:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 554
    :cond_205
    const-string v2, "seatNo: "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->seatNo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/ItemShiftActivity;->orderItemDetailLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 556
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 504
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/ItemShiftActivity$8;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.ItemShiftActivity.AnonymousClass9 (com.danfe.restaurantapp1.ItemShiftActivity$9)
.class Lcom/danfe/restaurantapp1/ItemShiftActivity$9;
.super Ljava/lang/Object;
.source "ItemShiftActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/ItemShiftActivity;->onItemClicked(ILcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

.field final synthetic val$spShiftQty:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/ItemShiftActivity;Landroid/widget/Spinner;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/ItemShiftActivity;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;->val$spShiftQty:Landroid/widget/Spinner;

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
    .line 608
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;->val$spShiftQty:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    .line 609
    const-string v0, "SelectedQty: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/ItemShiftActivity$9;->this$0:Lcom/danfe/restaurantapp1/ItemShiftActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/ItemShiftActivity;->selectedQtyNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
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
    .line 615
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
