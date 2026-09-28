###### Class com.danfe.restaurantapp1.service.CheckOrderStatus (com.danfe.restaurantapp1.service.CheckOrderStatus)
.class public Lcom/danfe/restaurantapp1/service/CheckOrderStatus;
.super Ljava/lang/Object;
.source "CheckOrderStatus.java"


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field private jsonParser:Lcom/google/gson/JsonParser;

.field private mContext:Landroid/content/Context;

.field mFromOrderMasterId:I

.field mOrderType:Ljava/lang/String;

.field mSelectedBill:I

.field mTableId:I

.field private object:Lorg/json/JSONObject;

.field restAdapter:Lretrofit/RestAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderType"    # Ljava/lang/String;
    .param p3, "fromOrderMasterId"    # I
    .param p4, "tableId"    # I
    .param p5, "selectedBill"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v2, ""

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->BaseURL:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->BaseURL:Ljava/lang/String;

    .line 40
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->BaseURL:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->restAdapter:Lretrofit/RestAdapter;

    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mOrderType:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mFromOrderMasterId:I

    .line 46
    iput p4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mTableId:I

    .line 47
    iput p5, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mSelectedBill:I

    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->object:Lorg/json/JSONObject;

    .line 50
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->jsonParser:Lcom/google/gson/JsonParser;

    .line 51
    new-instance v2, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .line 54
    :try_start_3d
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->object:Lorg/json/JSONObject;

    const-string v3, "OrderMasterId"

    iget v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mFromOrderMasterId:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->object:Lorg/json/JSONObject;

    const-string v3, "SeatNo"

    iget v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mSelectedBill:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->object:Lorg/json/JSONObject;

    const-string v3, "TableId"

    iget v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mTableId:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_58} :catch_7d

    .line 60
    :goto_58
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->object:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->gsonObject:Lcom/google/gson/JsonObject;

    .line 62
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->restAdapter:Lretrofit/RestAdapter;

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;

    .line 63
    .local v0, "checkOrderApi":Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;-><init>(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)V

    invoke-interface {v0, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;->checkOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 98
    return-void

    .line 57
    .end local v0    # "checkOrderApi":Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;
    :catch_7d
    move-exception v1

    .line 58
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Lcom/danfe/restaurantapp1/helper/CheckPinCode;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.service.CheckOrderStatus.AnonymousClass1 (com.danfe.restaurantapp1.service.CheckOrderStatus$1)
.class Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;
.super Ljava/lang/Object;
.source "CheckOrderStatus.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/service/CheckOrderStatus;-><init>(Landroid/content/Context;Ljava/lang/String;III)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 95
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Status"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 10
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 66
    const/4 v1, 0x0

    .local v1, "errorMessage":Lcom/google/gson/JsonPrimitive;
    const/4 v2, 0x0

    .line 67
    .local v2, "errorNumber":Lcom/google/gson/JsonPrimitive;
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 68
    .local v0, "data":Lcom/google/gson/JsonArray;
    if-eqz v0, :cond_30

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 70
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "ErrorMessage"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "ErrorNumber"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 74
    .end local v3    # "i":I
    :cond_30
    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_b0

    .line 75
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mOrderType:Ljava/lang/String;

    const-string v5, "shiftTable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 76
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$100(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "shiftTable"

    invoke-virtual {v4, v5, v6}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    :cond_55
    :goto_55
    return-void

    .line 77
    :cond_56
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mOrderType:Ljava/lang/String;

    const-string v5, "shiftItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 78
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$100(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "shiftItem"

    invoke-virtual {v4, v5, v6}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_55

    .line 80
    :cond_74
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mOrderType:Ljava/lang/String;

    const-string v5, "cancelOrder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 81
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$100(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "cancelOrder"

    invoke-virtual {v4, v5, v6}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_55

    .line 82
    :cond_92
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->mOrderType:Ljava/lang/String;

    const-string v5, "sendOrder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 83
    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$100(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "sendOrder"

    invoke-virtual {v4, v5, v6}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_55

    .line 87
    :cond_b0
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Status"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->this$0:Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    invoke-static {v6}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;->access$000(Lcom/danfe/restaurantapp1/service/CheckOrderStatus;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_55
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 63
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method
