package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SearchItemAdapter extends RecyclerView.Adapter<ItemViewHolder> {
    private String BaseUrl;
    private ItemgroupDb PItemID;
    private Context context;
    private RecyclerViewClickListener itemListener;
    private ItemViewHolder itemViewHolder;
    private List<ItemgroupDb> itemgroupDbs;
    private RestaurantDatabase rDb = new RestaurantDatabase();

    public SearchItemAdapter(Context context, List<ItemgroupDb> itemgroupDbs, RecyclerViewClickListener itemListener) {
        this.BaseUrl = "";
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
        this.itemListener = itemListener;
        this.BaseUrl = Util.getBaseUrl(context);
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
    public ItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.child3_row, viewGroup, false);
        this.itemViewHolder = new ItemViewHolder(itemView);
        return new ItemViewHolder(itemView);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ItemViewHolder holder, int position) {
        try {
            ItemgroupDb itemgroupDb = this.itemgroupDbs.get(position);
            this.itemViewHolder.vName.setText(itemgroupDb.getItemName());
            this.itemViewHolder.vName.setFocusable(true);
            String imgpath = this.BaseUrl + "/ROI_Item/ImageItem/" + itemgroupDb.getImagePath();
            Picasso.with(this.context).load(imgpath.replaceAll(" ", "%20")).error(R.drawable.ic_restro_logo_new).placeholder(R.drawable.ic_restro_logo_new).resize(150, 150).into(this.itemViewHolder.vImage);
            if (this.rDb.getActualItem(this.context, itemgroupDb.getItemId().intValue(), itemgroupDb.getIsCombo()).size() != 0 || itemgroupDb.getSRate() == null) {
                this.itemViewHolder.tvPrice.setVisibility(8);
            } else {
                this.itemViewHolder.tvPrice.setVisibility(0);
                this.itemViewHolder.tvPrice.setText(itemgroupDb.getCurrency().toString() + "  " + itemgroupDb.getSRate().toString());
            }
        } catch (Exception e) {
        }
    }

    public class ItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnTouchListener, View.OnLongClickListener {
        protected CardView cardView;
        private TextView tvPrice;
        protected ImageView vImage;
        protected TextView vName;

        public ItemViewHolder(View v) {
            super(v);
            this.cardView = (CardView) v.findViewById(R.id.card_view_menu);
            this.vName = (TextView) v.findViewById(R.id.childname);
            this.vImage = (ImageView) v.findViewById(R.id.iv_item_image);
            this.tvPrice = (TextView) v.findViewById(R.id.tv_child3row_rate);
            v.setOnClickListener(this);
            v.setOnLongClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            SearchItemAdapter.this.notifyDataSetChanged();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            if (event.equals(0) || event.equals(1)) {
                this.cardView.setCardBackgroundColor(SearchItemAdapter.this.context.getResources().getColor(R.color.lightgrey));
            }
            return false;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v) {
            SearchItemAdapter.this.itemListener.recyclerLongClicked(v, ((ItemgroupDb) SearchItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getItemId().intValue(), ((ItemgroupDb) SearchItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getIsCombo());
            SearchItemAdapter.this.notifyDataSetChanged();
            return false;
        }
    }
}
