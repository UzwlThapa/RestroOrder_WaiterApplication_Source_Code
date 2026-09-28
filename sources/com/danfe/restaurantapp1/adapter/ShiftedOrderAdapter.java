package com.danfe.restaurantapp1.adapter;

import android.app.AlertDialog;
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
public class ShiftedOrderAdapter extends RecyclerView.Adapter<ShiftedOrderHolder> {
    private AlertDialog alertDialog;
    Context context;
    List<OrderDetailDb> orderDetailDbLists;
    List<List<orderExtraItem>> orderExtraItemList;
    List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems;
    ShiftedOrderHolder shiftedOrderHolder;
    String status;
    List<EditOrderRequest.OrderDetailsList> temporaryList;

    public ShiftedOrderAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList> temporaryList) {
        this.status = "";
        this.context = applicationContext;
        this.temporaryList = temporaryList;
    }

    public ShiftedOrderAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems, String status) {
        this.status = "";
        this.context = applicationContext;
        this.orderExtraItems = orderExtraItems;
        this.status = status;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ShiftedOrderHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.shift_order_adapter, parent, false);
        this.shiftedOrderHolder = new ShiftedOrderHolder(itemView);
        return this.shiftedOrderHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ShiftedOrderHolder holder, int position) {
        if (this.status.equalsIgnoreCase("")) {
            this.shiftedOrderHolder.tvSn.setText(String.valueOf(position + 1).toString());
            this.shiftedOrderHolder.tvItem.setText(this.temporaryList.get(position).getROI_ItemName().toString());
            this.shiftedOrderHolder.tvQty.setText(String.valueOf(this.temporaryList.get(position).getQuantity().toString()));
            if (this.temporaryList.get(position).getOrderExtraItems().size() != 0) {
                ShowBillAdapter showBillAdapter = new ShowBillAdapter(this.context, this.temporaryList.get(position).getOrderExtraItems(), "Status");
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context, 0, false);
                this.shiftedOrderHolder.recyclerView.setLayoutManager(linearLayoutManager);
                this.shiftedOrderHolder.recyclerView.setAdapter(showBillAdapter);
            }
        } else {
            this.shiftedOrderHolder.tvExtraItemlist.setVisibility(0);
            this.shiftedOrderHolder.tvExtraItemlist.setTypeface(null, 2);
            this.shiftedOrderHolder.tvExtraItemlist.setText(this.orderExtraItems.get(position).getQuantity() + " " + this.orderExtraItems.get(position).getExtraItem().toString() + " Rs." + this.orderExtraItems.get(position).getExtraPrice());
            this.shiftedOrderHolder.tvItem.setVisibility(8);
            this.shiftedOrderHolder.tvSn.setVisibility(8);
            this.shiftedOrderHolder.tvQty.setVisibility(8);
        }
        if (getItemCount() < 0) {
            this.shiftedOrderHolder.layouNoData.setVisibility(0);
            this.shiftedOrderHolder.layoutData.setVisibility(8);
        }
    }

    public class ShiftedOrderHolder extends RecyclerView.ViewHolder {
        LinearLayout layouNoData;
        LinearLayout layoutData;
        LinearLayout layoutExtra;
        RecyclerView recyclerView;
        LinearLayout rvLayout;
        TextView tvExtraItemlist;
        TextView tvItem;
        TextView tvQty;
        TextView tvSn;

        public ShiftedOrderHolder(View itemView) {
            super(itemView);
            this.rvLayout = (LinearLayout) itemView.findViewById(R.id.rv_layout);
            this.tvSn = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_sn);
            this.tvItem = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_items);
            this.tvQty = (TextView) itemView.findViewById(R.id.tv_adapter_showbill_quantity);
            this.layouNoData = (LinearLayout) itemView.findViewById(R.id.layoutNoData);
            this.layoutData = (LinearLayout) itemView.findViewById(R.id.layoutDataAvailable);
            this.layoutExtra = (LinearLayout) itemView.findViewById(R.id.layoutExtraItems);
            this.recyclerView = (RecyclerView) itemView.findViewById(R.id.tv_extra_itemlist);
            this.tvExtraItemlist = (TextView) itemView.findViewById(R.id.tv_Extra_Item);
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

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return position;
    }
}
