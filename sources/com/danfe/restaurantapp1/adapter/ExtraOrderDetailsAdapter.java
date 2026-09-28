package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.danfe.restaurantapp1.R;

/* JADX INFO: loaded from: classes.dex */
class ExtraOrderDetailsAdapter extends RecyclerView.Adapter<ExtraOrdeDetailsViewHolder> {
    Context context;
    View view;

    ExtraOrderDetailsAdapter() {
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ExtraOrdeDetailsViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        this.view = LayoutInflater.from(this.context).inflate(R.layout.extra_order_details_layout, (ViewGroup) null);
        return null;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ExtraOrdeDetailsViewHolder holder, int position) {
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 0;
    }

    public static class ExtraOrdeDetailsViewHolder extends RecyclerView.ViewHolder {
        public ExtraOrdeDetailsViewHolder(View itemView) {
            super(itemView);
        }
    }
}
