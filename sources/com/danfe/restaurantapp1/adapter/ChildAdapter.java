package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.RecyclerViewClickListener;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ChildAdapter extends RecyclerView.Adapter<ItemViewHolder> {
    private ItemgroupDb PItemID;
    private Context context;
    private ArrayList<List<ItemgroupDb>> itemGroupDbsList;
    private RecyclerViewClickListener itemListener;
    private List<ItemgroupDb> itemgroupDbs;
    private List<ItemgroupDb> itemgrouplists;

    public ChildAdapter(Context context, List<ItemgroupDb> itemgroupDbs, RecyclerViewClickListener itemListener) {
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
        this.itemListener = itemListener;
    }

    public ChildAdapter(Context context, List<ItemgroupDb> itemgroupDbs) {
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
    }

    public ChildAdapter(Context context, List<ItemgroupDb> itemgroupDbs, ItemgroupDb PItemID, RecyclerViewClickListener itemListener) {
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
        this.PItemID = PItemID;
        this.itemListener = itemListener;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return super.getItemViewType(position);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.itemgroupDbs.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ItemViewHolder itemViewHolder, int i) {
        ItemgroupDb itemgroupDb = this.itemgroupDbs.get(i);
        itemViewHolder.vName.setText(itemgroupDb.getItemName());
        Log.e("Itemname", String.valueOf(itemgroupDb.getItemName()));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.child3_row, viewGroup, false);
        return new ItemViewHolder(itemView);
    }

    public class ItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        protected ImageView vImage;
        protected TextView vName;
        private View vparentView;

        public ItemViewHolder(View v) {
            super(v);
            this.vparentView = v;
            this.vName = (TextView) v.findViewById(R.id.childname);
            this.vImage = (ImageView) v.findViewById(R.id.iv_item_image);
            v.setOnClickListener(this);
        }

        public View getParentView() {
            return this.vparentView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            Toast.makeText(ChildAdapter.this.context, "New menu" + getPosition(), 0).show();
            ChildAdapter.this.itemListener.recyclerViewListClicked(v, v.getId(), getLayoutPosition(), ((ItemgroupDb) ChildAdapter.this.itemgroupDbs.get(getLayoutPosition())).getLevel().intValue());
            Log.e("CLICKEDPosition", String.valueOf(getLayoutPosition()));
            Log.e("CLICKEDLevel", ((ItemgroupDb) ChildAdapter.this.itemgroupDbs.get(getLayoutPosition())).getLevel().toString());
            ChildAdapter.this.notifyDataSetChanged();
        }
    }
}
