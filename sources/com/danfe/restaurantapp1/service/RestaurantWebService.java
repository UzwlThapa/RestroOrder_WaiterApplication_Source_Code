package com.danfe.restaurantapp1.service;

import com.danfe.restaurantapp1.response.CostCenterModelResponse;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import com.danfe.restaurantapp1.response.FullRestroRoomData;
import com.danfe.restaurantapp1.response.KitchenOrderApiData;
import com.danfe.restaurantapp1.response.LoginPinResponse;
import com.danfe.restaurantapp1.response.LoginResponse;
import com.danfe.restaurantapp1.response.MenuItemGroup;
import com.danfe.restaurantapp1.response.RoomWithStatus;
import com.danfe.restaurantapp1.response.TableWithStatus;
import com.danfe.restaurantapp1.response.WaiterListResponse;
import com.google.gson.JsonObject;
import java.util.List;
import retrofit.Callback;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.GET;
import retrofit.http.Header;
import retrofit.http.POST;
import retrofit.http.Query;

/* JADX INFO: loaded from: classes.dex */
public class RestaurantWebService {

    public interface CallWaiter {
        @GET("/")
        void callWaiter(@Query("Department") String str, @Query("ItemName") String str2, @Query("TableName") String str3, Callback<JsonObject> callback);
    }

    public interface CancelOrder {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/CancelOrderIntoDataBase")
        @FormUrlEncoded
        void cancelOrder(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface CheckPinDetails {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/CheckPin")
        @FormUrlEncoded
        void checkPinDetails(@Field("pin") String str, Callback<JsonObject> callback);
    }

    public interface CostCenterDetails {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/getActiveBillTerm")
        void getCostcenterDetails(@Header("Content-Type") String str, Callback<CostCenterModelResponse> callback);
    }

    public interface GetEdit {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/UpdateOrder")
        @FormUrlEncoded
        void getEdit(@Field("json") JsonObject jsonObject, Callback<EditOrderRequest> callback);
    }

    public interface GetOrderRequest {
        @GET("/RestroWebservices/RestroWebService.asmx/KitchenOrderApi")
        void getOrderDetailList(Callback<KitchenOrderApiData> callback);
    }

    public interface ItemGroupWebService {
        @GET("/ROI_Item/RoiItem.asmx/GetAllUnitforItem")
        void getItemGroups(Callback<MenuItemGroup> callback);
    }

    public interface LoginPin {
        @POST("/ROUSER/ROLoginWebService.asmx/LoginPin")
        @FormUrlEncoded
        void LoginPin(@Field("json") JsonObject jsonObject, Callback<LoginPinResponse> callback);
    }

    public interface LoginRequest {
        @POST("/ROUSER/ROLoginWebService.asmx/CheckLogin")
        @FormUrlEncoded
        void loginRequest(@Field("json") JsonObject jsonObject, Callback<LoginResponse> callback);
    }

    public interface LogoutRequest {
        @POST("/ROUSER/ROLoginWebService.asmx/LoggedOut")
        @FormUrlEncoded
        void logoutRequest(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface MergeCancelRequest {
        @POST("/RORestroTable/ROTableWebService.asmx/UnMergeTable")
        @FormUrlEncoded
        void mergeCancel(@Field("tableId") int i, Callback<JsonObject> callback);
    }

    public interface PostCancelledItems {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/SaveCanceledItems")
        @FormUrlEncoded
        void postcancelled(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface PostOrder {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/PurchaseOrder")
        @FormUrlEncoded
        void postOrder(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface RoomByRoomTypeIdWebService {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/RoomOrderByRoomType")
        @FormUrlEncoded
        void fetchRoomByRoomTypeId(@Field("json") JsonObject jsonObject, Callback<RoomWithStatus> callback);
    }

    public interface SendOrderStatus {
        @POST("/RestroWebservices/RestroWebService.asmx/KitchenOrderApiForEvents")
        @FormUrlEncoded
        void sendOrderStatus(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface SendPaymentDetails {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/APIforPay")
        @FormUrlEncoded
        void sendPaydetails(@Field("tableId") int i, Callback<JsonObject> callback);
    }

    public interface ShiftRequest {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/TableTransfer")
        @FormUrlEncoded
        void shift(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface TableByRoomIdWebService {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/TableOrderByRoom")
        @FormUrlEncoded
        void fetchTableByRoomId(@Field("json") JsonObject jsonObject, Callback<List<TableWithStatus>> callback);
    }

    public interface TableWebService {
        @GET("/RestroWebservices/RestroWebService.asmx/FullRestroRoomData")
        void fetchTable(Callback<FullRestroRoomData> callback);
    }

    public interface WaiterListsRequest {
        @GET("/ROUSER/ROLoginWebService.asmx/getWaiterList")
        void getWaitersLists(Callback<List<WaiterListResponse>> callback);
    }

    public interface checkOrder {
        @POST("/ropurchaseorder/ropurchaseorderwebservice.asmx/checkOrder")
        @FormUrlEncoded
        void checkOrder(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface getUpdatedOrder {
        @POST("/ROPurchaseOrder/ROPurchaseOrderWebService.asmx/UpdateOrder")
        @FormUrlEncoded
        EditOrderRequest getEdit(@Field("json") JsonObject jsonObject, Callback<EditOrderRequest> callback);
    }

    public interface sendTableList {
        @POST("/RestroWebservices/RestroWebService.asmx/StoreMergeTable")
        @FormUrlEncoded
        void postTableList(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface setIsOutOfStock {
        @POST("/ROI_Item/RoiItem.asmx/UpdateItemStockStatus")
        @FormUrlEncoded
        void postisOutOfStock(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }

    public interface shiftItemsToTables {
        @POST("/RestroWebService.asmx/shiftItems")
        @FormUrlEncoded
        void postShiftItemsToTables(@Field("json") JsonObject jsonObject, Callback<JsonObject> callback);
    }
}
