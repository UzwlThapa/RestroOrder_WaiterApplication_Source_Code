package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.model.DishDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DishAdapter extends ArrayAdapter<DishDb> {
    private List<DishDb> dishDbs;
    private Context mContext;

    public DishAdapter(Context c, List<DishDb> dishDbs) {
        super(c, R.layout.view_dish_child);
        this.mContext = c;
        this.dishDbs = dishDbs;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.dishDbs.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public DishDb getItem(int position) {
        return this.dishDbs.get(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder vh;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.view_dish_child, parent, false);
            vh = new ViewHolder();
            vh.itemName = (TextView) convertView.findViewById(R.id.childname);
            vh.itemImg = (ImageView) convertView.findViewById(R.id.iv_item_image);
            vh.itemCode = (TextView) convertView.findViewById(R.id.tv_item_code);
            vh.itemDesc = (TextView) convertView.findViewById(R.id.tv_item_desc);
            vh.itemRate = (TextView) convertView.findViewById(R.id.rgb);
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }
        DishDb dishDb = getItem(position);
        vh.itemName.setText(dishDb.getName());
        vh.itemCode.setText(dishDb.getItemcode());
        vh.itemDesc.setText(dishDb.getDescription());
        vh.itemRate.setText(dishDb.getPriceWithCurr());
        Picasso.with(this.mContext).load(Constants.WEB_SERVICE_BASE_URL + "/ROItem/images/" + dishDb.getImageLink()).resize(125, 65).into(vh.itemImg);
        return convertView;
    }

    class ViewHolder {
        TextView itemCode;
        TextView itemDesc;
        ImageView itemImg;
        TextView itemName;
        TextView itemRate;

        ViewHolder() {
        }
    }
}
