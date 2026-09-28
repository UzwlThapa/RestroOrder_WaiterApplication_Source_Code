package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExtraInfoAdapter extends RecyclerView.Adapter<ExtraViewHolder> {
    Context context;
    List<List<orderExtraItem>> extraItemsLists;
    List<orderExtraItem> orderExtraItems;
    ArrayList<OrderDetailDb> orderItemList;
    String status;

    public ExtraInfoAdapter(Context context, List<orderExtraItem> orderExtraItems, String status) {
        this.status = "";
        this.context = context;
        this.orderExtraItems = orderExtraItems;
        this.status = status;
    }

    public ExtraInfoAdapter(Context context, List<List<orderExtraItem>> extraItemsLists, ArrayList<OrderDetailDb> orderItemList) {
        this.status = "";
        this.context = context;
        this.extraItemsLists = extraItemsLists;
        this.orderItemList = orderItemList;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ExtraViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(this.context).inflate(R.layout.item_extras, parent, false);
        return new ExtraViewHolder(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ExtraViewHolder vh, int position) {
        if (this.status.equalsIgnoreCase("")) {
            int i = 0;
            while (i < this.orderItemList.size()) {
                if (this.orderItemList.get(i).getItemId() == this.extraItemsLists.get(position).get(0).getItemID()) {
                    vh.textView.setText(this.orderItemList.get(i).getTitle());
                    i = this.orderItemList.size() - 1;
                }
                i++;
            }
            List<orderExtraItem> extraItems = this.extraItemsLists.get(position);
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context, 1, false);
            vh.recyclerView.setLayoutManager(linearLayoutManager);
            ExtraInfoAdapter extraInfoAdapter = new ExtraInfoAdapter(this.context, extraItems, "Actual Extra");
            vh.recyclerView.setAdapter(extraInfoAdapter);
        }
        if (this.status.equalsIgnoreCase("Actual Extra")) {
            vh.view.setVisibility(8);
            vh.textView.setTypeface(null, 0);
            vh.textView.setTypeface(null, 2);
            vh.textView.setText(this.orderExtraItems.get(position).getQuantity().toString() + " " + this.orderExtraItems.get(position).getExtraItem() + " (Rs." + this.orderExtraItems.get(position).getExtraPrice() + ")");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.status.equalsIgnoreCase("Actual Extra")) {
            int size = this.orderExtraItems.size();
            return size;
        }
        if (!this.status.equalsIgnoreCase("")) {
            return 0;
        }
        int size2 = this.extraItemsLists.size();
        return size2;
    }

    public class ExtraViewHolder extends RecyclerView.ViewHolder {
        RecyclerView recyclerView;
        TextView textView;
        View view;

        public ExtraViewHolder(View itemView) {
            super(itemView);
            this.textView = (TextView) itemView.findViewById(R.id.tv_itemName);
            this.recyclerView = (RecyclerView) itemView.findViewById(R.id.rv_subExtraItems);
            this.view = itemView.findViewById(R.id.view);
        }
    }
}
