package com.danfe.restaurantapp1.helper;

import android.app.AlertDialog;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import com.danfe.restaurantapp1.Interface.SuccessInterface;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.adapter.ItemCancelledAdapter;
import com.danfe.restaurantapp1.gcm.Utility;
import com.danfe.restaurantapp1.response.ItemCancelledListModel;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CancelledOrderDialog {
    final AlertDialog alertDialog;
    Button btCancel;
    Button btDone;
    EditText finalReason;
    ItemCancelledAdapter itemCancelledAdapter;
    SuccessInterface successInterface;
    String status = "";
    SuccessInterface failedInterface = this.failedInterface;
    SuccessInterface failedInterface = this.failedInterface;

    public CancelledOrderDialog(final Context context, final List<ItemCancelledListModel> changedInfo, SuccessInterface successInterface) {
        this.successInterface = successInterface;
        this.itemCancelledAdapter = new ItemCancelledAdapter(changedInfo, context);
        View DialogView = LayoutInflater.from(context).inflate(R.layout.layout_cancelled_order, (ViewGroup) null);
        final RecyclerView recyclerView = (RecyclerView) DialogView.findViewById(R.id.rvsendOrderdetails);
        this.finalReason = (EditText) DialogView.findViewById(R.id.etFinalReason);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.itemCancelledAdapter);
        this.alertDialog = new AlertDialog.Builder(context).create();
        this.alertDialog.setView(DialogView);
        this.alertDialog.setCancelable(false);
        Button btCancel = (Button) DialogView.findViewById(R.id.btnCancel);
        this.btDone = (Button) DialogView.findViewById(R.id.btnDone);
        this.btDone.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.CancelledOrderDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CancelledOrderDialog.this.sendCancelledList(recyclerView, CancelledOrderDialog.this.itemCancelledAdapter, changedInfo, context);
                CancelledOrderDialog.this.btDone.setBackgroundResource(R.drawable.bg_button);
                CancelledOrderDialog.this.btDone.setTextColor(-1);
                CancelledOrderDialog.this.btDone.setEnabled(false);
            }
        });
        btCancel.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.CancelledOrderDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CancelledOrderDialog.this.alertDialog.dismiss();
                Util.showError("No changes in order made!", "Cancel Changes", context);
            }
        });
        this.alertDialog.show();
        int width = (int) context.getResources().getDimension(R.dimen.cancelledOrder_dialog_width);
        int height = (int) context.getResources().getDimension(R.dimen.cancelledOrder_dialog_height);
        this.alertDialog.getWindow().setLayout(width, height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCancelledList(RecyclerView recyclerView, ItemCancelledAdapter itemCancelledAdapter, List<ItemCancelledListModel> changedInfo, Context context) {
        String BaseURL = Util.getBaseUrl(context);
        String finalreason = this.finalReason.getText().toString().trim();
        if (finalreason.matches("") || finalreason.length() <= 2) {
            Utility.validatReason(context, this.finalReason);
        } else {
            this.successInterface.onSuccess();
        }
        for (int i = 0; i < itemCancelledAdapter.getItemCount(); i++) {
            ItemCancelledAdapter.SendOrderDetailsViewHolder viewHolder = (ItemCancelledAdapter.SendOrderDetailsViewHolder) recyclerView.findViewHolderForAdapterPosition(i);
            EditText editText = viewHolder.etReason;
            Spinner spinner = viewHolder.spResponsible;
            changedInfo.get(i).setResponsible(spinner.getSelectedItem().toString());
            if (editText.getText().toString().equals("")) {
                changedInfo.get(i).setReason(finalreason);
            } else {
                changedInfo.get(i).setReason(editText.getText().toString());
            }
        }
        JSONArray jsonArray = new JSONArray();
        JSONObject obj = new JSONObject();
        JsonObject gsonObject = new JsonObject();
        for (int j = 0; j < changedInfo.size(); j++) {
            try {
                jsonArray.put(changedInfo.get(j).toJSON());
            } catch (Exception e) {
                Log.e("cancelledOrderItems Exc", e.toString());
            }
        }
        obj.put("cancelledOrderItems", jsonArray);
        JsonParser jsonParser = new JsonParser();
        gsonObject = (JsonObject) jsonParser.parse(obj.toString());
        Log.e("cancelledOrderItems", gsonObject.toString());
        RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(BaseURL).build();
        RestaurantWebService.PostCancelledItems postCancelledItems = (RestaurantWebService.PostCancelledItems) restAdapter.create(RestaurantWebService.PostCancelledItems.class);
        postCancelledItems.postcancelled(gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.helper.CancelledOrderDialog.3
            @Override // retrofit.Callback
            public void success(JsonObject jsonObject, Response response) {
                String status = response.getReason();
                Log.e("Response got:", status);
                if (status.equalsIgnoreCase("OK")) {
                    Log.e("Msg", status.toString());
                    CancelledOrderDialog.this.btDone.setEnabled(true);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                Log.e("Msg", "Faileddddd" + error.toString());
                CancelledOrderDialog.this.btDone.setEnabled(true);
            }
        });
    }
}
