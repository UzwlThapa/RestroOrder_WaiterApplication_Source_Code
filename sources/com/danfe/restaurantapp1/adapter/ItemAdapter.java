package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ItemAdapter extends RecyclerView.Adapter<ItemViewHolder> {
    private String BaseUrl;
    private ItemgroupDb PItemID;
    private Context context;
    private boolean imageSetCondition;
    private RecyclerViewClickListener itemListener;
    private List<ItemgroupDb> itemgroupDbs;
    private Preferences preferences;
    private RestaurantDatabase rDb;

    public ItemAdapter(Context context, List<ItemgroupDb> itemgroupDbs, RecyclerViewClickListener itemListener) {
        this.BaseUrl = "";
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
        this.itemListener = itemListener;
        this.rDb = new RestaurantDatabase();
        this.BaseUrl = Util.getBaseUrl(context);
        this.preferences = new Preferences(context);
        this.imageSetCondition = this.preferences.getEnableMenuImage().booleanValue();
    }

    public ItemAdapter(Context context, List<ItemgroupDb> itemgroupDbs, ItemgroupDb PItemID, RecyclerViewClickListener itemListener) {
        this.BaseUrl = "";
        this.context = context;
        this.itemgroupDbs = itemgroupDbs;
        this.PItemID = PItemID;
        this.itemListener = itemListener;
        this.preferences = new Preferences(context);
        this.imageSetCondition = this.preferences.getEnableMenuImage().booleanValue();
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
        try {
            ItemgroupDb itemgroupDb = this.itemgroupDbs.get(i);
            itemViewHolder.vName.setText(itemgroupDb.getItemName());
            itemViewHolder.vName.setSelected(true);
            itemViewHolder.vName.setFocusable(true);
            if (itemgroupDb.getOutOfStock().booleanValue()) {
                itemViewHolder.tvstockInfo.setVisibility(0);
            } else {
                itemViewHolder.tvstockInfo.setVisibility(8);
            }
            if (itemgroupDb.getIsCombo().booleanValue()) {
                Log.e("ITEMSTATUS", this.rDb.getActualItem(this.context, itemgroupDb.getItemId().intValue(), itemgroupDb.getIsCombo()).size() + "\n" + this.rDb.getItembyItemId(this.context, itemgroupDb.getItemId().intValue(), itemgroupDb.getIsCombo()).get(0).getIsCategory());
            }
            if (this.rDb.getActualItem(this.context, itemgroupDb.getItemId().intValue(), itemgroupDb.getIsCombo()).size() != 0 || this.rDb.getItembyItemId(this.context, itemgroupDb.getItemId().intValue(), itemgroupDb.getIsCombo()).get(0).getIsCategory().booleanValue() || itemgroupDb.getSRate() == null) {
                itemViewHolder.tvPrice.setVisibility(8);
            } else {
                itemViewHolder.tvPrice.setVisibility(0);
                itemViewHolder.tvPrice.setText(itemgroupDb.getCurrency().toString() + "  " + itemgroupDb.getSRate().toString());
            }
            String imgpath = this.BaseUrl + "/ROI_Item/ImageItem/" + itemgroupDb.getImagePath();
            String imgpath2 = imgpath.replaceAll(" ", "%20");
            if (itemgroupDb.getLevel().intValue() == 1 && itemgroupDb.getItemId().intValue() == -2) {
                Picasso.with(this.context).load(R.raw.comboimg).error(R.drawable.ic_restro_logo_new).placeholder(R.drawable.ic_restro_logo_new).resize((int) this.context.getResources().getDimension(R.dimen.menu_width), (int) this.context.getResources().getDimension(R.dimen.menu_width)).into(itemViewHolder.vImage);
            } else {
                Picasso.with(this.context).load(imgpath2).placeholder(R.drawable.ic_restro_logo_new).error(R.drawable.ic_restro_logo_new).resize((int) this.context.getResources().getDimension(R.dimen.menu_width), (int) this.context.getResources().getDimension(R.dimen.menu_width)).centerCrop().into(itemViewHolder.vImage);
            }
        } catch (Exception e) {
            Log.e("menu set exc", e.getMessage().toString());
        }
    }

    public static Bitmap getBitmapFromURL(String src) {
        try {
            URL url = new URL(src);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setDoInput(true);
            connection.connect();
            InputStream input = connection.getInputStream();
            return BitmapFactory.decodeStream(input);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int viewType) {
        View itemView;
        if (this.imageSetCondition) {
            itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.child3_row, viewGroup, false);
        } else {
            itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_menu_without_image, viewGroup, false);
        }
        return new ItemViewHolder(itemView);
    }

    public class ItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener, View.OnTouchListener, View.OnLongClickListener {
        protected CardView cardView;
        private TextView tvPrice;
        private TextView tvstockInfo;
        protected ImageView vImage;
        protected TextView vName;

        public ItemViewHolder(View v) {
            super(v);
            this.cardView = (CardView) v.findViewById(R.id.card_view_menu);
            this.vName = (TextView) v.findViewById(R.id.childname);
            this.vImage = (ImageView) v.findViewById(R.id.iv_item_image);
            this.tvPrice = (TextView) v.findViewById(R.id.tv_child3row_rate);
            this.tvstockInfo = (TextView) v.findViewById(R.id.tv_infoStock);
            v.setOnClickListener(this);
            v.setOnLongClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (ItemAdapter.this.preferences.getEnableOrderGrid().booleanValue()) {
                if (ItemAdapter.this.preferences.getEnableOrderGrid().booleanValue()) {
                    ItemAdapter.this.itemListener.recyclerViewListClicked(v, ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getItemId().intValue(), getLayoutPosition(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getLevel().intValue(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getIsCombo(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getCostcenterID().intValue(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getIsCategory().booleanValue());
                }
            } else {
                ItemAdapter.this.itemListener.recyclerViewListClicked(v, ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getItemId().intValue(), getLayoutPosition(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getLevel().intValue(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getIsCombo(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getCostcenterID().intValue());
            }
            ItemAdapter.this.notifyDataSetChanged();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            if (event.equals(0) || event.equals(1)) {
                this.cardView.setCardBackgroundColor(ItemAdapter.this.context.getResources().getColor(R.color.lightgrey));
            }
            return true;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v) {
            ItemAdapter.this.itemListener.recyclerLongClicked(v, ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getItemId().intValue(), ((ItemgroupDb) ItemAdapter.this.itemgroupDbs.get(getLayoutPosition())).getIsCombo());
            ItemAdapter.this.notifyDataSetChanged();
            return false;
        }
    }
}
