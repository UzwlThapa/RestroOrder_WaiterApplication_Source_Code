package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.DishDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SearchListAdapter extends ArrayAdapter<DishDb> {
    private String BaseURL;
    private Context context;
    private DishDb searchItem;
    private List<DishDb> searchItems;

    public SearchListAdapter(Context context, List<DishDb> searchItems) {
        super(context, R.layout.view_order_item, searchItems);
        this.BaseURL = "";
        this.context = context;
        this.searchItems = searchItems;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.searchItems.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public DishDb getItem(int location) {
        return this.searchItems.get(location);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder vh;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.child3_row, parent, false);
            vh = new ViewHolder();
            vh.item = (TextView) convertView.findViewById(R.id.childname);
            vh.price = (TextView) convertView.findViewById(R.id.rgb);
            vh.desc = (TextView) convertView.findViewById(R.id.tv_item_desc);
            vh.code = (TextView) convertView.findViewById(R.id.tv_item_code);
            vh.imageView = (ImageView) convertView.findViewById(R.id.iv_item_image);
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }
        this.searchItem = getItem(position);
        this.BaseURL = Util.getBaseUrl(this.context);
        vh.price.setText(String.valueOf(this.searchItem.getPrice()));
        vh.item.setText(this.searchItem.getName());
        vh.code.setText(this.searchItem.getItemcode());
        vh.desc.setText(this.searchItem.getDescription());
        Picasso.with(this.context).load(this.BaseURL + "/ROItem/images/" + this.searchItem.getImageLink()).resize(100, 100).into(vh.imageView);
        return convertView;
    }

    class ViewHolder {
        TextView code;
        TextView desc;
        ImageView imageView;
        TextView item;
        TextView price;

        ViewHolder() {
        }
    }
}
