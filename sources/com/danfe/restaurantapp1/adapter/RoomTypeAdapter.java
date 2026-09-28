package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.CustomCardView;
import com.danfe.restaurantapp1.model.RoomTypeDb;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RoomTypeAdapter extends RecyclerView.Adapter<RoomTypeViewHolder> {
    private static RecyclerViewClickListener itemListener;
    private Context context;
    private List<RoomTypeDb> roomTypeList;
    private RoomTypeViewHolder roomTypeViewHolder;
    private Long selectedItemId = 0L;
    private SparseBooleanArray selectedItems;

    public RoomTypeAdapter(Context context, List<RoomTypeDb> roomTypeList, RecyclerViewClickListener itemListener2) {
        this.context = context;
        this.roomTypeList = roomTypeList;
        itemListener = itemListener2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.roomTypeList.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RoomTypeViewHolder roomTypeViewHolder, int i) {
        this.roomTypeViewHolder = roomTypeViewHolder;
        this.roomTypeViewHolder.vName.setText(this.roomTypeList.get(i).getRestroRoom());
        for (int j = 0; j <= this.roomTypeList.size(); j++) {
            if (i == j + 1) {
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RoomTypeViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_room_type_item, viewGroup, false);
        return new RoomTypeViewHolder(itemView);
    }

    public class RoomTypeViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        ImageView ivSelection;
        protected CustomCardView vCard;
        protected TextView vName;

        public RoomTypeViewHolder(View v) {
            super(v);
            this.vName = (TextView) v.findViewById(R.id.text_table);
            this.ivSelection = (ImageView) v.findViewById(R.id.iv_selection_indicator);
            v.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            RoomTypeAdapter.itemListener.recyclerViewListClicked(v, 2, getLayoutPosition());
            RoomTypeAdapter.this.selectedItemId = ((RoomTypeDb) RoomTypeAdapter.this.roomTypeList.get(getLayoutPosition())).getId();
            RoomTypeAdapter.this.notifyDataSetChanged();
        }
    }
}
