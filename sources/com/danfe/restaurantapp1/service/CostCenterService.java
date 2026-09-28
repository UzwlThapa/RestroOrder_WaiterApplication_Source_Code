package com.danfe.restaurantapp1.service;

import android.content.Context;
import android.util.Log;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.response.CostCenterModelResponse;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import java.util.ArrayList;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CostCenterService {
    private Context mContext;
    private RestAdapter restAdapter;
    private RestaurantDatabase restroDb = new RestaurantDatabase();
    private List<CostCenterModelResponse> costCenterModelResponseList = new ArrayList();

    public CostCenterService(Context context) {
        this.mContext = context;
        getCostCenterDetails();
        Log.e("costcenter", "costcenter");
    }

    private void getCostCenterDetails() {
        this.restAdapter = new RestAdapter.Builder().setEndpoint(Util.getBaseUrl(this.mContext)).build();
        RestaurantWebService.CostCenterDetails restaurantWebService = (RestaurantWebService.CostCenterDetails) this.restAdapter.create(RestaurantWebService.CostCenterDetails.class);
        restaurantWebService.getCostcenterDetails(Constants.CONTENT_TYPE, new Callback<CostCenterModelResponse>() { // from class: com.danfe.restaurantapp1.service.CostCenterService.1
            @Override // retrofit.Callback
            public void success(CostCenterModelResponse costCenterModelResponse, Response response) {
                if (costCenterModelResponse != null) {
                    try {
                        if (costCenterModelResponse.getD().getBillingTerm().size() > 0) {
                            CostCenterService.this.restroDb.insertBillingTerms(CostCenterService.this.mContext, costCenterModelResponse.getD().getBillingTerm());
                        }
                        if (costCenterModelResponse.getD().getCostCenter().size() > 0) {
                            CostCenterService.this.restroDb.insertCostCenter(CostCenterService.this.mContext, costCenterModelResponse.getD().getCostCenter());
                        }
                    } catch (Exception e) {
                        Log.e("DATABASE EXCEPTION", e.getLocalizedMessage().toString());
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
            }
        });
    }
}
