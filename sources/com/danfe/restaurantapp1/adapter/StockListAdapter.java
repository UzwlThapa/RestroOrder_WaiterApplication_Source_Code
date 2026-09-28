package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StockListAdapter extends RecyclerView.Adapter<MyStockView> {
    Context context;
    List<ItemgroupDb> itemgroupDbs;

    public StockListAdapter(Context context, List<ItemgroupDb> itemgroupDbList) {
        this.context = context;
        this.itemgroupDbs = itemgroupDbList;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MyStockView onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(this.context).inflate(R.layout.item_extra_data, (ViewGroup) null);
        return new MyStockView(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyStockView holder, int position) {
        holder.editText.setVisibility(8);
        holder.textView.setText(this.itemgroupDbs.get(position).getItemName().toString());
        holder.imageView.setVisibility(0);
        String BaseURL = Util.getBaseUrl(this.context);
        String imagePath = BaseURL + "/ROI_Item/ImageItem/" + this.itemgroupDbs.get(position).getImagePath();
        Picasso.with(this.context).load(imagePath.replaceAll(" ", "%20")).placeholder(R.drawable.ic_restro_logo_new).error(R.drawable.ic_restro_logo_new).centerCrop().resize(150, 150).into(holder.imageView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.itemgroupDbs.size();
    }

    public class MyStockView extends RecyclerView.ViewHolder {
        EditText editText;
        ImageView imageView;
        TextView textView;

        public MyStockView(View itemView) {
            super(itemView);
            this.textView = (TextView) itemView.findViewById(R.id.tv_extraDataName);
            this.editText = (EditText) itemView.findViewById(R.id.sp_extraItems);
            this.imageView = (ImageView) itemView.findViewById(R.id.imageIcon);
        }
    }
}
