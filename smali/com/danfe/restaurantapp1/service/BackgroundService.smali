###### Class com.danfe.restaurantapp1.service.BackgroundService (com.danfe.restaurantapp1.service.BackgroundService)
.class public Lcom/danfe/restaurantapp1/service/BackgroundService;
.super Landroid/app/IntentService;
.source "BackgroundService.java"


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private completedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field gsonObject:Lcom/google/gson/JsonObject;

.field jsonArray:Lorg/json/JSONArray;

.field jsonParser:Lcom/google/gson/JsonParser;

.field obj:Lorg/json/JSONObject;

.field private orderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private orderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private progressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private restAdapter:Lretrofit/RestAdapter;

.field tableId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "Background Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->BaseURL:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->orderedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->orderItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->progressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/BackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->completedList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    new-instance v0, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/helper/EditOrderRequest;-><init>()V

    .line 48
    .local v0, "editOrderRequest":Lcom/danfe/restaurantapp1/helper/EditOrderRequest;
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->BaseURL:Ljava/lang/String;

    .line 50
    const-string v3, "tableId"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->tableId:Ljava/lang/Integer;

    .line 51
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->obj:Lorg/json/JSONObject;

    .line 52
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->jsonArray:Lorg/json/JSONArray;

    .line 54
    :try_start_2a
    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->obj:Lorg/json/JSONObject;

    const-string v4, "TableId"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->tableId:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->jsonParser:Lcom/google/gson/JsonParser;

    .line 58
    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->obj:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->gsonObject:Lcom/google/gson/JsonObject;

    .line 60
    const-string v3, "json"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_55} :catch_7b

    .line 64
    :goto_55
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->BaseURL:Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->restAdapter:Lretrofit/RestAdapter;

    .line 67
    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;

    .line 68
    .local v1, "getEdit":Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/BackgroundService;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v4, Lcom/danfe/restaurantapp1/service/BackgroundService$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/service/BackgroundService$1;-><init>(Lcom/danfe/restaurantapp1/service/BackgroundService;)V

    invoke-interface {v1, v3, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    .line 122
    return-void

    .line 61
    .end local v1    # "getEdit":Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;
    :catch_7b
    move-exception v2

    .line 62
    .local v2, "je":Lorg/json/JSONException;
    const-string v3, "json exception"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

###### Class com.danfe.restaurantapp1.service.BackgroundService.AnonymousClass1 (com.danfe.restaurantapp1.service.BackgroundService$1)
.class Lcom/danfe/restaurantapp1/service/BackgroundService$1;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/service/BackgroundService;->onHandleIntent(Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/service/BackgroundService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/service/BackgroundService;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 119
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 23
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 71
    if-eqz p1, :cond_1d7

    .line 72
    const-string v2, "order"

    const-string v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v18

    .line 75
    .local v18, "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v19, "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_14
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_13a

    .line 77
    const-string v3, "order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .line 82
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    .line 84
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    .line 85
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v6

    .line 86
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    .line 87
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 88
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    .line 89
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    .line 90
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    .line 91
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 92
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getStatus()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 93
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    .line 94
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 81
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_14

    .line 99
    :cond_13a
    const/16 v17, 0x0

    :goto_13c
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1d7

    .line 100
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ordered"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/BackgroundService;->access$000(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/BackgroundService;->access$100(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_180
    :goto_180
    add-int/lit8 v17, v17, 0x1

    goto :goto_13c

    .line 103
    :cond_183
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/BackgroundService;->access$200(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_180

    .line 107
    :cond_1ad
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Complete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->this$0:Lcom/danfe/restaurantapp1/service/BackgroundService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/BackgroundService;->access$300(Lcom/danfe/restaurantapp1/service/BackgroundService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_180

    .line 114
    .end local v17    # "i":I
    .end local v18    # "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    .end local v19    # "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    :cond_1d7
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 68
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/service/BackgroundService$1;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method
