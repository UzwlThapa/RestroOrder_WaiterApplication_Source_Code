package com.danfe.restaurantapp1.service;

import android.app.IntentService;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.util.Log;
import com.danfe.restaurantapp1.helper.EditOrderRequest;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundService extends IntentService {
    private String BaseURL;
    private ArrayList<OrderDetailDb> completedList;
    JsonObject gsonObject;
    JSONArray jsonArray;
    JsonParser jsonParser;
    JSONObject obj;
    private ArrayList<OrderDetailDb> orderItemList;
    private ArrayList<OrderDetailDb> orderedList;
    private ArrayList<OrderDetailDb> progressList;
    private RestAdapter restAdapter;
    Integer tableId;

    public BackgroundService(String name) {
        super("Background Service");
        this.BaseURL = "";
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(@Nullable Intent intent) {
        new EditOrderRequest();
        this.BaseURL = Util.getBaseUrl(getApplicationContext());
        this.tableId = Integer.valueOf(intent.getIntExtra("tableId", 0));
        this.obj = new JSONObject();
        this.jsonArray = new JSONArray();
        try {
            this.obj.put("TableId", this.tableId);
            this.jsonParser = new JsonParser();
            this.gsonObject = (JsonObject) this.jsonParser.parse(this.obj.toString());
            Log.e("json", this.gsonObject.toString());
        } catch (JSONException je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        RestaurantWebService.getUpdatedOrder getEdit = (RestaurantWebService.getUpdatedOrder) this.restAdapter.create(RestaurantWebService.getUpdatedOrder.class);
        getEdit.getEdit(this.gsonObject, new Callback<com.danfe.restaurantapp1.response.EditOrderRequest>() { // from class: com.danfe.restaurantapp1.service.BackgroundService.1
            @Override // retrofit.Callback
            public void success(com.danfe.restaurantapp1.response.EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    Log.e("order", "success");
                    List<EditOrderRequest.OrderDetailsList> orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    ArrayList<OrderDetailDb> orderItems = new ArrayList<>();
                    for (int i = 0; i < orderDetailsLists.size(); i++) {
                        Log.e("order", String.valueOf(editOrderRequest.getOrderMasterID()) + orderDetailsLists.get(i).getROI_ItemName() + String.valueOf(orderDetailsLists.get(i).getOrderDetailsID()));
                        orderItems.add(new OrderDetailDb(Long.valueOf(orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), orderDetailsLists.get(i).getROI_ItemId(), orderDetailsLists.get(i).getROI_ItemName(), orderDetailsLists.get(i).getQuantity(), Double.valueOf(orderDetailsLists.get(i).getRate().doubleValue()), orderDetailsLists.get(i).getIsCancelled(), orderDetailsLists.get(i).getSeatNo(), orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(orderDetailsLists.get(i).getExtraCharge()))), orderDetailsLists.get(i).getStatus(), 0, orderDetailsLists.get(i).getCombo(), orderDetailsLists.get(i).getCostCenterId()));
                    }
                    for (int i2 = 0; i2 < orderItems.size(); i2++) {
                        if (orderItems.get(i2).getStatus().equalsIgnoreCase("Ordered")) {
                            BackgroundService.this.orderedList.add(orderItems.get(i2));
                            BackgroundService.this.orderItemList.add(orderItems.get(i2));
                        } else if (orderItems.get(i2).getStatus().equalsIgnoreCase("InProgress")) {
                            BackgroundService.this.progressList.add(orderItems.get(i2));
                        } else if (orderItems.get(i2).getStatus().equalsIgnoreCase("Complete")) {
                            BackgroundService.this.completedList.add(orderItems.get(i2));
                        }
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
            }
        });
    }
}
