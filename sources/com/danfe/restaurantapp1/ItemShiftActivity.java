package com.danfe.restaurantapp1;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.adapter.ShiftOrderAdapter;
import com.danfe.restaurantapp1.adapter.ShiftedOrderAdapter;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.helper.CheckPinCode;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.RoomDb;
import com.danfe.restaurantapp1.model.RoomTypeDb;
import com.danfe.restaurantapp1.model.TableDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import com.danfe.restaurantapp1.response.EditOrderRequest;
import com.danfe.restaurantapp1.response.Room;
import com.danfe.restaurantapp1.response.TableList;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class ItemShiftActivity extends AppCompatActivity implements ShiftOrderAdapter.OnItemClickListnerInterface, View.OnClickListener {
    public static int selectedBillNo;
    private static RestaurantWebService.shiftItemsToTables shiftItemsToTablesService;
    int BillEntered;
    String ItemId;
    String TableId;
    Button btnShiftCancel;
    Button btnShiftItem;
    private CheckPinCode checkPinCode;
    JSONObject childJsonObject;
    List<List<orderExtraItem>> extraItemsLists;
    private RestaurantWebService.GetEdit getEditService;
    private JsonObject gsonObject;
    Boolean isCombo;
    private JsonParser jsonParser;
    LinearLayout layoutData;
    TextView noDataAvailable;
    TextView noDatas;
    JSONObject object;
    List<OrderDetailDb> orderDetailLists;
    List<EditOrderRequest.OrderDetailsList> orderDetailsLists;
    List<OrderDetailDb> orderItemDetailLists;
    List<OrderDetailDb> orderItemsLists;
    List<RoomTypeDb> personalRoom;
    RestAdapter restAdapter;
    RestAdapter restAdapter2;
    RestaurantDatabase restaurantDatabase;
    List<RoomDb> roomDbList;
    long roomId;
    List<Room> roomListArray;
    List<String> roomListst;
    RecyclerView rvMenuShift1;
    RecyclerView rvMenuShift2;
    ScrollView scrollView;
    int seatNo;
    String selectedQtyNo;
    ShiftOrderAdapter shiftOrderAdapter;
    ShiftedOrderAdapter shiftedAdapter;
    private String shiftedByUserName;
    Spinner shiftedTable;
    Spinner spShiftSeat;
    Spinner spShiftSplitNo;
    Spinner spShiftTableNo;
    Spinner spShiftTableTitle;
    List<String> splitNo;
    String tableDate;
    List<TableDb> tableDbList;
    int tableId;
    int tableIdnumber;
    List<String> tableListTitle;
    List<TableList> tableLists;
    List<RoomDb> tableListst;
    String tableName;
    String tableNo;
    String tablename;
    String tableroom;
    List<List<orderExtraItem>> tempExtraExtraLists;
    List<List<orderExtraItem>> tempExtraLists;
    List<EditOrderRequest.OrderDetailsList> tempShiftList;
    List<EditOrderRequest.OrderDetailsList> tempShiftListPerTable;
    List<EditOrderRequest.OrderDetailsList> temporaryList;
    TextView tvShiftDate;
    TextView tvShiftTableTitle;
    TextView tvShiftWaiter;
    String waiterName;
    int selectedBill = 0;
    int toSplitNo = 0;
    int selectedSplitNo = 0;
    Double totalQty = Double.valueOf(0.0d);
    private String BaseURL = "";
    private String BaseUrl = "";
    List<TableDb> tableDbs = new ArrayList();
    List<TableDb> filteredTableList = new ArrayList();
    boolean isAdded = false;
    boolean isItemAlreadyShifted = false;
    private String orderType = "";

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_item_shift);
        this.rvMenuShift1 = (RecyclerView) findViewById(R.id.rv_shiftItem1);
        this.spShiftSeat = (Spinner) findViewById(R.id.sp_shift_seat);
        this.spShiftTableTitle = (Spinner) findViewById(R.id.sp_shift_tabletitle);
        this.tvShiftTableTitle = (TextView) findViewById(R.id.tv_shift_tablename);
        this.tvShiftDate = (TextView) findViewById(R.id.tv_shift_date);
        this.tvShiftWaiter = (TextView) findViewById(R.id.tv_shift_waitername);
        this.btnShiftItem = (Button) findViewById(R.id.bt_ShiftItem);
        this.btnShiftCancel = (Button) findViewById(R.id.bt_shift_cancel);
        this.rvMenuShift2 = (RecyclerView) findViewById(R.id.rv_shiftItem2);
        this.spShiftTableNo = (Spinner) findViewById(R.id.sp_shift_tableno);
        this.shiftedTable = (Spinner) findViewById(R.id.sp_shift_tableumber);
        this.noDataAvailable = (TextView) findViewById(R.id.noDataAvailable);
        this.layoutData = (LinearLayout) findViewById(R.id.layoutData);
        this.noDatas = (TextView) findViewById(R.id.noData);
        this.scrollView = (ScrollView) findViewById(R.id.scrollview);
        this.spShiftSplitNo = (Spinner) findViewById(R.id.sp_shift_SplitNumber);
        this.tableId = getIntent().getIntExtra("oldTableId", 0);
        this.roomId = getIntent().getLongExtra("roomId", 0L);
        Log.e("TableId: ", String.valueOf(this.tableId));
        this.tablename = getIntent().getStringExtra("tableName");
        this.tableDate = getIntent().getStringExtra("tableDate");
        this.tableroom = getIntent().getStringExtra("tableroom");
        this.waiterName = getIntent().getStringExtra("waiterName");
        this.restaurantDatabase = new RestaurantDatabase();
        this.personalRoom = new ArrayList();
        this.personalRoom = this.restaurantDatabase.loadAllRoomType(this);
        this.BaseURL = Util.getBaseUrl(this);
        Preferences prefs = new Preferences(this);
        this.BaseUrl = "http://" + prefs.getBaseUrl() + "/Services";
        this.orderDetailsLists = new ArrayList();
        this.orderDetailLists = new ArrayList();
        this.orderItemDetailLists = new ArrayList();
        this.orderItemsLists = new ArrayList();
        this.tableLists = new ArrayList();
        this.tempExtraLists = new ArrayList();
        this.extraItemsLists = new ArrayList();
        this.tempShiftList = new ArrayList();
        this.tempExtraExtraLists = new ArrayList();
        this.tempShiftListPerTable = new ArrayList();
        this.roomListArray = new ArrayList();
        this.tableListTitle = new ArrayList();
        this.roomDbList = new ArrayList();
        this.roomListst = new ArrayList();
        this.tableListst = new ArrayList();
        this.tableDbList = new ArrayList();
        this.tvShiftTableTitle.setText(this.tablename);
        this.tvShiftDate.setTypeface(null, 2);
        this.tvShiftDate.setText(this.tableDate);
        this.tvShiftWaiter.setText(this.waiterName);
        this.checkPinCode = new CheckPinCode();
        this.restAdapter2 = new RestAdapter.Builder().setEndpoint(this.BaseUrl).build();
        getPredefinedValue(this.tableId, this.roomId);
        this.btnShiftCancel.setOnClickListener(this);
        this.btnShiftItem.setOnClickListener(this);
        this.spShiftSeat.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                ItemShiftActivity.this.selectedBill = Integer.parseInt(ItemShiftActivity.this.spShiftSeat.getSelectedItem().toString());
                Log.e("selectedBill: ", String.valueOf(ItemShiftActivity.this.spShiftSeat.getSelectedItem()));
                ItemShiftActivity.this.getDataBasedOnSelectedValue(ItemShiftActivity.this.selectedBill);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.spShiftSplitNo.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String spSelectedSplit = ItemShiftActivity.this.spShiftSplitNo.getSelectedItem().toString();
                if (spSelectedSplit.equalsIgnoreCase("Select") || spSelectedSplit.equalsIgnoreCase("New")) {
                    Log.e("Split No New: ", String.valueOf(ItemShiftActivity.this.spShiftSplitNo.getSelectedItem()));
                    if (spSelectedSplit.equalsIgnoreCase("New")) {
                        if (ItemShiftActivity.this.toSplitNo >= 1) {
                            ItemShiftActivity.this.selectedSplitNo = ItemShiftActivity.this.toSplitNo + 1;
                            return;
                        } else {
                            ItemShiftActivity.this.selectedSplitNo = 1;
                            return;
                        }
                    }
                    ItemShiftActivity.this.selectedSplitNo = 0;
                    return;
                }
                String selectedSplit = String.valueOf(ItemShiftActivity.this.spShiftSplitNo.getSelectedItem());
                ItemShiftActivity.this.selectedSplitNo = Integer.parseInt(selectedSplit);
                Log.e("Split No: ", String.valueOf(ItemShiftActivity.this.spShiftSplitNo.getSelectedItem()));
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.rvMenuShift1.setLongClickable(true);
        this.rvMenuShift1.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                return true;
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getApplicationContext(), 1, false);
        this.rvMenuShift1.setLayoutManager(linearLayoutManager);
        LinearLayoutManager linearLayoutManager1 = new LinearLayoutManager(getApplicationContext(), 1, false);
        this.rvMenuShift2.setLayoutManager(linearLayoutManager1);
        this.roomListst.add(0, "Select");
        for (int i = 0; i < this.personalRoom.size(); i++) {
            this.roomListst.add(this.personalRoom.get(i).getRestroRoom());
        }
        ArrayAdapter tableListAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerorangebackground, this.roomListst);
        this.spShiftTableTitle.setAdapter((SpinnerAdapter) tableListAdapter);
        this.spShiftTableTitle.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String spShitedTableTitle = ItemShiftActivity.this.spShiftTableTitle.getSelectedItem().toString();
                Log.e("spShitedTableTitle: ", String.valueOf(spShitedTableTitle));
                ItemShiftActivity.this.getDataBasedOnSelectedTable(spShitedTableTitle);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.spShiftTableNo.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.5
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String tableTitle = ItemShiftActivity.this.spShiftTableNo.getSelectedItem().toString();
                Log.e("TableTitle ", tableTitle);
                ItemShiftActivity.this.getTablebasedOnRoom(ItemShiftActivity.this.spShiftTableNo.getSelectedItem().toString());
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
    }

    public void ShiftItem(String username) {
        this.shiftedByUserName = username;
        Intent intent = new Intent(this, (Class<?>) TableActivity.class);
        intent.putExtra("shiftedByUserName", this.shiftedByUserName);
        this.btnShiftItem.setEnabled(false);
        this.object = new JSONObject();
        this.childJsonObject = new JSONObject();
        JSONArray jsonArray = new JSONArray();
        this.jsonParser = new JsonParser();
        try {
            this.object.put("fromTable", this.tableId);
            this.object.put("fromSplitNo", this.selectedBill);
            this.object.put("toTable", this.tableIdnumber);
            this.object.put("toSplitNo", this.selectedSplitNo);
            this.object.put("shiftedBy", username);
            this.object.put("itemList", jsonArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        for (int i = 0; i < this.orderDetailLists.size(); i++) {
            jsonArray.put(this.orderDetailLists.get(i).toJsonForShift());
        }
        this.gsonObject = (JsonObject) this.jsonParser.parse(this.object.toString());
        Log.e("shiftOrderResponse", this.object.toString());
        shiftItemsToTablesService = (RestaurantWebService.shiftItemsToTables) this.restAdapter2.create(RestaurantWebService.shiftItemsToTables.class);
        shiftItemsToTablesService.postShiftItemsToTables(this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.6
            @Override // retrofit.Callback
            public void success(JsonObject jsonObject, Response response) {
                int statusCode = jsonObject.get("statusCode").getAsInt();
                String message = jsonObject.get("message").toString();
                if (statusCode == 200) {
                    Toast.makeText(ItemShiftActivity.this, "Item Shifted to Table successfully", 0).show();
                    ItemShiftActivity.this.onBackPressed();
                    ItemShiftActivity.this.btnShiftItem.setEnabled(true);
                    return;
                }
                Util.showErrorMessageWithTitle("Error shifting Item: " + message, "Error Shifting item", ItemShiftActivity.this);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                error.getStackTrace();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getTablebasedOnRoom(String s) {
        for (int i = 0; i < this.tableListst.size(); i++) {
            if (this.tableListst.get(i).getRestroRoom().equalsIgnoreCase(s)) {
                this.tableDbs = this.restaurantDatabase.loadRoomTables(getApplicationContext(), Integer.parseInt(String.valueOf(this.tableListst.get(i).getId())));
                this.filteredTableList.clear();
                for (int j = 0; j < this.tableDbs.size(); j++) {
                    if (this.tableDbs.get(j).getIsTable().booleanValue() && this.tableDbs.get(j).getBillPaid().intValue() == 0) {
                        this.filteredTableList.add(this.tableDbs.get(j));
                    }
                    if (!this.tableDbs.get(j).getIsTable().booleanValue() && this.tableDbs.get(j).getTableStatus().intValue() == 7) {
                        this.filteredTableList.add(this.tableDbs.get(j));
                    }
                }
            }
        }
        List<String> tabelLists = new ArrayList<>();
        new ArrayList();
        tabelLists.add("Select");
        for (int j2 = 0; j2 < this.filteredTableList.size(); j2++) {
            tabelLists.add(this.filteredTableList.get(j2).getNumber());
        }
        ArrayAdapter tableNoAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerorangebackground, tabelLists);
        this.shiftedTable.setAdapter((SpinnerAdapter) tableNoAdapter);
        this.shiftedTable.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.7
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if (!ItemShiftActivity.this.shiftedTable.getSelectedItem().toString().equalsIgnoreCase("Select")) {
                    ItemShiftActivity.this.tableNo = ItemShiftActivity.this.shiftedTable.getSelectedItem().toString();
                    for (int i2 = 0; i2 < ItemShiftActivity.this.tableDbs.size(); i2++) {
                        if (ItemShiftActivity.this.tableDbs.get(i2).getNumber().equalsIgnoreCase(ItemShiftActivity.this.tableNo)) {
                            ItemShiftActivity.this.tableIdnumber = Integer.parseInt(ItemShiftActivity.this.tableDbs.get(i2).getId().toString());
                            Log.e("tableIdnumber: ", String.valueOf(ItemShiftActivity.this.tableIdnumber));
                            ItemShiftActivity.this.toSplitNo = ItemShiftActivity.this.tableDbs.get(i2).getGuestNo().intValue();
                            ItemShiftActivity.this.splitNo = new ArrayList();
                            ItemShiftActivity.this.splitNo.add("Select");
                            if (ItemShiftActivity.this.toSplitNo >= 1) {
                                for (int j3 = 0; j3 < ItemShiftActivity.this.toSplitNo; j3++) {
                                    ItemShiftActivity.this.splitNo.add(String.valueOf(j3 + 1));
                                }
                            } else {
                                ItemShiftActivity.this.splitNo.add(1, "New");
                            }
                            ArrayAdapter myAdapter = new ArrayAdapter(ItemShiftActivity.this.getApplicationContext(), R.layout.layout_spinnerorangebackground, ItemShiftActivity.this.splitNo);
                            ItemShiftActivity.this.spShiftSplitNo.setAdapter((SpinnerAdapter) myAdapter);
                        }
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getDataBasedOnSelectedTable(String spShitedTableTitle) {
        for (int i = 0; i < this.personalRoom.size(); i++) {
            if (this.personalRoom.get(i).getRestroRoom().equalsIgnoreCase(spShitedTableTitle)) {
                this.tableListst = this.restaurantDatabase.loadRoomTypeRooms(getApplicationContext(), Integer.parseInt(String.valueOf(this.personalRoom.get(i).getId())));
            }
        }
        this.tableListTitle.clear();
        this.tableListTitle.add(0, "Select");
        for (int j = 0; j < this.tableListst.size(); j++) {
            this.tableListTitle.add(this.tableListst.get(j).getRestroRoom());
        }
        ArrayAdapter tableNoAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerorangebackground, this.tableListTitle);
        this.spShiftTableNo.setAdapter((SpinnerAdapter) tableNoAdapter);
    }

    public void FilterBillOrderItemLists(int selectedBillOrders) {
        selectedBillNo = selectedBillOrders;
        List<String> billNo = new ArrayList<>();
        for (int i = 0; i < selectedBillNo; i++) {
            billNo.add(String.valueOf(i + 1));
        }
        ArrayAdapter myAdapter = new ArrayAdapter(getApplicationContext(), R.layout.spinner_ressource_search, billNo);
        this.spShiftSeat.setAdapter((SpinnerAdapter) myAdapter);
    }

    public void getDataBasedOnSelectedValue(int SelectedBill) {
        this.temporaryList = new ArrayList();
        for (int i = 0; i < this.orderDetailsLists.size(); i++) {
            if (this.orderDetailsLists.get(i).getSeatNo().intValue() == SelectedBill) {
                this.temporaryList.add(this.orderDetailsLists.get(i));
            }
        }
        this.tempShiftList = new ArrayList();
        refreshAdapter();
        if (this.temporaryList.size() == 0) {
            if (this.noDatas.getVisibility() == 8 && this.scrollView.getVisibility() == 0) {
                this.noDatas.setVisibility(0);
                this.scrollView.setVisibility(8);
                return;
            }
            return;
        }
        this.noDatas.setVisibility(8);
        this.scrollView.setVisibility(0);
    }

    public void refreshAdapter() {
        this.shiftOrderAdapter = new ShiftOrderAdapter(getApplicationContext(), this.temporaryList, this);
        this.rvMenuShift1.setAdapter(this.shiftOrderAdapter);
        this.shiftOrderAdapter.notifyDataSetChanged();
        this.shiftedAdapter = new ShiftedOrderAdapter(getApplicationContext(), this.tempShiftList);
        this.rvMenuShift2.setAdapter(this.shiftedAdapter);
        this.shiftedAdapter.notifyDataSetChanged();
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
        this.getEditService.getEdit(this.gsonObject, new Callback<EditOrderRequest>() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.8
            @Override // retrofit.Callback
            public void success(EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    ItemShiftActivity.this.orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    ItemShiftActivity.this.BillEntered = editOrderRequest.getGuestNo().intValue();
                    ItemShiftActivity.this.TableId = editOrderRequest.getTableId();
                    ItemShiftActivity.this.FilterBillOrderItemLists(ItemShiftActivity.this.BillEntered);
                    for (int i = 0; i < ItemShiftActivity.this.orderDetailsLists.size(); i++) {
                        ItemShiftActivity.this.orderItemDetailLists.add(new OrderDetailDb(Long.valueOf(ItemShiftActivity.this.orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), ItemShiftActivity.this.orderDetailsLists.get(i).getROI_ItemId(), ItemShiftActivity.this.orderDetailsLists.get(i).getROI_ItemName(), ItemShiftActivity.this.orderDetailsLists.get(i).getQuantity(), Double.valueOf(ItemShiftActivity.this.orderDetailsLists.get(i).getRate().doubleValue()), ItemShiftActivity.this.orderDetailsLists.get(i).getIsCancelled(), ItemShiftActivity.this.orderDetailsLists.get(i).getSeatNo(), ItemShiftActivity.this.orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(ItemShiftActivity.this.orderDetailsLists.get(i).getExtraCharge()))), ItemShiftActivity.this.orderDetailsLists.get(i).getStatus(), 0, ItemShiftActivity.this.orderDetailsLists.get(i).getCombo(), ItemShiftActivity.this.orderDetailsLists.get(i).getCostCenterId()));
                    }
                } else {
                    ItemShiftActivity.this.noDataAvailable.setVisibility(0);
                    ItemShiftActivity.this.layoutData.setVisibility(8);
                }
                if (ItemShiftActivity.this.BillEntered > 0) {
                    ItemShiftActivity.this.FilterBillOrderItemLists(ItemShiftActivity.this.BillEntered);
                } else if (ItemShiftActivity.this.BillEntered == 0) {
                    ItemShiftActivity.this.BillEntered = 1;
                    ItemShiftActivity.this.FilterBillOrderItemLists(ItemShiftActivity.this.BillEntered);
                }
                if (ItemShiftActivity.this.orderItemDetailLists.size() > 0) {
                    for (int i2 = 0; i2 < ItemShiftActivity.this.orderItemDetailLists.size(); i2++) {
                        ItemShiftActivity.this.orderItemsLists.add(ItemShiftActivity.this.orderItemDetailLists.get(i2));
                        ItemShiftActivity.this.seatNo = ItemShiftActivity.this.orderItemDetailLists.get(i2).getSeatNo().intValue();
                    }
                } else {
                    ItemShiftActivity.this.noDataAvailable.setVisibility(0);
                    ItemShiftActivity.this.rvMenuShift1.setVisibility(8);
                }
                Log.e("seatNo: ", String.valueOf(ItemShiftActivity.this.seatNo));
                ItemShiftActivity.this.orderItemDetailLists.removeAll(ItemShiftActivity.this.orderItemDetailLists);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
            }
        });
        return this.orderItemDetailLists;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.danfe.restaurantapp1.adapter.ShiftOrderAdapter.OnItemClickListnerInterface
    public void onItemClicked(final int position, final EditOrderRequest.OrderDetailsList orderLists) {
        final AlertDialog alertDialogBuilder = new AlertDialog.Builder(this).create();
        View viewDialog = LayoutInflater.from(getApplicationContext()).inflate(R.layout.shift_item_layout, (ViewGroup) null);
        alertDialogBuilder.setView(viewDialog);
        TextView tvShiftItemTitle = (TextView) viewDialog.findViewById(R.id.tv_shiftItemTitle);
        LinearLayout layoutShift = (LinearLayout) viewDialog.findViewById(R.id.ShiftLayout);
        final Spinner spShiftQty = (Spinner) viewDialog.findViewById(R.id.sp_shift_seat);
        tvShiftItemTitle.setText(orderLists.getSeatNo() + "(" + orderLists.getROI_ItemName() + ": " + orderLists.getQuantity() + ")");
        this.ItemId = orderLists.getROI_ItemId().toString();
        this.isCombo = orderLists.getCombo();
        this.totalQty = orderLists.getQuantity();
        List<String> totalQtyNo = new ArrayList<>();
        for (double i = 0.0d; i < this.totalQty.doubleValue(); i += 1.0d) {
            totalQtyNo.add(String.valueOf(1.0d + i));
        }
        totalQtyNo.add(0, "Select");
        ArrayAdapter myAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerwhitebackground, totalQtyNo);
        spShiftQty.setAdapter((SpinnerAdapter) myAdapter);
        spShiftQty.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position2, long id) {
                ItemShiftActivity.this.selectedQtyNo = spShiftQty.getSelectedItem().toString();
                Log.e("SelectedQty: ", ItemShiftActivity.this.selectedQtyNo.toString());
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        layoutShift.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.ItemShiftActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                int shiftedItemIndex = position;
                if (!ItemShiftActivity.this.selectedQtyNo.toString().equalsIgnoreCase("Select")) {
                    if (ItemShiftActivity.this.tableIdnumber == 0) {
                        Toast.makeText(ItemShiftActivity.this, "Please select table from the list.", 0).show();
                        return;
                    }
                    int i2 = 0;
                    while (true) {
                        if (i2 >= ItemShiftActivity.this.temporaryList.size()) {
                            break;
                        }
                        if (!ItemShiftActivity.this.temporaryList.get(i2).getROI_ItemId().equals(orderLists.getROI_ItemId())) {
                            i2++;
                        } else {
                            ItemShiftActivity.this.temporaryList.get(shiftedItemIndex).setQuantity(Double.valueOf(ItemShiftActivity.this.totalQty.doubleValue() - Double.parseDouble(ItemShiftActivity.this.selectedQtyNo.toString())));
                            ItemShiftActivity.this.isItemAlreadyShifted = false;
                            int j = 0;
                            while (true) {
                                if (j >= ItemShiftActivity.this.tempShiftList.size() || ItemShiftActivity.this.tempShiftList.size() <= 0) {
                                    break;
                                }
                                if (ItemShiftActivity.this.tempShiftList.get(j).getROI_ItemId() != ItemShiftActivity.this.temporaryList.get(i2).getROI_ItemId()) {
                                    j++;
                                } else {
                                    ItemShiftActivity.this.isItemAlreadyShifted = true;
                                    shiftedItemIndex = j;
                                    break;
                                }
                            }
                            if (ItemShiftActivity.this.isItemAlreadyShifted) {
                                ItemShiftActivity.this.tempShiftList.get(shiftedItemIndex).setQuantity(Double.valueOf(ItemShiftActivity.this.tempShiftList.get(shiftedItemIndex).getQuantity().doubleValue() + Double.parseDouble(ItemShiftActivity.this.selectedQtyNo.toString())));
                            } else {
                                EditOrderRequest.OrderDetailsList newOrderList = new EditOrderRequest.OrderDetailsList(ItemShiftActivity.this.temporaryList.get(shiftedItemIndex));
                                if (ItemShiftActivity.this.temporaryList.get(shiftedItemIndex).getQuantity().toString().equals("0.0")) {
                                    ItemShiftActivity.this.temporaryList.remove(shiftedItemIndex);
                                }
                                newOrderList.setQuantity(Double.valueOf(Double.parseDouble(ItemShiftActivity.this.selectedQtyNo.toString())));
                                ItemShiftActivity.this.tempShiftList.add(newOrderList);
                            }
                        }
                    }
                    ItemShiftActivity.this.refreshAdapter();
                    ItemShiftActivity.this.orderDetailLists.removeAll(ItemShiftActivity.this.orderDetailLists);
                    for (int i3 = 0; i3 < ItemShiftActivity.this.tempShiftList.size(); i3++) {
                        ItemShiftActivity.this.orderDetailLists.add(new OrderDetailDb(Long.valueOf(ItemShiftActivity.this.tempShiftList.get(i3).getRestrotableId().intValue()), ItemShiftActivity.this.tempShiftList.get(i3).getOrderMasterId(), ItemShiftActivity.this.tempShiftList.get(i3).getROI_ItemId(), ItemShiftActivity.this.tempShiftList.get(i3).getRestrotableTitle(), ItemShiftActivity.this.tempShiftList.get(i3).getQuantity(), Double.valueOf(ItemShiftActivity.this.tempShiftList.get(i3).getBasicAmount().intValue()), ItemShiftActivity.this.tempShiftList.get(i3).getIsCancelled(), ItemShiftActivity.this.tempShiftList.get(i3).getSeatNo(), ItemShiftActivity.this.tempShiftList.get(i3).getNote(), Float.valueOf(0.0f), ItemShiftActivity.this.tempShiftList.get(i3).getStatus(), 0, ItemShiftActivity.this.tempShiftList.get(i3).getCombo(), ItemShiftActivity.this.tempShiftList.get(i3).getCostCenterId()));
                    }
                    alertDialogBuilder.dismiss();
                    return;
                }
                Toast.makeText(ItemShiftActivity.this, "Please select atleast one quantity.", 0).show();
            }
        });
        alertDialogBuilder.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.bt_shift_cancel /* 2131689626 */:
                onBackPressed();
                break;
            case R.id.bt_ShiftItem /* 2131689627 */:
                if (this.orderDetailsLists.size() == 0) {
                    Toast.makeText(this, "No FullRestroRoomData Available to Shift", 0).show();
                } else if (this.tableIdnumber == 0) {
                    Toast.makeText(this, "Please select table from the list.", 0).show();
                } else if (this.selectedSplitNo == 0) {
                    Toast.makeText(this, "Please select given Split No. to Shift Item", 0).show();
                } else if (this.tempShiftList.size() == 0) {
                    Toast.makeText(this, "Please select atleast one item to desired table!", 0).show();
                } else {
                    this.orderType = Constants.SHIFT_ITEM;
                    this.checkPinCode.checkPinCodemethod(this, Constants.SHIFT_ITEM);
                }
                break;
        }
    }
}
