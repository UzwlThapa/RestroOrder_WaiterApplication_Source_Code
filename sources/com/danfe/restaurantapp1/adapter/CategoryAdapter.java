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
import com.danfe.restaurantapp1.model.CategoryDb;
import com.squareup.picasso.Picasso;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CategoryAdapter extends RecyclerView.Adapter<CategoryViewHolder> {
    private static RecyclerViewClickListener itemListener;
    private List<CategoryDb> categoryDbs;
    private Context context;

    public CategoryAdapter(Context context, List<CategoryDb> categoryDbs, RecyclerViewClickListener itemListener2) {
        this.context = context;
        this.categoryDbs = categoryDbs;
        itemListener = itemListener2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.categoryDbs.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(CategoryViewHolder CategoryViewHolder2, int i) {
        CategoryDb categoryDb = this.categoryDbs.get(i);
        CategoryViewHolder2.vName.setText(categoryDb.getName());
        Picasso.with(this.context).load(Constants.WEB_SERVICE_BASE_URL + "/ROCategory/images/" + categoryDb.getCategoryPhotoPath()).resize(125, 65).into(CategoryViewHolder2.vImage);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public CategoryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View itemView = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.child3_row_category, viewGroup, false);
        return new CategoryViewHolder(itemView);
    }

    public class CategoryViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        protected ImageView vImage;
        protected TextView vName;

        public CategoryViewHolder(View v) {
            super(v);
            this.vName = (TextView) v.findViewById(R.id.childname);
            this.vImage = (ImageView) v.findViewById(R.id.iv_item_image);
            v.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            CategoryAdapter.itemListener.recyclerViewListClicked(v, 2, getLayoutPosition());
        }
    }
}
