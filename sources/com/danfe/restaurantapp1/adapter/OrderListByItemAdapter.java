package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemListByName;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OrderListByItemAdapter extends ArrayAdapter {
    String BaseURL;
    Context context;
    List<ItemListByName> itemListByNames;
    View myconvertView;

    public OrderListByItemAdapter(@NonNull Context context, List<ItemListByName> itemListByNames) {
        super(context, R.layout.item_view_by_item);
        this.BaseURL = "";
        this.context = context;
        this.itemListByNames = itemListByNames;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.itemListByNames.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return position;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @Nullable
    public Object getItem(int position) {
        return super.getItem(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        OrderByListViewHolder vh;
        this.myconvertView = convertView;
        if (this.myconvertView == null) {
            this.myconvertView = LayoutInflater.from(this.context).inflate(R.layout.item_view_by_item, parent, false);
            vh = new OrderByListViewHolder();
            vh.itemImg = (ImageView) this.myconvertView.findViewById(R.id.iv_itemImage_layout_orderdetails);
            vh.itemQty = (TextView) this.myconvertView.findViewById(R.id.tv_qty);
            vh.itemNotes = (TextView) this.myconvertView.findViewById(R.id.tv_notes);
            vh.itemName = (TextView) this.myconvertView.findViewById(R.id.tv_itemname_layout_orderdetails);
            this.myconvertView.setTag(vh);
        } else {
            vh = (OrderByListViewHolder) this.myconvertView.getTag();
        }
        this.BaseURL = Util.getBaseUrl(this.context);
        String imagePath = this.BaseURL + "/ROI_Item/ImageItem/" + this.itemListByNames.get(position).getImagePath();
        Picasso.with(this.myconvertView.getContext()).load(imagePath.replaceAll(" ", "%20")).placeholder(R.drawable.ic_restro_logo_new).error(R.drawable.ic_restro_logo_new).centerCrop().resize(150, 150).into(vh.itemImg);
        vh.itemName.setText(this.itemListByNames.get(position).getItemname());
        vh.itemQty.setText(String.valueOf(this.itemListByNames.get(position).getTotalqty()));
        return this.myconvertView;
    }

    public class OrderByListViewHolder {
        TextView completeNum;
        ImageView itemImg;
        TextView itemName;
        TextView itemNotes;
        TextView itemQty;
        LinearLayout li_complete;
        LinearLayout li_ordered;
        LinearLayout li_progress;
        TextView orderedNum;
        TextView progressNum;

        public OrderByListViewHolder() {
        }
    }
}
