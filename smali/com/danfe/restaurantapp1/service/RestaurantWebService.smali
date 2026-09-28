###### Class com.danfe.restaurantapp1.service.RestaurantWebService (com.danfe.restaurantapp1.service.RestaurantWebService)
.class public Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;,
        Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.CallWaiter (com.danfe.restaurantapp1.service.RestaurantWebService$CallWaiter)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallWaiter"
.end annotation


# virtual methods
.method public abstract callWaiter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "Department"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "ItemName"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "TableName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.CancelOrder (com.danfe.restaurantapp1.service.RestaurantWebService$CancelOrder)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CancelOrder"
.end annotation


# virtual methods
.method public abstract cancelOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/CancelOrderIntoDataBase"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.CheckPinDetails (com.danfe.restaurantapp1.service.RestaurantWebService$CheckPinDetails)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckPinDetails"
.end annotation


# virtual methods
.method public abstract checkPinDetails(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "pin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/CheckPin"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.CostCenterDetails (com.danfe.restaurantapp1.service.RestaurantWebService$CostCenterDetails)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CostCenterDetails"
.end annotation


# virtual methods
.method public abstract getCostcenterDetails(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Content-Type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/getActiveBillTerm"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.GetEdit (com.danfe.restaurantapp1.service.RestaurantWebService$GetEdit)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetEdit"
.end annotation


# virtual methods
.method public abstract getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/UpdateOrder"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.GetOrderRequest (com.danfe.restaurantapp1.service.RestaurantWebService$GetOrderRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetOrderRequest"
.end annotation


# virtual methods
.method public abstract getOrderDetailList(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/RestroWebservices/RestroWebService.asmx/KitchenOrderApi"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.ItemGroupWebService (com.danfe.restaurantapp1.service.RestaurantWebService$ItemGroupWebService)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemGroupWebService"
.end annotation


# virtual methods
.method public abstract getItemGroups(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/ROI_Item/RoiItem.asmx/GetAllUnitforItem"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.LoginPin (com.danfe.restaurantapp1.service.RestaurantWebService$LoginPin)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginPin"
.end annotation


# virtual methods
.method public abstract LoginPin(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/LoginPinResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROUSER/ROLoginWebService.asmx/LoginPin"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.LoginRequest (com.danfe.restaurantapp1.service.RestaurantWebService$LoginRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginRequest"
.end annotation


# virtual methods
.method public abstract loginRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROUSER/ROLoginWebService.asmx/CheckLogin"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.LogoutRequest (com.danfe.restaurantapp1.service.RestaurantWebService$LogoutRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogoutRequest"
.end annotation


# virtual methods
.method public abstract logoutRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROUSER/ROLoginWebService.asmx/LoggedOut"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.MergeCancelRequest (com.danfe.restaurantapp1.service.RestaurantWebService$MergeCancelRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MergeCancelRequest"
.end annotation


# virtual methods
.method public abstract mergeCancel(ILretrofit/Callback;)V
    .param p1    # I
        .annotation runtime Lretrofit/http/Field;
            value = "tableId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/RORestroTable/ROTableWebService.asmx/UnMergeTable"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.PostCancelledItems (com.danfe.restaurantapp1.service.RestaurantWebService$PostCancelledItems)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostCancelledItems"
.end annotation


# virtual methods
.method public abstract postcancelled(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/SaveCanceledItems"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.PostOrder (com.danfe.restaurantapp1.service.RestaurantWebService$PostOrder)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostOrder"
.end annotation


# virtual methods
.method public abstract postOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/PurchaseOrder"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.RoomByRoomTypeIdWebService (com.danfe.restaurantapp1.service.RestaurantWebService$RoomByRoomTypeIdWebService)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RoomByRoomTypeIdWebService"
.end annotation


# virtual methods
.method public abstract fetchRoomByRoomTypeId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/RoomOrderByRoomType"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.SendOrderStatus (com.danfe.restaurantapp1.service.RestaurantWebService$SendOrderStatus)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendOrderStatus"
.end annotation


# virtual methods
.method public abstract sendOrderStatus(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/RestroWebservices/RestroWebService.asmx/KitchenOrderApiForEvents"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.SendPaymentDetails (com.danfe.restaurantapp1.service.RestaurantWebService$SendPaymentDetails)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendPaymentDetails"
.end annotation


# virtual methods
.method public abstract sendPaydetails(ILretrofit/Callback;)V
    .param p1    # I
        .annotation runtime Lretrofit/http/Field;
            value = "tableId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/APIforPay"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.ShiftRequest (com.danfe.restaurantapp1.service.RestaurantWebService$ShiftRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$ShiftRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShiftRequest"
.end annotation


# virtual methods
.method public abstract shift(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/TableTransfer"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.TableByRoomIdWebService (com.danfe.restaurantapp1.service.RestaurantWebService$TableByRoomIdWebService)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TableByRoomIdWebService"
.end annotation


# virtual methods
.method public abstract fetchTableByRoomId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/TableWithStatus;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/TableOrderByRoom"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.TableWebService (com.danfe.restaurantapp1.service.RestaurantWebService$TableWebService)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TableWebService"
.end annotation


# virtual methods
.method public abstract fetchTable(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/RestroWebservices/RestroWebService.asmx/FullRestroRoomData"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.WaiterListsRequest (com.danfe.restaurantapp1.service.RestaurantWebService$WaiterListsRequest)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WaiterListsRequest"
.end annotation


# virtual methods
.method public abstract getWaitersLists(Lretrofit/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/WaiterListResponse;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/ROUSER/ROLoginWebService.asmx/getWaiterList"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.checkOrder (com.danfe.restaurantapp1.service.RestaurantWebService$checkOrder)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$checkOrder;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "checkOrder"
.end annotation


# virtual methods
.method public abstract checkOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ropurchaseorder/ropurchaseorderwebservice.asmx/checkOrder"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.getUpdatedOrder (com.danfe.restaurantapp1.service.RestaurantWebService$getUpdatedOrder)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$getUpdatedOrder;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getUpdatedOrder"
.end annotation


# virtual methods
.method public abstract getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest;",
            ">;)",
            "Lcom/danfe/restaurantapp1/response/EditOrderRequest;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/UpdateOrder"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.sendTableList (com.danfe.restaurantapp1.service.RestaurantWebService$sendTableList)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "sendTableList"
.end annotation


# virtual methods
.method public abstract postTableList(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/RestroWebservices/RestroWebService.asmx/StoreMergeTable"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.setIsOutOfStock (com.danfe.restaurantapp1.service.RestaurantWebService$setIsOutOfStock)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "setIsOutOfStock"
.end annotation


# virtual methods
.method public abstract postisOutOfStock(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/ROI_Item/RoiItem.asmx/UpdateItemStockStatus"
    .end annotation
.end method

###### Class com.danfe.restaurantapp1.service.RestaurantWebService.shiftItemsToTables (com.danfe.restaurantapp1.service.RestaurantWebService$shiftItemsToTables)
.class public interface abstract Lcom/danfe/restaurantapp1/service/RestaurantWebService$shiftItemsToTables;
.super Ljava/lang/Object;
.source "RestaurantWebService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/service/RestaurantWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "shiftItemsToTables"
.end annotation


# virtual methods
.method public abstract postShiftItemsToTables(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation runtime Lretrofit/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lretrofit/Callback",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/RestroWebService.asmx/shiftItems"
    .end annotation
.end method
