package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.ExtraItemsInterface;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.adapter.ExtraDataAdapter;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExtraItemDialog {
    AlertDialog alertDialog;
    List<List<orderExtraItem>> extraItemDb;
    List<orderExtraItem> extraItemDbs;
    EditText note;

    public ExtraItemDialog(final Context context, final List<orderExtraItem> extraItemDb, final ExtraItemsInterface extraItemsInterface, final OrderDetailDb orderDetailD) {
        this.extraItemDbs = extraItemDb;
        View extraItemDialog = LayoutInflater.from(context).inflate(R.layout.dialog_extra_item, (ViewGroup) null, false);
        this.alertDialog = new AlertDialog.Builder(context, R.style.MyDialogTheme).create();
        this.alertDialog.setView(extraItemDialog);
        this.alertDialog.setCancelable(true);
        Button submit = (Button) extraItemDialog.findViewById(R.id.btn_submit);
        Button cancel = (Button) extraItemDialog.findViewById(R.id.btn_cancel);
        this.note = (EditText) extraItemDialog.findViewById(R.id.et_extraNote);
        TextView tvTitle = (TextView) extraItemDialog.findViewById(R.id.tvTitle);
        tvTitle.setText("Extra Item (" + orderDetailD.getTitle() + ")");
        if (!orderDetailD.getNote().equals("")) {
            this.note.setText(orderDetailD.getNote().toString());
        }
        LinearLayout layoutTitle = (LinearLayout) extraItemDialog.findViewById(R.id.layoutTitle);
        final RecyclerView extraItemRecycler = (RecyclerView) extraItemDialog.findViewById(R.id.rv_extraItemRecycler);
        if (extraItemDb.size() == 0) {
            layoutTitle.setVisibility(8);
            extraItemRecycler.setVisibility(8);
        }
        final ExtraDataAdapter extraDataAdapter = new ExtraDataAdapter(context, extraItemDb);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        if (!orderDetailD.getStatus().equalsIgnoreCase("Ordered")) {
            this.note.setEnabled(false);
            submit.setVisibility(8);
        }
        extraItemRecycler.setLayoutManager(linearLayoutManager);
        extraItemRecycler.setAdapter(extraDataAdapter);
        this.alertDialog.show();
        int width = (int) context.getResources().getDimension(R.dimen.activity_login_et_up_width);
        int height = (int) context.getResources().getDimension(R.dimen.activity_login_et_up_width_height);
        this.alertDialog.getWindow().setLayout(width, height);
        cancel.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.ExtraItemDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtraItemDialog.this.alertDialog.dismiss();
            }
        });
        submit.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.ExtraItemDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ExtraItemDialog.this.setExtraItemValue(context, extraItemRecycler, extraDataAdapter, Integer.valueOf(orderDetailD.getQuantity().intValue()), extraItemDb, extraItemsInterface, orderDetailD);
            }
        });
        extraDataAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtraItemValue(Context context, RecyclerView extraItemRecycler, ExtraDataAdapter extraDataAdapter, Integer quantity, List<orderExtraItem> extraItemDb, ExtraItemsInterface extraItemsInterface, OrderDetailDb orderDetailDb) {
        List<orderExtraItem> extraItems = new ArrayList<>();
        Integer total = 0;
        for (int i = 0; i < extraDataAdapter.getItemCount(); i++) {
            ExtraDataAdapter.ExtraDataViewholder viewholder = (ExtraDataAdapter.ExtraDataViewholder) extraItemRecycler.findViewHolderForAdapterPosition(i);
            EditText extraQuantity = viewholder.quantity;
            String extraQuan = extraQuantity.getText().toString();
            if (extraQuan.equals("")) {
                extraQuan = "0";
            }
            orderExtraItem extraItem = new orderExtraItem(extraItemDb.get(i).getItemID(), extraItemDb.get(i).getExtraItemID(), extraItemDb.get(i).getExtraItem(), extraItemDb.get(i).getExtraPrice(), Integer.valueOf(Integer.parseInt(extraQuan)), extraItemDb.get(i).getItemStatus(), extraItemDb.get(i).getSeatNo());
            extraItem.setSeatNo(extraItemDb.get(i).getSeatNo());
            if (Integer.parseInt(extraQuan) != 0) {
                extraItems.add(extraItem);
            }
        }
        for (int i2 = 0; i2 < extraItems.size(); i2++) {
            total = Integer.valueOf(extraItems.get(i2).getQuantity().intValue() + total.intValue());
        }
        if (total.intValue() > quantity.intValue()) {
            Util.showSuccessDialog("Extra Quantity Cannot Be Greater Than Total Quantity", context);
        } else {
            extraItemsInterface.sendExtraItems(extraItems, this.note.getText().toString(), orderDetailDb);
            this.alertDialog.dismiss();
        }
    }
}
