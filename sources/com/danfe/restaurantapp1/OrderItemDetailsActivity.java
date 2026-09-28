package com.danfe.restaurantapp1;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.RequiresApi;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.CheckOrderDetails;
import com.danfe.restaurantapp1.Interface.LogoutInterface;
import com.danfe.restaurantapp1.Interface.UpdateData;
import com.danfe.restaurantapp1.LogoutService;
import com.danfe.restaurantapp1.adapter.OrderDetailListAdapter;
import com.danfe.restaurantapp1.adapter.OrderListByItemAdapter;
import com.danfe.restaurantapp1.adapter.StockListAdapter;
import com.danfe.restaurantapp1.database.MyApplication;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.RecyclerItemClickListener;
import com.danfe.restaurantapp1.helper.SendItem;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemListByName;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.response.KitchenOrderApiData;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class OrderItemDetailsActivity extends AppCompatActivity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, CheckOrderDetails, LogoutInterface, SendItem.SendItemSingle, UpdateData, SwipeRefreshLayout.OnRefreshListener {
    private LinearLayout OrderedOptions;
    private BroadcastReceiver broadcastReceiver;
    private TextView cancelled;
    private AppCompatCheckBox cbRunningOrderPriority;
    private TextView completed;
    private String costCenterType;
    GridView gv_itemByName;
    private LinearLayout headerOptions;
    private MenuItemFragment itemFragment;
    private List<ItemListByName> itemListByNames;
    private List<ItemgroupDb> itemgroupDbsList;
    private ImageView ivRefreshOrderLists;
    private LinearLayout layoutHome;
    private LinearLayout layoutLogout;
    private LinearLayout layoutOutOfStock;
    private LinearLayout li_outofstock;
    LogoutService logoutService;
    private ListView lvOrderDetailList;
    private TextView noOrders;
    private OrderDetailListAdapter orderDetailListAdapter;
    private Handler orderHandler;
    private LinearLayout orderItemsLayout;
    private OrderListByItemAdapter orderListByItemAdapter;
    private List<KitchenOrderApiData.OrderResponse> orderLists;
    private TextView ordered;
    private ImageView outofStock;
    private Preferences preferences;
    private Preferences prefs;
    private TextView progress;
    private ProgressDialog progressDialog;
    private RestAdapter restAdapter;
    private RestaurantDatabase restaurantDatabase;
    private RestaurantWebService.GetOrderRequest restaurantWebService;
    StockListAdapter stockListAdapter;
    SwipeRefreshLayout swipeRefreshLayout;
    private List<KitchenOrderApiData.TableList> tableList;
    Timer timer;
    private Toolbar toolbar;
    private TextView tvNootes;
    private TextView tvNotes;
    private TextView tvOrderStatus;
    private TextView tvOrderType;
    private TextView tv_listofOutofStock;
    private String userRole;
    private AppCompatCheckBox viewByItem;
    private String BaseURL = "";
    private String logoutString = "com.danfe.restaurantapp1.ACTION_LOGOUT";
    boolean screenState = false;
    boolean isBound = false;
    boolean currentlyActive = true;
    String caseValue = "";
    private boolean runThread = true;
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.7
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            LogoutService.LocalBinder localBinder = (LogoutService.LocalBinder) service;
            OrderItemDetailsActivity.this.logoutService = localBinder.getService();
            OrderItemDetailsActivity.this.logoutService.setCallbacks(OrderItemDetailsActivity.this);
            OrderItemDetailsActivity.this.isBound = true;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            OrderItemDetailsActivity.this.isBound = false;
        }
    };

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_order_item_details);
        this.lvOrderDetailList = (ListView) findViewById(R.id.lv_orderitemdetails);
        this.prefs = new Preferences(getApplicationContext());
        this.ivRefreshOrderLists = (ImageView) findViewById(R.id.iv_refresh_orderitemdetails);
        this.noOrders = (TextView) findViewById(R.id.tv_no_orders);
        this.cbRunningOrderPriority = (AppCompatCheckBox) findViewById(R.id.cb_runningpriority);
        this.cbRunningOrderPriority.setOnCheckedChangeListener(this);
        this.layoutLogout = (LinearLayout) findViewById(R.id.layout_logout_orderdetails);
        this.tvOrderType = (TextView) findViewById(R.id.tv_ordertype_orderitemdetails);
        this.completed = (TextView) findViewById(R.id.et_completed);
        this.ordered = (TextView) findViewById(R.id.et_ordered);
        this.progress = (TextView) findViewById(R.id.et_inProgress);
        this.cancelled = (TextView) findViewById(R.id.et_cancelled);
        this.tvOrderStatus = (TextView) findViewById(R.id.tv_orderStatus);
        this.tvNotes = (TextView) findViewById(R.id.tvNOOtes);
        this.tvNootes = (TextView) findViewById(R.id.tvNootes);
        this.layoutHome = (LinearLayout) findViewById(R.id.layout_home);
        this.outofStock = (ImageView) findViewById(R.id.im_outofStock);
        this.li_outofstock = (LinearLayout) findViewById(R.id.extraStocks);
        this.OrderedOptions = (LinearLayout) findViewById(R.id.orderedOptions);
        this.viewByItem = (AppCompatCheckBox) findViewById(R.id.cb_view_by_item);
        this.layoutOutOfStock = (LinearLayout) findViewById(R.id.layout_outofstock);
        this.itemListByNames = new ArrayList();
        this.headerOptions = (LinearLayout) findViewById(R.id.layout_header_orderitemdetails);
        this.outofStock.setEnabled(true);
        this.itemFragment = new MenuItemFragment();
        this.restaurantDatabase = new RestaurantDatabase();
        Bundle value = new Bundle();
        value.putString("cond", "Stock");
        this.itemFragment.setArguments(value);
        getSupportFragmentManager().beginTransaction().add(R.id.fl_outofStock, this.itemFragment).commit();
        this.tv_listofOutofStock = (TextView) findViewById(R.id.tv_listofOutofStock);
        this.tv_listofOutofStock.setSelected(true);
        this.gv_itemByName = (GridView) findViewById(R.id.gv_itemByName);
        this.orderItemsLayout = (LinearLayout) findViewById(R.id.orderItemsLayout);
        this.swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.swipeRefreshLayout);
        this.swipeRefreshLayout.setOnRefreshListener(this);
        getListofStockItem();
        this.viewByItem.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean ischecked) {
                if (compoundButton.isChecked()) {
                    OrderItemDetailsActivity.this.getListofItems(OrderItemDetailsActivity.this.caseValue);
                    OrderItemDetailsActivity.this.lvOrderDetailList.setVisibility(8);
                    OrderItemDetailsActivity.this.headerOptions.setVisibility(8);
                    OrderItemDetailsActivity.this.orderItemsLayout.setVisibility(8);
                    OrderItemDetailsActivity.this.runThread = false;
                    return;
                }
                OrderItemDetailsActivity.this.lvOrderDetailList.setVisibility(0);
                OrderItemDetailsActivity.this.headerOptions.setVisibility(0);
                OrderItemDetailsActivity.this.orderItemsLayout.setVisibility(0);
                OrderItemDetailsActivity.this.runThread = true;
                OrderItemDetailsActivity.this.ivRefreshOrderLists.callOnClick();
            }
        });
        this.tv_listofOutofStock.setOnClickListener(new AnonymousClass2());
        this.completed.setOnClickListener(this);
        this.progress.setOnClickListener(this);
        this.cancelled.setOnClickListener(this);
        this.ordered.setOnClickListener(this);
        this.layoutHome.setOnClickListener(this);
        this.itemgroupDbsList = new ArrayList();
        this.preferences = new Preferences(getApplicationContext());
        this.progressDialog = new ProgressDialog(this);
        this.progressDialog.setCancelable(false);
        this.progressDialog.setTitle("Fetching Orders..");
        this.progressDialog.setMessage("Please Wait....");
        this.orderHandler = new Handler();
        this.layoutLogout.setOnClickListener(this);
        this.ivRefreshOrderLists.setOnClickListener(this);
        this.BaseURL = Util.getBaseUrl(this);
        if (getIntent().getStringExtra("USER_ROLE") != null) {
            this.userRole = getIntent().getStringExtra("USER_ROLE").toString();
            this.costCenterType = Util.getCostCenterType(this.userRole);
            this.tvOrderType.setText(this.costCenterType);
            Log.e("costCenter", this.costCenterType);
            this.orderLists = new ArrayList();
            GetOrderLists(false, Boolean.valueOf(this.cbRunningOrderPriority.isChecked()));
        }
        if (!this.preferences.getOutofStock().booleanValue()) {
            if (this.layoutOutOfStock.getVisibility() == 0) {
                this.layoutOutOfStock.setVisibility(4);
            } else {
                this.layoutOutOfStock.setVisibility(0);
            }
            this.outofStock.setEnabled(false);
        }
        this.outofStock.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OrderItemDetailsActivity.this.li_outofstock.getVisibility() == 8) {
                    OrderItemDetailsActivity.this.li_outofstock.setVisibility(0);
                    OrderItemDetailsActivity.this.outofStock.setImageDrawable(OrderItemDetailsActivity.this.getResources().getDrawable(R.drawable.ots_close));
                    OrderItemDetailsActivity.this.OrderedOptions.setEnabled(false);
                } else {
                    OrderItemDetailsActivity.this.li_outofstock.setVisibility(8);
                    OrderItemDetailsActivity.this.outofStock.setImageDrawable(OrderItemDetailsActivity.this.getResources().getDrawable(R.drawable.ots));
                    OrderItemDetailsActivity.this.OrderedOptions.setEnabled(true);
                }
            }
        });
        ((MyApplication) getApplication()).detectUserInActivity();
        ((MyApplication) getApplication()).registerSessionListener(this);
        this.ordered.callOnClick();
        automaticallyUpdateOrder();
    }

    /* JADX INFO: renamed from: com.danfe.restaurantapp1.OrderItemDetailsActivity$2, reason: invalid class name */
    class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            List<ItemgroupDb> itemgroupDbs = OrderItemDetailsActivity.this.restaurantDatabase.getItemByOutOfStock(OrderItemDetailsActivity.this.getApplicationContext(), true);
            final AlertDialog alertDialog = new AlertDialog.Builder(OrderItemDetailsActivity.this).create();
            View stockView = LayoutInflater.from(OrderItemDetailsActivity.this).inflate(R.layout.outof_stock, (ViewGroup) null);
            RecyclerView recyclerView = (RecyclerView) stockView.findViewById(R.id.stocklist_items);
            ImageView imageView = (ImageView) stockView.findViewById(R.id.im_close);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    alertDialog.dismiss();
                }
            });
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(OrderItemDetailsActivity.this.getApplicationContext(), 1, false);
            recyclerView.setLayoutManager(linearLayoutManager);
            LinearLayout layoutDialog = (LinearLayout) stockView.findViewById(R.id.li_layoutDialog);
            OrderItemDetailsActivity.this.stockListAdapter = new StockListAdapter(OrderItemDetailsActivity.this.getApplicationContext(), itemgroupDbs);
            recyclerView.setAdapter(OrderItemDetailsActivity.this.stockListAdapter);
            recyclerView.addOnItemTouchListener(new RecyclerItemClickListener(OrderItemDetailsActivity.this.getApplicationContext(), new C00022(itemgroupDbs, alertDialog)));
            alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (!alertDialog.isShowing()) {
                    }
                }
            });
            alertDialog.setCancelable(false);
            alertDialog.setView(stockView);
            recyclerView.setVisibility(0);
            layoutDialog.setVisibility(8);
            alertDialog.show();
            alertDialog.getWindow().setLayout(400, 430);
        }

        /* JADX INFO: renamed from: com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2, reason: invalid class name and collision with other inner class name */
        class C00022 implements RecyclerItemClickListener.OnItemClickListener {
            final /* synthetic */ AlertDialog val$alertDialog;
            final /* synthetic */ List val$itemgroupDbs;

            C00022(List list, AlertDialog alertDialog) {
                this.val$itemgroupDbs = list;
                this.val$alertDialog = alertDialog;
            }

            @Override // com.danfe.restaurantapp1.helper.RecyclerItemClickListener.OnItemClickListener
            @RequiresApi(api = 17)
            public void onItemClick(View view, final int position) {
                String costCenterName = OrderItemDetailsActivity.this.restaurantDatabase.getCostCenterName(OrderItemDetailsActivity.this.getApplicationContext(), ((ItemgroupDb) this.val$itemgroupDbs.get(position)).getItemId().intValue());
                if (!costCenterName.equalsIgnoreCase(Util.getCostCenterType(OrderItemDetailsActivity.this.userRole))) {
                    Toast.makeText(OrderItemDetailsActivity.this.getApplicationContext(), "Does not belong to your cost center!!", 0).show();
                    return;
                }
                AlertDialog.Builder dialog = new AlertDialog.Builder(OrderItemDetailsActivity.this);
                dialog.setTitle(((ItemgroupDb) this.val$itemgroupDbs.get(position)).getItemName().toUpperCase());
                dialog.setMessage("Is  " + ((ItemgroupDb) this.val$itemgroupDbs.get(position)).getItemName().toUpperCase() + " Available ?");
                dialog.setCancelable(false);
                dialog.setPositiveButton("Yes", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        JsonObject object = new JsonObject();
                        object.addProperty("ItemId", ((ItemgroupDb) C00022.this.val$itemgroupDbs.get(position)).getItemId());
                        OrderItemDetailsActivity.this.restAdapter = new RestAdapter.Builder().setEndpoint(OrderItemDetailsActivity.this.BaseURL).build();
                        RestaurantWebService.setIsOutOfStock isOutOfStock = (RestaurantWebService.setIsOutOfStock) OrderItemDetailsActivity.this.restAdapter.create(RestaurantWebService.setIsOutOfStock.class);
                        isOutOfStock.postisOutOfStock(object, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.2.1.1
                            @Override // retrofit.Callback
                            public void success(JsonObject jsonObject, Response response) {
                                response.getReason().toString();
                                Toast.makeText(OrderItemDetailsActivity.this.getApplicationContext(), "Item has been added to available in stock", 1).show();
                                OrderItemDetailsActivity.this.li_outofstock.setVisibility(8);
                                C00022.this.val$alertDialog.dismiss();
                                OrderItemDetailsActivity.this.itemFragment.refreshMenu();
                            }

                            @Override // retrofit.Callback
                            public void failure(RetrofitError error) {
                                Log.e("Error", error.toString());
                            }
                        });
                    }
                });
                dialog.setNegativeButton("No", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.2.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        C00022.this.val$alertDialog.dismiss();
                    }
                });
                dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.2.2.3
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                    }
                });
                dialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getListofItems(String status) {
        List<KitchenOrderApiData.TableList> orderResponseList;
        List<KitchenOrderApiData.TableList> orderResponseList2 = new ArrayList<>();
        orderResponseList2.clear();
        if (!status.equalsIgnoreCase("Cancelled")) {
            orderResponseList = getRequiredList(status, this.tableList);
        } else {
            orderResponseList = getCancelledList(this.tableList);
        }
        this.itemListByNames.clear();
        boolean isadded = true;
        if (orderResponseList.size() != 0) {
            if (orderResponseList.get(0).getItemStatus().equalsIgnoreCase("Ordered")) {
                ItemListByName itemListByName = new ItemListByName(orderResponseList.get(0).getITName(), orderResponseList.get(0).getQuantity().floatValue(), 0.0f, 0.0f, orderResponseList.get(0).getQuantity().floatValue(), orderResponseList.get(0).getImagePath(), orderResponseList.get(0).getNote(), orderResponseList.get(0).getROIItemId().intValue());
                this.itemListByNames.add(itemListByName);
            }
            if (orderResponseList.get(0).getItemStatus().equalsIgnoreCase("InProgress")) {
                ItemListByName itemListByName2 = new ItemListByName(orderResponseList.get(0).getITName(), orderResponseList.get(0).getQuantity().floatValue(), orderResponseList.get(0).getQuantity().floatValue(), 0.0f, 0.0f, orderResponseList.get(0).getImagePath(), orderResponseList.get(0).getNote(), orderResponseList.get(0).getROIItemId().intValue());
                this.itemListByNames.add(itemListByName2);
            }
            if (orderResponseList.get(0).getItemStatus().equalsIgnoreCase("Complete")) {
                ItemListByName itemListByName3 = new ItemListByName(orderResponseList.get(0).getITName(), orderResponseList.get(0).getQuantity().floatValue(), 0.0f, orderResponseList.get(0).getQuantity().floatValue(), 0.0f, orderResponseList.get(0).getImagePath(), orderResponseList.get(0).getNote(), orderResponseList.get(0).getROIItemId().intValue());
                this.itemListByNames.add(itemListByName3);
            }
        }
        for (int i = 1; i < orderResponseList.size(); i++) {
            int j = 0;
            while (true) {
                if (j >= this.itemListByNames.size()) {
                    break;
                }
                if (this.itemListByNames.get(j).getItemId() == orderResponseList.get(i).getROIItemId().intValue()) {
                    if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("Ordered")) {
                        ItemListByName itemListByName4 = new ItemListByName(this.itemListByNames.get(j).getItemname(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getTotalqty(), this.itemListByNames.get(j).getProgressQuantity(), this.itemListByNames.get(j).getCompletedQuantity(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getOrderedQuantity(), this.itemListByNames.get(j).getImagePath(), this.itemListByNames.get(j).getNote() + orderResponseList.get(i).getNote(), this.itemListByNames.get(j).getItemId());
                        this.itemListByNames.set(j, itemListByName4);
                    }
                    if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("InProgress")) {
                        ItemListByName itemListByName5 = new ItemListByName(this.itemListByNames.get(j).getItemname(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getTotalqty(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getProgressQuantity(), this.itemListByNames.get(j).getCompletedQuantity(), this.itemListByNames.get(j).getOrderedQuantity(), this.itemListByNames.get(j).getImagePath(), this.itemListByNames.get(j).getNote() + orderResponseList.get(i).getNote(), this.itemListByNames.get(j).getItemId());
                        this.itemListByNames.set(j, itemListByName5);
                    }
                    if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("Complete")) {
                        ItemListByName itemListByName6 = new ItemListByName(this.itemListByNames.get(j).getItemname(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getTotalqty(), this.itemListByNames.get(j).getProgressQuantity(), orderResponseList.get(i).getQuantity().floatValue() + this.itemListByNames.get(j).getCompletedQuantity(), this.itemListByNames.get(j).getOrderedQuantity(), this.itemListByNames.get(j).getImagePath(), this.itemListByNames.get(j).getNote() + orderResponseList.get(i).getNote(), this.itemListByNames.get(j).getItemId());
                        this.itemListByNames.set(j, itemListByName6);
                    }
                    isadded = false;
                } else {
                    isadded = true;
                    j++;
                }
            }
            if (isadded) {
                if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("Ordered")) {
                    ItemListByName itemListByName7 = new ItemListByName(orderResponseList.get(i).getITName(), orderResponseList.get(i).getQuantity().floatValue(), 0.0f, 0.0f, orderResponseList.get(i).getQuantity().floatValue(), orderResponseList.get(i).getImagePath(), orderResponseList.get(i).getNote(), orderResponseList.get(i).getROIItemId().intValue());
                    this.itemListByNames.add(itemListByName7);
                }
                if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("InProgress")) {
                    ItemListByName itemListByName8 = new ItemListByName(orderResponseList.get(i).getITName(), orderResponseList.get(i).getQuantity().floatValue(), orderResponseList.get(i).getQuantity().floatValue(), 0.0f, 0.0f, orderResponseList.get(i).getImagePath(), orderResponseList.get(i).getNote(), orderResponseList.get(i).getROIItemId().intValue());
                    this.itemListByNames.add(itemListByName8);
                }
                if (orderResponseList.get(i).getItemStatus().equalsIgnoreCase("Complete")) {
                    ItemListByName itemListByName9 = new ItemListByName(orderResponseList.get(i).getITName(), orderResponseList.get(i).getQuantity().floatValue(), 0.0f, orderResponseList.get(i).getQuantity().floatValue(), 0.0f, orderResponseList.get(i).getImagePath(), orderResponseList.get(i).getNote(), orderResponseList.get(i).getROIItemId().intValue());
                    this.itemListByNames.add(itemListByName9);
                }
            }
        }
        this.orderListByItemAdapter = new OrderListByItemAdapter(getApplicationContext(), this.itemListByNames);
        this.gv_itemByName.setAdapter((ListAdapter) this.orderListByItemAdapter);
        this.orderListByItemAdapter.notifyDataSetChanged();
        for (int i2 = 0; i2 < this.itemListByNames.size(); i2++) {
            Log.e("Items", this.itemListByNames.get(i2).getItemname() + " " + String.valueOf(this.itemListByNames.get(i2).getTotalqty()) + " " + String.valueOf(this.itemListByNames.get(i2).getCompletedQuantity()) + " " + String.valueOf(this.itemListByNames.get(i2).getOrderedQuantity()) + " " + String.valueOf(this.itemListByNames.get(i2).getProgressQuantity()) + "\n");
        }
    }

    public void automaticallyUpdateOrder() {
        this.timer = new Timer();
        new Thread(new Runnable() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.4
            @Override // java.lang.Runnable
            public void run() {
                OrderItemDetailsActivity.this.timer.schedule(new TimerTask() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.4.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (!OrderItemDetailsActivity.this.isFinishing()) {
                            OrderItemDetailsActivity.this.runOrder();
                        }
                    }
                }, 180000L);
            }
        }).start();
    }

    public void runOrder() {
        runOnUiThread(new Runnable() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (OrderItemDetailsActivity.this.runThread) {
                        OrderItemDetailsActivity.this.ivRefreshOrderLists.callOnClick();
                    }
                } catch (Exception e) {
                    Log.e("Exception: ", e.getLocalizedMessage());
                }
                OrderItemDetailsActivity.this.automaticallyUpdateOrder();
            }
        });
    }

    private void GetOrderLists(Boolean showProgress, final Boolean RunningPriority) {
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.restaurantWebService = (RestaurantWebService.GetOrderRequest) this.restAdapter.create(RestaurantWebService.GetOrderRequest.class);
        this.restaurantWebService.getOrderDetailList(new Callback<KitchenOrderApiData>() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.6
            @Override // retrofit.Callback
            public void success(KitchenOrderApiData kitchenOrderApiData, Response response) {
                int statusCode = kitchenOrderApiData.getStatusCode().intValue();
                String message = kitchenOrderApiData.getMessage();
                if (statusCode == 200) {
                    OrderItemDetailsActivity.this.orderLists = kitchenOrderApiData.getOrderResponseData();
                    Log.e("OrderListResponse", String.valueOf(OrderItemDetailsActivity.this.orderLists));
                    if (OrderItemDetailsActivity.this.orderLists.size() > 0) {
                        for (int x = 0; x < OrderItemDetailsActivity.this.orderLists.size(); x++) {
                            if (((KitchenOrderApiData.OrderResponse) OrderItemDetailsActivity.this.orderLists.get(x)).getCostCenterName().toString().toLowerCase().equals(OrderItemDetailsActivity.this.costCenterType.toLowerCase())) {
                                OrderItemDetailsActivity.this.tableList = ((KitchenOrderApiData.OrderResponse) OrderItemDetailsActivity.this.orderLists.get(x)).getTableList();
                                if (OrderItemDetailsActivity.this.orderLists.size() == 0) {
                                    OrderItemDetailsActivity.this.noOrders.setVisibility(0);
                                } else {
                                    Collections.reverse(OrderItemDetailsActivity.this.tableList);
                                    OrderItemDetailsActivity.this.noOrders.setVisibility(8);
                                    switch (OrderItemDetailsActivity.this.caseValue) {
                                        case "InProgress":
                                            OrderItemDetailsActivity.this.progress.callOnClick();
                                            break;
                                        case "Ordered":
                                            OrderItemDetailsActivity.this.ordered.callOnClick();
                                            break;
                                        case "Complete":
                                            OrderItemDetailsActivity.this.completed.callOnClick();
                                            break;
                                        case "Canceled":
                                            OrderItemDetailsActivity.this.cancelled.callOnClick();
                                            break;
                                    }
                                }
                            }
                        }
                    }
                    if (OrderItemDetailsActivity.this.progressDialog != null && OrderItemDetailsActivity.this.progressDialog.isShowing()) {
                        OrderItemDetailsActivity.this.progressDialog.dismiss();
                    }
                    if (RunningPriority.booleanValue()) {
                        int index = 0;
                        for (int j = 0; j < OrderItemDetailsActivity.this.tableList.size(); j++) {
                            if (((KitchenOrderApiData.TableList) OrderItemDetailsActivity.this.tableList.get(j)).getIsRunningOrder().intValue() == 1) {
                                if (((KitchenOrderApiData.TableList) OrderItemDetailsActivity.this.tableList.get(index)).getIsRunningOrder().intValue() == 1) {
                                    OrderItemDetailsActivity.this.tableList.add(index + 1, OrderItemDetailsActivity.this.tableList.get(j));
                                } else {
                                    OrderItemDetailsActivity.this.tableList.add(0, OrderItemDetailsActivity.this.tableList.get(j));
                                    index++;
                                }
                                OrderItemDetailsActivity.this.tableList.remove(j + 1);
                            }
                        }
                        return;
                    }
                    return;
                }
                Util.showRetrofitErrorMessage("OrderDetails InProgress Error: " + message, OrderItemDetailsActivity.this.getApplicationContext());
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                if (OrderItemDetailsActivity.this.progressDialog.isShowing()) {
                    OrderItemDetailsActivity.this.progressDialog.dismiss();
                }
                Log.e("RETROFITDATA", "Retrofitrror");
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        GetOrderLists(true, Boolean.valueOf(this.cbRunningOrderPriority.isChecked()));
        this.screenState = true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.et_ordered /* 2131689678 */:
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.ordered.setTextColor(getResources().getColor(R.color.white));
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.completed.setTextColor(getResources().getColor(R.color.black));
                this.cancelled.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.cancelled.setTextColor(getResources().getColor(R.color.black));
                this.progress.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.progress.setTextColor(getResources().getColor(R.color.black));
                this.orderDetailListAdapter = new OrderDetailListAdapter(getApplicationContext(), "Ordered", getRequiredList("Ordered", this.tableList), this);
                this.lvOrderDetailList.setAdapter((ListAdapter) this.orderDetailListAdapter);
                this.orderDetailListAdapter.notifyDataSetChanged();
                this.tvOrderStatus.setVisibility(0);
                this.tvNotes.setVisibility(8);
                this.tvNootes.setVisibility(8);
                this.caseValue = "Ordered";
                if (!this.runThread) {
                    getListofItems("Ordered");
                }
                break;
            case R.id.et_inProgress /* 2131689679 */:
                this.progress.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.progress.setTextColor(getResources().getColor(R.color.white));
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.completed.setTextColor(getResources().getColor(R.color.black));
                this.cancelled.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.cancelled.setTextColor(getResources().getColor(R.color.black));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.ordered.setTextColor(getResources().getColor(R.color.black));
                this.orderDetailListAdapter = new OrderDetailListAdapter(getApplicationContext(), "InProgress", getRequiredList("InProgress", this.tableList), this);
                this.lvOrderDetailList.setAdapter((ListAdapter) this.orderDetailListAdapter);
                this.orderDetailListAdapter.notifyDataSetChanged();
                this.tvOrderStatus.setVisibility(0);
                this.tvNotes.setVisibility(8);
                this.tvNootes.setVisibility(8);
                this.caseValue = "InProgress";
                if (!this.runThread) {
                    getListofItems("InProgress");
                }
                break;
            case R.id.et_completed /* 2131689680 */:
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.completed.setTextColor(getResources().getColor(R.color.white));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.ordered.setTextColor(getResources().getColor(R.color.black));
                this.cancelled.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.cancelled.setTextColor(getResources().getColor(R.color.black));
                this.progress.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.progress.setTextColor(getResources().getColor(R.color.black));
                this.tvOrderStatus.setVisibility(8);
                this.tvNotes.setVisibility(4);
                this.tvNootes.setVisibility(4);
                this.orderDetailListAdapter = new OrderDetailListAdapter(getApplicationContext(), "Complete", getRequiredList("Complete", this.tableList), this);
                this.lvOrderDetailList.setAdapter((ListAdapter) this.orderDetailListAdapter);
                this.orderDetailListAdapter.notifyDataSetChanged();
                this.caseValue = "Complete";
                if (!this.runThread) {
                    getListofItems("Complete");
                }
                break;
            case R.id.layout_home /* 2131689693 */:
                this.ordered.callOnClick();
                break;
            case R.id.iv_refresh_orderitemdetails /* 2131689698 */:
                switch (this.caseValue) {
                    case "InProgress":
                        this.progress.callOnClick();
                        break;
                    case "Ordered":
                        this.ordered.callOnClick();
                        break;
                    case "Complete":
                        this.completed.callOnClick();
                        break;
                    case "Cancelled":
                        this.cancelled.callOnClick();
                        break;
                }
                GetOrderLists(true, Boolean.valueOf(this.cbRunningOrderPriority.isChecked()));
                break;
            case R.id.layout_logout_orderdetails /* 2131689701 */:
                logoutFunction();
                break;
            case R.id.et_cancelled /* 2131689709 */:
                this.cancelled.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.cancelled.setTextColor(getResources().getColor(R.color.white));
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.completed.setTextColor(getResources().getColor(R.color.black));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.ordered.setTextColor(getResources().getColor(R.color.black));
                this.progress.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.progress.setTextColor(getResources().getColor(R.color.black));
                this.tvOrderStatus.setVisibility(8);
                this.tvNotes.setVisibility(4);
                this.tvNootes.setVisibility(4);
                this.orderDetailListAdapter = new OrderDetailListAdapter(getApplicationContext(), "Cancelled", getCancelledList(this.tableList), this);
                this.lvOrderDetailList.setAdapter((ListAdapter) this.orderDetailListAdapter);
                this.orderDetailListAdapter.notifyDataSetChanged();
                this.caseValue = "Cancelled";
                if (!this.runThread) {
                    getListofItems("Cancelled");
                }
                break;
        }
    }

    public List<KitchenOrderApiData.TableList> getRequiredList(String status, List<KitchenOrderApiData.TableList> lists) {
        List<KitchenOrderApiData.TableList> myorderLists = new ArrayList<>();
        if (lists != null) {
            for (int i = 0; i < lists.size(); i++) {
                if (lists.get(i).getItemStatus().equalsIgnoreCase(status) && lists.get(i).getIsCancelled().equals(Boolean.TRUE)) {
                    myorderLists.remove(lists.get(i));
                } else if (lists.get(i).getItemStatus().equalsIgnoreCase(status)) {
                    myorderLists.add(lists.get(i));
                }
            }
        }
        if (myorderLists.size() == 0) {
            this.noOrders.setText("No " + status + " Orders Found");
            this.noOrders.setVisibility(0);
        } else {
            this.noOrders.setVisibility(8);
        }
        return myorderLists;
    }

    public List<KitchenOrderApiData.TableList> getCancelledList(List<KitchenOrderApiData.TableList> lists) {
        List<KitchenOrderApiData.TableList> mycancelledLists = new ArrayList<>();
        if (lists != null) {
            for (int i = 0; i < lists.size(); i++) {
                if (lists.get(i).getIsCancelled().equals(Boolean.TRUE)) {
                    mycancelledLists.add(lists.get(i));
                }
            }
            if (mycancelledLists.size() == 0) {
                this.noOrders.setText("No Cancelled Orders Found");
                this.noOrders.setVisibility(0);
            } else {
                this.noOrders.setVisibility(8);
            }
        }
        return mycancelledLists;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        GetOrderLists(false, Boolean.valueOf(isChecked));
    }

    @Override // com.danfe.restaurantapp1.Interface.CheckOrderDetails
    public void loadOrderDetailsList() {
        GetOrderLists(true, Boolean.valueOf(this.cbRunningOrderPriority.isChecked()));
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.screenState = true;
        if (this.screenState) {
            Log.e("screenState: ", "true");
            Intent intent = new Intent(this, (Class<?>) LogoutService.class);
            bindService(intent, this.serviceConnection, 1);
            startService(intent);
            return;
        }
        Log.e("screenState: ", "false");
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        if (this.progressDialog != null && this.progressDialog.isShowing()) {
            this.progressDialog.dismiss();
        }
        super.onDestroy();
        if (this.isBound) {
            this.logoutService.setCallbacks(null);
            unbindService(this.serviceConnection);
            this.isBound = true;
        }
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
        if (this.currentlyActive) {
            ((MyApplication) getApplication()).detectUserInteracted();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Util.showExitConfirmationDialog(this);
    }

    @Override // com.danfe.restaurantapp1.Interface.LogoutInterface
    public void logout() {
        runOnUiThread(new Runnable() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.8
            @Override // java.lang.Runnable
            public void run() {
                OrderItemDetailsActivity.this.logoutFunction();
            }
        });
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Log.e("onStop: ", "activity is no longer visible");
        this.screenState = false;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.screenState = false;
    }

    public void logoutFunction() {
        JsonObject obj = new JsonObject();
        try {
            Log.e("logout username", this.preferences.getPreferencesString(Constants.PREF_LOGIN));
            obj.addProperty("username", this.preferences.getPreferencesString(Constants.PREF_LOGIN));
            Log.e("json", obj.toString());
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        RestaurantWebService.LogoutRequest logoutRequest = (RestaurantWebService.LogoutRequest) this.restAdapter.create(RestaurantWebService.LogoutRequest.class);
        logoutRequest.logoutRequest(obj, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.9
            @Override // retrofit.Callback
            public void success(JsonObject logoutRespo, Response response) {
                try {
                    Intent intent = new Intent(OrderItemDetailsActivity.this, (Class<?>) LoginActivity.class);
                    intent.addFlags(67108864);
                    intent.addFlags(268435456);
                    OrderItemDetailsActivity.this.preferences.setPreferencesString(Constants.PREF_LOGIN, null);
                    OrderItemDetailsActivity.this.startActivity(intent);
                    OrderItemDetailsActivity.this.finish();
                } catch (Exception e) {
                    try {
                        Util.showRetrofitErrorMessage("Logout Request Error: " + e, OrderItemDetailsActivity.this);
                    } catch (Exception e2) {
                        Log.e("costcenterexc", e.getMessage().toString());
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("Logout Request Error: " + error, OrderItemDetailsActivity.this);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // com.danfe.restaurantapp1.helper.SendItem.SendItemSingle
    public void onOrderArrival(final OrderDetailDb orderList, int costCenter, String itemRate, Boolean isOutOfStock) {
        String costCenterName = this.restaurantDatabase.getCostCenterName(getApplicationContext(), orderList.getItemId().intValue());
        if (!costCenterName.equalsIgnoreCase(Util.getCostCenterType(this.userRole))) {
            Toast.makeText(getApplicationContext(), "Does not belong to your cost center!!", 0).show();
            return;
        }
        final AlertDialog alertDialog = new AlertDialog.Builder(this).create();
        View view = LayoutInflater.from(this).inflate(R.layout.outof_stock, (ViewGroup) null);
        TextView info = (TextView) view.findViewById(R.id.tv_infoAboutStock);
        Button yes = (Button) view.findViewById(R.id.bt_yes);
        Button no = (Button) view.findViewById(R.id.bt_no);
        ImageView close = (ImageView) view.findViewById(R.id.im_close);
        ImageView itemImage = (ImageView) view.findViewById(R.id.im_itemImage);
        if (isOutOfStock.booleanValue()) {
            info.setText("Is " + orderList.getTitle().toUpperCase() + " now Available ?");
        } else {
            info.setText("Is " + orderList.getTitle().toUpperCase() + " " + info.getText().toString());
        }
        String imagePath = (this.BaseURL + "/ROI_Item/ImageItem/" + itemRate).replaceAll(" ", "%20");
        Picasso.with(getApplicationContext()).load(imagePath).placeholder(R.drawable.ic_restro_logo_new).error(R.drawable.ic_restro_logo_new).centerCrop().resize(150, 150).into(itemImage);
        Log.e("Image Path", imagePath);
        close.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                alertDialog.dismiss();
            }
        });
        no.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                alertDialog.dismiss();
            }
        });
        yes.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                JsonObject object = new JsonObject();
                object.addProperty("ItemId", orderList.getItemId());
                OrderItemDetailsActivity.this.restAdapter = new RestAdapter.Builder().setEndpoint(OrderItemDetailsActivity.this.BaseURL).build();
                RestaurantWebService.setIsOutOfStock isOutOfStock2 = (RestaurantWebService.setIsOutOfStock) OrderItemDetailsActivity.this.restAdapter.create(RestaurantWebService.setIsOutOfStock.class);
                isOutOfStock2.postisOutOfStock(object, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.OrderItemDetailsActivity.12.1
                    @Override // retrofit.Callback
                    public void success(JsonObject jsonObject, Response response) {
                        response.getReason().toString();
                        String message = jsonObject.get("message").toString();
                        int statusCode = jsonObject.get("statusCode").getAsInt();
                        if (statusCode == 200) {
                            alertDialog.dismiss();
                            OrderItemDetailsActivity.this.li_outofstock.setVisibility(8);
                            OrderItemDetailsActivity.this.outofStock.setImageDrawable(OrderItemDetailsActivity.this.getResources().getDrawable(R.drawable.ots));
                            OrderItemDetailsActivity.this.OrderedOptions.setEnabled(true);
                            OrderItemDetailsActivity.this.itemFragment.refreshMenu();
                            Toast.makeText(OrderItemDetailsActivity.this.getApplicationContext(), "Added to list of Items Out of Stock", 1).show();
                            return;
                        }
                        alertDialog.dismiss();
                        Util.showErrorMessageWithTitle(message, "Item out of  Stock", OrderItemDetailsActivity.this);
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        Log.e("Error", error.toString());
                    }
                });
            }
        });
        alertDialog.setCancelable(false);
        alertDialog.setView(view);
        alertDialog.show();
    }

    public void getListofStockItem() {
        List<ItemgroupDb> itemgroupDbsList = this.restaurantDatabase.getItemByOutOfStock(getApplicationContext(), true);
        String stockItems = "";
        this.tv_listofOutofStock.setText("");
        for (int i = 0; i < itemgroupDbsList.size(); i++) {
            if (i > 0) {
                stockItems = stockItems + ",";
            }
            stockItems = stockItems + itemgroupDbsList.get(i).getItemName();
        }
        if (stockItems.equalsIgnoreCase("")) {
            this.tv_listofOutofStock.setVisibility(8);
        } else {
            this.tv_listofOutofStock.setVisibility(0);
        }
        this.tv_listofOutofStock.setText(stockItems);
    }

    @Override // com.danfe.restaurantapp1.Interface.UpdateData
    public void updateOutOfStockData(List<ItemgroupDb> itemgroupDbs) {
        getListofStockItem();
    }

    public void ringtone() {
        try {
            Uri notification = RingtoneManager.getDefaultUri(2);
            Ringtone r = RingtoneManager.getRingtone(getApplicationContext(), notification);
            r.play();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        this.ivRefreshOrderLists.callOnClick();
        this.swipeRefreshLayout.setRefreshing(false);
    }
}
