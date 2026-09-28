package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShowBillAdapter extends RecyclerView.Adapter<ShowBillHolder> {
    Context context;
    List<OrderDetailDb> orderDetailDbLists;
    List<List<orderExtraItem>> orderExtraItemList;
    List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems;
    ShowBillHolder showBillHolder;
    String status;
    List<EditOrderRequest.OrderDetailsList> temporaryList;

    public ShowBillAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList> temporaryList) {
        this.status = "";
        this.context = applicationContext;
        this.temporaryList = temporaryList;
    }

    public ShowBillAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems, String status) {
        this.status = "";
        this.context = applicationContext;
        this.orderExtraItems = orderExtraItems;
        this.status = status;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return position;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ShowBillHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.show_bill_adapter, parent, false);
        this.showBillHolder = new ShowBillHolder(itemView);
        return this.showBillHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ShowBillHolder holder, int position) {
        Double.valueOf(0.0d);
        if (this.status.equalsIgnoreCase("")) {
            this.showBillHolder.tvSn.setText(String.valueOf(position + 1).toString());
            this.showBillHolder.tvItem.setText(this.temporaryList.get(position).getROI_ItemName().toString());
            this.showBillHolder.tvQty.setText(String.valueOf(this.temporaryList.get(position).getQuantity().toString()));
            this.showBillHolder.tvRate.setText(String.valueOf(this.temporaryList.get(position).getRate()));
            Double.valueOf(0.0d);
            Double sum = Double.valueOf(this.temporaryList.get(position).getQuantity().doubleValue() * this.temporaryList.get(position).getRate().doubleValue());
            this.showBillHolder.tvAmnt.setText(String.valueOf(sum).toString());
            if (this.temporaryList.get(position).getOrderExtraItems().size() != 0) {
                ShowBillAdapter showBillAdapter = new ShowBillAdapter(this.context, this.temporaryList.get(position).getOrderExtraItems(), "Status");
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context, 0, false);
                this.showBillHolder.recyclerView.setLayoutManager(linearLayoutManager);
                this.showBillHolder.recyclerView.setAdapter(showBillAdapter);
            }
        } else {
            this.showBillHolder.tvExtraItemlist.setVisibility(0);
            this.showBillHolder.tvExtraItemlist.setTypeface(null, 2);
            this.showBillHolder.tvExtraItemlist.setText(this.orderExtraItems.get(position).getQuantity() + " " + this.orderExtraItems.get(position).getExtraItem().toString() + " Rs." + this.orderExtraItems.get(position).getExtraPrice());
            Double extraAmount = Double.valueOf(this.orderExtraItems.get(position).getExtraPrice().doubleValue() * ((double) this.orderExtraItems.get(position).getQuantity().intValue()));
            this.showBillHolder.tvExtraItemAmount.setVisibility(0);
            this.showBillHolder.tvExtraItemAmount.setTypeface(null, 2);
            this.showBillHolder.tvExtraItemAmount.setText(String.valueOf(extraAmount));
            this.showBillHolder.tvItem.setVisibility(8);
            this.showBillHolder.tvSn.setVisibility(8);
            this.showBillHolder.tvQty.setVisibility(8);
            this.showBillHolder.tvRate.setVisibility(8);
            this.showBillHolder.tvAmnt.setVisibility(8);
        }
        if (getItemCount() < 0) {
            this.showBillHolder.layouNoData.setVisibility(0);
            this.showBillHolder.layoutData.setVisibility(8);
        }
    }

    public class ShowBillHolder extends RecyclerView.ViewHolder {
        LinearLayout layouNoData;
        LinearLayout layoutData;
        LinearLayout layoutExtra;
        RecyclerView recyclerView;
        TextView tvAmnt;
        TextView tvExtraItemAmount;
        TextView tvExtraItemlist;
        TextView tvItem;
        TextView tvQty;
        TextView tvRate;
        TextView tvSn;

        public ShowBillHolder(View itemView) {
            super(itemView);
            this.tvSn = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_sn);
            this.tvItem = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_items);
            this.tvQty = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_quantity);
            this.tvRate = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_rate);
            this.tvAmnt = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_Amount);
            this.layouNoData = (LinearLayout) itemView.findViewById(R.id.layoutNoData);
            this.layoutData = (LinearLayout) itemView.findViewById(R.id.layoutDataAvailable);
            this.layoutExtra = (LinearLayout) itemView.findViewById(R.id.layoutExtraItems);
            this.recyclerView = (RecyclerView) itemView.findViewById(R.id.tv_extra_itemlist);
            this.tvExtraItemlist = (TextView) itemView.findViewById(R.id.tv_ShowBillExtra_Item);
            this.tvExtraItemAmount = (TextView) itemView.findViewById(R.id.tv_ShowBillExtra_Amt);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.status.equalsIgnoreCase("")) {
            int count = this.temporaryList.size();
            return count;
        }
        int count2 = this.orderExtraItems.size();
        return count2;
    }
}
