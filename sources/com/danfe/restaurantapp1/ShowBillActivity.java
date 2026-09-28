package com.danfe.restaurantapp1;

import android.graphics.Typeface;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.view.GravityCompat;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.UpdateTotalPrice;
import com.danfe.restaurantapp1.adapter.ShowBillAdapter;
import com.danfe.restaurantapp1.adapter.ShowBillingAdapter;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.BillingTermDb;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class ShowBillActivity extends AppCompatActivity {
    public static int selectedBillNo;
    Double AdvancePayment;
    int BakeryDiscountPercent;
    int BarDiscountPercent;
    int BillEntered;
    Button Btnback;
    int DiscountPercentKot;
    int PizzaDiscountPercent;
    Integer RoomBookedDays;
    Double RoomTotalCharge;
    String TableId;
    TextView basicAmount;
    private List<BillingTermDb> billingTermDbs;
    Bundle bundle;
    private HashMap<Integer, Double> costCenterHashMapValue;
    List<OrderDetailDb> costcenterList;
    private HashMap<Integer, Double> costcenterhashmap;
    EditText etDiscountBakeryAmt;
    EditText etDiscountBarAmt;
    EditText etDiscountKotAmt;
    EditText etDiscountPizzaAmt;
    List<orderExtraItem> extraItemLists;
    List<orderExtraItem> extraItems;
    List<List<orderExtraItem>> extraItemsLists;
    List<EditOrderRequest.OrderDetailsList.orderExtraItem> extraLists;
    private RestaurantWebService.GetEdit getEditService;
    JsonObject gsonObject;
    LinearLayout layoutAdvanceAmt;
    LinearLayout layoutFragmentBilling;
    LinearLayout layoutNoData;
    LinearLayout layoutRemainingAmt;
    LinearLayout layoutRoomAmt;
    LinearLayout linearLayout;
    ListView lvFragmentItemDisc;
    TextView netAmount;
    TextView noDataAvailable;
    List<OrderDetailDb> orderDetailLists;
    List<OrderDetailDb> orderDetailPerSeatNo;
    List<EditOrderRequest.OrderDetailsList> orderDetailsLists;
    List<OrderDetailDb> orderItemDetailLists;
    List<OrderDetailDb> orderItemsLists;
    List<OrderDetailDb> orderListPerSeatNo;
    String orderingUser;
    double rate;
    RestAdapter restAdapter;
    RestaurantDatabase restaurantDatabase;
    long roomId;
    RecyclerView rvShowBill;
    int seatNo;
    String shiftedByUserName;
    ShowBillAdapter showBillAdapter;
    TextView showBilldate;
    private ShowBillingAdapter showBillingAdapter;
    Spinner spDiscountType;
    Spinner spShowbill;
    TextView subAmount;
    String tableDate;
    int tableId;
    TextView tableRoom;
    String tableroom;
    String tablname;
    List<List<orderExtraItem>> tempExtraExtraLists;
    List<List<orderExtraItem>> tempExtraItemsDbs;
    List<List<orderExtraItem>> tempExtraLists;
    List<OrderDetailDb> tempOrderDetailDb;
    List<EditOrderRequest.OrderDetailsList> temporaryList;
    List<orderExtraItem> testExtraItems;
    Double totalamountresult;
    TextView tvAdvanceAmt;
    TextView tvBillInfo;
    TextView tvBillName;
    TextView tvBillTableName;
    TextView tvDiscountBakery;
    TextView tvDiscountBar;
    TextView tvDiscountKot;
    TextView tvDiscountPizza;
    TextView tvRemainingAmt;
    TextView tvRoomAmt;
    TextView tvTotaldiscountFragment;
    TextView tvWaiterName;
    UpdateTotalPrice updateTotalPrice;
    View view;
    String waiterName;
    Double newDiscountAmount = Double.valueOf(0.0d);
    int selectedBill = 0;
    private String BaseURL = "";
    Double subamount = Double.valueOf(0.0d);
    Double newBasicAmount = Double.valueOf(0.0d);
    Double KotdiscountAmount = Double.valueOf(0.0d);
    Double BardiscountAmount = Double.valueOf(0.0d);
    Double BakerydiscountAmount = Double.valueOf(0.0d);
    Double PizzadiscountAmount = Double.valueOf(0.0d);

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.show_bill_activity);
        this.spShowbill = (Spinner) findViewById(R.id.sp_showbill_seat);
        this.tvBillName = (TextView) findViewById(R.id.tv_showbill_name);
        this.tvBillTableName = (TextView) findViewById(R.id.tv_showbill_tablename);
        this.showBilldate = (TextView) findViewById(R.id.tv_showbill_date);
        this.rvShowBill = (RecyclerView) findViewById(R.id.rv_showbill);
        this.tableRoom = (TextView) findViewById(R.id.tv_showbill_tableRoom);
        this.noDataAvailable = (TextView) findViewById(R.id.noDataAvailable);
        this.subAmount = (TextView) findViewById(R.id.tv_showbill_subamount);
        this.basicAmount = (TextView) findViewById(R.id.tv_showbill_basicAmount);
        this.netAmount = (TextView) findViewById(R.id.tv_showbill_netAmount);
        this.layoutNoData = (LinearLayout) findViewById(R.id.layout_noData);
        this.tvWaiterName = (TextView) findViewById(R.id.tv_waitername);
        this.lvFragmentItemDisc = (ListView) findViewById(R.id.lv_fragment_discount);
        this.layoutFragmentBilling = (LinearLayout) findViewById(R.id.layout_fragment_billing);
        this.tvTotaldiscountFragment = (TextView) findViewById(R.id.tv_totaldiscount_fragment);
        this.tvDiscountKot = (TextView) findViewById(R.id.tv_discount_kot);
        this.etDiscountKotAmt = (EditText) findViewById(R.id.et_discount_kot_amount);
        this.tvDiscountBar = (TextView) findViewById(R.id.tv_discount_bar);
        this.etDiscountBarAmt = (EditText) findViewById(R.id.et_discount_bar_amount);
        this.tvDiscountBakery = (TextView) findViewById(R.id.tv_discount_bakery);
        this.etDiscountBakeryAmt = (EditText) findViewById(R.id.et_discount_bakery_amount);
        this.tvDiscountPizza = (TextView) findViewById(R.id.tv_discount_pizza);
        this.etDiscountPizzaAmt = (EditText) findViewById(R.id.et_discount_pizza_amount);
        this.layoutRoomAmt = (LinearLayout) findViewById(R.id.layoutRoomAmount);
        this.layoutAdvanceAmt = (LinearLayout) findViewById(R.id.layoutAdvanceAmount);
        this.layoutRemainingAmt = (LinearLayout) findViewById(R.id.layoutRemainingPayment);
        this.tvRoomAmt = (TextView) findViewById(R.id.tv_totalRoomAmount);
        this.tvAdvanceAmt = (TextView) findViewById(R.id.tv_advance_payment);
        this.tvRemainingAmt = (TextView) findViewById(R.id.tv_remaining_Amount);
        this.spDiscountType = (Spinner) findViewById(R.id.sp_discount_type);
        this.orderDetailsLists = new ArrayList();
        this.restaurantDatabase = new RestaurantDatabase();
        this.Btnback = (Button) findViewById(R.id.bt_back);
        this.Btnback.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.ShowBillActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ShowBillActivity.this.onBackPressed();
            }
        });
        this.BaseURL = Util.getBaseUrl(this);
        this.orderDetailLists = new ArrayList();
        this.orderDetailPerSeatNo = new ArrayList();
        this.orderItemDetailLists = new ArrayList();
        this.orderItemsLists = new ArrayList();
        this.extraItemLists = new ArrayList();
        this.costcenterhashmap = new HashMap<>();
        this.costcenterList = new ArrayList();
        this.tempExtraLists = new ArrayList();
        this.extraItemsLists = new ArrayList();
        this.tempOrderDetailDb = new ArrayList();
        this.orderListPerSeatNo = new ArrayList();
        this.extraLists = new ArrayList();
        this.tempExtraExtraLists = new ArrayList();
        this.testExtraItems = new ArrayList();
        this.costCenterHashMapValue = new HashMap<>();
        List<String> discountListType = new ArrayList<>();
        discountListType.add("Select");
        discountListType.add("Percent");
        discountListType.add("Flat");
        ArrayAdapter discountAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerwhitebackground, discountListType);
        this.spDiscountType.setAdapter((SpinnerAdapter) discountAdapter);
        this.spDiscountType.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ShowBillActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String DiscountTypeTitle = ShowBillActivity.this.spDiscountType.getSelectedItem().toString();
                Log.e("DiscountTypeTitle", "onItemSelected: " + DiscountTypeTitle);
                if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Percent")) {
                    ShowBillActivity.this.newDiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.etDiscountKotAmt.setText("0");
                    ShowBillActivity.this.etDiscountBarAmt.setText("0");
                    ShowBillActivity.this.etDiscountBakeryAmt.setText("0");
                    ShowBillActivity.this.etDiscountPizzaAmt.setText("0");
                    ShowBillActivity.this.etDiscountKotAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountBarAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountBakeryAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountPizzaAmt.setEnabled(true);
                    ShowBillActivity.this.DiscountPercentKot = 0;
                    ShowBillActivity.this.BarDiscountPercent = 0;
                    ShowBillActivity.this.BakeryDiscountPercent = 0;
                    ShowBillActivity.this.PizzaDiscountPercent = 0;
                } else if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Flat")) {
                    ShowBillActivity.this.newDiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.etDiscountKotAmt.setText("0");
                    ShowBillActivity.this.etDiscountBarAmt.setText("0");
                    ShowBillActivity.this.etDiscountBakeryAmt.setText("0");
                    ShowBillActivity.this.etDiscountPizzaAmt.setText("0");
                    ShowBillActivity.this.etDiscountKotAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountBarAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountBakeryAmt.setEnabled(true);
                    ShowBillActivity.this.etDiscountPizzaAmt.setEnabled(true);
                    ShowBillActivity.this.DiscountPercentKot = 0;
                    ShowBillActivity.this.BarDiscountPercent = 0;
                    ShowBillActivity.this.BakeryDiscountPercent = 0;
                    ShowBillActivity.this.PizzaDiscountPercent = 0;
                    ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                } else if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Select")) {
                    ShowBillActivity.this.newDiscountAmount = Double.valueOf(0.0d);
                    ShowBillActivity.this.etDiscountKotAmt.setEnabled(false);
                    ShowBillActivity.this.etDiscountBarAmt.setEnabled(false);
                    ShowBillActivity.this.etDiscountBakeryAmt.setEnabled(false);
                    ShowBillActivity.this.etDiscountPizzaAmt.setEnabled(false);
                    ShowBillActivity.this.etDiscountKotAmt.setText("0");
                    ShowBillActivity.this.etDiscountBarAmt.setText("0");
                    ShowBillActivity.this.etDiscountBakeryAmt.setText("0");
                    ShowBillActivity.this.etDiscountPizzaAmt.setText("0");
                }
                ShowBillActivity.this.costCenterHashMapValue = ShowBillActivity.this.costcenterhashmap;
                for (int x = 1; x == 1; x++) {
                    if (ShowBillActivity.this.costCenterHashMapValue.get(1) != null) {
                        ShowBillActivity.this.tvDiscountKot.setText("KOT (Rs. " + ShowBillActivity.this.costCenterHashMapValue.get(1) + " )");
                    } else {
                        ShowBillActivity.this.etDiscountKotAmt.setEnabled(false);
                        ShowBillActivity.this.tvDiscountKot.setText("KOT (Rs. 0.00 )");
                        ShowBillActivity.this.DiscountPercentKot = 0;
                    }
                    if (ShowBillActivity.this.costCenterHashMapValue.get(2) != null) {
                        ShowBillActivity.this.tvDiscountBar.setText("Bar (Rs. " + ShowBillActivity.this.costCenterHashMapValue.get(2) + " )");
                    } else {
                        ShowBillActivity.this.etDiscountBarAmt.setEnabled(false);
                        ShowBillActivity.this.tvDiscountBar.setText("Bar (Rs. 0.00 )");
                        ShowBillActivity.this.BarDiscountPercent = 0;
                    }
                    if (ShowBillActivity.this.costCenterHashMapValue.get(95) != null) {
                        ShowBillActivity.this.tvDiscountBakery.setText("Bakery (Rs. " + ShowBillActivity.this.costCenterHashMapValue.get(95) + " )");
                    } else {
                        ShowBillActivity.this.etDiscountBakeryAmt.setEnabled(false);
                        ShowBillActivity.this.tvDiscountBakery.setText("Bakery (Rs. 0.00 )");
                        ShowBillActivity.this.BakeryDiscountPercent = 0;
                    }
                    if (ShowBillActivity.this.costCenterHashMapValue.get(97) != null) {
                        ShowBillActivity.this.tvDiscountPizza.setText("Pizza (Rs. " + ShowBillActivity.this.costCenterHashMapValue.get(97) + " )");
                    } else {
                        ShowBillActivity.this.etDiscountPizzaAmt.setEnabled(false);
                        ShowBillActivity.this.tvDiscountPizza.setText("Pizza (Rs. 0.00 )");
                        ShowBillActivity.this.PizzaDiscountPercent = 0;
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        updateCostCenter();
        this.updateTotalPrice = new UpdateTotalPrice() { // from class: com.danfe.restaurantapp1.ShowBillActivity.3
            @Override // com.danfe.restaurantapp1.Interface.UpdateTotalPrice
            public void onPriceUpdate(double totaldiscount, double totalamount) {
                ShowBillActivity.this.totalamountresult = Double.valueOf(totalamount);
                Double totalAmountWithRoomCharge = Double.valueOf(ShowBillActivity.this.RoomTotalCharge.doubleValue() + totalamount);
                ShowBillActivity.this.billingTermDbs = new ArrayList();
                ShowBillActivity.this.billingTermDbs = ShowBillActivity.this.restaurantDatabase.loadAllBillingTerminAsc(ShowBillActivity.this.getApplicationContext());
                ShowBillActivity.this.tvTotaldiscountFragment.setVisibility(0);
                if (totaldiscount > 0.0d) {
                    ShowBillActivity.this.tvTotaldiscountFragment.setText(String.format("%.2f", Double.valueOf(totaldiscount)));
                } else {
                    ShowBillActivity.this.tvTotaldiscountFragment.setText("0.00");
                }
                if (totalAmountWithRoomCharge.doubleValue() > 0.0d) {
                    ShowBillActivity.this.basicAmount.setText(String.format("%.2f", Double.valueOf(ShowBillActivity.this.RoomTotalCharge.doubleValue() + totalamount)));
                    ShowBillActivity.this.subamount = Double.valueOf(totalamount + totaldiscount);
                    ShowBillActivity.this.subAmount.setText(String.valueOf(ShowBillActivity.this.subamount).toString());
                    ShowBillActivity.this.linearLayout = new LinearLayout(ShowBillActivity.this.getApplicationContext());
                    ShowBillActivity.this.linearLayout.setOrientation(1);
                    final LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
                    params.weight = 2.0f;
                    params.gravity = GravityCompat.END;
                    ShowBillActivity.this.layoutFragmentBilling.removeAllViews();
                    ShowBillActivity.this.newBasicAmount = ShowBillActivity.this.subamount;
                    ShowBillActivity.this.tvRoomAmt.setText(String.valueOf(ShowBillActivity.this.RoomTotalCharge));
                    ShowBillActivity.this.tvAdvanceAmt.setText(String.valueOf(ShowBillActivity.this.AdvancePayment));
                    if (ShowBillActivity.this.RoomTotalCharge.doubleValue() == 0.0d) {
                        ShowBillActivity.this.layoutRoomAmt.setVisibility(8);
                        ShowBillActivity.this.layoutAdvanceAmt.setVisibility(8);
                        ShowBillActivity.this.layoutRemainingAmt.setVisibility(8);
                    } else if (ShowBillActivity.this.RoomTotalCharge.doubleValue() != 0.0d) {
                        ShowBillActivity.this.layoutRoomAmt.setVisibility(0);
                        ShowBillActivity.this.layoutAdvanceAmt.setVisibility(0);
                        ShowBillActivity.this.layoutRemainingAmt.setVisibility(0);
                    }
                    TextWatcher etTextWatcher = new TextWatcher() { // from class: com.danfe.restaurantapp1.ShowBillActivity.3.1
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence s, int start, int before, int count) {
                            if (s.length() != 0) {
                                if (!s.equals(0)) {
                                    ShowBillActivity.this.linearLayout.removeAllViews();
                                    if (ShowBillActivity.this.layoutFragmentBilling.getParent() != null) {
                                        ((ViewGroup) ShowBillActivity.this.layoutFragmentBilling.getParent()).removeView(ShowBillActivity.this.linearLayout);
                                    }
                                    for (int i = 0; i == 1; i++) {
                                        if (ShowBillActivity.this.etDiscountKotAmt.getText().toString().equals("")) {
                                            ShowBillActivity.this.DiscountPercentKot = 0;
                                            ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                        } else {
                                            ShowBillActivity.this.DiscountPercentKot = Integer.parseInt(ShowBillActivity.this.etDiscountKotAmt.getText().toString());
                                        }
                                        if (ShowBillActivity.this.etDiscountBarAmt.getText().toString().equals("")) {
                                            ShowBillActivity.this.BarDiscountPercent = 0;
                                            ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                        } else {
                                            ShowBillActivity.this.BarDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBarAmt.getText().toString());
                                        }
                                        if (ShowBillActivity.this.etDiscountBakeryAmt.getText().toString().equals("")) {
                                            ShowBillActivity.this.BakeryDiscountPercent = 0;
                                            ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                        } else {
                                            ShowBillActivity.this.BakeryDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBakeryAmt.getText().toString());
                                        }
                                        if (ShowBillActivity.this.etDiscountPizzaAmt.getText().toString().equals("")) {
                                            ShowBillActivity.this.PizzaDiscountPercent = 0;
                                            ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                        } else {
                                            ShowBillActivity.this.PizzaDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountPizzaAmt.getText().toString());
                                        }
                                    }
                                    Log.e("DiscountPercentKot: ", ShowBillActivity.this.DiscountPercentKot + "  BarDiscountPercent: " + ShowBillActivity.this.BarDiscountPercent + "  BakeryDiscountPercent: " + ShowBillActivity.this.BakeryDiscountPercent + "  PizzaDiscountPercent: " + ShowBillActivity.this.PizzaDiscountPercent);
                                    for (int i2 = 1; i2 == 1; i2++) {
                                        if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Percent")) {
                                            ShowBillActivity.this.DiscountPercentKot = 0;
                                            ShowBillActivity.this.BarDiscountPercent = 0;
                                            ShowBillActivity.this.BakeryDiscountPercent = 0;
                                            ShowBillActivity.this.PizzaDiscountPercent = 0;
                                            ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                            if (ShowBillActivity.this.etDiscountKotAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.DiscountPercentKot = 0;
                                                ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.DiscountPercentKot = Integer.parseInt(ShowBillActivity.this.etDiscountKotAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountBarAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.BarDiscountPercent = 0;
                                                ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.BarDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBarAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountBakeryAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.BakeryDiscountPercent = 0;
                                                ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.BakeryDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBakeryAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountPizzaAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.PizzaDiscountPercent = 0;
                                                ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.PizzaDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountPizzaAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.DiscountPercentKot != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf((((Double) ShowBillActivity.this.costCenterHashMapValue.get(1)).doubleValue() * ((double) ShowBillActivity.this.DiscountPercentKot)) / 100.0d);
                                                ShowBillActivity.this.KotdiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.BarDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf((((Double) ShowBillActivity.this.costCenterHashMapValue.get(2)).doubleValue() * ((double) ShowBillActivity.this.BarDiscountPercent)) / 100.0d);
                                                ShowBillActivity.this.BardiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.BakeryDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf((((Double) ShowBillActivity.this.costCenterHashMapValue.get(95)).doubleValue() * ((double) ShowBillActivity.this.BakeryDiscountPercent)) / 100.0d);
                                                ShowBillActivity.this.BakerydiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.PizzaDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf((((Double) ShowBillActivity.this.costCenterHashMapValue.get(97)).doubleValue() * ((double) ShowBillActivity.this.PizzaDiscountPercent)) / 100.0d);
                                                ShowBillActivity.this.PizzadiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                        } else if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Flat")) {
                                            ShowBillActivity.this.DiscountPercentKot = 0;
                                            ShowBillActivity.this.BarDiscountPercent = 0;
                                            ShowBillActivity.this.BakeryDiscountPercent = 0;
                                            ShowBillActivity.this.PizzaDiscountPercent = 0;
                                            ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                            if (ShowBillActivity.this.etDiscountKotAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.DiscountPercentKot = 0;
                                                ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.DiscountPercentKot = Integer.parseInt(ShowBillActivity.this.etDiscountKotAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountBarAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.BarDiscountPercent = 0;
                                                ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.BarDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBarAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountBakeryAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.BakeryDiscountPercent = 0;
                                                ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.BakeryDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountBakeryAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.etDiscountPizzaAmt.getText().toString().equals("")) {
                                                ShowBillActivity.this.PizzaDiscountPercent = 0;
                                                ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                            } else {
                                                ShowBillActivity.this.PizzaDiscountPercent = Integer.parseInt(ShowBillActivity.this.etDiscountPizzaAmt.getText().toString());
                                            }
                                            if (ShowBillActivity.this.DiscountPercentKot != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf(ShowBillActivity.this.DiscountPercentKot);
                                                ShowBillActivity.this.KotdiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.BarDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf(ShowBillActivity.this.BarDiscountPercent);
                                                ShowBillActivity.this.BardiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.BakeryDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf(ShowBillActivity.this.BakeryDiscountPercent);
                                                ShowBillActivity.this.BakerydiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                            if (ShowBillActivity.this.PizzaDiscountPercent != 0) {
                                                ShowBillActivity.this.newDiscountAmount = Double.valueOf(ShowBillActivity.this.PizzaDiscountPercent);
                                                ShowBillActivity.this.PizzadiscountAmount = ShowBillActivity.this.newDiscountAmount;
                                            }
                                        } else if (ShowBillActivity.this.spDiscountType.getSelectedItem().toString().equals("Select")) {
                                            ShowBillActivity.this.KotdiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BardiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.BakerydiscountAmount = Double.valueOf(0.0d);
                                            ShowBillActivity.this.PizzadiscountAmount = Double.valueOf(0.0d);
                                        }
                                    }
                                    ShowBillActivity.this.newDiscountAmount = Double.valueOf(ShowBillActivity.this.KotdiscountAmount.doubleValue() + ShowBillActivity.this.BardiscountAmount.doubleValue() + ShowBillActivity.this.BakerydiscountAmount.doubleValue() + ShowBillActivity.this.PizzadiscountAmount.doubleValue());
                                    ShowBillActivity.this.newBasicAmount = Double.valueOf((ShowBillActivity.this.subamount.doubleValue() - ShowBillActivity.this.newDiscountAmount.doubleValue()) + ShowBillActivity.this.RoomTotalCharge.doubleValue());
                                    ShowBillActivity.this.basicAmount.setText(String.format("%.2f", ShowBillActivity.this.newBasicAmount));
                                    ShowBillActivity.this.tvTotaldiscountFragment.setText(" " + String.format("%.2f", ShowBillActivity.this.newDiscountAmount));
                                } else if (s.equals("")) {
                                    Log.e("Kot: ", "amount " + ((Object) s));
                                    ShowBillActivity.this.newBasicAmount = ShowBillActivity.this.subamount;
                                }
                                for (int i3 = 0; i3 < ShowBillActivity.this.billingTermDbs.size(); i3++) {
                                    ShowBillActivity.this.tvBillInfo = new TextView(ShowBillActivity.this.getApplicationContext());
                                    ShowBillActivity.this.tvBillInfo.setTypeface(Typeface.create("sans-serif-condensed", 1));
                                    ShowBillActivity.this.tvBillInfo.setTextColor(ShowBillActivity.this.getResources().getColor(R.color.seventytransparentblack));
                                    ShowBillActivity.this.tvBillInfo.setTextSize(2, ShowBillActivity.this.getResources().getDimension(R.dimen.view_room_item_layout_image_paddingTop) / ShowBillActivity.this.getResources().getDisplayMetrics().density);
                                    ShowBillActivity.this.tvBillInfo.setLayoutParams(params);
                                    if (((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getIsAdded().equals(true)) {
                                        ShowBillActivity.this.rate = Double.parseDouble(((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getRate());
                                        Double disamount = Double.valueOf((ShowBillActivity.this.rate * (ShowBillActivity.this.newBasicAmount.doubleValue() + ShowBillActivity.this.RoomTotalCharge.doubleValue())) / 100.0d);
                                        if (i3 == 0) {
                                            ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.newBasicAmount.doubleValue() + ShowBillActivity.this.RoomTotalCharge.doubleValue() + disamount.doubleValue());
                                        }
                                        if (i3 == 1) {
                                            disamount = Double.valueOf((ShowBillActivity.this.rate * ShowBillActivity.this.totalamountresult.doubleValue()) / 100.0d);
                                            ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.totalamountresult.doubleValue() + disamount.doubleValue());
                                        }
                                        ShowBillActivity.this.tvBillInfo.setText(((Object) Html.fromHtml("<b>" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getName() + " (+" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getRate() + "%) :</b> ")) + String.format("%.2f", disamount));
                                    } else if (((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getIsAdded().equals(false)) {
                                        ShowBillActivity.this.rate = Double.parseDouble(((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getRate());
                                        Double disamount2 = Double.valueOf((ShowBillActivity.this.rate * ShowBillActivity.this.newBasicAmount.doubleValue()) / 100.0d);
                                        ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.newBasicAmount.doubleValue() - disamount2.doubleValue());
                                        ShowBillActivity.this.tvBillInfo.setText(((Object) Html.fromHtml("<b>" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getName() + " (-" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i3)).getRate() + "%) :</b> ")) + String.format("%.2f", disamount2));
                                    }
                                    View view = new View(ShowBillActivity.this.getApplicationContext());
                                    view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                                    view.setPadding(5, 5, 5, 5);
                                    if (ShowBillActivity.this.linearLayout.getParent() != null) {
                                        ((ViewGroup) ShowBillActivity.this.linearLayout.getParent()).removeView(ShowBillActivity.this.linearLayout);
                                    }
                                    ShowBillActivity.this.linearLayout.addView(ShowBillActivity.this.tvBillInfo);
                                }
                                ShowBillActivity.this.layoutFragmentBilling.addView(ShowBillActivity.this.linearLayout);
                                ShowBillActivity.this.netAmount.setText(" " + String.format("%.2f", ShowBillActivity.this.totalamountresult));
                                ShowBillActivity.this.tvRemainingAmt.setText(String.format("%.2f", Double.valueOf(ShowBillActivity.this.totalamountresult.doubleValue() - ShowBillActivity.this.AdvancePayment.doubleValue())));
                            }
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable s) {
                        }
                    };
                    ShowBillActivity.this.etDiscountKotAmt.addTextChangedListener(etTextWatcher);
                    ShowBillActivity.this.etDiscountBarAmt.addTextChangedListener(etTextWatcher);
                    ShowBillActivity.this.etDiscountBakeryAmt.addTextChangedListener(etTextWatcher);
                    ShowBillActivity.this.etDiscountPizzaAmt.addTextChangedListener(etTextWatcher);
                    for (int i = 0; i < ShowBillActivity.this.billingTermDbs.size(); i++) {
                        TextView tvBillInfo = new TextView(ShowBillActivity.this.getApplicationContext());
                        tvBillInfo.setTypeface(Typeface.create("sans-serif-condensed", 1));
                        tvBillInfo.setTextColor(ShowBillActivity.this.getResources().getColor(R.color.seventytransparentblack));
                        tvBillInfo.setTextSize(2, ShowBillActivity.this.getResources().getDimension(R.dimen.view_room_item_layout_image_paddingTop) / ShowBillActivity.this.getResources().getDisplayMetrics().density);
                        tvBillInfo.setLayoutParams(params);
                        if (((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getIsAdded().equals(true)) {
                            ShowBillActivity.this.rate = Double.parseDouble(((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getRate());
                            Double disamount = Double.valueOf((ShowBillActivity.this.rate * (ShowBillActivity.this.newBasicAmount.doubleValue() + ShowBillActivity.this.RoomTotalCharge.doubleValue())) / 100.0d);
                            if (i == 0) {
                                ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.newBasicAmount.doubleValue() + ShowBillActivity.this.RoomTotalCharge.doubleValue() + disamount.doubleValue());
                            }
                            if (i == 1) {
                                disamount = Double.valueOf((ShowBillActivity.this.rate * ShowBillActivity.this.totalamountresult.doubleValue()) / 100.0d);
                                ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.totalamountresult.doubleValue() + disamount.doubleValue());
                            }
                            tvBillInfo.setText(((Object) Html.fromHtml("<b>" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getName() + " (+" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getRate() + "%) :</b> ")) + String.format("%.2f", disamount));
                        } else if (((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getIsAdded().equals(false)) {
                            ShowBillActivity.this.rate = Double.parseDouble(((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getRate());
                            Double disamount2 = Double.valueOf((ShowBillActivity.this.rate * ShowBillActivity.this.newBasicAmount.doubleValue()) / 100.0d);
                            ShowBillActivity.this.totalamountresult = Double.valueOf(ShowBillActivity.this.newBasicAmount.doubleValue() - disamount2.doubleValue());
                            tvBillInfo.setText(((Object) Html.fromHtml("<b>" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getName() + " (-" + ((BillingTermDb) ShowBillActivity.this.billingTermDbs.get(i)).getRate() + "%) :</b> ")) + String.format("%.2f", disamount2));
                        }
                        View view = new View(ShowBillActivity.this.getApplicationContext());
                        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                        view.setPadding(5, 5, 5, 5);
                        ShowBillActivity.this.linearLayout.addView(tvBillInfo);
                    }
                    ShowBillActivity.this.layoutFragmentBilling.addView(ShowBillActivity.this.linearLayout);
                    ShowBillActivity.this.netAmount.setText(" " + String.format("%.2f", ShowBillActivity.this.totalamountresult));
                    ShowBillActivity.this.tvRemainingAmt.setText(String.format("%.2f", Double.valueOf(ShowBillActivity.this.totalamountresult.doubleValue() - ShowBillActivity.this.AdvancePayment.doubleValue())));
                    return;
                }
                ShowBillActivity.this.netAmount.setText(" 0.00");
            }
        };
        this.tableId = getIntent().getIntExtra("oldTableId", 0);
        this.roomId = getIntent().getLongExtra("roomId", 0L);
        this.tablname = getIntent().getStringExtra("tableName");
        this.tableDate = getIntent().getStringExtra("tableDate");
        this.tableroom = getIntent().getStringExtra("tableroom");
        this.waiterName = getIntent().getStringExtra("waiterName");
        this.shiftedByUserName = getIntent().getStringExtra("shiftedByUserName");
        getPredefinedValue(this.tableId, this.roomId);
        this.tvBillTableName.setText(this.tablname);
        this.showBilldate.setTypeface(null, 2);
        this.showBilldate.setText(this.tableDate);
        this.tableRoom.setText(this.tableroom);
        this.spShowbill.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ShowBillActivity.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                ShowBillActivity.this.selectedBill = Integer.parseInt(ShowBillActivity.this.spShowbill.getSelectedItem().toString());
                Log.e("selectedBill: ", String.valueOf(ShowBillActivity.this.spShowbill.getSelectedItem()));
                ShowBillActivity.this.getDataBasedOnSelectedValue(ShowBillActivity.this.selectedBill);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getApplicationContext(), 1, false);
        this.rvShowBill.setLayoutManager(linearLayoutManager);
    }

    public void FilterBillOrderItemLists(int selectedBillOrders) {
        selectedBillNo = selectedBillOrders;
        List<String> billNo = new ArrayList<>();
        for (int i = 0; i < selectedBillNo; i++) {
            billNo.add(String.valueOf(i + 1));
        }
        ArrayAdapter myAdapter = new ArrayAdapter(getApplicationContext(), R.layout.spinner_ressource_search, billNo);
        this.spShowbill.setAdapter((SpinnerAdapter) myAdapter);
    }

    private List<OrderDetailDb> getPredefinedValue(int tableId, long roomId) {
        JSONObject obj = new JSONObject();
        try {
            obj.put("TableId", tableId);
            obj.put("RoomId", roomId);
            JsonParser jsonParser = new JsonParser();
            this.gsonObject = (JsonObject) jsonParser.parse(obj.toString());
            Log.e("getPredefinedValue", this.gsonObject.toString());
        } catch (JSONException je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.getEditService = (RestaurantWebService.GetEdit) this.restAdapter.create(RestaurantWebService.GetEdit.class);
        this.getEditService.getEdit(this.gsonObject, new Callback<EditOrderRequest>() { // from class: com.danfe.restaurantapp1.ShowBillActivity.5
            @Override // retrofit.Callback
            public void success(EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    ShowBillActivity.this.orderingUser = editOrderRequest.getUserName();
                    ShowBillActivity.this.orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    ShowBillActivity.this.BillEntered = editOrderRequest.getGuestNo().intValue();
                    ShowBillActivity.this.TableId = editOrderRequest.getTableId();
                    ShowBillActivity.this.RoomTotalCharge = editOrderRequest.getRoomTotal();
                    ShowBillActivity.this.AdvancePayment = editOrderRequest.getAdvancePaid();
                    ShowBillActivity.this.RoomBookedDays = editOrderRequest.getRoomBookedDays();
                    ShowBillActivity.this.tvWaiterName.setText(ShowBillActivity.this.orderingUser);
                    ShowBillActivity.this.FilterBillOrderItemLists(ShowBillActivity.this.BillEntered);
                    Double extraItemAmount = Double.valueOf(0.0d);
                    for (int i = 0; i < ShowBillActivity.this.orderDetailsLists.size(); i++) {
                        ShowBillActivity.this.extraLists = ShowBillActivity.this.orderDetailsLists.get(i).getOrderExtraItems();
                        if (ShowBillActivity.this.orderDetailsLists.get(i).getOrderExtraItems().size() > 0) {
                            for (int j = 0; j < ShowBillActivity.this.extraLists.size(); j++) {
                                extraItemAmount = Double.valueOf((((double) ShowBillActivity.this.extraLists.get(j).getQuantity().intValue()) * ShowBillActivity.this.extraLists.get(j).getExtraPrice().doubleValue()) + extraItemAmount.doubleValue());
                            }
                        }
                        ShowBillActivity.this.orderItemDetailLists.add(new OrderDetailDb(Long.valueOf(ShowBillActivity.this.orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), ShowBillActivity.this.orderDetailsLists.get(i).getROI_ItemId(), ShowBillActivity.this.orderDetailsLists.get(i).getROI_ItemName(), ShowBillActivity.this.orderDetailsLists.get(i).getQuantity(), Double.valueOf(ShowBillActivity.this.orderDetailsLists.get(i).getRate().doubleValue()), ShowBillActivity.this.orderDetailsLists.get(i).getIsCancelled(), ShowBillActivity.this.orderDetailsLists.get(i).getSeatNo(), ShowBillActivity.this.orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(ShowBillActivity.this.orderDetailsLists.get(i).getExtraCharge()))), ShowBillActivity.this.orderDetailsLists.get(i).getStatus(), 0, ShowBillActivity.this.orderDetailsLists.get(i).getCombo(), ShowBillActivity.this.orderDetailsLists.get(i).getCostCenterId()));
                    }
                }
                if (ShowBillActivity.this.BillEntered > 0) {
                    ShowBillActivity.this.FilterBillOrderItemLists(ShowBillActivity.this.BillEntered);
                } else if (ShowBillActivity.this.BillEntered == 0) {
                    ShowBillActivity.this.BillEntered = 1;
                    ShowBillActivity.this.FilterBillOrderItemLists(ShowBillActivity.this.BillEntered);
                }
                if (ShowBillActivity.this.orderItemDetailLists.size() > 0) {
                    for (int i2 = 0; i2 < ShowBillActivity.this.orderItemDetailLists.size(); i2++) {
                        ShowBillActivity.this.orderItemsLists.add(ShowBillActivity.this.orderItemDetailLists.get(i2));
                        ShowBillActivity.this.seatNo = ShowBillActivity.this.orderItemDetailLists.get(i2).getSeatNo().intValue();
                    }
                } else {
                    ShowBillActivity.this.noDataAvailable.setVisibility(0);
                    ShowBillActivity.this.rvShowBill.setVisibility(8);
                }
                Log.e("seatNo: ", String.valueOf(ShowBillActivity.this.seatNo));
                ShowBillActivity.this.orderItemDetailLists.removeAll(ShowBillActivity.this.orderItemDetailLists);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
            }
        });
        return this.orderItemDetailLists;
    }

    public void getDataBasedOnSelectedValue(int SelectedBill) {
        this.temporaryList = new ArrayList();
        for (int i = 0; i < this.orderDetailsLists.size(); i++) {
            if (this.orderDetailsLists.get(i).getSeatNo().intValue() == SelectedBill) {
                this.temporaryList.add(this.orderDetailsLists.get(i));
            }
        }
        this.showBillAdapter = new ShowBillAdapter(getApplicationContext(), this.temporaryList);
        this.rvShowBill.setAdapter(this.showBillAdapter);
        this.showBillAdapter.notifyDataSetChanged();
        this.orderDetailPerSeatNo.removeAll(this.orderDetailPerSeatNo);
        for (int i2 = 0; i2 < this.orderItemsLists.size(); i2++) {
            if (this.orderItemsLists.get(i2).getSeatNo().intValue() == SelectedBill) {
                this.orderDetailPerSeatNo.add(this.orderItemsLists.get(i2));
            }
        }
        this.tempExtraItemsDbs = new ArrayList();
        if (this.tempExtraExtraLists.size() > 0) {
            for (int j = 0; j < this.tempExtraExtraLists.size(); j++) {
                if (Integer.parseInt(this.tempExtraExtraLists.get(j).get(0).getSeatNo()) == SelectedBill) {
                    this.tempExtraItemsDbs.add(this.tempExtraExtraLists.get(j));
                }
            }
        }
        if (this.orderDetailPerSeatNo.size() < 0) {
            this.noDataAvailable.setVisibility(0);
            this.rvShowBill.setVisibility(8);
        }
        for (int i3 = 0; i3 < this.orderDetailPerSeatNo.size(); i3++) {
            this.orderListPerSeatNo.add(this.orderDetailPerSeatNo.get(i3));
        }
        updateCostCenter();
    }

    private void updateCostCenter() {
        this.lvFragmentItemDisc.setAdapter((ListAdapter) null);
        if (this.tempOrderDetailDb.containsAll(this.orderListPerSeatNo) && this.orderListPerSeatNo.containsAll(this.tempOrderDetailDb)) {
            if (this.orderListPerSeatNo.size() > 0) {
                this.costcenterhashmap.clear();
                if (this.orderListPerSeatNo.size() == 1) {
                    Log.e("updateCostCenter", String.valueOf(this.orderListPerSeatNo.get(0).getItemId()) + String.valueOf(this.orderListPerSeatNo.get(0).getIsCombo()));
                    this.costcenterhashmap.put(Integer.valueOf(this.orderItemsLists.get(0).getCostCenterId().intValue()), getActualPrice(this.orderListPerSeatNo.get(0)));
                } else {
                    for (int x = 0; x < this.orderListPerSeatNo.size(); x++) {
                        Double rate = Double.valueOf(0.0d);
                        Log.e("ItemId", String.valueOf(this.orderListPerSeatNo.get(x).getItemId()));
                        int costcenterid = this.orderListPerSeatNo.get(x).getCostCenterId().intValue();
                        for (int y = 0; y < this.orderListPerSeatNo.size(); y++) {
                            int newcostcenterid = this.orderListPerSeatNo.get(y).getCostCenterId().intValue();
                            if (newcostcenterid == costcenterid) {
                                if (this.costcenterhashmap.containsKey(Integer.valueOf(costcenterid))) {
                                    rate = Double.valueOf(rate.doubleValue() + getActualPrice(this.orderListPerSeatNo.get(y)).doubleValue());
                                    this.costcenterhashmap.put(Integer.valueOf(costcenterid), rate);
                                } else {
                                    rate = getActualPrice(this.orderListPerSeatNo.get(x));
                                    this.costcenterhashmap.put(Integer.valueOf(costcenterid), rate);
                                }
                            }
                        }
                    }
                }
                this.showBillingAdapter = new ShowBillingAdapter(getApplicationContext(), this.costcenterhashmap, this.updateTotalPrice);
                this.lvFragmentItemDisc.setAdapter((ListAdapter) this.showBillingAdapter);
                this.showBillingAdapter.updateTotalAmount();
            } else {
                this.lvFragmentItemDisc.setAdapter((ListAdapter) null);
                this.costcenterhashmap.clear();
                this.subAmount.setText("0.00");
                this.basicAmount.setText(" 0.00");
                this.netAmount.setText(" 0.00");
                this.tvTotaldiscountFragment.setText("0.00");
                this.layoutFragmentBilling.removeAllViews();
            }
        } else {
            this.tempOrderDetailDb = this.orderListPerSeatNo;
            updateCostCenter();
        }
        this.orderListPerSeatNo.removeAll(this.orderListPerSeatNo);
    }

    @NonNull
    private Double getActualPrice(OrderDetailDb orderDetailDb) {
        Double price = Double.valueOf(0.0d);
        if (this.orderDetailPerSeatNo.size() != 0) {
            for (int i = 0; i < this.orderDetailPerSeatNo.size(); i++) {
                List<EditOrderRequest.OrderDetailsList.orderExtraItem> extraItems = this.temporaryList.get(i).getOrderExtraItems();
                for (int j = 0; j < extraItems.size(); j++) {
                    Integer extraItemId = extraItems.get(j).getItemID();
                    Integer orderDetailDbItemId = orderDetailDb.getItemId();
                    if (extraItemId.equals(orderDetailDbItemId) && extraItems.get(j).getItemStatus().equalsIgnoreCase(orderDetailDb.getStatus())) {
                        price = Double.valueOf((((double) extraItems.get(j).getQuantity().intValue()) * extraItems.get(j).getExtraPrice().doubleValue()) + price.doubleValue());
                    }
                }
            }
        }
        return Double.valueOf(price.doubleValue() + (orderDetailDb.getQuantity().doubleValue() * orderDetailDb.getPrice().doubleValue()));
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }
}
