package com.danfe.restaurantapp1.service;

import android.content.Context;
import android.util.Log;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.response.FullRestroRoomData;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RequestInterceptor;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class TableService {
    private static Context context;
    private static RestaurantWebService.TableWebService mWebService;
    private String BaseURL;
    private JsonObject gsonObject;
    private JsonParser jsonParser;
    private RestaurantDatabase restaurantDb;
    private List<FullRestroRoomData.Roomlist> roomlists;
    private List<FullRestroRoomData.Room> rooms;
    private List<FullRestroRoomData.TableList> tableLists;

    public TableService(final Context context2) {
        context = context2;
        this.rooms = new ArrayList();
        this.roomlists = new ArrayList();
        this.restaurantDb = new RestaurantDatabase();
        this.jsonParser = new JsonParser();
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setDateFormat("M/d/yy hh:mm a");
        gsonBuilder.create();
        RequestInterceptor requestInterceptor = new RequestInterceptor() { // from class: com.danfe.restaurantapp1.service.TableService.1
            @Override // retrofit.RequestInterceptor
            public void intercept(RequestInterceptor.RequestFacade request) {
                request.addHeader("Accept", "application/json");
            }
        };
        this.BaseURL = Util.getBaseUrl(context2);
        RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).setRequestInterceptor(requestInterceptor).setLogLevel(RestAdapter.LogLevel.FULL).build();
        mWebService = (RestaurantWebService.TableWebService) restAdapter.create(RestaurantWebService.TableWebService.class);
        mWebService.fetchTable(new Callback<FullRestroRoomData>() { // from class: com.danfe.restaurantapp1.service.TableService.2
            @Override // retrofit.Callback
            public void success(FullRestroRoomData fullRestroRoomData, Response response) {
                int statusCode = fullRestroRoomData.getStatusCode().intValue();
                String message = fullRestroRoomData.getMessage();
                if (statusCode == 200) {
                    TableService.this.rooms = fullRestroRoomData.getData();
                    TableService.this.restaurantDb.insertTable(context2, TableService.this.rooms);
                } else if (statusCode == 100) {
                    Util.showErrorMessage("Error: " + message, context2);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                Log.e("table", String.valueOf(retrofitError) + String.valueOf(TableService.mWebService));
            }
        });
    }
}
