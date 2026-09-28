package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.orderExtraItem;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExtraDataAdapter extends RecyclerView.Adapter<ExtraDataViewholder> {
    Context context;
    List<orderExtraItem> extraItemDbs;

    public ExtraDataAdapter(Context context, List<orderExtraItem> extraItemDb) {
        this.context = context;
        this.extraItemDbs = extraItemDb;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ExtraDataViewholder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(this.context).inflate(R.layout.item_extra_data, parent, false);
        return new ExtraDataViewholder(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ExtraDataViewholder holder, int position) {
        holder.extraItemName.setText(this.extraItemDbs.get(position).getExtraItem().toString() + " (Rs. " + this.extraItemDbs.get(position).getExtraPrice() + ")");
        if (!this.extraItemDbs.get(position).getItemStatus().equalsIgnoreCase("Ordered")) {
            holder.quantity.setEnabled(false);
        }
        if (this.extraItemDbs.get(position).getQuantity().intValue() != 0) {
            holder.quantity.setText(this.extraItemDbs.get(position).getQuantity().toString());
        } else {
            holder.quantity.setText("");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.extraItemDbs.size();
    }

    public class ExtraDataViewholder extends RecyclerView.ViewHolder {
        TextView extraItemName;
        public EditText quantity;

        public ExtraDataViewholder(View itemView) {
            super(itemView);
            this.extraItemName = (TextView) itemView.findViewById(R.id.tv_extraDataName);
            this.quantity = (EditText) itemView.findViewById(R.id.sp_extraItems);
        }
    }
}
