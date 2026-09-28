package com.danfe.restaurantapp1.service;

import android.content.Context;
import com.danfe.restaurantapp1.helper.CheckPinCode;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CheckOrderStatus {
    private String BaseURL;
    private JsonObject gsonObject;
    private Context mContext;
    int mFromOrderMasterId;
    String mOrderType;
    int mSelectedBill;
    int mTableId;
    RestAdapter restAdapter;
    private JSONObject object = new JSONObject();
    private JsonParser jsonParser = new JsonParser();
    private CheckPinCode checkPinCode = new CheckPinCode();

    public CheckOrderStatus(Context context, String orderType, int fromOrderMasterId, int tableId, int selectedBill) {
        this.BaseURL = "";
        this.BaseURL = Util.getBaseUrl(context);
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.mContext = context;
        this.mOrderType = orderType;
        this.mFromOrderMasterId = fromOrderMasterId;
        this.mTableId = tableId;
        this.mSelectedBill = selectedBill;
        try {
            this.object.put("OrderMasterId", this.mFromOrderMasterId);
            this.object.put("SeatNo", this.mSelectedBill);
            this.object.put("TableId", this.mTableId);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.gsonObject = (JsonObject) this.jsonParser.parse(this.object.toString());
        RestaurantWebService.checkOrder checkOrderApi = (RestaurantWebService.checkOrder) this.restAdapter.create(RestaurantWebService.checkOrder.class);
        checkOrderApi.checkOrder(this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.service.CheckOrderStatus.1
            @Override // retrofit.Callback
            public void success(JsonObject jsonObject, Response response) {
                JsonPrimitive errorMessage = null;
                JsonPrimitive errorNumber = null;
                JsonArray data = jsonObject.getAsJsonArray("data");
                if (data != null) {
                    for (int i = 0; i < data.size(); i++) {
                        errorMessage = data.get(i).getAsJsonObject().getAsJsonPrimitive("ErrorMessage");
                        errorNumber = data.get(i).getAsJsonObject().getAsJsonPrimitive("ErrorNumber");
                    }
                }
                if (errorNumber.getAsInt() != 200) {
                    Util.showError(errorMessage.toString(), "Status", CheckOrderStatus.this.mContext);
                    return;
                }
                if (CheckOrderStatus.this.mOrderType.matches(Constants.SHIFT_TABLE)) {
                    CheckOrderStatus.this.checkPinCode.checkPinCodemethod(CheckOrderStatus.this.mContext, Constants.SHIFT_TABLE);
                    return;
                }
                if (CheckOrderStatus.this.mOrderType.matches(Constants.SHIFT_ITEM)) {
                    CheckOrderStatus.this.checkPinCode.checkPinCodemethod(CheckOrderStatus.this.mContext, Constants.SHIFT_ITEM);
                } else if (CheckOrderStatus.this.mOrderType.matches("cancelOrder")) {
                    CheckOrderStatus.this.checkPinCode.checkPinCodemethod(CheckOrderStatus.this.mContext, "cancelOrder");
                } else if (CheckOrderStatus.this.mOrderType.matches("sendOrder")) {
                    CheckOrderStatus.this.checkPinCode.checkPinCodemethod(CheckOrderStatus.this.mContext, "sendOrder");
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                Util.showError(error.toString(), "Status", CheckOrderStatus.this.mContext);
            }
        });
    }
}
