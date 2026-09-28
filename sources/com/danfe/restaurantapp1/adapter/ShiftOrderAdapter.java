package com.danfe.restaurantapp1.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShiftOrderAdapter extends RecyclerView.Adapter<ShiftOrderHolder> {
    private AlertDialog alertDialog;
    Context context;
    OnItemClickListnerInterface onItemClickListnerInterface;
    List<OrderDetailDb> orderDetailDbLists;
    List<List<orderExtraItem>> orderExtraItemList;
    List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems;
    ShiftOrderHolder shiftOrderHolder;
    String status;
    List<EditOrderRequest.OrderDetailsList> temporaryList;

    public interface OnItemClickListnerInterface {
        void onItemClicked(int i, EditOrderRequest.OrderDetailsList orderDetailsList);
    }

    public ShiftOrderAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList> temporaryList, OnItemClickListnerInterface onItemClickListnerInterface) {
        this.status = "";
        this.context = applicationContext;
        this.temporaryList = temporaryList;
        this.onItemClickListnerInterface = onItemClickListnerInterface;
    }

    public ShiftOrderAdapter(Context applicationContext, List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems, String status) {
        this.status = "";
        this.context = applicationContext;
        this.orderExtraItems = orderExtraItems;
        this.status = status;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ShiftOrderHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.shift_order_adapter, parent, false);
        this.shiftOrderHolder = new ShiftOrderHolder(itemView);
        return this.shiftOrderHolder;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ShiftOrderHolder holder, int position) {
        if (this.status.equalsIgnoreCase("")) {
            this.shiftOrderHolder.tvSn.setText(String.valueOf(position + 1).toString());
            this.shiftOrderHolder.tvItem.setText(this.temporaryList.get(position).getROI_ItemName().toString());
            this.shiftOrderHolder.tvQty.setText(String.valueOf(this.temporaryList.get(position).getQuantity().toString()));
            if (this.temporaryList.get(position).getOrderExtraItems().size() != 0) {
                ShiftOrderAdapter shiftOrderAdapter = new ShiftOrderAdapter(this.context, this.temporaryList.get(position).getOrderExtraItems(), "Status");
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context, 0, false);
                this.shiftOrderHolder.recyclerView.setLayoutManager(linearLayoutManager);
                this.shiftOrderHolder.recyclerView.setAdapter(shiftOrderAdapter);
            }
        } else {
            this.shiftOrderHolder.tvExtraItemlist.setVisibility(0);
            this.shiftOrderHolder.tvExtraItemlist.setTypeface(null, 2);
            this.shiftOrderHolder.tvExtraItemlist.setText(this.orderExtraItems.get(position).getQuantity() + " " + this.orderExtraItems.get(position).getExtraItem().toString() + " Rs." + this.orderExtraItems.get(position).getExtraPrice());
            this.shiftOrderHolder.tvItem.setVisibility(8);
            this.shiftOrderHolder.tvSn.setVisibility(8);
            this.shiftOrderHolder.tvQty.setVisibility(8);
        }
        if (getItemCount() < 0) {
            this.shiftOrderHolder.layouNoData.setVisibility(0);
            this.shiftOrderHolder.layoutData.setVisibility(8);
        }
    }

    public class ShiftOrderHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        ImageView imageViewShift;
        LinearLayout layouNoData;
        LinearLayout layoutData;
        LinearLayout layoutExtra;
        RecyclerView recyclerView;
        LinearLayout rvLayout;
        TextView tvExtraItemlist;
        TextView tvItem;
        TextView tvQty;
        TextView tvSn;

        public ShiftOrderHolder(View itemView) {
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
            this.rvLayout.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            int clickedPosition = getLayoutPosition();
            EditOrderRequest.OrderDetailsList clickedItem = ShiftOrderAdapter.this.temporaryList.get(clickedPosition);
            switch (v.getId()) {
                case R.id.rv_layout /* 2131689945 */:
                    ShiftOrderAdapter.this.onItemClickListnerInterface.onItemClicked(clickedPosition, clickedItem);
                    break;
            }
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
    public long getItemId(int position) {
        return super.getItemId(position);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return position;
    }
}
