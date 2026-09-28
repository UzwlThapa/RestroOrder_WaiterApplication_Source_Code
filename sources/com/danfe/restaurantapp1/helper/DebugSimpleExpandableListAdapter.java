package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SimpleExpandableListAdapter;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.squareup.picasso.Picasso;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DebugSimpleExpandableListAdapter extends SimpleExpandableListAdapter {
    private static final String LOG_TAG = "DebugSimpleExpandableListAdapter";
    private String BaseURL;
    private List childData;
    private Context context;
    private List groupData;
    private ImageView imageLink;
    private HashMap<String, String> item;

    public DebugSimpleExpandableListAdapter(Context context, List<HashMap<String, String>> groupData, int groupLayout, String[] groupFrom, int[] groupTo, List<List<HashMap<String, String>>> childData, int childLayout, String[] childFrom, int[] childTo) {
        super(context, groupData, groupLayout, groupFrom, groupTo, childData, childLayout, childFrom, childTo);
        this.groupData = groupData;
        this.childData = childData;
        this.context = context;
    }

    @Override // android.widget.SimpleExpandableListAdapter, android.widget.ExpandableListAdapter
    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        View v = convertView;
        if (v == null) {
            LayoutInflater inflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
            v = inflater.inflate(R.layout.child3_row, parent, false);
        }
        this.imageLink = (ImageView) v.findViewById(R.id.iv_item_image);
        TextView itemCode = (TextView) v.findViewById(R.id.tv_item_code);
        TextView itemName = (TextView) v.findViewById(R.id.childname);
        TextView itemDesc = (TextView) v.findViewById(R.id.tv_item_desc);
        TextView itemRate = (TextView) v.findViewById(R.id.rgb);
        this.BaseURL = Util.getBaseUrl(this.context);
        this.item = (HashMap) ((List) this.childData.get(groupPosition)).get(childPosition);
        itemCode.setText(this.item.get(Constants.KEY_CODE));
        itemName.setText(this.item.get(Constants.KEY_SHADENAME));
        itemDesc.setText(this.item.get(Constants.KEY_DESC));
        itemRate.setText(this.item.get(Constants.KEY_RGB));
        Picasso.with(this.context).load(this.BaseURL + "/ROItem/images/" + this.item.get(Constants.KEY_IMG_LNK)).resize(100, 100).into(this.imageLink);
        return v;
    }

    @Override // android.widget.SimpleExpandableListAdapter, android.widget.ExpandableListAdapter
    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        View v = super.getGroupView(groupPosition, isExpanded, convertView, parent);
        Log.d(LOG_TAG, "getGroupView: groupPosition: " + groupPosition + "; isExpanded: " + isExpanded + "; v: " + v);
        return v;
    }
}
