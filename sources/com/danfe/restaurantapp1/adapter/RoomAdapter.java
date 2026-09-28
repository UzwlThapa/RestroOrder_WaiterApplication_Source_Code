package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.model.RoomDb;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RoomAdapter extends RecyclerView.Adapter<RoomViewHolder> {
    private static RecyclerViewClickListener itemListener;
    private Context context;
    private List<RoomDb> roomDbs;
    private Long selectedItem = 0L;
    private Animation slideDown;

    public RoomAdapter(Context context, List<RoomDb> roomDbs, RecyclerViewClickListener itemListener2) {
        this.context = context;
        this.roomDbs = roomDbs;
        itemListener = itemListener2;
        this.slideDown = AnimationUtils.loadAnimation(context, R.anim.slidedownanimation);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.roomDbs.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RoomViewHolder roomViewHolder, int i) {
        RoomDb roomDb = this.roomDbs.get(i);
        roomViewHolder.vName.setText(roomDb.getRestroRoom());
        if (roomDb.getRoomStatus().intValue() == 6) {
            roomViewHolder.vIndicator.setImageDrawable(this.context.getResources().getDrawable(R.drawable.indicator_red));
        } else {
            roomViewHolder.vIndicator.setImageDrawable(this.context.getResources().getDrawable(R.drawable.indicator_green));
        }
        if (roomDb.getId() == this.selectedItem) {
            roomViewHolder.vName.setBackgroundColor(this.context.getResources().getColor(R.color.seventytransparentwhite));
        } else {
            roomViewHolder.vName.setBackgroundColor(this.context.getResources().getColor(R.color.fulltransparent));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RoomViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_room_item, viewGroup, false);
        return new RoomViewHolder(itemView);
    }

    public class RoomViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        protected ImageView selectedIndicator;
        protected ImageView vIndicator;
        protected TextView vName;

        public RoomViewHolder(View v) {
            super(v);
            this.vName = (TextView) v.findViewById(R.id.text_table);
            this.vIndicator = (ImageView) v.findViewById(R.id.room_indicator);
            v.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            RoomAdapter.itemListener.recyclerViewListClicked(v, 1, getLayoutPosition());
            RoomAdapter.this.selectedItem = ((RoomDb) RoomAdapter.this.roomDbs.get(getLayoutPosition())).getId();
            RoomAdapter.this.notifyDataSetChanged();
        }
    }
}
