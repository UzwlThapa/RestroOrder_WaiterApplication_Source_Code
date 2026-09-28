package com.danfe.restaurantapp1;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ItemDescriptionActivity extends AppCompatActivity implements View.OnClickListener {
    private String BaseURL = "";
    private Button btnOk;
    private int id;
    private String imagePath;
    private Boolean isCombo;
    private String itemDescription;
    private String itemPrice;
    private String itemTitle;
    private List<ItemgroupDb> itemgroupDbList;
    private ImageView ivDialogItemImage;
    private RestaurantDatabase rDb;
    private TextView tvDialogItemDescription;
    private TextView tvDialogItemName;
    private TextView tvDialogitemPrice;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        supportRequestWindowFeature(1);
        setContentView(R.layout.layout_dialog_menuitem_detail);
        this.BaseURL = Util.getBaseUrl(this);
        try {
            this.id = getIntent().getIntExtra(Constants.ITEM_ID, -2);
            this.isCombo = Boolean.valueOf(getIntent().getBooleanExtra(Constants.IS_COMBO, false));
            this.rDb = new RestaurantDatabase();
            this.ivDialogItemImage = (ImageView) findViewById(R.id.iv_dialog_menuitem_detail);
            this.tvDialogItemName = (TextView) findViewById(R.id.tv_dialog_menuitem_itemname);
            this.tvDialogItemDescription = (TextView) findViewById(R.id.tv_dialog_menuitem_description);
            this.tvDialogitemPrice = (TextView) findViewById(R.id.tv_dialog_menuitem_price);
            this.btnOk = (Button) findViewById(R.id.btn_dialog_itemdescription_ok);
            this.btnOk.setOnClickListener(this);
            this.itemgroupDbList = new ArrayList();
            this.itemgroupDbList = this.rDb.getItembyItemId(getApplicationContext(), this.id, this.isCombo);
            this.imagePath = this.itemgroupDbList.get(0).getImagePath();
            this.itemTitle = this.itemgroupDbList.get(0).getItemName();
            this.itemDescription = this.itemgroupDbList.get(0).getDetails();
            this.itemPrice = String.valueOf(this.itemgroupDbList.get(0).getSRate());
            String imgpath = this.BaseURL + "/ROI_Item/ImageItem/" + this.imagePath;
            Picasso.with(getApplicationContext()).load(imgpath.replaceAll(" ", "%20")).placeholder(R.drawable.ic_restro_logo_new).into(this.ivDialogItemImage);
            this.tvDialogItemName.setText(this.itemTitle);
            if (!this.itemDescription.toString().isEmpty()) {
                this.tvDialogItemDescription.setText(this.itemDescription);
            } else {
                this.tvDialogItemDescription.setVisibility(8);
            }
            this.tvDialogitemPrice.setText(this.itemgroupDbList.get(0).getCurrency().toString() + "  " + this.itemgroupDbList.get(0).getSRate().toString() + "/-");
        } catch (Exception e) {
            Log.e("ItemDescriptionEXC", String.valueOf(e));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.btnOk) {
            finish();
        }
    }
}
