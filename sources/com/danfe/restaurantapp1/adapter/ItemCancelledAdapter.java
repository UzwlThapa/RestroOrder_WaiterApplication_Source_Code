package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.response.ItemCancelledListModel;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ItemCancelledAdapter extends RecyclerView.Adapter<SendOrderDetailsViewHolder> {
    public String BASE_URL = "";
    Context context;
    JsonObject gsonObject;
    private List<ItemCancelledListModel> itemCancelledListModel;
    JSONArray jsonArray;
    JSONObject jsonObject;
    JsonParser jsonParser;
    View view;

    public ItemCancelledAdapter(List<ItemCancelledListModel> itemCancelledListModel, Context context) {
        this.itemCancelledListModel = itemCancelledListModel;
        this.context = context;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public SendOrderDetailsViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        this.view = LayoutInflater.from(this.context).inflate(R.layout.item_cancelled_order, parent, false);
        SendOrderDetailsViewHolder send_order_details_adapter_layout = new SendOrderDetailsViewHolder(this.view);
        return send_order_details_adapter_layout;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(SendOrderDetailsViewHolder holder, int position) {
        holder.tvItemName.setText(this.itemCancelledListModel.get(position).getItem().toString());
        holder.tvQuantity.setText(this.itemCancelledListModel.get(position).getQuantity().toString());
        holder.tvOrderedBy.setText(this.itemCancelledListModel.get(position).getOrderBy().toString());
        holder.etReason.setText(this.itemCancelledListModel.get(position).getReason().toString());
        holder.tvSeatNo.setText("Bill no. : " + this.itemCancelledListModel.get(position).getSeatNo().toString());
        holder.etReason.requestFocusFromTouch();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.itemCancelledListModel.size();
    }

    public class SendOrderDetailsViewHolder extends RecyclerView.ViewHolder {
        public EditText etFinalReason;
        public EditText etReason;
        public Spinner spResponsible;
        public TextView tvItemName;
        public TextView tvOrderedBy;
        public TextView tvQuantity;
        public TextView tvResponsible;
        public TextView tvSeatNo;

        public SendOrderDetailsViewHolder(View view) {
            super(view);
            this.tvItemName = (TextView) view.findViewById(R.id.tvItemName);
            this.tvQuantity = (TextView) view.findViewById(R.id.tvQuantity);
            this.tvOrderedBy = (TextView) view.findViewById(R.id.tvOrderedBy);
            this.tvResponsible = (TextView) view.findViewById(R.id.tvResponsible);
            this.etReason = (EditText) view.findViewById(R.id.etTextBox);
            this.spResponsible = (Spinner) view.findViewById(R.id.spResponsible);
            this.tvSeatNo = (TextView) view.findViewById(R.id.tvSeatNo);
            this.etFinalReason = (EditText) view.findViewById(R.id.etFinalReason);
        }
    }
}
