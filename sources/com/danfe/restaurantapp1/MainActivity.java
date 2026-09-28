package com.danfe.restaurantapp1;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.Html;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.ExtraClickedInterface;
import com.danfe.restaurantapp1.Interface.ExtraItemsInterface;
import com.danfe.restaurantapp1.Interface.LogoutInterface;
import com.danfe.restaurantapp1.Interface.SuccessInterface;
import com.danfe.restaurantapp1.Interface.UpdateTotalPrice;
import com.danfe.restaurantapp1.LogoutService;
import com.danfe.restaurantapp1.adapter.BillingAdapter;
import com.danfe.restaurantapp1.adapter.ExtraInfoAdapter;
import com.danfe.restaurantapp1.adapter.OrderListAdapter;
import com.danfe.restaurantapp1.database.MyApplication;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.CancelledOrderDialog;
import com.danfe.restaurantapp1.helper.CheckPinCode;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.ExtraItemDialog;
import com.danfe.restaurantapp1.helper.OrderItem;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.SendItem;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.helper.searchableSpinner;
import com.danfe.restaurantapp1.model.BillingTermDb;
import com.danfe.restaurantapp1.model.ExtraItemDb;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import com.danfe.restaurantapp1.response.ItemCancelledListModel;
import com.danfe.restaurantapp1.response.LoginResponse;
import com.danfe.restaurantapp1.service.CheckOrderStatus;
import com.danfe.restaurantapp1.service.CostCenterService;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.danfe.restaurantapp1.service.TableService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.squareup.okhttp.OkHttpClient;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends FragmentActivity implements SendItem.SendItemList, SendItem.SendItemSingle, SendItem.RemoveOrderItem, View.OnClickListener, PopupMenu.OnMenuItemClickListener, UpdateTotalPrice, ExtraItemsInterface, ExtraClickedInterface, LogoutInterface {
    public static final String LOGIN_PREF_NAME = "loginPreferences";
    public static final String PREF_LAST_FETCHED = "lastFetchedDate";
    public static final String PREF_TOKEN = "TOKEN";
    private static Boolean checkStatus;
    public static int menuBill;
    public static int menuItemId;
    public static int menuposition;
    private static OrderItem orderItem;
    private double AdvancePayment;
    private String DeviceId;
    private int RoomBookedDays;
    private double RoomTotalCharge;
    private TextView TvItemHeader;
    private ArrayAdapter<CharSequence> adapter;
    private TextView advancePayment;
    private AlertDialog alertDialog;
    private AlertDialog.Builder alertDialogBuilder;
    private AlertDialog alertDialogpin;
    private searchableSpinner auftragSpinnerAdapter;
    private List<String> billArray;
    private int billSpinnerNo;
    private BillingAdapter billingAdapter;
    private LinearLayout billingLayout;
    private List<BillingTermDb> billingTermDbList;
    private List<BillingTermDb> billingTermDbs;
    private BottomSheetBehavior bottomSheetBehavior;
    private LinearLayout bottomSheetBody;
    private RelativeLayout bottomSheetHeader;
    private LinearLayout bottomSheetSecondHeader;
    private BroadcastReceiver broadcastReceiver;
    private ImageButton btnAddGuest;
    private Button btnCallWaiter;
    private Button btnCancel;
    private ImageButton btnNotification;
    private ImageButton btnRefresh;
    private Button btnSend;
    private Button btn_cancel;
    private Button btn_ok;
    private Button btpay;
    private Calendar cal;
    private RestaurantWebService.CancelOrder cancelOrder;
    private List<ItemCancelledListModel> cancelledLists;
    private CheckBox cbSplit;
    private ArrayList<OrderDetailDb> changedList;
    private CheckPinCode checkPinCode;
    private ArrayList<OrderDetailDb> combinedList;
    private TextView completed;
    private ArrayList<OrderDetailDb> completedList;
    private CoordinatorLayout coordinatorLayout;
    private ArrayList<OrderDetailDb> costcenterList;
    private HashMap<Integer, Double> costcenterhashmap;
    private View dialogView;
    private DisplayMetrics displayMetrics;
    private String dte;
    private EditText editText1;
    private EditText etExtra;
    private EditText etGuest;
    private EditText etNotes;
    private ExtraInfoAdapter extraInfoAdapter;
    private ArrayList<OrderDetailDb> extraItemList;
    private List<List<orderExtraItem>> extraItemsLists;
    private JSONArray extrajsonArray;
    private RestaurantWebService.GetEdit getEditService;
    private JsonObject gsonObject;
    private LayoutInflater inflater;
    private TextView inprogress;
    private boolean isDelivered;
    private String isTable;
    private ArrayList<String> itemName;
    private ImageView ivOpenBottomSheet;
    private ImageView ivSetupTable;
    private JSONArray jsonArray;
    private JsonParser jsonParser;
    private LinearLayout layoutAdvAmount;
    private LinearLayout layoutBill;
    private LinearLayout layoutCallWaiter;
    private LinearLayout layoutCallWaiter1;
    private LinearLayout layoutLogout;
    private LinearLayout layoutNotification;
    private LinearLayout.LayoutParams layoutParams;
    private LinearLayout layoutRemainAmount;
    private LinearLayout layoutRoomCharges;
    private ProgressDialog logoutDialog;
    private RestaurantWebService.LogoutRequest logoutRequest;
    private LogoutService logoutService;
    private ListView lvDiscountSheet;
    private ListView lvOrder;
    private LinearLayout menuItemLayout;
    private int menuItemLayoutWidth;
    private HashMap<String, Integer> myHashmap;
    List<String> newBillArray;
    private TextView noItems;
    private JSONObject obj;
    private ArrayList<OrderDetailDb> orderFinalList;
    private ArrayList<OrderDetailDb> orderItemList;
    private OrderListAdapter orderListAdapter;
    private ArrayList<OrderDetailDb> orderListPerSeatNo;
    private RestaurantWebService.PostOrder orderService;
    private TextView ordered;
    private ArrayList<OrderDetailDb> orderedList;
    private LinearLayout orderedOptions;
    private String orderingUser;
    private ProgressDialog pDialog;
    private ArrayList<OrderDetailDb> preValue;
    private Preferences preferences;
    private ArrayList<OrderDetailDb> preorderList;
    private ArrayList<OrderDetailDb> progressList;
    private TextView remainingAmount;
    private List<ItemCancelledListModel> removedItems;
    private RestAdapter restAdapter;
    private RestaurantDatabase restaurantDatabase;
    private RestaurantDatabase restaurantDb;
    private String room;
    private long roomId;
    private RecyclerView rvExtraItems;
    private SimpleDateFormat sdf;
    String selectedStringBill;
    private RestaurantWebService.SendPaymentDetails sendPaymentDetails;
    private int spAddedValue;
    private Spinner spBill;
    private Double spinnerQty;
    ArrayAdapter splitBillAdapter;
    private LinearLayout svExtraItems;
    private String table;
    private String[] tableArray;
    private int tableId;
    private int tableSize;
    private List<List<orderExtraItem>> tempFinalList;
    private List<ItemCancelledListModel> tempList;
    private List<List<orderExtraItem>> temporaryExtraListPerSeatNo;
    private ArrayList<OrderDetailDb> temporderListStatus;
    private ArrayList<OrderDetailDb> temporderlist;
    private View totalBottomSheet;
    private TextView tvBsNetAmt;
    private TextView tvBsTotal;
    private TextView tvBsTotalDisc;
    private TextView tvBsVat;
    private TextView tvDateTime;
    private TextView tvExtraItems;
    private TextView tvExtraTotal;
    private ImageButton tvLogout;
    private TextView tvNotificationCount;
    private TextView tvQuantityHeader;
    private TextView tvRoom;
    private TextView tvRoomCharge;
    private TextView tvSeatHeader;
    private TextView tvSubAmount;
    private TextView tvTable;
    private TextView tvTotalAmount;
    private TextView tvWaiter;
    private TextView tv_invalidcode;
    private TextView tv_totalWithExtra;
    private TextView tv_total_amount_bottomsheet;
    private ArrayList<OrderDetailDb> updatedPreValue;
    private String username;
    private View viewExt;
    private int windowWidth;
    private Animation zoominAnim;
    private static int billEntered = 1;
    private static boolean isSplit = false;
    public static int selectedBill = 1;
    static boolean screenState = false;
    static boolean currentlyActive = true;
    private int GuestNumber = 1;
    public long orderMasterId = 0;
    private String BaseURL = "";
    private int notificationCount = 0;
    private String usernamepin = "";
    private String orderType = "";
    private String status = "Ordered";
    private int flag = 0;
    private Double prePrice = Double.valueOf(0.0d);
    private String logoutString = "com.danfe.restaurantapp1.ACTION_LOGOUT";
    private boolean isBound = false;
    private int flag1 = 0;
    private int seatNoSelected = 1;
    private int spNewlyAddedValue = 1;
    private String clickedValue = "";
    List<List<orderExtraItem>> temporaryextralist = new ArrayList();
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.danfe.restaurantapp1.MainActivity.24
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            LogoutService.LocalBinder binder = (LogoutService.LocalBinder) service;
            MainActivity.this.logoutService = binder.getService();
            MainActivity.this.isBound = true;
            MainActivity.this.logoutService.setCallbacks(MainActivity.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            MainActivity.this.isBound = false;
        }
    };

    static /* synthetic */ int access$3704(MainActivity x0) {
        int i = x0.spNewlyAddedValue + 1;
        x0.spNewlyAddedValue = i;
        return i;
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_main);
        this.myHashmap = new HashMap<>();
        ((MyApplication) getApplication()).detectUserInActivity();
        ((MyApplication) getApplication()).registerSessionListener(this);
        Display display = getWindowManager().getDefaultDisplay();
        DisplayMetrics outMetrics = new DisplayMetrics();
        display.getMetrics(outMetrics);
        Log.e("Display ", ": " + display);
        this.lvOrder = (ListView) findViewById(R.id.list_order);
        this.btnSend = (Button) findViewById(R.id.bt_send);
        this.btnCancel = (Button) findViewById(R.id.bt_cancel);
        this.btnAddGuest = (ImageButton) findViewById(R.id.bt_enter_guest);
        this.btnRefresh = (ImageButton) findViewById(R.id.bt_refresh);
        this.btnCallWaiter = (Button) findViewById(R.id.bt_call_waiter);
        this.tvWaiter = (TextView) findViewById(R.id.tv_waiter_name);
        this.tvLogout = (ImageButton) findViewById(R.id.txt_logout);
        this.tvRoom = (TextView) findViewById(R.id.tv_room_no);
        this.tvTable = (TextView) findViewById(R.id.tv_table_no);
        this.layoutBill = (LinearLayout) findViewById(R.id.layout_bill);
        this.cbSplit = (CheckBox) findViewById(R.id.cb_split);
        this.spBill = (Spinner) findViewById(R.id.sp_seat);
        this.tvQuantityHeader = (TextView) findViewById(R.id.tv_quantity_header);
        this.tvSubAmount = (TextView) findViewById(R.id.tv_subamount_bottomsheet);
        this.tvRoomCharge = (TextView) findViewById(R.id.tv_roomchargeamount_bottomsheet);
        this.advancePayment = (TextView) findViewById(R.id.tv_advanceamount_bottomsheet);
        this.layoutRoomCharges = (LinearLayout) findViewById(R.id.layoutRoomCharge);
        this.layoutRemainAmount = (LinearLayout) findViewById(R.id.layoutRemainingAmount);
        this.layoutAdvAmount = (LinearLayout) findViewById(R.id.layoutAdvancePayment);
        this.remainingAmount = (TextView) findViewById(R.id.tv_remainingamount_bottomsheet);
        this.ordered = (TextView) findViewById(R.id.et_ordered);
        this.inprogress = (TextView) findViewById(R.id.et_inProgress);
        this.completed = (TextView) findViewById(R.id.et_completed);
        this.orderedOptions = (LinearLayout) findViewById(R.id.orderedOptions);
        this.TvItemHeader = (TextView) findViewById(R.id.tv_name_header);
        this.BaseURL = Util.getBaseUrl(this);
        this.ivOpenBottomSheet = (ImageView) findViewById(R.id.iv_opendrawer_bottomsheet);
        this.logoutDialog = new ProgressDialog(this);
        this.logoutDialog.setMessage("Logging-Out Please Wait....");
        this.logoutDialog.setCancelable(false);
        this.lvDiscountSheet = (ListView) findViewById(R.id.lv_botomsheet_discount);
        this.tvBsTotal = (TextView) findViewById(R.id.tv_total_bottomsheet);
        this.tvBsTotalDisc = (TextView) findViewById(R.id.tv_totaldiscount_bottomsheet);
        this.tv_total_amount_bottomsheet = (TextView) findViewById(R.id.tv_total_taxable_bottomsheet);
        this.btpay = (Button) findViewById(R.id.bt_pay);
        this.noItems = (TextView) findViewById(R.id.noItems);
        this.orderFinalList = new ArrayList<>();
        this.orderItemList = new ArrayList<>();
        this.temporderlist = new ArrayList<>();
        this.costcenterList = new ArrayList<>();
        this.costcenterhashmap = new HashMap<>();
        this.progressList = new ArrayList<>();
        this.preValue = new ArrayList<>();
        this.updatedPreValue = new ArrayList<>();
        this.completedList = new ArrayList<>();
        this.preorderList = new ArrayList<>();
        this.combinedList = new ArrayList<>();
        this.orderListPerSeatNo = new ArrayList<>();
        this.temporderListStatus = new ArrayList<>();
        this.extraItemList = new ArrayList<>();
        this.orderedList = new ArrayList<>();
        this.changedList = new ArrayList<>();
        this.cancelledLists = new ArrayList();
        this.tempList = new ArrayList();
        this.extraItemsLists = new ArrayList();
        this.tempFinalList = new ArrayList();
        this.removedItems = new ArrayList();
        this.temporaryExtraListPerSeatNo = new ArrayList();
        this.ordered.setOnClickListener(this);
        this.inprogress.setOnClickListener(this);
        this.completed.setOnClickListener(this);
        this.bottomSheetHeader = (RelativeLayout) findViewById(R.id.relativelayout_bottomsheetlayout);
        this.bottomSheetBody = (LinearLayout) findViewById(R.id.layout_totalamt_bottomsheets);
        this.menuItemLayout = (LinearLayout) findViewById(R.id.layout_menuitems);
        this.billingLayout = (LinearLayout) findViewById(R.id.layout_billing);
        ViewTreeObserver viewTreeObserver = this.menuItemLayout.getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.danfe.restaurantapp1.MainActivity.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                MainActivity.this.menuItemLayoutWidth = MainActivity.this.menuItemLayout.getWidth();
                MainActivity.this.layoutParams = new LinearLayout.LayoutParams(MainActivity.this.menuItemLayoutWidth, -2);
                MainActivity.this.bottomSheetHeader.setLayoutParams(MainActivity.this.layoutParams);
                MainActivity.this.bottomSheetHeader.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
        this.coordinatorLayout = (CoordinatorLayout) findViewById(R.id.coordinatorlayout_mainactivity);
        this.coordinatorLayout.getWidth();
        this.coordinatorLayout.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Util.hideSoftKeyboard(MainActivity.this);
            }
        });
        this.tvTotalAmount = (TextView) findViewById(R.id.tv_totalamt1_bottomsheet);
        this.tvExtraItems = (TextView) findViewById(R.id.tv_extraItemList);
        this.rvExtraItems = (RecyclerView) findViewById(R.id.rv_extraItems);
        this.svExtraItems = (LinearLayout) findViewById(R.id.sv_extraItems);
        this.tvExtraTotal = (TextView) findViewById(R.id.tv_extraTotal);
        this.tv_totalWithExtra = (TextView) findViewById(R.id.tv_totalWithExtra);
        this.tvExtraItems.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.temporaryExtraListPerSeatNo.removeAll(MainActivity.this.temporaryExtraListPerSeatNo);
                if (MainActivity.this.extraItemsLists.size() != 0) {
                    if (!MainActivity.this.cbSplit.isChecked()) {
                        MainActivity.this.ExtrasRecycler(MainActivity.this.extraItemsLists, MainActivity.this.orderItemList);
                        if (MainActivity.this.svExtraItems.getVisibility() == 0) {
                            MainActivity.this.svExtraItems.setVisibility(4);
                            return;
                        } else {
                            MainActivity.this.svExtraItems.setVisibility(0);
                            return;
                        }
                    }
                    for (int i = 0; i < MainActivity.this.extraItemsLists.size(); i++) {
                        if (((orderExtraItem) ((List) MainActivity.this.extraItemsLists.get(i)).get(0)).getSeatNo() == MainActivity.this.spBill.getSelectedItem()) {
                            MainActivity.this.temporaryExtraListPerSeatNo.add(MainActivity.this.extraItemsLists.get(i));
                        }
                    }
                    if (MainActivity.this.temporaryExtraListPerSeatNo.size() > 0) {
                        MainActivity.this.ExtrasRecycler(MainActivity.this.temporaryExtraListPerSeatNo, MainActivity.this.orderItemList);
                        if (MainActivity.this.svExtraItems.getVisibility() == 0) {
                            MainActivity.this.svExtraItems.setVisibility(4);
                            return;
                        } else {
                            MainActivity.this.svExtraItems.setVisibility(0);
                            return;
                        }
                    }
                    MainActivity.this.svExtraItems.setVisibility(4);
                    Toast.makeText(MainActivity.this, "No Extra items added", 0).show();
                    return;
                }
                Toast.makeText(MainActivity.this.getApplicationContext(), "No Extra Items", 0).show();
            }
        });
        this.totalBottomSheet = findViewById(R.id.bottomsheets_totalamount);
        this.restaurantDatabase = new RestaurantDatabase();
        this.bottomSheetBehavior = BottomSheetBehavior.from(this.totalBottomSheet);
        this.bottomSheetBehavior.setHideable(false);
        this.bottomSheetBehavior.setState(4);
        this.bottomSheetBehavior.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback() { // from class: com.danfe.restaurantapp1.MainActivity.4
            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(@NonNull View bottomSheet, int newState) {
                if (newState == 4) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        MainActivity.this.ivOpenBottomSheet.setBackground(MainActivity.this.getResources().getDrawable(R.drawable.ic_botttomsheet_expand));
                    }
                } else if (newState == 3 && Build.VERSION.SDK_INT >= 16) {
                    MainActivity.this.ivOpenBottomSheet.setBackground(MainActivity.this.getResources().getDrawable(R.drawable.ic_bottomsheet_collapse));
                }
            }

            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(@NonNull View bottomSheet, float slideOffset) {
                if (slideOffset < 0.5d) {
                    MainActivity.this.layoutParams = new LinearLayout.LayoutParams(MainActivity.this.menuItemLayoutWidth, -2);
                    MainActivity.this.bottomSheetHeader.setLayoutParams(MainActivity.this.layoutParams);
                    MainActivity.this.bottomSheetBody.setLayoutParams(MainActivity.this.layoutParams);
                    return;
                }
                if (slideOffset > 0.5d) {
                    MainActivity.this.updateCostCenter();
                    MainActivity.this.layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    MainActivity.this.bottomSheetHeader.setLayoutParams(MainActivity.this.layoutParams);
                    MainActivity.this.bottomSheetBody.setLayoutParams(MainActivity.this.layoutParams);
                }
            }
        });
        new TableService(this);
        new CostCenterService(this);
        this.checkPinCode = new CheckPinCode();
        this.ivSetupTable = (ImageView) findViewById(R.id.iv_set_table);
        this.pDialog = new ProgressDialog(this);
        this.pDialog.setMessage("Order is being sent.Please wait..");
        this.pDialog.setIndeterminate(true);
        this.pDialog.setCanceledOnTouchOutside(false);
        this.pDialog.setCancelable(false);
        this.zoominAnim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.zoomin);
        this.layoutLogout = (LinearLayout) findViewById(R.id.layout_logout);
        this.layoutCallWaiter = (LinearLayout) findViewById(R.id.layout_call_waiter);
        this.layoutCallWaiter1 = (LinearLayout) findViewById(R.id.layout_call_waiter1);
        this.btnCallWaiter.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MainActivity.this.btnCallWaiter.startAnimation(MainActivity.this.zoominAnim);
                Util.showErrorMessage("Please have patience. Waiter will be at your service at any moment.\nThank You!!", MainActivity.this);
            }
        });
        this.cal = Calendar.getInstance();
        this.preferences = new Preferences(this);
        if (!this.preferences.getSplitBill().booleanValue()) {
            this.cbSplit.setEnabled(false);
        }
        this.restaurantDb = new RestaurantDatabase();
        this.username = getIntent().getStringExtra("username");
        this.room = getIntent().getStringExtra("roomno");
        this.table = getIntent().getStringExtra("tableno");
        this.tableId = getIntent().getIntExtra("tableId", 0);
        this.roomId = getIntent().getIntExtra("roomid", 0);
        this.tableSize = getIntent().getIntExtra("size", 0);
        this.isTable = getIntent().getStringExtra("isTable");
        if (this.isTable != null) {
            if (!this.isTable.equalsIgnoreCase("true")) {
                this.btpay.setVisibility(8);
            }
        } else {
            this.isTable = "";
        }
        Log.d("TABLESIZE", String.valueOf(this.tableSize));
        this.sdf = new SimpleDateFormat(Constants.DATE_FORMAT_NOW);
        this.dte = this.sdf.format(this.cal.getTime());
        this.cbSplit.setOnClickListener(this);
        this.tvWaiter.setText(getIntent().getStringExtra("username"));
        MenuItemFragment menuItemFragment = new MenuItemFragment();
        Bundle value = new Bundle();
        value.putString("cond", "Main");
        menuItemFragment.setArguments(value);
        beginFragmentTransaction(menuItemFragment);
        getPredefinedValue();
        this.orderListAdapter = new OrderListAdapter(this, this.orderFinalList, this, this, this, this, this);
        this.lvOrder.setAdapter((ListAdapter) this.orderListAdapter);
        this.btnSend.setVisibility(8);
        updateCostCenter();
        if (this.tableSize != 0) {
            this.cbSplit.setChecked(true);
            this.cbSplit.setEnabled(false);
            this.layoutBill.setVisibility(0);
            this.btnAddGuest.setVisibility(0);
            isSplit = true;
            this.billArray = new ArrayList();
            for (int i = 0; i < this.tableSize; i++) {
                this.billArray.add(String.valueOf(i + 1));
            }
            ArrayAdapter arrayAdapter = new ArrayAdapter(getApplicationContext(), R.layout.spinner_ressource_search, this.billArray);
            this.spBill.setAdapter((SpinnerAdapter) arrayAdapter);
        }
        this.ivSetupTable.setOnClickListener(this);
        this.tvLogout.setOnClickListener(this);
        this.btnSend.setOnClickListener(this);
        this.btnCancel.setOnClickListener(this);
        this.btnAddGuest.setOnClickListener(this);
        this.bottomSheetHeader.setOnClickListener(this);
        this.ivOpenBottomSheet.setOnClickListener(this);
        this.btnRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MainActivity.this.updateOrder();
            }
        });
        this.btpay.setOnClickListener(this);
        this.spBill.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.MainActivity.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                Log.e("SELECTEDBILLNO", MainActivity.this.spBill.getSelectedItem().toString());
                MainActivity.this.selectedStringBill = String.valueOf(MainActivity.this.spBill.getSelectedItem());
                MainActivity.this.FilterBillData(MainActivity.this.selectedStringBill);
                switch (MainActivity.this.clickedValue) {
                    case "Ordered":
                        MainActivity.this.ordered.callOnClick();
                        break;
                    case "Complete":
                        MainActivity.this.completed.callOnClick();
                        break;
                    case "InProgress":
                        MainActivity.this.inprogress.callOnClick();
                        break;
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ExtrasRecycler(List<List<orderExtraItem>> extraItemsLists, ArrayList<OrderDetailDb> orderItemList) {
        Double extraAmt = Double.valueOf(0.0d);
        if (extraItemsLists.size() > 0) {
            for (int j = 0; j < extraItemsLists.size(); j++) {
                List<orderExtraItem> extraItems = extraItemsLists.get(j);
                for (int k = 0; k < extraItems.size(); k++) {
                    extraAmt = Double.valueOf((((double) extraItems.get(k).getQuantity().intValue()) * extraItems.get(k).getExtraPrice().doubleValue()) + extraAmt.doubleValue());
                }
            }
            if (this.combinedList.size() > 0) {
                for (int i = 0; i < this.combinedList.size(); i++) {
                    orderItemList.add(this.combinedList.get(i));
                }
            }
        }
        this.tvExtraTotal.setText(String.valueOf(extraAmt));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getApplicationContext(), 1, false);
        this.rvExtraItems.setLayoutManager(linearLayoutManager);
        this.extraInfoAdapter = new ExtraInfoAdapter(getApplicationContext(), extraItemsLists, orderItemList);
        this.rvExtraItems.setAdapter(this.extraInfoAdapter);
        orderItemList.removeAll(this.combinedList);
    }

    private void getPredefinedValue() {
        this.obj = new JSONObject();
        this.jsonArray = new JSONArray();
        try {
            this.obj.put("TableId", this.tableId);
            this.jsonParser = new JsonParser();
            this.gsonObject = (JsonObject) this.jsonParser.parse(this.obj.toString());
            Log.e("json", this.gsonObject.toString());
        } catch (JSONException je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.getEditService = (RestaurantWebService.GetEdit) this.restAdapter.create(RestaurantWebService.GetEdit.class);
        this.getEditService.getEdit(this.gsonObject, new Callback<EditOrderRequest>() { // from class: com.danfe.restaurantapp1.MainActivity.8
            @Override // retrofit.Callback
            public void success(EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    MainActivity.this.orderingUser = editOrderRequest.getUserName();
                    new ArrayList();
                    List<EditOrderRequest.OrderDetailsList> orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    MainActivity.this.RoomTotalCharge = editOrderRequest.getRoomTotal().doubleValue();
                    MainActivity.this.AdvancePayment = editOrderRequest.getAdvancePaid().doubleValue();
                    MainActivity.this.RoomBookedDays = editOrderRequest.getRoomBookedDays().intValue();
                    for (int k = 0; k < orderDetailsLists.size(); k++) {
                        if (orderDetailsLists.get(k).getOrderExtraItems().size() != 0) {
                            List<EditOrderRequest.OrderDetailsList.orderExtraItem> orderExtraItems = orderDetailsLists.get(k).getOrderExtraItems();
                            ArrayList arrayList = new ArrayList();
                            for (int n = 0; n < orderExtraItems.size(); n++) {
                                orderExtraItem extraItem = new orderExtraItem(orderExtraItems.get(n).getItemID(), orderExtraItems.get(n).getExtraItemID(), orderExtraItems.get(n).getExtraItem(), orderExtraItems.get(n).getExtraPrice(), orderExtraItems.get(n).getQuantity(), orderExtraItems.get(n).getItemStatus(), orderExtraItems.get(n).getSeatNo());
                                arrayList.add(extraItem);
                            }
                            MainActivity.this.tempFinalList.add(arrayList);
                        }
                    }
                    if (MainActivity.this.extraItemsLists.size() == 0) {
                        MainActivity.this.extraItemsLists = MainActivity.this.tempFinalList;
                    }
                    for (int i = 0; i < orderDetailsLists.size(); i++) {
                        MainActivity.this.preorderList.add(new OrderDetailDb(Long.valueOf(orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), orderDetailsLists.get(i).getROI_ItemId(), orderDetailsLists.get(i).getROI_ItemName(), orderDetailsLists.get(i).getQuantity(), Double.valueOf(orderDetailsLists.get(i).getRate().doubleValue()), orderDetailsLists.get(i).getIsCancelled(), orderDetailsLists.get(i).getSeatNo(), orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(orderDetailsLists.get(i).getExtraCharge()))), orderDetailsLists.get(i).getStatus(), 0, orderDetailsLists.get(i).getCombo(), orderDetailsLists.get(i).getCostCenterId()));
                    }
                    for (int i2 = 0; i2 < MainActivity.this.preorderList.size(); i2++) {
                        if (((OrderDetailDb) MainActivity.this.preorderList.get(i2)).getStatus().equalsIgnoreCase("Ordered")) {
                            MainActivity.this.preValue.add(MainActivity.this.preorderList.get(i2));
                        } else {
                            MainActivity.this.combinedList.add(MainActivity.this.preorderList.get(i2));
                        }
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
            }
        });
        updateCostCenter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void FilterBillData(String selectedStringBill) {
        this.ordered.callOnClick();
        this.orderFinalList.clear();
        if (isSplit && selectedStringBill != null) {
            if (selectedStringBill.toLowerCase().equals("all") || selectedStringBill.toLowerCase().equals("select")) {
                selectedBill = 1;
                for (int j = 0; j < this.orderItemList.size(); j++) {
                    this.orderFinalList.add(this.orderItemList.get(j));
                }
            } else {
                selectedBill = Integer.parseInt(selectedStringBill);
                for (int i = 0; i < this.orderItemList.size(); i++) {
                    if (selectedBill == this.orderItemList.get(i).getSeatNo().intValue()) {
                        this.orderFinalList.add(this.orderItemList.get(i));
                    }
                }
            }
        } else {
            for (int j2 = 0; j2 < this.orderItemList.size(); j2++) {
                this.orderFinalList.add(this.orderItemList.get(j2));
                updateCostCenter();
            }
        }
        getItemList("Ordered");
        updateTotalPriceAmount();
        updateCostCenter();
    }

    private void ValidateUser() {
        if (this.username.equalsIgnoreCase("Dear Customer")) {
            this.tvRoom.setText(" ");
            if (this.preferences.getRoomTypeId() == -1 || this.preferences.getRoomId() == -1 || this.preferences.getTableId() == -1) {
                Toast.makeText(getApplicationContext(), "No table has been set.", 1).show();
                authenticateUser(1);
            } else {
                this.tableId = this.preferences.getTableId();
                this.roomId = this.preferences.getRoomId();
                this.tvTable.setText("Table : " + this.preferences.getTableName() + ", ");
                this.tvRoom.setText("Room :" + this.preferences.getRoomName());
                updateOrder();
            }
            this.layoutLogout.setVisibility(8);
            this.layoutCallWaiter.setVisibility(0);
            return;
        }
        this.tvRoom.setText(", Room :" + this.room);
        this.tvTable.setText("Table : " + this.table);
        this.tableId = getIntent().getIntExtra("tableId", 0);
        this.roomId = getIntent().getIntExtra("roomid", 0);
        this.tableSize = getIntent().getIntExtra("size", 0);
        this.tvRoom.setText(", Room:" + this.room);
        this.tvTable.setText("Table:" + this.table);
        updateOrder();
    }

    public void beginFragmentTransaction(Fragment fragment) {
        getSupportFragmentManager().beginTransaction().add(R.id.layout_menu, fragment).commit();
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.menu_deliver /* 2131690062 */:
                if (this.orderFinalList.get(menuposition).getStatus().equalsIgnoreCase("Complete")) {
                    this.orderFinalList.get(menuposition).setStatus("Delivered");
                    this.orderListAdapter.notifyDataSetChanged();
                }
                return true;
            case R.id.menu_Delete /* 2131690063 */:
                if (this.orderItemList.size() > 0) {
                    if (this.orderItemList.size() == 1) {
                        this.orderItemList.clear();
                        this.orderFinalList.clear();
                        this.orderListAdapter.notifyDataSetChanged();
                        updateCostCenter();
                    }
                    int i = 0;
                    while (true) {
                        if (i < this.orderItemList.size()) {
                            if (this.orderItemList.get(i).getItemId().intValue() != menuItemId || this.orderItemList.get(i).getSeatNo().intValue() != menuBill) {
                                i++;
                            } else {
                                this.orderItemList.remove(i);
                                this.orderListAdapter.notifyDataSetChanged();
                                updateCostCenter();
                            }
                        }
                    }
                }
                if (this.orderItemList.size() > 0) {
                    this.orderFinalList.clear();
                    for (int i2 = 0; i2 < this.orderItemList.size(); i2++) {
                        if (selectedBill == this.orderItemList.get(i2).getSeatNo().intValue()) {
                            this.orderFinalList.add(this.orderItemList.get(i2));
                        }
                    }
                }
                getItemList("Ordered");
                updateCostCenter();
                return true;
            case R.id.menu_MoveTo /* 2131690064 */:
                if (isSplit) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(this);
                    builder.setTitle("Move Item to Table");
                    LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
                    params.setMargins(15, 10, 15, 10);
                    LinearLayout linearLayout = new LinearLayout(getApplicationContext());
                    LinearLayout linearLayout2 = new LinearLayout(getApplicationContext());
                    linearLayout.setOrientation(1);
                    linearLayout.setBackgroundColor(-1);
                    linearLayout2.setGravity(17);
                    linearLayout2.setOrientation(0);
                    linearLayout2.setGravity(17);
                    LinearLayout spinnerQtyLayout = new LinearLayout(getApplicationContext());
                    spinnerQtyLayout.setOrientation(0);
                    spinnerQtyLayout.setWeightSum(1.0f);
                    LinearLayout billSpinnerLayout = new LinearLayout(getApplicationContext());
                    billSpinnerLayout.setWeightSum(1.0f);
                    billSpinnerLayout.setOrientation(0);
                    final Spinner BillSpinner = new Spinner(getApplicationContext());
                    final Spinner QtySpinner = new Spinner(getApplicationContext());
                    Button btnShiftItem = new Button(getApplicationContext());
                    btnShiftItem.setTextSize(25.0f);
                    btnShiftItem.setText("Shift Item");
                    btnShiftItem.setBackgroundColor(getResources().getColor(R.color.orange));
                    TextView tvItemName = new TextView(getApplicationContext());
                    tvItemName.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    tvItemName.setTextSize(26.0f);
                    tvItemName.setPadding(10, 10, 10, 10);
                    tvItemName.setText("Item Name");
                    TextView tvQty = new TextView(getApplicationContext());
                    tvQty.setTextSize(25.0f);
                    tvQty.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    TextView tvBillNo = new TextView(getApplicationContext());
                    tvBillNo.setTextSize(25.0f);
                    tvBillNo.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    BillSpinner.setLayoutParams(params);
                    QtySpinner.setLayoutParams(params);
                    tvQty.setLayoutParams(params);
                    tvBillNo.setLayoutParams(params);
                    tvBillNo.setText("Bill No:");
                    tvQty.setText("Qty");
                    spinnerQtyLayout.addView(tvQty);
                    spinnerQtyLayout.addView(QtySpinner);
                    billSpinnerLayout.addView(tvBillNo);
                    billSpinnerLayout.addView(BillSpinner);
                    linearLayout2.addView(spinnerQtyLayout);
                    linearLayout2.addView(billSpinnerLayout);
                    linearLayout.addView(tvItemName);
                    new ArrayList();
                    List<String> billArrays = this.billArray;
                    for (int i3 = 0; i3 < this.spNewlyAddedValue; i3++) {
                        if (billArrays.get(i3).toString().equals("All") || billArrays.get(i3).toLowerCase().toString().equals("select")) {
                            billArrays.remove(i3);
                        }
                    }
                    billArrays.add(0, "Select");
                    ArrayAdapter billnoAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerwhitebackground, billArrays);
                    BillSpinner.setAdapter((SpinnerAdapter) billnoAdapter);
                    Double noOfItems = this.orderFinalList.get(menuposition).getQuantity();
                    tvItemName.setText("Bill No:" + this.orderFinalList.get(menuposition).getSeatNo() + "(" + this.orderFinalList.get(menuposition).getTitle() + ": " + this.orderFinalList.get(menuposition).getQuantity() + ")");
                    List<String> noOfItemsList = new ArrayList<>();
                    for (int j = 0; j < noOfItems.doubleValue(); j++) {
                        noOfItemsList.add(String.valueOf(j + 1));
                    }
                    noOfItemsList.add(0, "Select");
                    ArrayAdapter qtyAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerwhitebackground, noOfItemsList);
                    QtySpinner.setAdapter((SpinnerAdapter) qtyAdapter);
                    btnShiftItem.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.9
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            if (!BillSpinner.getSelectedItem().toString().toLowerCase().equals("select") && !QtySpinner.getSelectedItem().toString().toLowerCase().equals("select")) {
                                MainActivity.this.spinnerQty = Double.valueOf(Double.parseDouble(QtySpinner.getSelectedItem().toString()));
                                MainActivity.this.billSpinnerNo = Integer.parseInt(BillSpinner.getSelectedItem().toString());
                                Boolean isItemShifted = false;
                                for (int x = 0; x < MainActivity.this.orderItemList.size(); x++) {
                                    if (((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getSeatNo().toString().equals(String.valueOf(MainActivity.this.billSpinnerNo)) && !isItemShifted.booleanValue() && ((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getItemId().toString().toLowerCase().equals(((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getItemId().toString().toLowerCase())) {
                                        ((OrderDetailDb) MainActivity.this.orderItemList.get(x)).setQuantity(Double.valueOf(((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getQuantity().doubleValue() + MainActivity.this.spinnerQty.doubleValue()));
                                        isItemShifted = true;
                                    }
                                    if (((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getSeatNo().toString().toLowerCase().equals(((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getSeatNo().toString().toLowerCase()) && ((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getItemId().toString().toLowerCase().equals(((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getItemId().toString().toLowerCase())) {
                                        ((OrderDetailDb) MainActivity.this.orderItemList.get(x)).setQuantity(Double.valueOf(((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getQuantity().doubleValue() - MainActivity.this.spinnerQty.doubleValue()));
                                        if (((OrderDetailDb) MainActivity.this.orderItemList.get(x)).getQuantity().toString().equals("0")) {
                                            MainActivity.this.orderItemList.remove(x);
                                        }
                                    }
                                }
                                if (!isItemShifted.booleanValue()) {
                                    MainActivity.this.orderItemList.add(new OrderDetailDb(((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getId(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getOrderMasterId(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getItemId(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getTitle(), MainActivity.this.spinnerQty, ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getPrice(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getIsCanceled(), Integer.valueOf(MainActivity.this.billSpinnerNo), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getNote(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getExtra(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getStatus(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getHomePackQty(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getIsCombo(), ((OrderDetailDb) MainActivity.this.orderFinalList.get(MainActivity.menuposition)).getCostCenterId()));
                                }
                                if (MainActivity.this.alertDialog != null) {
                                    MainActivity.this.alertDialog.dismiss();
                                }
                                Toast.makeText(MainActivity.this.getApplicationContext(), "Item Moved Successfully", 1).show();
                                MainActivity.this.FilterBillData(String.valueOf(MainActivity.this.spBill.getSelectedItem()));
                                return;
                            }
                            Toast.makeText(MainActivity.this.getApplicationContext(), "Please select any qty and bill number to proceed. ", 1).show();
                        }
                    });
                    linearLayout.addView(linearLayout2);
                    linearLayout.addView(btnShiftItem);
                    builder.setView(linearLayout);
                    this.alertDialog = builder.show();
                    break;
                } else {
                    Util.showErrorMessageWithTitle("Split Bill is not selected.", "Split Bill", this);
                    break;
                }
            default:
                return false;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.txt_logout /* 2131689656 */:
                this.logoutDialog.show();
                this.tvLogout.startAnimation(this.zoominAnim);
                LogoutFunction();
                break;
            case R.id.iv_set_table /* 2131689661 */:
                authenticateUser(0);
                this.ivSetupTable.startAnimation(this.zoominAnim);
                break;
            case R.id.cb_split /* 2131689668 */:
                if (this.cbSplit.isChecked()) {
                    this.cbSplit.setEnabled(false);
                    this.layoutBill.setVisibility(0);
                    this.btnAddGuest.setVisibility(0);
                    isSplit = true;
                    showGuestBox();
                } else {
                    this.cbSplit.setEnabled(true);
                    this.layoutBill.setVisibility(8);
                    this.btnAddGuest.setVisibility(8);
                    isSplit = false;
                }
                updateTotalPriceAmount();
                updateCostCenter();
                break;
            case R.id.bt_enter_guest /* 2131689673 */:
                this.newBillArray = new ArrayList();
                AlertDialog.Builder alertDialog = new AlertDialog.Builder(this).setTitle(Html.fromHtml("<font color='#FF7F27'> <b> No. of Split Information! </b> </font")).setIcon(R.drawable.ic_dialog_alert).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.13
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int whichButton) {
                        MainActivity.access$3704(MainActivity.this);
                        for (int i = 0; i < MainActivity.this.spNewlyAddedValue; i++) {
                            MainActivity.this.newBillArray.add(String.valueOf(i + 1));
                        }
                        MainActivity.this.splitBillAdapter = new ArrayAdapter(MainActivity.this.getApplicationContext(), R.layout.spinner_ressource_search, MainActivity.this.newBillArray);
                        MainActivity.this.spBill.setAdapter((SpinnerAdapter) MainActivity.this.splitBillAdapter);
                    }
                }).setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.12
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int whichButton) {
                        for (int i = 0; i < MainActivity.this.spNewlyAddedValue; i++) {
                            MainActivity.this.newBillArray.add(String.valueOf(i + 1));
                        }
                        MainActivity.this.splitBillAdapter = new ArrayAdapter(MainActivity.this.getApplicationContext(), R.layout.spinner_ressource_search, MainActivity.this.newBillArray);
                        MainActivity.this.spBill.setAdapter((SpinnerAdapter) MainActivity.this.splitBillAdapter);
                        dialog.dismiss();
                    }
                }).setMessage("\nNew Split Added. Split No: " + (this.spNewlyAddedValue + 1));
                alertDialog.show();
                FilterBillData((String) this.spBill.getSelectedItem());
                break;
            case R.id.et_ordered /* 2131689678 */:
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.completed.setTextColor(getResources().getColor(R.color.black));
                this.inprogress.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.inprogress.setTextColor(getResources().getColor(R.color.black));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.ordered.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.clickedValue = "Ordered";
                this.btnSend.setVisibility(0);
                this.status = "Ordered";
                this.temporderListStatus.clear();
                if (isSplit) {
                    if (this.cbSplit.isChecked()) {
                        for (int i = 0; i < this.orderedList.size(); i++) {
                            if (this.selectedStringBill.equalsIgnoreCase(this.orderedList.get(i).getSeatNo().toString())) {
                                this.temporderListStatus.add(this.orderedList.get(i));
                            }
                        }
                    }
                } else {
                    for (int i2 = 0; i2 < this.orderedList.size(); i2++) {
                        this.temporderListStatus.add(this.orderedList.get(i2));
                    }
                }
                this.lvOrder.getLastVisiblePosition();
                this.orderListAdapter = new OrderListAdapter(this, this.status, this.temporderListStatus, this, this, this, this, this);
                this.lvOrder.getFirstVisiblePosition();
                View v1 = this.lvOrder.getChildAt(0);
                if (v1 != null) {
                    int top = v1.getTop() - this.lvOrder.getPaddingTop();
                }
                this.lvOrder.post(new Runnable() { // from class: com.danfe.restaurantapp1.MainActivity.10
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.lvOrder.setSelection(MainActivity.this.temporderListStatus.size() - 1);
                    }
                });
                this.lvOrder.setAdapter((ListAdapter) this.orderListAdapter);
                break;
            case R.id.et_inProgress /* 2131689679 */:
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.completed.setTextColor(getResources().getColor(R.color.black));
                this.inprogress.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.inprogress.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.ordered.setTextColor(getResources().getColor(R.color.black));
                this.clickedValue = "InProgress";
                this.btnSend.setVisibility(8);
                this.status = "InProgress";
                this.temporderListStatus.clear();
                if (isSplit) {
                    if (this.cbSplit.isChecked()) {
                        for (int i3 = 0; i3 < this.progressList.size(); i3++) {
                            if (this.selectedStringBill.equalsIgnoreCase(this.progressList.get(i3).getSeatNo().toString())) {
                                this.temporderListStatus.add(this.progressList.get(i3));
                            }
                        }
                    }
                } else {
                    for (int i4 = 0; i4 < this.progressList.size(); i4++) {
                        this.temporderListStatus.add(this.progressList.get(i4));
                    }
                }
                this.orderListAdapter = new OrderListAdapter(this, this.status, this.temporderListStatus, this, this, this, this, this);
                this.lvOrder.setAdapter((ListAdapter) this.orderListAdapter);
                break;
            case R.id.et_completed /* 2131689680 */:
                this.completed.setBackgroundResource(R.drawable.bg_menu_title_start_without_border);
                this.completed.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.inprogress.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.inprogress.setTextColor(getResources().getColor(R.color.black));
                this.ordered.setBackgroundResource(R.drawable.bg_menu_title_start);
                this.ordered.setTextColor(getResources().getColor(R.color.black));
                this.clickedValue = "Complete";
                this.btnSend.setVisibility(8);
                this.status = "Complete";
                this.temporderListStatus.clear();
                if (isSplit) {
                    if (this.cbSplit.isChecked()) {
                        for (int i5 = 0; i5 < this.completedList.size(); i5++) {
                            if (this.selectedStringBill.equalsIgnoreCase(this.completedList.get(i5).getSeatNo().toString())) {
                                this.temporderListStatus.add(this.completedList.get(i5));
                            }
                        }
                    }
                } else {
                    for (int i6 = 0; i6 < this.completedList.size(); i6++) {
                        this.temporderListStatus.add(this.completedList.get(i6));
                    }
                }
                this.orderListAdapter = new OrderListAdapter(this, this.status, this.temporderListStatus, this, this, this, this, this);
                this.lvOrder.setAdapter((ListAdapter) this.orderListAdapter);
                break;
            case R.id.bt_cancel /* 2131689688 */:
                this.btnCancel.setBackgroundResource(R.drawable.bg_button);
                this.btnCancel.setTextColor(Color.parseColor("#FFFFFFFF"));
                this.orderType = Constants.CANCEL_ORDER;
                if (this.orderItemList.size() == 0) {
                    onBackPressed();
                } else if (this.orderMasterId == 0) {
                    onBackPressed();
                } else {
                    DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.11
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            switch (which) {
                                case -3:
                                    MainActivity.this.btnSend.callOnClick();
                                    break;
                                case -2:
                                    MainActivity.this.onBackPressed();
                                    break;
                                case -1:
                                    dialog.dismiss();
                                    new CheckOrderStatus(MainActivity.this, "cancelOrder", Integer.parseInt(String.valueOf(MainActivity.this.orderMasterId)), MainActivity.this.tableId, MainActivity.selectedBill);
                                    break;
                            }
                        }
                    };
                    AlertDialog.Builder builder = new AlertDialog.Builder(this);
                    builder.setMessage("Do you want to cancel the order?").setPositiveButton("Yes", dialogClickListener).setNegativeButton("No", dialogClickListener).setNeutralButton("Send Order", dialogClickListener).show();
                }
                break;
            case R.id.bt_send /* 2131689689 */:
                this.btnSend.setBackgroundResource(R.drawable.bg_button);
                this.btnSend.setTextColor(Color.parseColor("#FFFFFFFF"));
                if (this.orderItemList.size() != 0) {
                    this.orderType = Constants.SEND_ODRDER;
                    this.checkPinCode.checkPinCodemethod(this, "sendOrder");
                } else if (this.cancelledLists.size() != 0 && this.orderItemList.size() == 0) {
                    this.orderType = Constants.SEND_ODRDER;
                    new CheckOrderStatus(this, "cancelOrder", Integer.parseInt(String.valueOf(this.orderMasterId)), this.tableId, selectedBill);
                } else {
                    Toast.makeText(this, "No items ordered, Please order atleast one item.", 0).show();
                }
                break;
            case R.id.relativelayout_bottomsheetlayout /* 2131689839 */:
                if (this.costcenterhashmap.size() != 0) {
                    if (this.bottomSheetBehavior.getState() == 4) {
                        this.bottomSheetBehavior.setState(3);
                        if (this.svExtraItems.getVisibility() == 4) {
                        }
                    } else {
                        if (this.bottomSheetBehavior.getState() == 3) {
                            this.bottomSheetBehavior.setState(4);
                        }
                        break;
                    }
                }
                break;
            case R.id.iv_opendrawer_bottomsheet /* 2131689840 */:
                if (this.costcenterhashmap.size() != 0) {
                    if (this.bottomSheetBehavior.getState() == 4) {
                        this.bottomSheetBehavior.setState(3);
                        if (this.svExtraItems.getVisibility() == 4) {
                            this.tvExtraItems.callOnClick();
                        }
                    } else if (this.bottomSheetBehavior.getState() == 3) {
                        this.bottomSheetBehavior.setState(4);
                    }
                }
                break;
            case R.id.bt_pay /* 2131689844 */:
                this.checkPinCode.checkPinCodemethod(this, "payOrder");
                break;
        }
    }

    private Double calculateGrandTotal() {
        Double extraAmt = Double.valueOf(0.0d);
        if (this.extraItemsLists.size() > 0) {
            for (int j = 0; j < this.extraItemsLists.size(); j++) {
                List<orderExtraItem> extraItems = this.extraItemsLists.get(j);
                for (int k = 0; k < extraItems.size(); k++) {
                    extraAmt = Double.valueOf((((double) extraItems.get(k).getQuantity().intValue()) * extraItems.get(k).getExtraPrice().doubleValue()) + extraAmt.doubleValue());
                }
            }
        }
        return extraAmt;
    }

    private void getItemList(String status) {
        this.orderListAdapter = new OrderListAdapter(this, status, this.orderFinalList, this, this, this, this, this);
        this.lvOrder.setAdapter((ListAdapter) this.orderListAdapter);
    }

    public void PayOrder() {
        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage("Please wait. Sending Pay Information");
        progressDialog.show();
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.sendPaymentDetails = (RestaurantWebService.SendPaymentDetails) this.restAdapter.create(RestaurantWebService.SendPaymentDetails.class);
        this.sendPaymentDetails.sendPaydetails(this.tableId, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.MainActivity.14
            @Override // retrofit.Callback
            public void success(JsonObject jsonObject, Response response) {
                try {
                    if (progressDialog.isShowing()) {
                        progressDialog.dismiss();
                    }
                    String status = jsonObject.get("Status").toString();
                    if (status.equalsIgnoreCase("\"Success\"")) {
                        Toast.makeText(MainActivity.this, "Payment Sent. Please collect bill on the counter", 0).show();
                        MainActivity.this.onBackPressed();
                    }
                } catch (Exception e) {
                    Log.e("PayExc", e.getMessage().toString());
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
                Util.showRetrofitErrorMessage("Bill Error", MainActivity.this);
                Log.e("payfailure", error.toString());
            }
        });
    }

    public void SendOrder(String username, String userRole) {
        this.btnSend.setEnabled(false);
        this.obj = new JSONObject();
        this.jsonArray = new JSONArray();
        this.extrajsonArray = new JSONArray();
        try {
            if (this.orderMasterId == 0) {
                this.obj.put("OrderStatus", 0);
                this.obj.put("GuestNo", 1);
            } else {
                this.obj.put("OrderStatus", 1);
            }
            this.obj.put("OrderMasterId", this.orderMasterId);
            this.obj.put("TableId", this.tableId);
            this.obj.put("RoomId", this.roomId);
            this.obj.put("Remarks", " ");
            this.obj.put("IsSplit", this.cbSplit.isChecked());
            if (!this.cbSplit.isChecked()) {
                this.cbSplit.setEnabled(true);
                this.obj.put("GuestNo", 1);
                this.obj.put("SeatNo", 1);
            } else {
                this.cbSplit.setEnabled(false);
                this.obj.put("GuestNo", this.spNewlyAddedValue);
            }
            this.orderItemList.clear();
            for (int i = 0; i < this.orderedList.size(); i++) {
                this.orderItemList.add(this.orderedList.get(i));
            }
            this.obj.put("IsCancelled", false);
            this.obj.put("UserName", username);
            for (int i2 = 0; i2 < this.orderItemList.size(); i2++) {
                this.jsonArray.put(this.orderItemList.get(i2).toJSON());
            }
            this.obj.put("orderDetailsList", this.jsonArray);
            for (int i3 = 0; i3 < this.extraItemsLists.size(); i3++) {
                List<orderExtraItem> extraItems = this.extraItemsLists.get(i3);
                for (int k = 0; k < extraItems.size(); k++) {
                    this.extrajsonArray.put(extraItems.get(k).toExtraJson());
                }
            }
            this.obj.put("orderExtraItem", this.extrajsonArray);
            this.obj.put("OrderTypeID", 1);
            this.jsonParser = new JsonParser();
            this.gsonObject = (JsonObject) this.jsonParser.parse(this.obj.toString());
            this.tempList = getChangedInfo(username, this.orderItemList);
            for (int i4 = 0; i4 < this.tempList.size(); i4++) {
                this.cancelledLists.add(this.tempList.get(i4));
            }
            Log.e("sendOrderResponse", this.gsonObject.toString());
        } catch (JSONException je) {
            Log.e("json exception", je.getMessage());
        }
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(1L, TimeUnit.MINUTES);
        okHttpClient.setWriteTimeout(60L, TimeUnit.SECONDS);
        okHttpClient.setReadTimeout(60L, TimeUnit.SECONDS);
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.orderService = (RestaurantWebService.PostOrder) this.restAdapter.create(RestaurantWebService.PostOrder.class);
        if (this.cancelledLists.size() != 0) {
            if (userRole.contains("Void Bill")) {
                Log.e("Send Order userRole ", userRole);
                this.flag = 1;
                displayChangedDialog(this.cancelledLists, new SuccessInterface() { // from class: com.danfe.restaurantapp1.MainActivity.15
                    @Override // com.danfe.restaurantapp1.Interface.SuccessInterface
                    public void onSuccess() {
                        MainActivity.this.pDialog.show();
                        MainActivity.this.orderService.postOrder(MainActivity.this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.MainActivity.15.1
                            @Override // retrofit.Callback
                            public void success(JsonObject orderResponse, Response response) {
                                String status = orderResponse.get("statusCode").toString();
                                int statusCode = Integer.parseInt(status);
                                String message = orderResponse.get("message").toString();
                                Log.e("message", message);
                                Log.e("statusCode", status);
                                if (statusCode == 200) {
                                    if (MainActivity.this.pDialog.isShowing()) {
                                        MainActivity.this.pDialog.dismiss();
                                    }
                                    Toast.makeText(MainActivity.this, "Thank you, Order has been placed successfully.", 1).show();
                                    MainActivity.this.onBackPressed();
                                    MainActivity.this.btnSend.setEnabled(true);
                                    MainActivity.this.orderItemList.clear();
                                    return;
                                }
                                if (message.equalsIgnoreCase("\"Printing Failed\"")) {
                                    Util.showError("Order have been send but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience.", "Printer not found", MainActivity.this);
                                    MainActivity.this.btnSend.setEnabled(true);
                                } else {
                                    Util.showRetrofitErrorMessage("Order send: OOPS!! server is not connected at the moment. Please try again later.", MainActivity.this);
                                    MainActivity.this.btnSend.setEnabled(true);
                                }
                            }

                            @Override // retrofit.Callback
                            public void failure(RetrofitError error) {
                                try {
                                    Util.showRetrofitErrorMessage("Order send: " + Util.Api.getErrorMessage(error), MainActivity.this);
                                    Log.e("Retrofit", "failure: ", error.getCause());
                                    Log.e("failure: ", error.getLocalizedMessage());
                                    MainActivity.this.btnSend.setEnabled(true);
                                } catch (Exception e) {
                                }
                            }
                        });
                    }

                    @Override // com.danfe.restaurantapp1.Interface.SuccessInterface
                    public void onFailed() {
                        Util.showError("No changes in order", "!!!", MainActivity.this);
                    }
                });
                return;
            } else {
                Util.showErrorMessageWithTitle("You don't have require permission to cancel order", "Cancel Order Failed ", this);
                if (this.pDialog.isShowing()) {
                    this.pDialog.dismiss();
                    return;
                }
                return;
            }
        }
        this.orderService.postOrder(this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.MainActivity.16
            @Override // retrofit.Callback
            public void success(JsonObject orderResponse, Response response) {
                MainActivity.this.pDialog.show();
                String status = orderResponse.get("statusCode").toString();
                String message = orderResponse.get("message").toString();
                int statusCode = Integer.parseInt(status);
                Log.e("message", message);
                Log.e("status", status);
                if (statusCode == 200) {
                    if (MainActivity.this.pDialog.isShowing()) {
                        MainActivity.this.pDialog.dismiss();
                    }
                    Toast.makeText(MainActivity.this, "Thank you, Order has been placed successfully.", 1).show();
                    MainActivity.this.onBackPressed();
                    MainActivity.this.orderItemList.clear();
                    MainActivity.this.btnSend.setEnabled(true);
                    return;
                }
                if (message.equalsIgnoreCase("\"Printing Failed\"")) {
                    Util.showError("Order have been send but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience.", "Printer not found", MainActivity.this);
                    MainActivity.this.btnSend.setEnabled(true);
                } else {
                    Util.showRetrofitErrorMessage("Order send: OOPS!! server is not connected at the moment. Please try again later.", MainActivity.this);
                    MainActivity.this.btnSend.setEnabled(true);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("Order send: " + Util.Api.getErrorMessage(error), MainActivity.this);
                    Log.e("Retrofit", "failure: ", error.getCause());
                    Log.e("failure: ", error.getLocalizedMessage());
                    if (MainActivity.this.pDialog.isShowing()) {
                        MainActivity.this.pDialog.dismiss();
                    }
                    MainActivity.this.btnSend.setEnabled(true);
                } catch (Exception e) {
                }
            }
        });
    }

    private List<ItemCancelledListModel> getRemovedItems(List<ItemCancelledListModel> cancelledLists, ArrayList<OrderDetailDb> orderItemList, List<ItemCancelledListModel> removedItems) {
        for (int i = 0; i < orderItemList.size(); i++) {
            for (int j = 0; j < removedItems.size(); j++) {
                if (removedItems.get(j).getItem().equals(orderItemList.get(i).getTitle())) {
                    cancelledLists.remove(removedItems.get(j));
                }
            }
        }
        return cancelledLists;
    }

    private void displayChangedDialog(List<ItemCancelledListModel> changedInfo, SuccessInterface successInterface) {
        new CancelledOrderDialog(this, changedInfo, successInterface);
    }

    private List<ItemCancelledListModel> getChangedInfo(String cancelledBy, ArrayList<OrderDetailDb> orderItemList) {
        List<ItemCancelledListModel> mycancelledLists = new ArrayList<>();
        for (int i = 0; i < this.preValue.size(); i++) {
            Log.e("FullRestroRoomData", "PreorderValue: " + this.preValue.get(i).getQuantity() + " PostorderValue: " + orderItemList.get(i).getQuantity());
            if (this.preValue.get(i).getQuantity().doubleValue() > orderItemList.get(i).getQuantity().doubleValue()) {
                ItemCancelledListModel itemCancelledListModel = new ItemCancelledListModel(this.preValue.get(i).getTitle(), Double.valueOf(this.preValue.get(i).getQuantity().doubleValue() - orderItemList.get(i).getQuantity().doubleValue()), this.orderingUser, cancelledBy, "", "", Integer.valueOf(this.tableId), this.preValue.get(i).getSeatNo(), this.preValue.get(i).getOrderMasterId());
                mycancelledLists.add(itemCancelledListModel);
            }
        }
        return mycancelledLists;
    }

    public void CancelOrder(final String username) {
        final String[] remarks = {""};
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss a");
        String currentDateandTime = sdf.format(new Date());
        Log.e("date", currentDateandTime);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Cancel Remarks");
        final EditText editText = new EditText(this);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        editText.setHint("remarks");
        editText.setLayoutParams(lp);
        editText.setLongClickable(false);
        builder.setView(editText);
        builder.setCancelable(false);
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.17
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        builder.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.18
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog1, int which) {
                String reason = editText.getText().toString().trim();
                if (reason.matches("") || reason.length() <= 2) {
                    Util.showErrorMessage("Please give a valid reason!", MainActivity.this);
                    return;
                }
                remarks[0] = editText.getText().toString().trim();
                MainActivity.this.obj = new JSONObject();
                MainActivity.this.jsonArray = new JSONArray();
                try {
                    MainActivity.this.obj.put("OrderMasterID", MainActivity.this.orderMasterId);
                    MainActivity.this.obj.put("TableId", MainActivity.this.tableId);
                    MainActivity.this.obj.put("IsCancelled", true);
                    MainActivity.this.obj.put("CancelReason", remarks[0]);
                    if (!MainActivity.this.cbSplit.isChecked()) {
                        MainActivity.this.obj.put("GuestNo", 1);
                        MainActivity.this.obj.put("SeatNo", 1);
                    } else {
                        MainActivity.this.cbSplit.setEnabled(false);
                        MainActivity.this.obj.put("GuestNo", MainActivity.this.spBill.getSelectedItem());
                    }
                    MainActivity.this.obj.put("CancelBy", username);
                    MainActivity.this.obj.put("UserName", MainActivity.this.tvWaiter.getText().toString());
                    MainActivity.this.jsonParser = new JsonParser();
                    MainActivity.this.gsonObject = (JsonObject) MainActivity.this.jsonParser.parse(MainActivity.this.obj.toString());
                } catch (JSONException je) {
                    Log.e("json exception", je.getMessage());
                }
                Log.e("json", MainActivity.this.gsonObject.toString());
                MainActivity.this.cancelOrder = (RestaurantWebService.CancelOrder) MainActivity.this.restAdapter.create(RestaurantWebService.CancelOrder.class);
                MainActivity.this.cancelOrder.cancelOrder(MainActivity.this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.MainActivity.18.1
                    @Override // retrofit.Callback
                    public void success(JsonObject orderResponse, Response response) {
                        orderResponse.get("statusCode").getAsInt();
                        String status = orderResponse.get("message").toString();
                        Log.e("order", status);
                        if (status.equalsIgnoreCase("\"Success\"")) {
                            Toast.makeText(MainActivity.this, "Order has been cancelled successfully, Thank you", 1).show();
                            MainActivity.this.onBackPressed();
                            MainActivity.this.btnCancel.setEnabled(true);
                        } else if (status.equalsIgnoreCase("\"Print Failed.\"")) {
                            Util.showError("Order have been Cancelled but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience.", "Printer not found", MainActivity.this);
                            MainActivity.this.btnCancel.setEnabled(true);
                        } else {
                            Util.showErrorMessage("Order Cancel Error: " + status, MainActivity.this);
                            MainActivity.this.btnCancel.setEnabled(true);
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        try {
                            if (MainActivity.this != null) {
                                MainActivity.this.alertDialog.dismiss();
                                MainActivity.this.onBackPressed();
                                Util.showRetrofitErrorMessage("Order Cancel Error: " + Util.Api.getErrorMessage(error), MainActivity.this);
                                MainActivity.this.btnCancel.setEnabled(true);
                            }
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
        AlertDialog dialog2 = builder.create();
        dialog2.show();
    }

    private void authenticateUser(int i) {
        this.alertDialogBuilder = new AlertDialog.Builder(this);
        this.alertDialogBuilder.setTitle(Html.fromHtml("<font color='black'>Please Login</font>"));
        this.alertDialogBuilder.setCancelable(false);
        TextView tvUsername = new TextView(this);
        TextView tvPassword = new TextView(this);
        tvUsername.setText("Username");
        tvUsername.setTypeface(Typeface.create("sans-serif-condensed", 0));
        tvUsername.setTextSize(2, getResources().getDimension(R.dimen.dialog_header_text) / getResources().getDisplayMetrics().density);
        tvUsername.setPadding(10, 5, 10, 5);
        tvUsername.setTextColor(getResources().getColor(R.color.black));
        tvPassword.setText("Password");
        tvPassword.setPadding(10, 5, 10, 5);
        tvPassword.setTypeface(Typeface.create("sans-serif-condensed", 0));
        tvPassword.setTextSize(2, getResources().getDimension(R.dimen.dialog_header_text) / getResources().getDisplayMetrics().density);
        tvPassword.setTextColor(getResources().getColor(R.color.black));
        final EditText etLoginUsername = new EditText(this);
        final EditText etLoginPassword = new EditText(this);
        etLoginUsername.setHint("UserName");
        etLoginUsername.setHintTextColor(getResources().getColor(R.color.lightgrey));
        etLoginUsername.setTypeface(Typeface.create("sans-serif-condensed", 0));
        etLoginUsername.setTextSize(2, getResources().getDimension(R.dimen.dialog_sub_text) / getResources().getDisplayMetrics().density);
        etLoginUsername.setSingleLine(true);
        etLoginUsername.setTextColor(getResources().getColor(R.color.orange));
        etLoginUsername.setPadding(10, 10, 10, 10);
        etLoginPassword.setHint("Password");
        etLoginPassword.setHintTextColor(getResources().getColor(R.color.lightgrey));
        etLoginPassword.setTypeface(Typeface.create("sans-serif-condensed", 0));
        etLoginPassword.setTextSize(2, getResources().getDimension(R.dimen.dialog_sub_text) / getResources().getDisplayMetrics().density);
        etLoginUsername.setSingleLine(true);
        etLoginPassword.setTextColor(getResources().getColor(R.color.orange));
        etLoginPassword.setPadding(10, 10, 10, 10);
        etLoginPassword.setInputType(129);
        LinearLayout dialogLayout = new LinearLayout(this);
        dialogLayout.setOrientation(1);
        dialogLayout.setPadding(5, 5, 5, 5);
        dialogLayout.addView(tvUsername);
        dialogLayout.addView(etLoginUsername);
        dialogLayout.addView(tvPassword);
        dialogLayout.addView(etLoginPassword);
        etLoginUsername.getText().toString();
        etLoginPassword.getText().toString();
        this.alertDialogBuilder.setView(dialogLayout);
        this.alertDialogBuilder.setPositiveButton("Login", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.19
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                if (!etLoginUsername.getText().toString().equals("") || !etLoginPassword.getText().toString().equals("")) {
                    MainActivity.this.loginUser(etLoginUsername.getText().toString(), etLoginPassword.getText().toString());
                } else {
                    Util.showErrorMessage("username and password empty", MainActivity.this);
                }
            }
        });
        if (i == 0) {
            this.alertDialogBuilder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.20
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            });
        }
        this.alertDialogBuilder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loginUser(String loginUsername, String loginPassword) {
        JsonObject obj = new JsonObject();
        try {
            obj.addProperty("username", loginUsername);
            obj.addProperty("password", loginPassword);
            obj.addProperty("WaiterIP", this.DeviceId);
            Log.e("json", obj.toString());
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        RestaurantWebService.LoginRequest webService = (RestaurantWebService.LoginRequest) this.restAdapter.create(RestaurantWebService.LoginRequest.class);
        webService.loginRequest(obj, new Callback<LoginResponse>() { // from class: com.danfe.restaurantapp1.MainActivity.21
            @Override // retrofit.Callback
            public void success(LoginResponse loginResponse, Response response) {
                if (loginResponse != null) {
                    try {
                        if (loginResponse.getStatus().equals("Success")) {
                            Log.e("userlogin", loginResponse.toString());
                            Intent j = new Intent(MainActivity.this, (Class<?>) TableSelectionActivity.class);
                            j.putExtra(Constants.SHIFT_TABLE, "false");
                            MainActivity.this.startActivity(j);
                        } else if (loginResponse.getStatus().equalsIgnoreCase("LoggedIn")) {
                            Log.e("success", "false");
                            Util.showErrorMessage("Please log out from previous device", MainActivity.this);
                        } else {
                            Log.e("success", "false");
                            Util.showErrorMessage("Login failed! Invalid credentials", MainActivity.this);
                        }
                    } catch (Exception e) {
                        Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", MainActivity.this);
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Log.e("data", String.valueOf(error));
                    Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", MainActivity.this);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void updateOrder() {
        this.obj = new JSONObject();
        this.jsonArray = new JSONArray();
        try {
            this.obj.put("TableId", this.tableId);
            this.obj.put("RoomId", this.roomId);
            this.jsonParser = new JsonParser();
            this.gsonObject = (JsonObject) this.jsonParser.parse(this.obj.toString());
            Log.e("json", this.gsonObject.toString());
        } catch (JSONException je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.getEditService = (RestaurantWebService.GetEdit) this.restAdapter.create(RestaurantWebService.GetEdit.class);
        this.getEditService.getEdit(this.gsonObject, new Callback<EditOrderRequest>() { // from class: com.danfe.restaurantapp1.MainActivity.22
            @Override // retrofit.Callback
            public void success(EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    Log.e("order", "success");
                    List<EditOrderRequest.OrderDetailsList> orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    ArrayList<OrderDetailDb> orderItems = new ArrayList<>();
                    for (int i = 0; i < orderDetailsLists.size(); i++) {
                        Log.e("order", String.valueOf(editOrderRequest.getOrderMasterID()) + orderDetailsLists.get(i).getROI_ItemName() + String.valueOf(orderDetailsLists.get(i).getOrderDetailsID()));
                        orderItems.add(new OrderDetailDb(Long.valueOf(orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), orderDetailsLists.get(i).getROI_ItemId(), orderDetailsLists.get(i).getROI_ItemName(), orderDetailsLists.get(i).getQuantity(), Double.valueOf(orderDetailsLists.get(i).getRate().doubleValue()), orderDetailsLists.get(i).getIsCancelled(), orderDetailsLists.get(i).getSeatNo(), orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(orderDetailsLists.get(i).getExtraCharge()))), orderDetailsLists.get(i).getStatus(), 0, orderDetailsLists.get(i).getCombo(), orderDetailsLists.get(i).getCostCenterId()));
                    }
                    if (editOrderRequest.getIsSplit().booleanValue()) {
                        MainActivity.this.cbSplit.setChecked(true);
                        MainActivity.this.cbSplit.setEnabled(false);
                        MainActivity.this.layoutBill.setVisibility(0);
                        MainActivity.this.btnAddGuest.setVisibility(0);
                        boolean unused = MainActivity.isSplit = true;
                        if (editOrderRequest.getGuestNo().intValue() == 0) {
                            int unused2 = MainActivity.billEntered = 1;
                            boolean unused3 = MainActivity.isSplit = false;
                            MainActivity.this.spNewlyAddedValue = MainActivity.billEntered;
                        } else {
                            int unused4 = MainActivity.billEntered = editOrderRequest.getGuestNo().intValue();
                            boolean unused5 = MainActivity.isSplit = true;
                            MainActivity.this.spNewlyAddedValue = MainActivity.billEntered;
                        }
                        MainActivity.this.billArray = new ArrayList();
                        for (int i2 = 0; i2 < MainActivity.billEntered; i2++) {
                            MainActivity.this.billArray.add(String.valueOf(i2 + 1));
                        }
                        ArrayAdapter myAdapter = new ArrayAdapter(MainActivity.this.getApplicationContext(), R.layout.spinner_ressource_search, MainActivity.this.billArray);
                        MainActivity.this.spBill.setAdapter((SpinnerAdapter) myAdapter);
                    } else {
                        MainActivity.this.layoutBill.setVisibility(8);
                        MainActivity.this.btnAddGuest.setVisibility(8);
                        MainActivity.this.cbSplit.setChecked(false);
                        boolean unused6 = MainActivity.isSplit = false;
                    }
                    if (MainActivity.this.orderedList.size() != 0) {
                        MainActivity.this.orderedList.clear();
                    }
                    if (MainActivity.this.progressList.size() != 0) {
                        MainActivity.this.progressList.clear();
                    }
                    if (MainActivity.this.completedList.size() != 0) {
                        MainActivity.this.completedList.clear();
                    }
                    for (int i3 = 0; i3 < orderItems.size(); i3++) {
                        if (orderItems.get(i3).getStatus().equalsIgnoreCase("Ordered")) {
                            MainActivity.this.orderedList.add(orderItems.get(i3));
                            MainActivity.this.orderItemList.add(orderItems.get(i3));
                        } else if (orderItems.get(i3).getStatus().equalsIgnoreCase("InProgress")) {
                            MainActivity.this.progressList.add(orderItems.get(i3));
                        } else if (orderItems.get(i3).getStatus().equalsIgnoreCase("Complete")) {
                            MainActivity.this.completedList.add(orderItems.get(i3));
                        }
                    }
                    MainActivity.this.orderMasterId = editOrderRequest.getOrderMasterID().intValue();
                    if (orderItems.size() > 0) {
                        MainActivity.this.orderFinalList.clear();
                        for (int i4 = 0; i4 < orderItems.size(); i4++) {
                            if (MainActivity.selectedBill == orderItems.get(i4).getSeatNo().intValue()) {
                                MainActivity.this.orderFinalList.add(orderItems.get(i4));
                            }
                        }
                    }
                    MainActivity.this.lvOrder.setAdapter((ListAdapter) MainActivity.this.orderListAdapter);
                    if (!MainActivity.this.isTable.equalsIgnoreCase("true") || MainActivity.this.isTable.isEmpty()) {
                        MainActivity.this.btpay.setVisibility(8);
                    } else {
                        MainActivity.this.btpay.setVisibility(8);
                    }
                } else {
                    MainActivity.this.orderMasterId = 0L;
                    MainActivity.this.orderItemList.clear();
                }
                MainActivity.this.updateTotalPriceAmount();
                MainActivity.this.updateCostCenter();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("Update Order: " + Util.Api.getErrorMessage(error), MainActivity.this);
                    Log.e("Update Order Error", error.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // com.danfe.restaurantapp1.helper.SendItem.SendItemList
    public void onOrderArrivalList(ArrayList<OrderDetailDb> orderList) {
        updateTotalPriceAmount();
        updateCostCenter();
    }

    @Override // com.danfe.restaurantapp1.helper.SendItem.RemoveOrderItem
    public void onRemoveOrderItem(int itemId, int seatNo) {
        int i = 0;
        while (true) {
            if (i >= this.orderItemList.size()) {
                break;
            }
            if (this.orderItemList.get(i).getItemId().intValue() != itemId || this.orderItemList.get(i).getSeatNo().intValue() != seatNo) {
                i++;
            } else {
                for (int j = 0; j < this.preValue.size(); j++) {
                    if (this.preValue.get(j).getItemId().equals(this.orderItemList.get(i).getItemId())) {
                        ItemCancelledListModel itemCancelledListModel = new ItemCancelledListModel(this.preValue.get(j).getTitle(), this.preValue.get(j).getQuantity(), this.orderingUser, this.username, "", "", Integer.valueOf(this.tableId), this.preValue.get(i).getSeatNo(), this.preValue.get(i).getOrderMasterId());
                        this.cancelledLists.add(itemCancelledListModel);
                        this.removedItems.add(itemCancelledListModel);
                        this.preValue.remove(i);
                    }
                }
                this.orderItemList.remove(i);
                this.orderedList.remove(i);
            }
        }
        updateCostCenter();
        this.orderFinalList.clear();
        FilterBillData((String) this.spBill.getSelectedItem());
    }

    private void showGuestBox() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(Html.fromHtml("<font color='black'>Enter Guest No.</font>"));
        final EditText etGuest = new EditText(this);
        LinearLayout.LayoutParams lpe = new LinearLayout.LayoutParams(0, 75, 1.0f);
        lpe.setMargins(15, 0, 15, 0);
        etGuest.setLayoutParams(lpe);
        etGuest.setPadding(15, 5, 0, 0);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.addView(etGuest);
        etGuest.setHint("Number");
        etGuest.setInputType(2);
        etGuest.setHintTextColor(getResources().getColor(R.color.hint_text_color));
        etGuest.setTextColor(getResources().getColor(R.color.black));
        etGuest.setBackgroundResource(R.drawable.bg_edittext);
        builder.setView(linearLayout);
        builder.setIcon(R.drawable.ic_logo);
        builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.MainActivity.23
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                if (etGuest.getText().toString().equalsIgnoreCase("")) {
                    int unused = MainActivity.billEntered = 1;
                    MainActivity.this.spNewlyAddedValue = MainActivity.billEntered;
                } else {
                    int unused2 = MainActivity.billEntered = Integer.parseInt(etGuest.getText().toString());
                    MainActivity.this.spNewlyAddedValue = MainActivity.billEntered;
                }
                MainActivity.this.billArray = new ArrayList();
                for (int i = 0; i < MainActivity.billEntered; i++) {
                    MainActivity.this.billArray.add(String.valueOf(i + 1));
                }
                MainActivity.this.adapter = new ArrayAdapter(MainActivity.this, R.layout.spinner_ressource_search, MainActivity.this.billArray);
                MainActivity.this.spBill.setAdapter((SpinnerAdapter) MainActivity.this.adapter);
            }
        });
        builder.show();
    }

    private void validateNotificationCounter() {
        this.notificationCount = this.restaurantDb.getNotificationsCount(this);
        if (this.notificationCount > 0) {
            this.layoutNotification.setVisibility(0);
            this.tvNotificationCount.setVisibility(0);
            this.tvNotificationCount.setText(String.valueOf(this.notificationCount));
        } else {
            this.tvNotificationCount.setVisibility(8);
            this.layoutNotification.setVisibility(8);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        registerReceiver(this.broadcastReceiver, new IntentFilter(this.logoutString));
        screenState = true;
    }

    @Override // android.support.v4.app.FragmentActivity
    protected void onResumeFragments() {
        super.onResumeFragments();
        ValidateUser();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        screenState = false;
        Log.e("onPause: ", "called");
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Util.showLog("ACTIVITYSTATE", "DESTROYED");
        if (this.isBound) {
            this.logoutService.setCallbacks(null);
            unbindService(this.serviceConnection);
            this.isBound = false;
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    public void updateTotalPriceAmount() {
        Double sum = Double.valueOf(0.0d);
        if (this.orderFinalList.size() > 0) {
            for (int x = 0; x < this.orderFinalList.size(); x++) {
                sum = Double.valueOf(sum.doubleValue() + (this.orderFinalList.get(x).getPrice().doubleValue() * this.orderFinalList.get(x).getQuantity().doubleValue()));
            }
        }
        if (this.extraItemsLists.size() != 0) {
            for (int i = 0; i < this.extraItemsLists.size(); i++) {
                List<orderExtraItem> extraItems = this.extraItemsLists.get(i);
                for (int j = 0; j < extraItems.size(); j++) {
                    sum = Double.valueOf(sum.doubleValue() + (extraItems.get(j).getExtraPrice().doubleValue() * ((double) extraItems.get(j).getQuantity().intValue())));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCostCenter() {
        if (this.RoomTotalCharge == 0.0d) {
            this.layoutRoomCharges.setVisibility(8);
            this.layoutRemainAmount.setVisibility(8);
            this.layoutAdvAmount.setVisibility(8);
        } else if (this.RoomTotalCharge != 0.0d) {
            this.layoutRoomCharges.setVisibility(0);
            this.layoutRemainAmount.setVisibility(0);
            this.layoutAdvAmount.setVisibility(0);
        }
        if (this.flag1 == 0) {
            for (int i = 0; i < this.combinedList.size(); i++) {
                this.orderItemList.add(this.combinedList.get(i));
            }
            if (this.cbSplit.isChecked()) {
                this.selectedStringBill = String.valueOf(this.spBill.getSelectedItem());
                for (int i2 = 0; i2 < this.orderItemList.size(); i2++) {
                    if (this.selectedStringBill.equalsIgnoreCase(this.orderItemList.get(i2).getSeatNo().toString())) {
                        this.orderListPerSeatNo.add(this.orderItemList.get(i2));
                    }
                }
            } else {
                this.orderListPerSeatNo.addAll(this.orderItemList);
                this.ordered.callOnClick();
            }
            this.flag1 = 1;
        }
        this.lvDiscountSheet.setAdapter((ListAdapter) null);
        if (this.temporderlist.containsAll(this.orderListPerSeatNo) && this.orderListPerSeatNo.containsAll(this.temporderlist)) {
            if (this.temporderlist.size() > 0) {
                this.costcenterhashmap.clear();
                if (this.temporderlist.size() == 1) {
                    Log.e("tempItemID", String.valueOf(this.temporderlist.get(0).getItemId()) + String.valueOf(this.temporderlist.get(0).getIsCombo()));
                    this.costcenterhashmap.put(Integer.valueOf(this.temporderlist.get(0).getCostCenterId().intValue()), getActualPrice(this.temporderlist.get(0)));
                } else {
                    for (int x = 0; x < this.temporderlist.size(); x++) {
                        Double rate = Double.valueOf(0.0d);
                        Log.e("itemid", String.valueOf(this.temporderlist.get(x).getItemId()));
                        int costcenterid = this.temporderlist.get(x).getCostCenterId().intValue();
                        for (int y = 0; y < this.temporderlist.size(); y++) {
                            int newcostcenterid = this.temporderlist.get(y).getCostCenterId().intValue();
                            if (newcostcenterid == costcenterid) {
                                if (this.costcenterhashmap.containsKey(Integer.valueOf(costcenterid))) {
                                    rate = Double.valueOf(getActualPrice(this.temporderlist.get(y)).doubleValue() + rate.doubleValue());
                                    this.costcenterList.add(this.temporderlist.get(y));
                                    this.costcenterhashmap.put(Integer.valueOf(costcenterid), rate);
                                } else {
                                    rate = getActualPrice(this.temporderlist.get(x));
                                    this.costcenterhashmap.put(Integer.valueOf(costcenterid), rate);
                                }
                            }
                        }
                    }
                }
                this.billingAdapter = new BillingAdapter(this, this.costcenterhashmap, this);
                this.lvDiscountSheet.setAdapter((ListAdapter) this.billingAdapter);
                this.billingAdapter.updateTotalAmount();
            } else {
                this.lvDiscountSheet.setAdapter((ListAdapter) null);
                this.costcenterhashmap.clear();
                this.tvTotalAmount.setText("Total Amount: 0.00");
                this.tvBsTotal.setText("0.00");
                this.tvBsTotalDisc.setText("0.00");
                this.tvSubAmount.setText("0.00");
                this.tvRoomCharge.setText("0.00");
                this.advancePayment.setText("0.00");
                this.billingAdapter = new BillingAdapter(this, this.costcenterhashmap, this);
                this.lvDiscountSheet.setAdapter((ListAdapter) this.billingAdapter);
                this.billingAdapter.updateTotalAmount();
            }
        } else {
            this.temporderlist = this.orderListPerSeatNo;
            updateCostCenter();
        }
        this.orderListPerSeatNo.removeAll(this.orderListPerSeatNo);
        this.orderItemList.removeAll(this.combinedList);
        this.flag1 = 0;
    }

    private Double getActualPrice(OrderDetailDb orderDetailDb) {
        Double price = Double.valueOf(0.0d);
        if (this.extraItemsLists.size() != 0) {
            for (int i = 0; i < this.extraItemsLists.size(); i++) {
                List<orderExtraItem> extraItems = this.extraItemsLists.get(i);
                for (int j = 0; j < extraItems.size(); j++) {
                    if (extraItems.get(j).getItemID().equals(orderDetailDb.getItemId()) && extraItems.get(j).getItemStatus().equalsIgnoreCase(orderDetailDb.getStatus())) {
                        price = Double.valueOf(price.doubleValue() + (extraItems.get(j).getExtraPrice().doubleValue() * ((double) extraItems.get(j).getQuantity().intValue())));
                    }
                }
            }
        } else if (this.temporaryExtraListPerSeatNo.size() != 0) {
            for (int i2 = 0; i2 < this.temporaryExtraListPerSeatNo.size(); i2++) {
                List<orderExtraItem> tempExtraItems = this.temporaryExtraListPerSeatNo.get(i2);
                for (int j2 = 0; j2 < tempExtraItems.size(); j2++) {
                    if (tempExtraItems.get(j2).getItemID().equals(orderDetailDb.getItemId()) && tempExtraItems.get(j2).getItemStatus().equalsIgnoreCase(orderDetailDb.getStatus())) {
                        price = Double.valueOf(price.doubleValue() + (tempExtraItems.get(j2).getExtraPrice().doubleValue() * ((double) tempExtraItems.get(j2).getQuantity().intValue())));
                    }
                }
            }
        }
        return Double.valueOf(price.doubleValue() + (orderDetailDb.getQuantity().doubleValue() * orderDetailDb.getPrice().doubleValue()));
    }

    @Override // com.danfe.restaurantapp1.Interface.UpdateTotalPrice
    public void onPriceUpdate(double totaldiscount, double totalamount) {
        Double totalamountresult = Double.valueOf(totalamount);
        Double totalAmountWithRoomCharge = Double.valueOf(this.RoomTotalCharge + totalamount);
        this.tv_totalWithExtra.setText(String.format("%.2f", totalAmountWithRoomCharge));
        this.billingTermDbs = new ArrayList();
        this.billingTermDbs = this.restaurantDatabase.loadAllBillingTerminAsc(getApplicationContext());
        this.tvBsTotalDisc.setVisibility(0);
        if (totaldiscount > 0.0d) {
            this.tvBsTotalDisc.setText(String.format("%.2f", Double.valueOf(totaldiscount)));
        } else {
            this.tvBsTotalDisc.setText("0.00");
        }
        if (totalAmountWithRoomCharge.doubleValue() > 0.0d) {
            this.tvBsTotal.setText(String.format("%.2f", Double.valueOf(this.RoomTotalCharge + totalamount)));
            this.tvSubAmount.setText(String.valueOf(totalamount + totaldiscount));
            this.tvRoomCharge.setText(String.valueOf(this.RoomTotalCharge));
            this.advancePayment.setText(String.valueOf(this.AdvancePayment));
            LinearLayout linearLayout = new LinearLayout(getApplicationContext());
            linearLayout.setOrientation(1);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
            params.weight = 1.0f;
            params.gravity = GravityCompat.END;
            this.billingLayout.removeAllViews();
            for (int i = 0; i < this.billingTermDbs.size(); i++) {
                TextView tvBillInfo = new TextView(getApplicationContext());
                tvBillInfo.setTypeface(Typeface.create("sans-serif-condensed", 1));
                tvBillInfo.setTextColor(getResources().getColor(R.color.seventytransparentblack));
                tvBillInfo.setTextSize(2, getResources().getDimension(R.dimen.spinner_txt_size) / getResources().getDisplayMetrics().density);
                tvBillInfo.setLayoutParams(params);
                if (this.billingTermDbs.get(i).getIsAdded().equals(true)) {
                    double rate = Double.parseDouble(this.billingTermDbs.get(i).getRate());
                    Double disamount = Double.valueOf((totalAmountWithRoomCharge.doubleValue() * rate) / 100.0d);
                    if (i == 0) {
                        totalamountresult = Double.valueOf(totalAmountWithRoomCharge.doubleValue() + disamount.doubleValue());
                    }
                    if (i == 1) {
                        disamount = Double.valueOf((totalamountresult.doubleValue() * rate) / 100.0d);
                        totalamountresult = Double.valueOf(totalamountresult.doubleValue() + disamount.doubleValue());
                    }
                    tvBillInfo.setText(((Object) Html.fromHtml("<b>" + this.billingTermDbs.get(i).getName() + " (+" + this.billingTermDbs.get(i).getRate() + "%) :</b> ")) + String.format("%.2f", disamount));
                } else if (this.billingTermDbs.get(i).getIsAdded().equals(false)) {
                    double rate2 = Double.parseDouble(this.billingTermDbs.get(i).getRate());
                    Double disamount2 = Double.valueOf((totalAmountWithRoomCharge.doubleValue() * rate2) / 100.0d);
                    Double totalServiceChargeAmount = Double.valueOf(disamount2.doubleValue() + (this.RoomTotalCharge / 10.0d));
                    if (i == 1) {
                        disamount2 = Double.valueOf((totalamountresult.doubleValue() * rate2) / 100.0d);
                        Double.valueOf(totalamountresult.doubleValue() - disamount2.doubleValue());
                    }
                    totalamountresult = Double.valueOf(totalAmountWithRoomCharge.doubleValue() - totalServiceChargeAmount.doubleValue());
                    tvBillInfo.setText(((Object) Html.fromHtml("<b>" + this.billingTermDbs.get(i).getName() + " (-" + this.billingTermDbs.get(i).getRate() + "%) :</b> ")) + String.format("%.2f", disamount2));
                }
                View view = new View(getApplicationContext());
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                view.setPadding(5, 5, 5, 5);
                linearLayout.addView(tvBillInfo);
            }
            this.billingLayout.addView(linearLayout);
            this.tvTotalAmount.setText("Total Amount: " + String.format("%.2f", totalamountresult));
            this.tv_total_amount_bottomsheet.setText(String.format("%.2f", totalamountresult));
            this.remainingAmount.setText(String.format("%.2f", Double.valueOf(totalamountresult.doubleValue() - this.AdvancePayment)));
            return;
        }
        this.tvTotalAmount.setText("Total Amount: 0.00");
        this.tv_total_amount_bottomsheet.setText("0.00");
        this.remainingAmount.setText("0.00");
        this.billingLayout.removeAllViews();
    }

    @Override // com.danfe.restaurantapp1.Interface.ExtraItemsInterface
    public void sendExtraItems(List<orderExtraItem> orderExtraItems, String s, OrderDetailDb orderDetailDb) {
        if (orderExtraItems.size() == 0) {
            int i = 0;
            while (i < this.extraItemsLists.size()) {
                if (this.extraItemsLists.get(i).get(0).getItemID() == orderDetailDb.getItemId() && this.extraItemsLists.get(i).get(0).getSeatNo() == this.spBill.getSelectedItem()) {
                    this.extraItemsLists.remove(i);
                    i = this.extraItemsLists.size() - 1;
                }
                i++;
            }
        }
        if (!s.equals("")) {
            int i2 = 0;
            while (i2 < this.orderItemList.size()) {
                if (this.orderItemList.get(i2).getItemId() == orderDetailDb.getItemId() && this.orderItemList.get(i2).getSeatNo() == orderDetailDb.getSeatNo()) {
                    this.orderItemList.get(i2).setNote(s);
                    this.orderItemList.get(i2).getCostCenterId().intValue();
                    i2 = this.orderItemList.size() - 1;
                }
                i2++;
            }
        }
        if (this.extraItemsLists.size() != 0 && orderExtraItems.size() != 0) {
            this.flag = 1;
            int i3 = 0;
            while (i3 < this.extraItemsLists.size()) {
                if (orderExtraItems.get(0).getItemID() == this.extraItemsLists.get(i3).get(0).getItemID() && orderExtraItems.get(0).getSeatNo() == this.extraItemsLists.get(i3).get(0).getSeatNo()) {
                    this.extraItemsLists.set(i3, orderExtraItems);
                    this.flag = 1;
                    i3 = this.extraItemsLists.size() - 1;
                } else {
                    this.flag = 0;
                }
                i3++;
            }
            if (this.flag == 0) {
                this.extraItemsLists.add(orderExtraItems);
            }
        } else if (orderExtraItems.size() != 0) {
            this.extraItemsLists.add(orderExtraItems);
        }
        for (int j = 0; j < this.extraItemsLists.size(); j++) {
            List<orderExtraItem> extraItems = this.extraItemsLists.get(j);
            for (int k = 0; k < extraItems.size(); k++) {
                Log.e("Extra", extraItems.get(k).getItemID() + " " + extraItems.get(k).getExtraItem() + "  Rs. " + extraItems.get(k).getExtraPrice() + " " + extraItems.get(k).getExtraItemID() + " " + extraItems.get(k).getQuantity() + " SeatNo " + this.spBill.getSelectedItem());
            }
        }
        this.tvExtraItems.callOnClick();
        updateCostCenter();
    }

    @Override // com.danfe.restaurantapp1.Interface.ExtraClickedInterface
    public void onExtraClicked(OrderDetailDb orderDetailDb, ExtraItemsInterface extraItemsInterface) {
        RestaurantDatabase restaurantDatabase = new RestaurantDatabase();
        Log.e("Extra id", "This is id" + orderDetailDb.getItemId() + "  SeatNo " + this.spBill.getSelectedItem());
        List<ExtraItemDb> extraItemDb = restaurantDatabase.loadItemsWith(getApplicationContext(), orderDetailDb.getItemId());
        List<orderExtraItem> extraPopulatedValue = new ArrayList<>();
        for (int i = 0; i < extraItemDb.size(); i++) {
            orderExtraItem extraItem = new orderExtraItem(extraItemDb.get(i).getItemID(), extraItemDb.get(i).getExtraItemID(), extraItemDb.get(i).getExtraItem(), extraItemDb.get(i).getExtraPrice(), 0, orderDetailDb.getStatus(), String.valueOf(orderDetailDb.getSeatNo()));
            extraPopulatedValue.add(extraItem);
        }
        if (this.extraItemsLists.size() != 0) {
            for (int j = 0; j < this.extraItemsLists.size(); j++) {
                List<orderExtraItem> extraItems = this.extraItemsLists.get(j);
                if (orderDetailDb.getSeatNo() == Integer.valueOf(extraItems.get(0).getSeatNo())) {
                    for (int k = 0; k < extraItems.size(); k++) {
                        for (int i2 = 0; i2 < extraPopulatedValue.size(); i2++) {
                            if (extraPopulatedValue.get(i2).getSeatNo().equalsIgnoreCase(extraItems.get(k).getSeatNo()) && extraPopulatedValue.get(i2).getItemID() == extraItems.get(k).getItemID() && extraPopulatedValue.get(i2).getExtraItemID() == extraItems.get(k).getExtraItemID() && extraPopulatedValue.get(i2).getItemStatus().equalsIgnoreCase(extraItems.get(k).getItemStatus())) {
                                extraPopulatedValue.set(i2, extraItems.get(k));
                            }
                        }
                    }
                }
            }
        }
        new ExtraItemDialog(this, extraPopulatedValue, extraItemsInterface, orderDetailDb);
    }

    public void LogoutFunction() {
        JsonObject obj = new JsonObject();
        try {
            obj.addProperty("username", this.preferences.getPreferencesString(Constants.PREF_LOGIN));
            Log.e("json", obj.toString());
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.logoutRequest = (RestaurantWebService.LogoutRequest) this.restAdapter.create(RestaurantWebService.LogoutRequest.class);
        this.logoutRequest.logoutRequest(obj, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.MainActivity.25
            @Override // retrofit.Callback
            public void success(JsonObject logoutRespo, Response response) {
                MainActivity.this.logoutDialog.dismiss();
                try {
                    Intent intent = new Intent(MainActivity.this, (Class<?>) LoginActivity.class);
                    intent.addFlags(67108864);
                    intent.addFlags(268435456);
                    MainActivity.this.preferences.setPreferencesString(Constants.PREF_LOGIN, null);
                    MainActivity.this.restaurantDb.deleteAllNotifications(MainActivity.this);
                    MainActivity.this.startActivity(intent);
                    MainActivity.this.finish();
                } catch (Exception e) {
                    try {
                        Util.showRetrofitErrorMessage("Logout Request: OOPS!! Something went wrong!", MainActivity.this);
                    } catch (Exception e2) {
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                MainActivity.this.logoutDialog.dismiss();
                try {
                    Util.showRetrofitErrorMessage("Logout Request: OOPS!! Something went wrong!", MainActivity.this);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // com.danfe.restaurantapp1.Interface.LogoutInterface
    public void logout() {
        runOnUiThread(new Runnable() { // from class: com.danfe.restaurantapp1.MainActivity.26
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.LogoutFunction();
            }
        });
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState, PersistableBundle outPersistentState) {
    }

    @Override // com.danfe.restaurantapp1.helper.SendItem.SendItemSingle
    public void onOrderArrival(OrderDetailDb orderList, int costCenter, String itemRate, Boolean isOutOfStock) {
        int seatNo;
        new OrderDetailDb();
        this.ordered.callOnClick();
        orderList.setStatus("Ordered");
        boolean isAdded = false;
        if (this.cbSplit.isChecked()) {
            isSplit = true;
            seatNo = selectedBill;
        } else {
            isSplit = false;
            seatNo = orderList.getSeatNo().intValue();
        }
        int itemId = orderList.getItemId().intValue();
        Boolean isCombo = orderList.getIsCombo();
        if (this.orderItemList.size() > 0) {
            int i = 0;
            while (true) {
                if (i >= this.orderItemList.size()) {
                    break;
                }
                Log.e("onOrderArrival", String.valueOf(orderList.getTitle()) + " " + String.valueOf(this.orderItemList.get(i).getItemId()) + " SeatNo " + orderList.getSeatNo());
                if (this.orderItemList.get(i).getSeatNo().intValue() != seatNo || this.orderItemList.get(i).getItemId().intValue() != itemId || this.orderItemList.get(i).getIsCombo() != isCombo) {
                    i++;
                } else {
                    Double presentQty = this.orderItemList.get(i).getQuantity();
                    this.orderItemList.get(i).setQuantity(Double.valueOf(presentQty.doubleValue() + 1.0d));
                    isAdded = true;
                    break;
                }
            }
        }
        if (!isAdded) {
            this.orderItemList.add(orderList);
            this.orderedList.add(orderList);
        }
        if (this.orderItemList.size() > 0) {
            this.orderFinalList.clear();
            for (int i2 = 0; i2 < this.orderItemList.size(); i2++) {
                if (selectedBill == this.orderItemList.get(i2).getSeatNo().intValue()) {
                    this.orderFinalList.add(this.orderItemList.get(i2));
                }
            }
        }
        FilterBillData((String) this.spBill.getSelectedItem());
        getItemList("Ordered");
        updateTotalPriceAmount();
    }
}
