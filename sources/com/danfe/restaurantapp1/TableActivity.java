package com.danfe.restaurantapp1;

import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.LogoutInterface;
import com.danfe.restaurantapp1.Interface.RecyclerViewClickListener;
import com.danfe.restaurantapp1.LogoutService;
import com.danfe.restaurantapp1.adapter.RoomAdapter;
import com.danfe.restaurantapp1.adapter.RoomTypeAdapter;
import com.danfe.restaurantapp1.adapter.TableAdapter;
import com.danfe.restaurantapp1.database.MyApplication;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.CheckPinCode;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.MessageEvents;
import com.danfe.restaurantapp1.helper.NotificationListsDropDown;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.RoomDb;
import com.danfe.restaurantapp1.model.RoomTypeDb;
import com.danfe.restaurantapp1.model.TableDb;
import com.danfe.restaurantapp1.response.FullRestroRoomData;
import com.danfe.restaurantapp1.response.RoomWithStatus;
import com.danfe.restaurantapp1.response.TableWithStatus;
import com.danfe.restaurantapp1.service.CostCenterService;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.danfe.restaurantapp1.service.TableService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class TableActivity extends FragmentActivity implements RecyclerViewClickListener, PopupMenu.OnMenuItemClickListener, View.OnClickListener, LogoutInterface {
    private static long roomId;
    private static long roomTypeId;
    private Button btMergeDone;
    private ImageButton btnGetNotifications;
    private Button btnGoBacktoRoomType;
    private ImageButton btnLayoutRoomOnly;
    private ImageButton btnLayoutRoomTable;
    private Button btnRefreshTables;
    private AppCompatCheckBox cbMerge;
    private CheckPinCode checkPinCode;
    private JsonObject gsonObject;
    private GridView gvRoom;
    private GridView gvTable;
    private JSONArray jsonArray;
    private JsonParser jsonParser;
    private LinearLayout layoutMergeTable;
    private LinearLayout layoutNoTables;
    private LinearLayout layoutNotificationCounter;
    private LinearLayout layoutRoomTable;
    private LinearLayout layoutViewRoomOnly;
    private ProgressDialog logOutDialog;
    private RestaurantWebService.LogoutRequest logoutRequest;
    private LogoutService logoutService;
    RestaurantWebService.TableWebService mWebService;
    Menu menu;
    private RestaurantWebService.MergeCancelRequest mergeCancelService;
    public int mergeTableCapacity;
    private String mergeTableName;
    public int mergetableId;
    private JSONObject obj;
    private int oldTableId;
    List<OrderDetailDb> orderDetailLists;
    List<OrderDetailDb> orderItemDetailLists;
    List<OrderDetailDb> orderItemsLists;
    private int orderMasterId;
    private String orderType;
    List<OrderDetailDb> orderedItemListPerSeatNo;
    PopupMenu popup;
    private int positionShift;
    private Preferences preferences;
    private RestAdapter restAdapter;
    private RestaurantDatabase restaurantDb;
    private RestaurantWebService.RoomByRoomTypeIdWebService roomByRoomTypeIdRequest;
    private List<RoomDb> roomDbList;
    private List<RoomTypeDb> roomTypeDbList;
    private List<RoomWithStatus.RoomWithStatusData> roomWithStatusData;
    private String roomno;
    private List<FullRestroRoomData.Room> rooms;
    private RecyclerView rvRoom;
    private RecyclerView rvRoomOnly;
    private RecyclerView rvRoomType;
    private int selectedBill;
    private RestaurantWebService.sendTableList sendTableListService;
    private int statusCode;
    private TableAdapter tableAdapter;
    private RestaurantWebService.TableByRoomIdWebService tableByRoomIdRequest;
    String tableDate;
    private List<TableDb> tableDbList;
    private Long tableId;
    private List<TableDb> tableListForShift;
    String tableName;
    String tableRoom;
    String tableTime;
    String tablename;
    private List<TableDb> temptableList;
    private ImageButton tvLogout;
    private ImageButton tvLogoutRoomOnly;
    private TextView tvName;
    private TextView tvNameRoomOnly;
    private TextView tvNotificationCount;
    private TextView tvhallInfo1;
    private TextView tvhallInfo2;
    private String username;
    private Animation zoomInAnimation;
    private String BaseURL = "";
    private int notificationCount = 0;
    private Boolean pausedActivity = false;
    boolean screenState = false;
    private boolean isBound = false;
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.danfe.restaurantapp1.TableActivity.14
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            LogoutService.LocalBinder binder = (LogoutService.LocalBinder) service;
            TableActivity.this.logoutService = binder.getService();
            TableActivity.this.isBound = true;
            TableActivity.this.logoutService.setCallbacks(TableActivity.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            TableActivity.this.isBound = false;
        }
    };

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_table);
        getWindow().addFlags(128);
        this.gvTable = (GridView) findViewById(R.id.gridView_table);
        ((MyApplication) getApplication()).detectUserInActivity();
        ((MyApplication) getApplication()).registerSessionListener(this);
        this.rvRoom = (RecyclerView) findViewById(R.id.rvView_room);
        this.rvRoomType = (RecyclerView) findViewById(R.id.recycler_view_room_type);
        this.rvRoomOnly = (RecyclerView) findViewById(R.id.recycler_view_room_only);
        this.layoutRoomTable = (LinearLayout) findViewById(R.id.layout_room_table);
        this.layoutNoTables = (LinearLayout) findViewById(R.id.layout_tableactivity_nodata);
        this.btnRefreshTables = (Button) findViewById(R.id.btn_tableactivity_refreshtables);
        this.layoutViewRoomOnly = (LinearLayout) findViewById(R.id.layout_view_room_only);
        this.tvName = (TextView) findViewById(R.id.tv_waiter_name);
        this.tvNameRoomOnly = (TextView) findViewById(R.id.tv_waiter_name_room_only);
        this.tvLogout = (ImageButton) findViewById(R.id.txt_logout);
        this.tvLogoutRoomOnly = (ImageButton) findViewById(R.id.txt_logout_room_only);
        this.btnLayoutRoomTable = (ImageButton) findViewById(R.id.bt_refresh_room_table);
        this.btnLayoutRoomOnly = (ImageButton) findViewById(R.id.bt_refresh_room_only);
        this.btnGoBacktoRoomType = (Button) findViewById(R.id.btn_tableactivity_backtoroomtype);
        this.layoutMergeTable = (LinearLayout) findViewById(R.id.layout_chkbox_merge);
        this.btnGoBacktoRoomType.setVisibility(8);
        this.btnGoBacktoRoomType.setOnClickListener(this);
        this.cbMerge = (AppCompatCheckBox) findViewById(R.id.check_box_merge);
        this.btMergeDone = (Button) findViewById(R.id.button_merge_ok);
        this.layoutNotificationCounter = (LinearLayout) findViewById(R.id.layout_notification_counter);
        this.btnGetNotifications = (ImageButton) findViewById(R.id.btn_notifications_table);
        this.tvNotificationCount = (TextView) findViewById(R.id.tv_notifications_count);
        this.btnGetNotifications.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                new NotificationListsDropDown(TableActivity.this.getApplicationContext(), TableActivity.this.btnGetNotifications);
            }
        });
        this.zoomInAnimation = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.zoomin);
        this.username = getIntent().getStringExtra("username");
        this.tvhallInfo1 = (TextView) findViewById(R.id.tv_tableactivity_hallinfo);
        this.tvhallInfo2 = (TextView) findViewById(R.id.tv_tableactivity_hallinfo2);
        this.tvName.setText(this.username);
        this.tvNameRoomOnly.setText(this.username);
        this.logOutDialog = new ProgressDialog(this);
        this.logOutDialog.setMessage("Logging-Out. Please Wait....");
        this.logOutDialog.setCancelable(false);
        new CostCenterService(this);
        this.preferences = new Preferences(this);
        this.BaseURL = Util.getBaseUrl(this);
        LinearLayoutManager layoutManager = new LinearLayoutManager(this, 0, false);
        LinearLayoutManager layoutManager1 = new LinearLayoutManager(this, 1, false);
        LinearLayoutManager layoutManager2 = new LinearLayoutManager(this, 0, false);
        this.rvRoom.setLayoutManager(layoutManager);
        this.rvRoomType.setLayoutManager(layoutManager1);
        this.rvRoomOnly.setLayoutManager(layoutManager2);
        this.restaurantDb = new RestaurantDatabase();
        this.roomTypeDbList = new ArrayList();
        this.roomDbList = new ArrayList();
        getRoomDetails();
        this.tableDbList = new ArrayList();
        this.tableListForShift = new ArrayList();
        this.temptableList = new ArrayList();
        this.orderDetailLists = new ArrayList();
        this.orderItemsLists = new ArrayList();
        this.orderItemDetailLists = new ArrayList();
        this.orderedItemListPerSeatNo = new ArrayList();
        this.tableAdapter = new TableAdapter(this, this.tableDbList);
        this.cbMerge.setChecked(false);
        this.btMergeDone.setVisibility(8);
        this.gvTable.setAdapter((ListAdapter) this.tableAdapter);
        this.checkPinCode = new CheckPinCode();
        this.gvTable.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.2
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                if (((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable().booleanValue()) {
                    TableActivity.this.popup = new PopupMenu(TableActivity.this, view);
                    TableActivity.this.oldTableId = Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getId()));
                    TableActivity.this.tableName = ((TableDb) TableActivity.this.tableDbList.get(position)).getNumber();
                    TableActivity.this.tableRoom = String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getRoomId());
                    TableActivity.this.tableDate = ((TableDb) TableActivity.this.tableDbList.get(position)).getTableDate();
                    TableActivity.this.tableTime = ((TableDb) TableActivity.this.tableDbList.get(position)).getTabletime();
                    TableActivity.this.positionShift = position;
                    Log.e("onItemLongClick: ", String.valueOf(TableActivity.this.oldTableId));
                    TableActivity.this.menu = TableActivity.this.popup.getMenu();
                    TableActivity.this.popup.getMenuInflater().inflate(R.menu.popup_shift, TableActivity.this.popup.getMenu());
                    if (((TableDb) TableActivity.this.tableDbList.get(TableActivity.this.positionShift)).getMergeTableId().intValue() == 0) {
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_remove_merge).setVisible(false);
                    }
                    if (((TableDb) TableActivity.this.tableDbList.get(position)).getTableStatus().intValue() == 7 && ((TableDb) TableActivity.this.tableDbList.get(position)).getBillPaid().intValue() == 0) {
                        TableActivity.this.popup.getMenu().findItem(R.id.Table_shift).setVisible(true);
                        if (TableActivity.this.preferences.getShiftItem().booleanValue()) {
                            TableActivity.this.popup.getMenu().findItem(R.id.menu_shift_item).setVisible(true);
                        } else {
                            TableActivity.this.popup.getMenu().findItem(R.id.menu_shift_item).setVisible(false);
                        }
                        if (TableActivity.this.preferences.getShowBill().booleanValue()) {
                            TableActivity.this.popup.getMenu().findItem(R.id.menu_show_bill).setVisible(true);
                        } else {
                            TableActivity.this.popup.getMenu().findItem(R.id.menu_show_bill).setVisible(false);
                        }
                    } else {
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_show_bill).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.Table_shift).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_shift_item).setVisible(false);
                    }
                    TableActivity.this.popup.setOnMenuItemClickListener(TableActivity.this);
                    TableActivity.this.popup.show();
                } else {
                    TableActivity.this.popup = new PopupMenu(TableActivity.this, view);
                    TableActivity.this.oldTableId = Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getId()));
                    TableActivity.this.tableName = ((TableDb) TableActivity.this.tableDbList.get(position)).getNumber();
                    TableActivity.this.tableRoom = String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getRoomId());
                    TableActivity.this.tableDate = ((TableDb) TableActivity.this.tableDbList.get(position)).getTableDate();
                    TableActivity.this.tableTime = ((TableDb) TableActivity.this.tableDbList.get(position)).getTabletime();
                    TableActivity.this.positionShift = position;
                    Log.e("onItemLongClick: ", String.valueOf(TableActivity.this.oldTableId));
                    TableActivity.this.menu = TableActivity.this.popup.getMenu();
                    TableActivity.this.popup.getMenuInflater().inflate(R.menu.popup_shift, TableActivity.this.popup.getMenu());
                    if (!((TableDb) TableActivity.this.tableDbList.get(TableActivity.this.positionShift)).getIsTable().booleanValue()) {
                        TableActivity.this.popup.getMenu().findItem(R.id.Table_shift).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_remove_merge).setVisible(false);
                    }
                    if (((TableDb) TableActivity.this.tableDbList.get(position)).getTableStatus().intValue() == 7 && ((TableDb) TableActivity.this.tableDbList.get(position)).getBillPaid().intValue() == 0) {
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_show_bill).setVisible(true);
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_shift_item).setVisible(true);
                    } else {
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_show_bill).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.Table_shift).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_shift_item).setVisible(false);
                        TableActivity.this.popup.getMenu().findItem(R.id.menu_remove_merge).setVisible(false);
                    }
                    TableActivity.this.popup.setOnMenuItemClickListener(TableActivity.this);
                    TableActivity.this.popup.show();
                }
                return true;
            }
        });
        validateNotificationCounter();
        this.btnRefreshTables.setOnClickListener(this);
        this.btnLayoutRoomOnly.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                JsonObject obj = new JsonObject();
                try {
                    obj.addProperty("RoomTypeID", Long.valueOf(TableActivity.roomTypeId));
                } catch (Exception je) {
                    Log.e("json exception", je.getMessage());
                }
                TableActivity.this.restAdapter = new RestAdapter.Builder().setEndpoint(TableActivity.this.BaseURL).build();
                TableActivity.this.roomByRoomTypeIdRequest = (RestaurantWebService.RoomByRoomTypeIdWebService) TableActivity.this.restAdapter.create(RestaurantWebService.RoomByRoomTypeIdWebService.class);
                TableActivity.this.roomByRoomTypeIdRequest.fetchRoomByRoomTypeId(obj, new Callback<RoomWithStatus>() { // from class: com.danfe.restaurantapp1.TableActivity.3.1
                    @Override // retrofit.Callback
                    public void success(RoomWithStatus roomRespo, Response response) {
                        try {
                            if (roomRespo.getStatusCode().intValue() == 200) {
                                TableActivity.this.roomWithStatusData = roomRespo.getRoomWithStatusData();
                                TableActivity.this.roomDbList.clear();
                                for (int i = 0; i < TableActivity.this.roomWithStatusData.size(); i++) {
                                    RoomDb roomDb = new RoomDb(Long.valueOf(((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i)).getRestroRoomId().intValue()), ((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i)).getRestroRoom(), ((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i)).getRoomStatusId(), Integer.valueOf(Integer.parseInt(String.valueOf(TableActivity.roomTypeId))));
                                    TableActivity.this.roomDbList.add(roomDb);
                                }
                                TableActivity.this.rvRoomType.setAdapter(new RoomAdapter(TableActivity.this, TableActivity.this.roomDbList, TableActivity.this));
                                TableActivity.this.btnLayoutRoomTable.setVisibility(8);
                                TableActivity.this.btnLayoutRoomOnly.setVisibility(0);
                                return;
                            }
                            Util.showErrorMessage("Error Room request: " + roomRespo.getMessage(), TableActivity.this);
                        } catch (Exception e) {
                            Log.e("roombyroomid request", e.getMessage().toString());
                            Util.showErrorMessage("Error Room request: OOPS!!! Something went wrong! please try again.", TableActivity.this);
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        try {
                            Log.e("Errorrequest refresh:", error.toString());
                            Util.showErrorMessage("Error Room request refresh: " + Util.Api.getErrorMessage(error), TableActivity.this);
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
        this.btnLayoutRoomTable.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TableActivity.this.RefreshContents();
            }
        });
        this.gvTable.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
                if ((((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId().intValue() > 0 || ((TableDb) TableActivity.this.tableDbList.get(position)).getTableStatus().intValue() == 7) && ((TableDb) TableActivity.this.tableDbList.get(position)).getBillPaid().intValue() > 0 && ((TableDb) TableActivity.this.tableDbList.get(position)).getTableStatus().intValue() == 7 && (((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable().booleanValue() || ((TableDb) TableActivity.this.tableDbList.get(position)).getOrderMasterId().intValue() <= 0)) {
                    if (((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId().intValue() > 0) {
                        Util.showBillNotCleared(TableActivity.this, true);
                        return;
                    } else {
                        Util.showBillNotCleared(TableActivity.this, false);
                        return;
                    }
                }
                if (!TableActivity.this.cbMerge.isChecked()) {
                    if (((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable().booleanValue() || (!((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable().booleanValue() && ((TableDb) TableActivity.this.tableDbList.get(position)).getOrderMasterId().intValue() > 0)) {
                        if (((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId().intValue() < 1) {
                            Intent i = new Intent(TableActivity.this, (Class<?>) MainActivity.class);
                            i.putExtra("username", TableActivity.this.username);
                            i.putExtra("roomno", TableActivity.this.roomno);
                            i.putExtra("roomid", TableActivity.roomId);
                            i.putExtra("tableno", ((TableDb) TableActivity.this.tableDbList.get(position)).getNumber());
                            i.putExtra("seat", ((TableDb) TableActivity.this.tableDbList.get(position)).getTableCapacity());
                            i.putExtra("tableId", Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getId())));
                            i.putExtra("isTable", String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable()));
                            TableActivity.this.startActivity(i);
                            return;
                        }
                        Intent i2 = new Intent(TableActivity.this, (Class<?>) MainActivity.class);
                        i2.putExtra("username", TableActivity.this.username);
                        i2.putExtra("roomno", TableActivity.this.roomno);
                        i2.putExtra("roomid", TableActivity.roomId);
                        i2.putExtra("tableno", TableActivity.this.restaurantDb.getTableName(TableActivity.this, Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId()))));
                        i2.putExtra("seat", TableActivity.this.restaurantDb.getTableCapacity(TableActivity.this, Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId()))));
                        i2.putExtra("tableId", Integer.parseInt(String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getMergeTableId())));
                        i2.putExtra("isTable", String.valueOf(((TableDb) TableActivity.this.tableDbList.get(position)).getIsTable()));
                        TableActivity.this.startActivity(i2);
                        return;
                    }
                    Toast.makeText(TableActivity.this, "This room is not booked at the moment for order.", 0).show();
                    return;
                }
                CheckBox b = (CheckBox) v.findViewById(R.id.check_box_table);
                if (b.getVisibility() == 0) {
                    if (b.isChecked()) {
                        b.setChecked(false);
                    } else {
                        b.setChecked(true);
                    }
                }
            }
        });
        this.tvLogoutRoomOnly.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TableActivity.this.logOutDialog.show();
                JsonObject obj = new JsonObject();
                try {
                    obj.addProperty("username", TableActivity.this.preferences.getPreferencesString(Constants.PREF_LOGIN));
                } catch (Exception je) {
                    Log.e("json exception", je.getMessage());
                }
                TableActivity.this.restAdapter = new RestAdapter.Builder().setEndpoint(TableActivity.this.BaseURL).build();
                TableActivity.this.logoutRequest = (RestaurantWebService.LogoutRequest) TableActivity.this.restAdapter.create(RestaurantWebService.LogoutRequest.class);
                TableActivity.this.logoutRequest.logoutRequest(obj, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.TableActivity.6.1
                    @Override // retrofit.Callback
                    public void success(JsonObject logoutRespo, Response response) {
                        TableActivity.this.logOutDialog.dismiss();
                        try {
                            Intent intent = new Intent(TableActivity.this, (Class<?>) LoginActivity.class);
                            intent.addFlags(67108864);
                            intent.addFlags(268435456);
                            TableActivity.this.preferences.setPreferencesString(Constants.PREF_LOGIN, null);
                            TableActivity.this.startActivity(intent);
                            TableActivity.this.finish();
                        } catch (Exception e) {
                            Log.e("table exc data", e.getMessage().toString());
                            Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", TableActivity.this);
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        TableActivity.this.logOutDialog.dismiss();
                        try {
                            Log.e("table data", String.valueOf(error));
                            Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", TableActivity.this);
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
        this.tvLogout.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TableActivity.this.LogoutFunction();
            }
        });
        if (this.preferences.getMergeTable() == Boolean.TRUE) {
            this.cbMerge.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.TableActivity.8
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    if (isChecked) {
                        TableActivity.this.btMergeDone.setVisibility(0);
                    } else {
                        TableActivity.this.btMergeDone.setVisibility(8);
                    }
                    TableAdapter unused = TableActivity.this.tableAdapter;
                    TableAdapter.MERGE_CASE = isChecked;
                    TableAdapter unused2 = TableActivity.this.tableAdapter;
                    TableAdapter.MERGE_TABLE_ID = 0;
                    TableActivity.this.tableAdapter.notifyDataSetChanged();
                    TableActivity.this.RefreshContents();
                }
            });
        } else if (this.layoutMergeTable.getVisibility() == 0) {
            this.layoutMergeTable.setVisibility(4);
        }
        this.btMergeDone.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.TableActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                TableActivity.this.MergeTable();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LogoutFunction() {
        this.logOutDialog.show();
        this.tvLogout.startAnimation(this.zoomInAnimation);
        JsonObject obj = new JsonObject();
        try {
            obj.addProperty("username", this.preferences.getPreferencesString(Constants.PREF_LOGIN));
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.logoutRequest = (RestaurantWebService.LogoutRequest) this.restAdapter.create(RestaurantWebService.LogoutRequest.class);
        this.logoutRequest.logoutRequest(obj, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.TableActivity.10
            @Override // retrofit.Callback
            public void success(JsonObject logoutRespo, Response response) {
                TableActivity.this.logOutDialog.dismiss();
                try {
                    Intent intent = new Intent(TableActivity.this, (Class<?>) LoginActivity.class);
                    intent.addFlags(67108864);
                    intent.addFlags(268435456);
                    TableActivity.this.preferences.setPreferencesString(Constants.PREF_LOGIN, null);
                    TableActivity.this.startActivity(intent);
                    TableActivity.this.finish();
                } catch (Exception e) {
                    Log.e("logout", e.getMessage().toString());
                    try {
                        Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", TableActivity.this);
                    } catch (Exception e2) {
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                TableActivity.this.logOutDialog.dismiss();
                try {
                    Log.e("data", String.valueOf(error));
                    Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", TableActivity.this);
                } catch (Exception e) {
                }
            }
        });
    }

    private void validateNotificationCounter() {
        this.notificationCount = this.restaurantDb.getNotificationsCount(this);
        if (this.notificationCount > 0) {
            this.layoutNotificationCounter.setVisibility(0);
            this.tvNotificationCount.setVisibility(0);
            this.tvNotificationCount.setText(String.valueOf(this.notificationCount));
        } else {
            this.layoutNotificationCounter.setVisibility(0);
            this.tvNotificationCount.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvents event) {
        validateNotificationCounter();
    }

    private void getRoomDetails() {
        this.roomTypeDbList = this.restaurantDb.loadAllRoomType(getApplicationContext());
        if (this.roomTypeDbList.size() > 0) {
            this.layoutNoTables.setVisibility(8);
            this.roomDbList = this.restaurantDb.loadRoomTypeRooms(this, 1);
            this.rvRoom.setAdapter(new RoomAdapter(this, this.roomDbList, this));
            this.rvRoomType.setVisibility(0);
            this.btnLayoutRoomTable.setVisibility(0);
            this.btnLayoutRoomOnly.setVisibility(8);
            this.rvRoomType.setAdapter(new RoomTypeAdapter(this, this.roomTypeDbList, this));
            return;
        }
        this.layoutNoTables.setVisibility(0);
    }

    public void RefreshContents() {
        RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).setLogLevel(RestAdapter.LogLevel.FULL).build();
        this.mWebService = (RestaurantWebService.TableWebService) restAdapter.create(RestaurantWebService.TableWebService.class);
        this.mWebService.fetchTable(new Callback<FullRestroRoomData>() { // from class: com.danfe.restaurantapp1.TableActivity.11
            @Override // retrofit.Callback
            public void success(FullRestroRoomData fullRestroRoomData, Response response) {
                int statusCode = fullRestroRoomData.getStatusCode().intValue();
                String message = fullRestroRoomData.getMessage();
                if (statusCode == 200) {
                    TableActivity.this.rooms = fullRestroRoomData.getData();
                    TableActivity.this.restaurantDb.insertTable(TableActivity.this, TableActivity.this.rooms);
                } else if (statusCode == 100) {
                    Util.showErrorMessage("Error: " + message, TableActivity.this);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError retrofitError) {
                Log.e("table", String.valueOf(retrofitError) + String.valueOf(TableActivity.this.mWebService));
            }
        });
        this.temptableList.clear();
        JsonObject obj = new JsonObject();
        try {
            obj.addProperty("restroRoomId", Long.valueOf(roomId));
            Log.e("json", obj.toString());
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        RestAdapter restAdapter2 = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.tableByRoomIdRequest = (RestaurantWebService.TableByRoomIdWebService) restAdapter2.create(RestaurantWebService.TableByRoomIdWebService.class);
        this.tableByRoomIdRequest.fetchTableByRoomId(obj, new Callback<List<TableWithStatus>>() { // from class: com.danfe.restaurantapp1.TableActivity.12
            @Override // retrofit.Callback
            public void success(List<TableWithStatus> tableRespo, Response response) {
                try {
                    TableActivity.this.tableDbList.clear();
                    TableActivity.this.tableListForShift.clear();
                    for (int i = 0; i < tableRespo.size(); i++) {
                        TableDb tableDb = new TableDb(Long.valueOf(tableRespo.get(i).getRestrotableId().intValue()), tableRespo.get(i).getRestrotableTitle(), tableRespo.get(i).getRestrotablesStatusID(), tableRespo.get(i).getSeatcap(), tableRespo.get(i).getMergeTableList(), tableRespo.get(i).getMergeID(), Integer.valueOf(Integer.parseInt(String.valueOf(TableActivity.roomId))), tableRespo.get(i).getBillPaid(), tableRespo.get(i).getTableDate(), tableRespo.get(i).getTabletime(), tableRespo.get(i).getIsCancelled(), false, tableRespo.get(i).getIsTable(), tableRespo.get(i).getRate(), tableRespo.get(i).getOrderMasterId(), tableRespo.get(i).getGuestNo());
                        if (tableDb.getMergeTableId().intValue() <= 0 || Integer.parseInt(String.valueOf(tableDb.getId())) == tableDb.getMergeTableId().intValue()) {
                            TableActivity.this.tableDbList.add(tableDb);
                        } else {
                            TableActivity.this.temptableList.add(tableDb);
                        }
                        if (tableRespo.get(i).getRestrotablesStatusID().intValue() == 6) {
                            TableActivity.this.tableListForShift.add(tableDb);
                        }
                    }
                    for (int i2 = 0; i2 < TableActivity.this.tableDbList.size(); i2++) {
                        if (((TableDb) TableActivity.this.tableDbList.get(i2)).getMergeTableId().intValue() > 0) {
                            new RestaurantDatabase();
                            TableActivity.this.tablename = ((TableDb) TableActivity.this.tableDbList.get(i2)).getNumber();
                            TableActivity.this.tableName = TableActivity.this.tablename;
                            for (int j = 0; j < TableActivity.this.temptableList.size(); j++) {
                                if (((TableDb) TableActivity.this.temptableList.get(j)).getMergeTableId() == ((TableDb) TableActivity.this.tableDbList.get(i2)).getMergeTableId()) {
                                    TableActivity.this.tablename += "/" + ((TableDb) TableActivity.this.temptableList.get(j)).getNumber();
                                }
                            }
                            ((TableDb) TableActivity.this.tableDbList.get(i2)).setNumber(TableActivity.this.tablename);
                        }
                    }
                    TableActivity.this.tableAdapter.notifyDataSetChanged();
                } catch (Exception e) {
                    Log.e("table exception request", e.getMessage().toString());
                    Util.showRetrofitErrorMessage("table request: OOPS!!! Something went wrong! please try again.", TableActivity.this);
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("table request: " + Util.Api.getErrorMessage(error), TableActivity.this);
                } catch (Exception e) {
                }
            }
        });
    }

    public void MergeTable() {
        new ArrayList();
        this.obj = new JSONObject();
        this.jsonArray = new JSONArray();
        Long mergeTableIds = 0L;
        for (int j = 0; j < this.tableDbList.size(); j++) {
            try {
                if (this.tableDbList.get(j).getIsChecked().booleanValue() && this.tableDbList.get(j).getTableStatus().intValue() == 7) {
                    if (mergeTableIds.longValue() > 0) {
                        Util.showErrorMessageWithTitle("You cannot merge two reserved tables.", "Cannot Merge Tables.", this);
                        return;
                    } else {
                        mergeTableIds = this.tableDbList.get(j).getId();
                        setMergeInit(Integer.parseInt(String.valueOf(this.tableDbList.get(j).getId())), 5, this.restaurantDb.getTableName(getApplicationContext(), Integer.parseInt(String.valueOf(this.tableDbList.get(j).getId()))));
                    }
                }
            } catch (JSONException je) {
                Log.e("json exception", je.getMessage());
                return;
            }
        }
        for (int i = 0; i < this.tableDbList.size(); i++) {
            if (this.tableDbList.get(i).getIsChecked().booleanValue()) {
                if (this.tableDbList.get(i).getIsTable().booleanValue()) {
                    if (mergeTableIds.longValue() == 0) {
                        mergeTableIds = this.tableDbList.get(i).getId();
                        setMergeInit(Integer.parseInt(String.valueOf(this.tableDbList.get(i).getId())), 5, this.restaurantDb.getTableName(getApplicationContext(), Integer.parseInt(String.valueOf(this.tableDbList.get(i).getId()))));
                    }
                    if (this.tableDbList.get(i).getBillPaid().intValue() == 1) {
                        Util.showErrorMessageWithTitle("Bill Payment is pending of either table.", "Cannot Merge Tables.", this);
                    } else {
                        this.tableDbList.get(i).setMergeTableId(Integer.valueOf(String.valueOf(mergeTableIds)));
                        this.jsonArray.put(this.tableDbList.get(i).toJSON());
                    }
                } else {
                    Util.showErrorMessageWithTitle("You cannot merge two rooms.", "Cannot Merge Rooms.", this);
                }
            }
        }
        if (this.jsonArray.length() < 2) {
            Util.showErrorMessageWithTitle("Please Select atleast two to merge.", "No tables Selected", this);
            return;
        }
        this.obj.put("MergeTableInfo", this.jsonArray);
        this.jsonParser = new JsonParser();
        this.gsonObject = (JsonObject) this.jsonParser.parse(this.obj.toString());
        Log.e("gsonobjectmerge", this.gsonObject.toString());
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.sendTableListService = (RestaurantWebService.sendTableList) this.restAdapter.create(RestaurantWebService.sendTableList.class);
        this.sendTableListService.postTableList(this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.TableActivity.13
            @Override // retrofit.Callback
            public void success(JsonObject orderResponse, Response response) {
                TableAdapter unused = TableActivity.this.tableAdapter;
                TableAdapter.MERGE_CASE = false;
                TableAdapter unused2 = TableActivity.this.tableAdapter;
                TableAdapter.MERGE_TABLE_ID = 0;
                TableActivity.this.tableAdapter.notifyDataSetChanged();
                TableActivity.this.statusCode = orderResponse.get("statusCode").getAsInt();
                Log.e("mergeorder", String.valueOf(TableActivity.this.statusCode));
                TableActivity.this.btMergeDone.setVisibility(8);
                TableActivity.this.cbMerge.setChecked(false);
                if (TableActivity.this.statusCode == 200) {
                    Intent i2 = new Intent(TableActivity.this, (Class<?>) MainActivity.class);
                    i2.putExtra("username", TableActivity.this.username);
                    i2.putExtra("roomno", TableActivity.this.roomno);
                    i2.putExtra("roomid", TableActivity.roomId);
                    i2.putExtra("tableno", TableActivity.this.mergeTableName);
                    i2.putExtra("seat", TableActivity.this.mergeTableCapacity);
                    i2.putExtra("tableId", TableActivity.this.mergetableId);
                    i2.putExtra("isTable", true);
                    TableActivity.this.startActivity(i2);
                    return;
                }
                Util.showRetrofitErrorMessage("Order send: OOPS!! server is not connected at the moment. Please try again later.", TableActivity.this);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("Order send: " + Util.Api.getErrorMessage(error), TableActivity.this);
                } catch (Exception e) {
                }
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.screenState = true;
        if (this.screenState) {
            Log.e("screenState: ", "true");
            Intent i = new Intent(this, (Class<?>) LogoutService.class);
            bindService(i, this.serviceConnection, 1);
            startService(i);
            return;
        }
        Log.e("screenState", "false");
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.Table_shift /* 2131690065 */:
                new TableService(getApplicationContext());
                this.orderMasterId = this.tableDbList.get(this.positionShift).getOrderMasterId().intValue();
                if (this.tableDbList.get(this.positionShift).getMergeTableId().intValue() > 0) {
                    Toast.makeText(getApplicationContext(), "Could not shiftTable merged Table", 1).show();
                } else if (!this.tableDbList.get(this.positionShift).getIsTable().booleanValue()) {
                    Toast.makeText(getApplicationContext(), "Cannot Shift Room", 1).show();
                } else if (this.tableDbList.get(this.positionShift).getTableStatus().intValue() == 7 && this.tableDbList.get(this.positionShift).getIsTable().booleanValue()) {
                    Intent tableShiftIntent = new Intent(getApplicationContext(), (Class<?>) TableSelectionActivity.class);
                    tableShiftIntent.putExtra("tableDate", this.tableDate);
                    tableShiftIntent.putExtra("tableroom", this.tableRoom);
                    tableShiftIntent.putExtra("waiterName", this.username);
                    tableShiftIntent.putExtra("tableName", this.tableName);
                    tableShiftIntent.putExtra("oldTableId", this.oldTableId);
                    startActivity(tableShiftIntent);
                } else {
                    Toast.makeText(getApplicationContext(), "Cannot shiftTable table with empty orders", 0).show();
                }
                return true;
            case R.id.menu_remove_merge /* 2131690066 */:
                if (this.tableDbList.get(this.positionShift).getMergeTableId().intValue() == 0) {
                    Util.showErrorMessageWithTitle("Cannot unmerge a single table.", "Merge Failed", this);
                } else {
                    this.checkPinCode.checkPinCodemethod(this, "mergeCancel");
                }
                return true;
            case R.id.menu_show_bill /* 2131690067 */:
                if ((this.tableDbList.get(this.positionShift).getMergeTableId().intValue() > 0 || this.tableDbList.get(this.positionShift).getTableStatus().intValue() == 7) && this.tableDbList.get(this.positionShift).getBillPaid().intValue() > 0 && this.tableDbList.get(this.positionShift).getTableStatus().intValue() == 7) {
                    Util.showBillNotAvailable(this);
                } else {
                    Intent intent = new Intent(this, (Class<?>) ShowBillActivity.class);
                    intent.putExtra("oldTableId", this.oldTableId);
                    intent.putExtra("roomId", roomId);
                    intent.putExtra("tableDate", this.tableDate);
                    intent.putExtra("tableName", this.tableName);
                    intent.putExtra("tableroom", this.tableRoom);
                    intent.putExtra("waiterName", this.username);
                    startActivity(intent);
                }
                return true;
            case R.id.menu_shift_item /* 2131690068 */:
                new TableService(getApplicationContext());
                Intent itemShitIntent = new Intent(this, (Class<?>) ItemShiftActivity.class);
                itemShitIntent.putExtra("oldTableId", this.oldTableId);
                itemShitIntent.putExtra("roomId", roomId);
                itemShitIntent.putExtra("tableDate", this.tableDate);
                itemShitIntent.putExtra("tableName", this.tableName);
                itemShitIntent.putExtra("tableroom", this.tableRoom);
                itemShitIntent.putExtra("waiterName", this.username);
                startActivity(itemShitIntent);
            default:
                this.popup.show();
                return true;
        }
    }

    public void pop() {
        getSupportFragmentManager().popBackStack();
    }

    public void MergeCancel() {
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.mergeCancelService = (RestaurantWebService.MergeCancelRequest) this.restAdapter.create(RestaurantWebService.MergeCancelRequest.class);
        this.mergeCancelService.mergeCancel(this.oldTableId, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.TableActivity.15
            @Override // retrofit.Callback
            public void success(JsonObject respo, Response response) {
                Toast.makeText(TableActivity.this, "Table is unmerged successfully", 1);
                TableActivity.this.btnLayoutRoomTable.callOnClick();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("Table unmerge: " + Util.Api.getErrorMessage(error), TableActivity.this);
                } catch (Exception e) {
                    Log.e("exc error", e.getMessage().toString() + "error" + error.toString());
                }
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.btnLayoutRoomTable.callOnClick();
        getRoomDetails();
        this.btnGoBacktoRoomType.callOnClick();
        try {
            if (this.pausedActivity.booleanValue()) {
                validateNotificationCounter();
            }
        } catch (Exception e) {
        }
        EventBus.getDefault().register(this);
        this.screenState = true;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Util.showExitConfirmationDialog(this);
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int position) {
        if (id == 1) {
            if (this.btnLayoutRoomTable.getVisibility() == 8) {
                Toast.makeText(this, "" + position, 0).show();
                this.roomno = this.roomDbList.get(position).getRestroRoom();
                roomId = this.roomDbList.get(position).getId().longValue();
                Integer.parseInt(String.valueOf(this.roomDbList.get(position).getId()));
                Intent i = new Intent(this, (Class<?>) MainActivity.class);
                i.putExtra("username", this.username);
                i.putExtra("roomno", this.roomno);
                i.putExtra("roomid", roomId);
                i.putExtra("tableno", " ");
                i.putExtra("seat", 0);
                i.putExtra("tableId", 0);
                i.putExtra("isTable", "true");
                startActivity(i);
                return;
            }
            JsonObject obj = new JsonObject();
            try {
                this.roomno = this.roomDbList.get(position).getRestroRoom();
                roomId = this.roomDbList.get(position).getId().longValue();
                obj.addProperty("restroRoomId", Long.valueOf(roomId));
                Log.e("restroRoomId", obj.toString());
            } catch (Exception je) {
                Log.e("json exception", je.getMessage());
            }
            this.temptableList.clear();
            this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
            this.tableByRoomIdRequest = (RestaurantWebService.TableByRoomIdWebService) this.restAdapter.create(RestaurantWebService.TableByRoomIdWebService.class);
            this.tableByRoomIdRequest.fetchTableByRoomId(obj, new Callback<List<TableWithStatus>>() { // from class: com.danfe.restaurantapp1.TableActivity.16
                @Override // retrofit.Callback
                public void success(List<TableWithStatus> tableRespo, Response response) {
                    try {
                        TableActivity.this.tableDbList.clear();
                        TableActivity.this.tableListForShift.clear();
                        for (int i2 = 0; i2 < tableRespo.size(); i2++) {
                            TableDb tableDb = new TableDb(Long.valueOf(tableRespo.get(i2).getRestrotableId().intValue()), tableRespo.get(i2).getRestrotableTitle(), tableRespo.get(i2).getRestrotablesStatusID(), tableRespo.get(i2).getSeatcap(), tableRespo.get(i2).getMergeTableList(), tableRespo.get(i2).getMergeID(), Integer.valueOf(Integer.parseInt(String.valueOf(TableActivity.roomId))), tableRespo.get(i2).getBillPaid(), tableRespo.get(i2).getTableDate(), tableRespo.get(i2).getTabletime(), tableRespo.get(i2).getIsCancelled(), false, tableRespo.get(i2).getIsTable(), tableRespo.get(i2).getRate(), tableRespo.get(i2).getOrderMasterId(), tableRespo.get(i2).getGuestNo());
                            if (tableDb.getMergeTableId().intValue() <= 0 || Integer.parseInt(String.valueOf(tableDb.getId())) == tableDb.getMergeTableId().intValue()) {
                                TableActivity.this.tableDbList.add(tableDb);
                            } else {
                                TableActivity.this.temptableList.add(tableDb);
                            }
                            if (tableRespo.get(i2).getRestrotablesStatusID().intValue() == 6) {
                                TableActivity.this.tableListForShift.add(tableDb);
                            }
                        }
                        for (int i3 = 0; i3 < TableActivity.this.tableDbList.size(); i3++) {
                            if (((TableDb) TableActivity.this.tableDbList.get(i3)).getMergeTableId().intValue() > 0) {
                                new RestaurantDatabase();
                                TableActivity.this.tablename = ((TableDb) TableActivity.this.tableDbList.get(i3)).getNumber();
                                TableActivity.this.tableName = TableActivity.this.tablename;
                                for (int j = 0; j < TableActivity.this.temptableList.size(); j++) {
                                    if (((TableDb) TableActivity.this.temptableList.get(j)).getMergeTableId() == ((TableDb) TableActivity.this.tableDbList.get(i3)).getMergeTableId()) {
                                        TableActivity.this.tablename += "/" + ((TableDb) TableActivity.this.temptableList.get(j)).getNumber();
                                    }
                                }
                                ((TableDb) TableActivity.this.tableDbList.get(i3)).setNumber(TableActivity.this.tablename);
                            }
                        }
                        TableActivity.this.tableAdapter.notifyDataSetChanged();
                    } catch (Exception e) {
                        Util.showRetrofitErrorMessage("table request:OOPS!!! Something went wrong! please try again.", TableActivity.this);
                    }
                }

                @Override // retrofit.Callback
                public void failure(RetrofitError error) {
                    try {
                        Util.showRetrofitErrorMessage("table request: " + Util.Api.getErrorMessage(error), TableActivity.this);
                    } catch (Exception e) {
                    }
                }
            });
            return;
        }
        if (id == 2) {
            String clickedPos = this.roomTypeDbList.get(position).getRestroRoom();
            roomTypeId = this.roomTypeDbList.get(position).getId().longValue();
            if (clickedPos.equalsIgnoreCase("Restaurant")) {
                this.roomDbList = this.restaurantDb.loadRoomTypeRooms(this, Integer.parseInt(String.valueOf(roomTypeId)));
                this.rvRoomType.setAdapter(new RoomAdapter(this, this.roomDbList, this));
                this.btnGoBacktoRoomType.setVisibility(0);
                this.tvhallInfo1.setVisibility(0);
                this.tvhallInfo2.setVisibility(0);
                this.tvhallInfo1.setText("Restaurant");
                this.tvhallInfo2.setText("Please select the room number.");
                this.btnLayoutRoomTable.setVisibility(0);
                this.btnLayoutRoomOnly.setVisibility(8);
                return;
            }
            JsonObject obj2 = new JsonObject();
            try {
                obj2.addProperty("RoomTypeID", Long.valueOf(roomTypeId));
                Log.e("RoomTypeID", obj2.toString());
            } catch (Exception je2) {
                Log.e("json exception", je2.getMessage());
            }
            this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
            this.roomByRoomTypeIdRequest = (RestaurantWebService.RoomByRoomTypeIdWebService) this.restAdapter.create(RestaurantWebService.RoomByRoomTypeIdWebService.class);
            this.roomByRoomTypeIdRequest.fetchRoomByRoomTypeId(obj2, new Callback<RoomWithStatus>() { // from class: com.danfe.restaurantapp1.TableActivity.17
                @Override // retrofit.Callback
                public void success(RoomWithStatus roomRespo, Response response) {
                    try {
                        if (roomRespo.getStatusCode().intValue() == 200) {
                            TableActivity.this.roomDbList = TableActivity.this.restaurantDb.loadRoomTypeRooms(TableActivity.this, Integer.parseInt(String.valueOf(TableActivity.roomTypeId)));
                            TableActivity.this.roomWithStatusData = roomRespo.getRoomWithStatusData();
                            if (TableActivity.this.roomDbList.size() != 0) {
                                if (TableActivity.this.roomDbList != null) {
                                    TableActivity.this.roomDbList.clear();
                                }
                                for (int i2 = 0; i2 < TableActivity.this.roomWithStatusData.size(); i2++) {
                                    RoomDb roomDb = new RoomDb(Long.valueOf(((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i2)).getRestroRoomId().intValue()), ((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i2)).getRestroRoom(), ((RoomWithStatus.RoomWithStatusData) TableActivity.this.roomWithStatusData.get(i2)).getRoomStatusId(), Integer.valueOf(Integer.parseInt(String.valueOf(TableActivity.roomTypeId))));
                                    TableActivity.this.roomDbList.add(roomDb);
                                }
                                TableActivity.this.tvhallInfo1.setVisibility(0);
                                TableActivity.this.tvhallInfo2.setVisibility(0);
                                String roomTypname = TableActivity.this.restaurantDb.getRoomTypeNameById(TableActivity.this.getApplicationContext(), TableActivity.roomTypeId);
                                TableActivity.this.tvhallInfo1.setText(roomTypname);
                                TableActivity.this.tvhallInfo2.setText("Please select the room number.");
                                TableActivity.this.btnGoBacktoRoomType.setVisibility(0);
                                TableActivity.this.rvRoomType.setAdapter(new RoomAdapter(TableActivity.this, TableActivity.this.roomDbList, TableActivity.this));
                                TableActivity.this.btnLayoutRoomTable.setVisibility(0);
                                TableActivity.this.btnLayoutRoomOnly.setVisibility(8);
                                return;
                            }
                            Util.showRetrofitErrorMessage("Rooms are not available at the moment. Please try again Later", TableActivity.this);
                            return;
                        }
                        Util.showRetrofitErrorMessage("Error room request: " + roomRespo.getMessage(), TableActivity.this);
                    } catch (Exception e) {
                        Util.showRetrofitErrorMessage("room request: OOPS!!! Something went wrong! please try again.", TableActivity.this);
                    }
                }

                @Override // retrofit.Callback
                public void failure(RetrofitError error) {
                    try {
                        Util.showErrorMessage("room request Error: " + Util.Api.getErrorMessage(error), TableActivity.this);
                    } catch (Exception e) {
                        Util.showErrorMessage("room request Error: " + e, TableActivity.this);
                    }
                }
            });
        }
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int level, int position, Boolean isCombo, int costcenterid) {
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerViewListClicked(View v, int id, int level, int position, Boolean isCombo, int costcenterid, boolean isCategory) {
    }

    @Override // com.danfe.restaurantapp1.Interface.RecyclerViewClickListener
    public void recyclerLongClicked(View v, int itemId, Boolean isCombo) {
    }

    public void setMergeInit(int mergetableId, int mergeTableCapacity, String mergeTableName) {
        this.mergetableId = mergetableId;
        this.mergeTableCapacity = mergeTableCapacity;
        this.mergeTableName = mergeTableName;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.btnGoBacktoRoomType) {
            this.rvRoomType.setAdapter(new RoomTypeAdapter(getApplicationContext(), this.roomTypeDbList, this));
            this.btnGoBacktoRoomType.setVisibility(8);
            this.tvhallInfo2.setVisibility(8);
            this.tvhallInfo1.setVisibility(8);
            this.cbMerge.setChecked(false);
            return;
        }
        if (v == this.btnRefreshTables) {
            getRoomDetails();
        }
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
    protected void onPause() {
        super.onPause();
        Util.showLog("ACTIVITYSTATE", "[PUASED");
        this.cbMerge.setChecked(false);
        this.pausedActivity = true;
        EventBus.getDefault().unregister(this);
        this.screenState = false;
    }

    @Override // com.danfe.restaurantapp1.Interface.LogoutInterface
    public void logout() {
        runOnUiThread(new Runnable() { // from class: com.danfe.restaurantapp1.TableActivity.18
            @Override // java.lang.Runnable
            public void run() {
                TableActivity.this.LogoutFunction();
            }
        });
    }
}
