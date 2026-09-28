package com.danfe.restaurantapp1;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
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
import com.danfe.restaurantapp1.response.FullRestroRoomData;
import com.danfe.restaurantapp1.response.Room;
import com.danfe.restaurantapp1.response.RoomWithStatus;
import com.danfe.restaurantapp1.response.TableList;
import com.danfe.restaurantapp1.service.CheckOrderStatus;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class TableSelectionActivity extends AppCompatActivity implements ShiftOrderAdapter.OnItemClickListnerInterface, View.OnClickListener {
    private static RestaurantWebService.TableWebService mWebService;
    public static int selectedBillNo;
    private static RestaurantWebService.shiftItemsToTables shiftItemsToTablesService;
    int BillEntered;
    String ItemId;
    String TableId;
    List<String> ToSplitNo;
    Button btnShiftCancel;
    Button btnShiftItem;
    Button btnShiftTable;
    private CheckPinCode checkPinCode;
    JSONObject childJsonObject;
    List<List<orderExtraItem>> extraItemsLists;
    int fromOrderMasterId;
    private RestaurantWebService.GetEdit getEditService;
    private JsonObject gsonObject;
    int guestNo;
    Boolean isCombo;
    private JsonParser jsonParser;
    LinearLayout layoutData;
    LinearLayout layoutShift;
    TextView noDataAvailable;
    TextView noDatas;
    JSONObject object;
    EditOrderRequest.OrderDetailsList orderDetailDb;
    List<OrderDetailDb> orderDetailLists;
    List<EditOrderRequest.OrderDetailsList> orderDetailsLists;
    List<OrderDetailDb> orderItemDetailLists;
    List<OrderDetailDb> orderItemsLists;
    List<EditOrderRequest.OrderDetailsList> orderLists;
    List<RoomTypeDb> personalRoom;
    RestAdapter restAdapter;
    RestAdapter restAdapter2;
    RestaurantDatabase restaurantDatabase;
    List<Room.Roomlist> roomArrayList;
    List<RoomDb> roomDbList;
    List<Room> roomDetailsList;
    long roomId;
    List<Room> roomLists;
    List<String> roomListst;
    List<Room.Roomlist> roomResponse;
    List<Room.Roomlist> roomResponseList;
    private List<RoomWithStatus.RoomWithStatusData> roomWithStatusData;
    private List<FullRestroRoomData.Room> rooms;
    List<Room> rooomListResponse;
    RecyclerView rvMenuShift1;
    RecyclerView rvMenuShift2;
    ScrollView scrollView;
    int seatNo;
    Double selectedQty;
    String selectedQtyNo;
    int selectedTable;
    ShiftOrderAdapter shiftOrderAdapter;
    ShiftedOrderAdapter shiftedAdapter;
    List<OrderDetailDb> shiftedOrderList;
    Spinner shiftedTable;
    Spinner spShiftSeat;
    Spinner spShiftTableNo;
    Spinner spShiftTableTitle;
    Spinner spShiftedSeatNo;
    List<Room.TableList> tableArrayList;
    String tableDate;
    List<TableDb> tableDbList;
    int tableId;
    int tableIdnumber;
    List<Room.Roomlist> tableListResponse;
    List<String> tableListTitle;
    List<TableList> tableLists;
    List<RoomDb> tableListst;
    String tableName;
    String tableNo;
    List<Room.TableList> tableResponseList;
    String tablename;
    String tableroom;
    List<List<orderExtraItem>> tempExtraExtraLists;
    List<List<orderExtraItem>> tempExtraItemsDbs;
    List<List<orderExtraItem>> tempExtraLists;
    List<EditOrderRequest.OrderDetailsList> tempShiftList;
    List<EditOrderRequest.OrderDetailsList> tempShiftListPerTable;
    List<EditOrderRequest.OrderDetailsList> temporaryList;
    String tosplitNo;
    Double totalQty;
    TextView tvShiftDate;
    TextView tvShiftTableTitle;
    TextView tvShiftWaiter;
    String waiterName;
    int selectedBill = 0;
    Double initialQuantity = Double.valueOf(0.0d);
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
        setContentView(R.layout.activity_table_selection);
        this.rvMenuShift1 = (RecyclerView) findViewById(R.id.rv_shiftItem1);
        this.spShiftSeat = (Spinner) findViewById(R.id.sp_shift_seat);
        this.spShiftTableTitle = (Spinner) findViewById(R.id.sp_shift_tabletitle);
        this.tvShiftTableTitle = (TextView) findViewById(R.id.tv_shift_tablename);
        this.tvShiftDate = (TextView) findViewById(R.id.tv_shift_date);
        this.tvShiftWaiter = (TextView) findViewById(R.id.tv_shift_waitername);
        this.btnShiftCancel = (Button) findViewById(R.id.bt_shift_cancel);
        this.btnShiftTable = (Button) findViewById(R.id.bt_ShiftTable);
        this.rvMenuShift2 = (RecyclerView) findViewById(R.id.rv_shiftItem2);
        this.spShiftTableNo = (Spinner) findViewById(R.id.sp_shift_tableno);
        this.shiftedTable = (Spinner) findViewById(R.id.sp_shift_tableumber);
        this.spShiftedSeatNo = (Spinner) findViewById(R.id.sp_shift_tosplitno);
        this.noDataAvailable = (TextView) findViewById(R.id.noDataAvailablets);
        this.layoutData = (LinearLayout) findViewById(R.id.layoutDatats);
        this.noDatas = (TextView) findViewById(R.id.noData);
        this.scrollView = (ScrollView) findViewById(R.id.scrollview);
        this.layoutShift = (LinearLayout) findViewById(R.id.ShiftLayout);
        this.tableId = getIntent().getIntExtra("oldTableId", 0);
        this.roomId = getIntent().getLongExtra("roomId", 0L);
        Log.e("TableId: ", String.valueOf(this.tableId));
        this.fromOrderMasterId = getIntent().getIntExtra("fromOrderMasterId", -1);
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
        this.tableResponseList = new ArrayList();
        this.roomResponseList = new ArrayList();
        this.rooomListResponse = new ArrayList();
        this.tableListResponse = new ArrayList();
        this.tableListTitle = new ArrayList();
        this.roomDetailsList = new ArrayList();
        this.roomDbList = new ArrayList();
        this.roomResponse = new ArrayList();
        this.roomArrayList = new ArrayList();
        this.tableArrayList = new ArrayList();
        this.roomListst = new ArrayList();
        this.tableListst = new ArrayList();
        this.tableDbList = new ArrayList();
        this.orderLists = new ArrayList();
        getPredefinedValue(this.tableId, this.roomId);
        this.tvShiftTableTitle.setText(this.tablename);
        this.tvShiftDate.setTypeface(null, 2);
        this.tvShiftDate.setText(this.tableDate);
        this.tvShiftWaiter.setText(this.waiterName);
        this.checkPinCode = new CheckPinCode();
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.restAdapter2 = new RestAdapter.Builder().setEndpoint(this.BaseUrl).build();
        this.btnShiftCancel.setOnClickListener(this);
        this.btnShiftTable.setOnClickListener(this);
        this.spShiftSeat.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if (TableSelectionActivity.this.spShiftSeat.getSelectedItem().toString().equalsIgnoreCase("All")) {
                    TableSelectionActivity.this.selectedBill = 0;
                    TableSelectionActivity.this.getDataBasedOnSelectedValue(TableSelectionActivity.this.selectedBill);
                } else {
                    TableSelectionActivity.this.selectedBill = Integer.parseInt(TableSelectionActivity.this.spShiftSeat.getSelectedItem().toString());
                    Log.e("selectedBill: ", String.valueOf(TableSelectionActivity.this.spShiftSeat.getSelectedItem()));
                    TableSelectionActivity.this.getDataBasedOnSelectedValue(TableSelectionActivity.this.selectedBill);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.rvMenuShift1.setLongClickable(true);
        this.rvMenuShift1.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                return true;
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getApplicationContext(), 1, false);
        this.rvMenuShift1.setLayoutManager(linearLayoutManager);
        this.roomListst.add(0, "Select");
        for (int i = 0; i < this.personalRoom.size(); i++) {
            this.roomListst.add(this.personalRoom.get(i).getRestroRoom());
        }
        ArrayAdapter tableListAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerorangebackground, this.roomListst);
        this.spShiftTableTitle.setAdapter((SpinnerAdapter) tableListAdapter);
        this.spShiftTableTitle.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String spShitedTableTitle = TableSelectionActivity.this.spShiftTableTitle.getSelectedItem().toString();
                Log.e("spShitedTableTitle: ", String.valueOf(spShitedTableTitle));
                TableSelectionActivity.this.getDataBasedOnSelectedTable(spShitedTableTitle);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
        this.spShiftTableNo.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.4
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String tableTitle = TableSelectionActivity.this.spShiftTableNo.getSelectedItem().toString();
                Log.e("TableTitle ", tableTitle);
                TableSelectionActivity.this.getTablebasedOnRoom(TableSelectionActivity.this.spShiftTableNo.getSelectedItem().toString());
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });
    }

    public void ShiftTable(String shiftedBy) {
        this.object = new JSONObject();
        this.jsonParser = new JsonParser();
        try {
            this.object.put("fromOrderMasterId", this.fromOrderMasterId);
            this.object.put("fromSplitNo", this.selectedBill);
            this.object.put("toTable", this.tableIdnumber);
            this.object.put("toSplitNo", this.tosplitNo);
            this.object.put("shiftedBy", shiftedBy);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.gsonObject = (JsonObject) this.jsonParser.parse(this.object.toString());
        Log.e("ShiftTable Response: ", this.gsonObject.toString());
        RestaurantWebService.ShiftRequest sendTransferService = (RestaurantWebService.ShiftRequest) this.restAdapter.create(RestaurantWebService.ShiftRequest.class);
        sendTransferService.shift(this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.5
            @Override // retrofit.Callback
            public void success(JsonObject jsonObject, Response response) {
                int statuscode = jsonObject.get("statusCode").getAsInt();
                String message = jsonObject.get("message").toString();
                if (statuscode == 200) {
                    Log.e("successshift", "success");
                    Toast.makeText(TableSelectionActivity.this, "Table was Shifted.", 1).show();
                    TableSelectionActivity.this.finish();
                    return;
                }
                Util.showErrorMessageWithTitle("Error shifting Item: " + message, "Error Shifting item", TableSelectionActivity.this);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showErrorMessage("Table shift: " + Util.Api.getErrorMessage(error), TableSelectionActivity.this);
                } catch (Exception e2) {
                    Log.e("tbShiftexc", e2.getMessage().toString());
                }
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
        tabelLists.clear();
        tabelLists.add("Select");
        for (int j2 = 0; j2 < this.filteredTableList.size(); j2++) {
            tabelLists.add(this.filteredTableList.get(j2).getNumber());
        }
        ArrayAdapter tableNoAdapter = new ArrayAdapter(getApplicationContext(), R.layout.layout_spinnerorangebackground, tabelLists);
        this.shiftedTable.setAdapter((SpinnerAdapter) tableNoAdapter);
        this.shiftedTable.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                if (!TableSelectionActivity.this.shiftedTable.getSelectedItem().toString().equalsIgnoreCase("Select")) {
                    TableSelectionActivity.this.tableNo = TableSelectionActivity.this.shiftedTable.getSelectedItem().toString();
                    TableSelectionActivity.this.tableDbs = TableSelectionActivity.this.restaurantDatabase.loadAllTables(TableSelectionActivity.this.getApplicationContext());
                    for (int i2 = 0; i2 < TableSelectionActivity.this.tableDbs.size(); i2++) {
                        if (TableSelectionActivity.this.tableDbs.get(i2).getNumber().equalsIgnoreCase(TableSelectionActivity.this.tableNo)) {
                            TableSelectionActivity.this.tableIdnumber = Integer.parseInt(TableSelectionActivity.this.tableDbs.get(i2).getId().toString());
                            Log.e("tableIdnumber: ", String.valueOf(TableSelectionActivity.this.tableIdnumber));
                            TableSelectionActivity.this.guestNo = TableSelectionActivity.this.tableDbs.get(i2).getGuestNo().intValue();
                            Log.e("tosplitNO", String.valueOf(TableSelectionActivity.this.guestNo));
                        }
                    }
                }
                TableSelectionActivity.this.ToSplitNo = new ArrayList();
                TableSelectionActivity.this.ToSplitNo.clear();
                TableSelectionActivity.this.ToSplitNo.add(0, "new");
                for (int j3 = 0; j3 < TableSelectionActivity.this.guestNo; j3++) {
                    TableSelectionActivity.this.ToSplitNo.add(String.valueOf(j3 + 1));
                }
                Log.e("tosplitlength: ", String.valueOf(TableSelectionActivity.this.ToSplitNo.size()));
                ArrayAdapter arrayAdapter = new ArrayAdapter(TableSelectionActivity.this.getApplicationContext(), R.layout.layout_spinnerorangebackground, TableSelectionActivity.this.ToSplitNo);
                TableSelectionActivity.this.spShiftedSeatNo.setAdapter((SpinnerAdapter) arrayAdapter);
                TableSelectionActivity.this.spShiftedSeatNo.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.6.1
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onItemSelected(AdapterView<?> adapterView, View view2, int i3, long l) {
                        if (TableSelectionActivity.this.spShiftedSeatNo.getSelectedItem().toString().equalsIgnoreCase("new")) {
                            TableSelectionActivity.this.tosplitNo = String.valueOf(0);
                        } else {
                            TableSelectionActivity.this.tosplitNo = TableSelectionActivity.this.spShiftedSeatNo.getSelectedItem().toString();
                        }
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onNothingSelected(AdapterView<?> adapterView) {
                    }
                });
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
        billNo.clear();
        billNo.add(0, "All");
        for (int i = 0; i < selectedBillNo; i++) {
            billNo.add(String.valueOf(i + 1));
        }
        ArrayAdapter myAdapter = new ArrayAdapter(getApplicationContext(), R.layout.spinner_ressource_search, billNo);
        this.spShiftSeat.setAdapter((SpinnerAdapter) myAdapter);
    }

    public void getDataBasedOnSelectedValue(int SelectedBill) {
        if (this.selectedBill == 0) {
            this.temporaryList = new ArrayList();
            for (int i = 0; i < this.orderDetailsLists.size(); i++) {
                this.temporaryList.add(this.orderDetailsLists.get(i));
            }
        } else {
            this.temporaryList = new ArrayList();
            for (int i2 = 0; i2 < this.orderDetailsLists.size(); i2++) {
                if (this.orderDetailsLists.get(i2).getSeatNo().intValue() == SelectedBill) {
                    this.temporaryList.add(this.orderDetailsLists.get(i2));
                }
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
        this.getEditService.getEdit(this.gsonObject, new Callback<EditOrderRequest>() { // from class: com.danfe.restaurantapp1.TableSelectionActivity.7
            @Override // retrofit.Callback
            public void success(EditOrderRequest editOrderRequest, Response response) {
                if (editOrderRequest != null) {
                    TableSelectionActivity.this.orderDetailsLists = editOrderRequest.getOrderDetailsList();
                    TableSelectionActivity.this.BillEntered = editOrderRequest.getGuestNo().intValue();
                    TableSelectionActivity.this.TableId = editOrderRequest.getTableId();
                    TableSelectionActivity.this.FilterBillOrderItemLists(TableSelectionActivity.this.BillEntered);
                    for (int i = 0; i < TableSelectionActivity.this.orderDetailsLists.size(); i++) {
                        TableSelectionActivity.this.orderItemDetailLists.add(new OrderDetailDb(Long.valueOf(TableSelectionActivity.this.orderDetailsLists.get(i).getOrderDetailsID().intValue()), editOrderRequest.getOrderMasterID(), TableSelectionActivity.this.orderDetailsLists.get(i).getROI_ItemId(), TableSelectionActivity.this.orderDetailsLists.get(i).getROI_ItemName(), TableSelectionActivity.this.orderDetailsLists.get(i).getQuantity(), Double.valueOf(TableSelectionActivity.this.orderDetailsLists.get(i).getRate().doubleValue()), TableSelectionActivity.this.orderDetailsLists.get(i).getIsCancelled(), TableSelectionActivity.this.orderDetailsLists.get(i).getSeatNo(), TableSelectionActivity.this.orderDetailsLists.get(i).getNote(), Float.valueOf(Float.parseFloat(String.valueOf(TableSelectionActivity.this.orderDetailsLists.get(i).getExtraCharge()))), TableSelectionActivity.this.orderDetailsLists.get(i).getStatus(), 0, TableSelectionActivity.this.orderDetailsLists.get(i).getCombo(), TableSelectionActivity.this.orderDetailsLists.get(i).getCostCenterId()));
                    }
                } else {
                    TableSelectionActivity.this.noDataAvailable.setVisibility(0);
                    TableSelectionActivity.this.layoutData.setVisibility(8);
                }
                if (TableSelectionActivity.this.BillEntered > 0) {
                    TableSelectionActivity.this.FilterBillOrderItemLists(TableSelectionActivity.this.BillEntered);
                } else if (TableSelectionActivity.this.BillEntered == 0) {
                    TableSelectionActivity.this.BillEntered = 1;
                    TableSelectionActivity.this.FilterBillOrderItemLists(TableSelectionActivity.this.BillEntered);
                }
                if (TableSelectionActivity.this.orderItemDetailLists.size() > 0) {
                    for (int i2 = 0; i2 < TableSelectionActivity.this.orderItemDetailLists.size(); i2++) {
                        TableSelectionActivity.this.orderItemsLists.add(TableSelectionActivity.this.orderItemDetailLists.get(i2));
                        TableSelectionActivity.this.seatNo = TableSelectionActivity.this.orderItemDetailLists.get(i2).getSeatNo().intValue();
                        TableSelectionActivity.this.fromOrderMasterId = TableSelectionActivity.this.orderDetailsLists.get(i2).getOrderMasterId().intValue();
                    }
                } else {
                    TableSelectionActivity.this.noDataAvailable.setVisibility(0);
                    TableSelectionActivity.this.rvMenuShift1.setVisibility(8);
                }
                Log.e("seatNo: ", String.valueOf(TableSelectionActivity.this.seatNo));
                TableSelectionActivity.this.orderItemDetailLists.removeAll(TableSelectionActivity.this.orderItemDetailLists);
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
    public void onItemClicked(int position, EditOrderRequest.OrderDetailsList orderDetailsLists) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.bt_shift_cancel /* 2131689626 */:
                onBackPressed();
                break;
            case R.id.bt_ShiftTable /* 2131689761 */:
                if (this.tableIdnumber == 0) {
                    Toast.makeText(this, "Please Select the Table", 0).show();
                } else {
                    this.orderType = Constants.SHIFT_TABLE;
                    new CheckOrderStatus(this, Constants.SHIFT_TABLE, this.fromOrderMasterId, this.tableId, this.selectedBill);
                }
                break;
        }
    }
}
