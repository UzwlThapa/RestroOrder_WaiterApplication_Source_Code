package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.RecyclerViewClickListener;
import com.danfe.restaurantapp1.model.MenuGroupDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MenuAdapter extends RecyclerView.Adapter<MenuViewHolder> {
    private static RecyclerViewClickListener itemListener;
    private Context context;
    private List<MenuGroupDb> menuGroupDbs;

    public MenuAdapter(Context context, List<MenuGroupDb> menuGroupDbs, RecyclerViewClickListener itemListener2) {
        this.context = context;
        this.menuGroupDbs = menuGroupDbs;
        itemListener = itemListener2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.menuGroupDbs.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(MenuViewHolder menuViewHolder, int i) {
        MenuGroupDb menuGroupDb = this.menuGroupDbs.get(i);
        menuViewHolder.vName.setText(menuGroupDb.getName());
        Picasso.with(this.context).load(Constants.WEB_SERVICE_BASE_URL + "/ROMenu/images/" + menuGroupDb.getMenuPhotoPath()).resize(125, 65).into(menuViewHolder.vImage);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public MenuViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.child3_row, viewGroup, false);
        return new MenuViewHolder(itemView);
    }

    public class MenuViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        protected ImageView vImage;
        protected TextView vName;

        public MenuViewHolder(View v) {
            super(v);
            this.vName = (TextView) v.findViewById(R.id.childname);
            v.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            MenuAdapter.itemListener.recyclerViewListClicked(v, 1, getLayoutPosition());
        }
    }
}
