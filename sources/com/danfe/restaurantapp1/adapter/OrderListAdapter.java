package com.danfe.restaurantapp1.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.NumberPicker;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.ExtraClickedInterface;
import com.danfe.restaurantapp1.Interface.ExtraItemsInterface;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.gcm.Utility;
import com.danfe.restaurantapp1.helper.SendItem;
import com.danfe.restaurantapp1.model.ExtraItemDb;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class OrderListAdapter extends ArrayAdapter<OrderDetailDb> implements SendItem.SendGuestNo {
    private static int guestNo;
    private String ExtraItems;
    private String Notes;
    String SelectedStringBill;
    private AlertDialog.Builder builder;
    private Context context;
    private View dialoglayout;
    private EditText etExtraNotes;
    private EditText etPrice;
    private EditText etnotes;
    private float extraCharge;
    private ExtraClickedInterface extraClickedInterface;
    private List<ExtraItemDb> extraItemDblistFromAdapter;
    private List<ExtraItemDb> extraItemDbs;
    private ExtraItemsInterface extraItemsInterface;
    private String extraNotes;
    private int homeSelected;
    private LayoutInflater inflater;
    private LinearLayout layoutExtraCharge;
    private LinearLayout layoutlv;
    private ListView lvExtra;
    private String notes;
    private OrderDetailDb orderDetailDb;
    private Float price;
    private SendItem.RemoveOrderItem removeOrderItem;
    private ArrayList<OrderDetailDb> resItems;
    private RestaurantDatabase restaurantDatabase;
    private String selectedItems;
    private Float selectedPrice;
    private SendItem.SendItemList sendItemList;
    private SendItem.SendItemSingle sendItemSingle;
    private Spinner spHome;
    private Spinner spSpicy;
    private String status;
    private StringBuilder stringBuilder;
    private static boolean SEATVISIBLE = false;
    private static int selectedBill = 1;

    public OrderListAdapter(Context context, ArrayList<OrderDetailDb> siteItems, SendItem.SendItemList sendItemList, SendItem.SendItemSingle sendItemSingle, SendItem.RemoveOrderItem removeOrderItem, ExtraItemsInterface extraItemsInterface, ExtraClickedInterface extraClickedInterface) {
        super(context, R.layout.view_order_item, siteItems);
        this.status = "";
        this.context = context;
        this.resItems = siteItems;
        this.sendItemList = sendItemList;
        this.sendItemSingle = sendItemSingle;
        this.removeOrderItem = removeOrderItem;
        this.extraItemDbs = new ArrayList();
        this.restaurantDatabase = new RestaurantDatabase();
        this.extraItemDblistFromAdapter = new ArrayList();
        this.stringBuilder = new StringBuilder();
        this.extraItemsInterface = extraItemsInterface;
        this.extraClickedInterface = extraClickedInterface;
    }

    public OrderListAdapter(Context context, String status, ArrayList<OrderDetailDb> siteItems, SendItem.SendItemList sendItemList, SendItem.SendItemSingle sendItemSingle, SendItem.RemoveOrderItem removeOrderItem, ExtraItemsInterface extraItemsInterface, ExtraClickedInterface extraClickedInterface) {
        super(context, R.layout.view_order_item, siteItems);
        this.status = "";
        this.context = context;
        this.resItems = siteItems;
        this.sendItemList = sendItemList;
        this.sendItemSingle = sendItemSingle;
        this.removeOrderItem = removeOrderItem;
        this.extraItemDbs = new ArrayList();
        this.status = status;
        this.restaurantDatabase = new RestaurantDatabase();
        this.extraItemDblistFromAdapter = new ArrayList();
        this.stringBuilder = new StringBuilder();
        this.extraItemsInterface = extraItemsInterface;
        this.extraClickedInterface = extraClickedInterface;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.resItems.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public OrderDetailDb getItem(int location) {
        return this.resItems.get(location);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(final int position, View convertView, ViewGroup parent) {
        final ViewHolder vh;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.view_order_item, parent, false);
            vh = new ViewHolder();
            vh.item = (TextView) convertView.findViewById(R.id.text_title);
            vh.qty = (TextView) convertView.findViewById(R.id.text_qty);
            vh.Sno = (TextView) convertView.findViewById(R.id.tv_sno);
            vh.seat = (Spinner) convertView.findViewById(R.id.sp_seat);
            vh.layoutQty = (LinearLayout) convertView.findViewById(R.id.layout_quantity);
            vh.btExtra = (ImageButton) convertView.findViewById(R.id.bt_extra);
            vh.btDelAll = (ImageButton) convertView.findViewById(R.id.bt_delete);
            vh.btAdd = (ImageView) convertView.findViewById(R.id.bt_plus);
            vh.btMinus = (ImageView) convertView.findViewById(R.id.bt_minus);
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }
        this.orderDetailDb = getItem(position);
        vh.qty.setText(String.valueOf(new DecimalFormat("0.#").format(this.orderDetailDb.getQuantity())));
        vh.item.setText(this.orderDetailDb.getTitle());
        vh.Sno.setText(String.valueOf(position + 1));
        if (this.orderDetailDb.getStatus().equalsIgnoreCase("Ordered")) {
            vh.btMinus.setVisibility(0);
            vh.btAdd.setVisibility(0);
        } else {
            vh.btMinus.setVisibility(8);
            vh.btAdd.setVisibility(8);
        }
        ArrayList<Integer> intArray = new ArrayList<>();
        if (guestNo != 0) {
            for (int i = 0; i < guestNo; i++) {
                intArray.add(Integer.valueOf(i + 1));
            }
        } else {
            intArray.clear();
        }
        ArrayAdapter adapter = new ArrayAdapter(getContext(), android.R.layout.simple_spinner_item, intArray);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        vh.seat.setAdapter((SpinnerAdapter) adapter);
        int pos = adapter.getPosition(this.orderDetailDb.getSeatNo());
        vh.seat.setSelection(pos);
        if (SEATVISIBLE) {
            vh.item.setPadding((int) getContext().getResources().getDimension(R.dimen.view_order_item_title_padding_left_split), 0, (int) getContext().getResources().getDimension(R.dimen.view_order_item_title_padding_right_split), 0);
            vh.layoutQty.setPadding((int) getContext().getResources().getDimension(R.dimen.view_order_item_layout_quantity_paddingLeft_split), 0, (int) getContext().getResources().getDimension(R.dimen.view_order_item_layout_quantity_paddingRight_split), 0);
            vh.seat.setVisibility(0);
        } else {
            vh.item.setPadding((int) getContext().getResources().getDimension(R.dimen.view_order_item_title_padding_left), 0, (int) getContext().getResources().getDimension(R.dimen.view_order_item_title_padding_right), 0);
            vh.layoutQty.setPadding((int) getContext().getResources().getDimension(R.dimen.view_order_item_layout_quantity_paddingLeft), 0, (int) getContext().getResources().getDimension(R.dimen.view_order_item_layout_quantity_paddingRight), 0);
            vh.seat.setVisibility(8);
        }
        vh.btDelAll.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                OrderListAdapter.this.resItems.remove(position);
                OrderListAdapter.this.sendItemList.onOrderArrivalList(OrderListAdapter.this.resItems);
            }
        });
        vh.qty.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (OrderListAdapter.this.orderDetailDb.getStatus().equalsIgnoreCase("Ordered")) {
                    AlertDialog.Builder alertbox = new AlertDialog.Builder(OrderListAdapter.this.context);
                    alertbox.setTitle(Html.fromHtml("<font color='black'>Set Decimal Quantity</font>"));
                    alertbox.setIcon(R.drawable.ic_logo);
                    final EditText editText = new EditText(OrderListAdapter.this.context);
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
                    editText.setText(((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getQuantity().toString());
                    editText.setLayoutParams(lp);
                    editText.setLongClickable(false);
                    alertbox.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.2.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            try {
                                Utility.validateDoubleValue(OrderListAdapter.this.context, editText);
                                ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).setQuantity(Double.valueOf(Double.parseDouble(editText.getText().toString())));
                                OrderListAdapter.this.sendItemList.onOrderArrivalList(OrderListAdapter.this.resItems);
                                OrderListAdapter.this.notifyDataSetChanged();
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                            }
                        }
                    });
                    AlertDialog alertDialog = alertbox.create();
                    alertDialog.setView(editText);
                    alertDialog.show();
                    int width = (int) OrderListAdapter.this.context.getResources().getDimension(R.dimen.setting_double_quantity);
                    int height = (int) OrderListAdapter.this.context.getResources().getDimension(R.dimen.setting_double_quantity_height);
                    alertDialog.getWindow().setLayout(width, height);
                }
            }
        });
        vh.btExtra.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                OrderListAdapter.this.extraClickedInterface.onExtraClicked((OrderDetailDb) OrderListAdapter.this.resItems.get(position), OrderListAdapter.this.extraItemsInterface);
            }
        });
        vh.btAdd.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                int id = Integer.parseInt(String.valueOf(((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getItemId()));
                if (!OrderListAdapter.this.restaurantDatabase.getItemStockInfo(OrderListAdapter.this.context, id).booleanValue()) {
                    ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).setQuantity(Double.valueOf(Math.floor(((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getQuantity().doubleValue() + 1.0d)));
                    OrderListAdapter.this.sendItemList.onOrderArrivalList(OrderListAdapter.this.resItems);
                    OrderListAdapter.this.notifyDataSetChanged();
                } else {
                    Toast.makeText(OrderListAdapter.this.context, "Out of Stock", 0).show();
                    OrderListAdapter.this.notifyDataSetChanged();
                }
            }
        });
        vh.btMinus.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Double i2 = Double.valueOf(Math.floor(Double.parseDouble(vh.qty.getText().toString())));
                if (i2.doubleValue() > 1.0d) {
                    ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).setQuantity(Double.valueOf(i2.doubleValue() - 1.0d));
                    OrderListAdapter.this.sendItemList.onOrderArrivalList(OrderListAdapter.this.resItems);
                    OrderListAdapter.this.notifyDataSetChanged();
                } else {
                    Log.e("position", String.valueOf(position));
                    if (OrderListAdapter.this.resItems.size() == 1) {
                        OrderListAdapter.this.removeOrderItem.onRemoveOrderItem(((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getItemId().intValue(), ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getSeatNo().intValue());
                        OrderListAdapter.this.resItems.clear();
                    } else {
                        OrderListAdapter.this.removeOrderItem.onRemoveOrderItem(((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getItemId().intValue(), ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).getSeatNo().intValue());
                    }
                    OrderListAdapter.this.notifyDataSetChanged();
                }
            }
        });
        vh.seat.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.adapter.OrderListAdapter.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent2, View view, int pos2, long id) {
                int selectedSeat = Integer.parseInt(vh.seat.getSelectedItem().toString());
                if (selectedSeat != 0) {
                    ((OrderDetailDb) OrderListAdapter.this.resItems.get(position)).setSeatNo(Integer.valueOf(selectedSeat));
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent2) {
            }
        });
        return convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return super.getViewTypeCount();
    }

    @Override // com.danfe.restaurantapp1.helper.SendItem.SendGuestNo
    public void onGuestNoAdded(int number) {
        guestNo = number;
        notifyDataSetChanged();
    }

    public void sendselectedBill(int selectedBill2) {
        selectedBill = selectedBill2;
        notifyDataSetChanged();
    }

    public void setSeatVisible(boolean setVisible) {
        SEATVISIBLE = setVisible;
        notifyDataSetChanged();
    }

    public void filterDataList(ArrayList<OrderDetailDb> orderDetailDbs) {
        new ArrayList();
        for (int i = 0; i < orderDetailDbs.size(); i++) {
            if (!orderDetailDbs.get(i).getStatus().equalsIgnoreCase("Ordered") && !orderDetailDbs.get(i).getStatus().equalsIgnoreCase("InProgress") && orderDetailDbs.get(i).getStatus().equalsIgnoreCase("Complete")) {
            }
            notifyDataSetChanged();
        }
    }

    public void filterdata(String status) {
        ArrayList<OrderDetailDb> newData = this.resItems;
        ArrayList<OrderDetailDb> tempData = new ArrayList<>();
        for (int i = 0; i < newData.size(); i++) {
            if (newData.get(i).getStatus().equalsIgnoreCase("Ordered")) {
                tempData = newData;
            } else if (newData.get(i).getStatus().equalsIgnoreCase("InProgress")) {
                tempData = newData;
            } else if (newData.get(i).getStatus().equalsIgnoreCase("Complete")) {
                tempData = newData;
            }
        }
        this.resItems = tempData;
        notifyDataSetChanged();
    }

    class ViewHolder {
        TextView Sno;
        ImageView btAdd;
        ImageButton btDelAll;
        ImageButton btExtra;
        ImageView btMinus;
        EditText extra;
        TextView item;
        LinearLayout layoutQty;
        EditText notes;
        NumberPicker numberPicker;
        TextView price;
        TextView qty;
        Spinner seat;

        ViewHolder() {
        }
    }
}
