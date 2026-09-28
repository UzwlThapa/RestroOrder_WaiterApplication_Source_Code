package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.CheckOrderDetails;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.response.KitchenOrderApiData;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.squareup.picasso.Picasso;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class OrderDetailListAdapter extends ArrayAdapter {
    private String BaseURL;
    private Context _context;
    private List<KitchenOrderApiData.TableList> _orderResponseList;
    private Animation anim;
    private CheckOrderDetails checkOrderDetails;
    private JsonObject gsonObject;
    private JsonParser jsonParser;
    private View myConvertView;
    private JSONObject obj;
    private KitchenOrderApiData.TableList ordersLists;
    private RestAdapter restAdapter;
    private RestaurantWebService.SendOrderStatus sendOrderStatus;
    private String status;
    private ViewHolder vh;

    public OrderDetailListAdapter(Context context, String status, List<KitchenOrderApiData.TableList> orderResponses, CheckOrderDetails checkOrderDetails) {
        super(context, R.layout.layout_orderdetaillists);
        this.BaseURL = "";
        this.status = "";
        this._orderResponseList = orderResponses;
        this._context = context;
        this.status = status;
        this.anim = new AlphaAnimation(0.0f, 1.0f);
        this.anim.setDuration(500L);
        this.anim.setStartOffset(20L);
        this.anim.setRepeatMode(2);
        this.anim.setRepeatCount(-1);
        this.checkOrderDetails = checkOrderDetails;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this._orderResponseList.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @Nullable
    public Object getItem(int position) {
        return super.getItem(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    public View getView(final int position, View convertView, ViewGroup parent) {
        final ViewHolder vh;
        this.myConvertView = convertView;
        if (this.myConvertView == null) {
            this.myConvertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_orderdetaillists, parent, false);
            vh = new ViewHolder();
            vh.ivItemImage = (ImageView) this.myConvertView.findViewById(R.id.iv_itemImage_layout_orderdetails);
            vh.tvItemName = (TextView) this.myConvertView.findViewById(R.id.tv_itemname_layout_orderdetails);
            vh.tvQty = (TextView) this.myConvertView.findViewById(R.id.tv_qty_layout_orderdetails);
            vh.tvTime = (TextView) this.myConvertView.findViewById(R.id.tv_time_layout_orderdetails);
            vh.tvNotes = (TextView) this.myConvertView.findViewById(R.id.tv_notes_layout_orderdetails);
            vh.tvTableNo = (TextView) this.myConvertView.findViewById(R.id.tv_tableno_layout_orderdetails);
            vh.tvRoomNo = (TextView) this.myConvertView.findViewById(R.id.tv_roomno_layout_orderdetails);
            vh.tvRunningOrder = (TextView) this.myConvertView.findViewById(R.id.tv_runningorder_layout_orderdetails);
            vh.layoutInProgress = (LinearLayout) this.myConvertView.findViewById(R.id.btnlayout_inprogress_layout_orderdetails);
            vh.layoutComplete = (LinearLayout) this.myConvertView.findViewById(R.id.btnlayout_complete_layout_orderdetails);
            vh.myStatusList = (LinearLayout) this.myConvertView.findViewById(R.id.myStatusList);
            vh.tvNootes = (TextView) this.myConvertView.findViewById(R.id.tvNootes);
            vh.tvnootes = (TextView) this.myConvertView.findViewById(R.id.tvNOOtes);
            vh.tvSeatNo = (TextView) this.myConvertView.findViewById(R.id.tv_seatno_layout_orderdetails);
            this.myConvertView.setTag(vh);
        } else {
            vh = (ViewHolder) this.myConvertView.getTag();
        }
        this.ordersLists = this._orderResponseList.get(position);
        this.BaseURL = Util.getBaseUrl(this._context);
        String imagePath = this.BaseURL + "/ROI_Item/ImageItem/" + this.ordersLists.getImagePath();
        Picasso.with(this.myConvertView.getContext()).load(imagePath.replaceAll(" ", "%20")).placeholder(R.drawable.ic_restro_logo_new).error(R.drawable.ic_restro_logo_new).centerCrop().resize(150, 150).into(vh.ivItemImage);
        if (this.ordersLists.getIsRunningOrder().intValue() == 1) {
            vh.tvRunningOrder.setVisibility(0);
            vh.tvRunningOrder.startAnimation(this.anim);
        } else {
            vh.tvRunningOrder.clearAnimation();
            vh.tvRunningOrder.setVisibility(8);
        }
        if (this.status.equalsIgnoreCase("Ordered")) {
            vh.layoutInProgress.setVisibility(0);
            vh.layoutComplete.setVisibility(0);
            vh.myStatusList.setVisibility(0);
            vh.tvNootes.setVisibility(8);
            vh.tvnootes.setVisibility(8);
        } else if (this.status.equalsIgnoreCase("InProgress")) {
            vh.layoutComplete.setVisibility(0);
            vh.layoutInProgress.setVisibility(8);
            vh.myStatusList.setVisibility(0);
            vh.tvNootes.setVisibility(8);
            vh.tvnootes.setVisibility(8);
            vh.layoutInProgress.setVisibility(8);
        } else {
            vh.layoutInProgress.setVisibility(8);
            vh.layoutComplete.setVisibility(8);
            vh.tvnootes.setVisibility(4);
            vh.tvNootes.setVisibility(4);
            vh.myStatusList.setVisibility(8);
        }
        vh.tvItemName.setText(this.ordersLists.getITName());
        vh.tvQty.setText(this.ordersLists.getQuantity().toString());
        vh.tvTime.setText(this.ordersLists.getBilltime().toString());
        vh.tvNotes.setText(this.ordersLists.getNote());
        vh.tvTableNo.setText("Table:" + this.ordersLists.getRestrotableTitle());
        vh.tvRoomNo.setText("Room:" + this.ordersLists.getRestroRoom());
        vh.tvSeatNo.setText("Bill No:" + this.ordersLists.getSeatNo());
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        vh.layoutInProgress.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                vh.layoutInProgress.setEnabled(false);
                OrderDetailListAdapter.this.ordersLists = (KitchenOrderApiData.TableList) OrderDetailListAdapter.this._orderResponseList.get(position);
                OrderDetailListAdapter.this.obj = new JSONObject();
                try {
                    OrderDetailListAdapter.this.obj.put("OrderDetailsID", OrderDetailListAdapter.this.ordersLists.getOrderDetailsID());
                    OrderDetailListAdapter.this.obj.put("ItemStatus", 2);
                    OrderDetailListAdapter.this.jsonParser = new JsonParser();
                    OrderDetailListAdapter.this.gsonObject = (JsonObject) OrderDetailListAdapter.this.jsonParser.parse(OrderDetailListAdapter.this.obj.toString());
                    Log.e("jsonSent", OrderDetailListAdapter.this.gsonObject.toString() + OrderDetailListAdapter.this.ordersLists.getITName());
                } catch (JSONException je) {
                    Log.e("jsonexceptionInpr", je.getMessage().toString());
                }
                OrderDetailListAdapter.this.sendOrderStatus = (RestaurantWebService.SendOrderStatus) OrderDetailListAdapter.this.restAdapter.create(RestaurantWebService.SendOrderStatus.class);
                OrderDetailListAdapter.this.sendOrderStatus.sendOrderStatus(OrderDetailListAdapter.this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.1.1
                    @Override // retrofit.Callback
                    public void success(JsonObject jsonObject, Response response) {
                        String message = jsonObject.getAsJsonPrimitive("message").getAsString();
                        if (jsonObject.get("statusCode").getAsInt() == 200) {
                            try {
                                OrderDetailListAdapter.this.checkOrderDetails.loadOrderDetailsList();
                                vh.layoutInProgress.setEnabled(true);
                                return;
                            } catch (Exception e) {
                                Toast.makeText(OrderDetailListAdapter.this._context, "Error.Please try again later " + e.toString(), 0).show();
                                return;
                            }
                        }
                        Util.showErrorMessageWithTitle("OrderDetails InProgress Error", "InProgress Order Failed" + message, OrderDetailListAdapter.this.getContext());
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        Util.showRetrofitErrorMessage(error.toString(), OrderDetailListAdapter.this.getContext());
                    }
                });
            }
        });
        vh.layoutComplete.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                vh.layoutComplete.setEnabled(false);
                OrderDetailListAdapter.this.ordersLists = (KitchenOrderApiData.TableList) OrderDetailListAdapter.this._orderResponseList.get(position);
                OrderDetailListAdapter.this.obj = new JSONObject();
                try {
                    OrderDetailListAdapter.this.obj.put("OrderDetailsID", OrderDetailListAdapter.this.ordersLists.getOrderDetailsID());
                    OrderDetailListAdapter.this.obj.put("ItemStatus", 3);
                    OrderDetailListAdapter.this.jsonParser = new JsonParser();
                    OrderDetailListAdapter.this.gsonObject = (JsonObject) OrderDetailListAdapter.this.jsonParser.parse(OrderDetailListAdapter.this.obj.toString());
                    Log.e("OrderComplete Sent", OrderDetailListAdapter.this.gsonObject.toString() + OrderDetailListAdapter.this.ordersLists.getITName());
                } catch (JSONException je) {
                    Log.e("Order Complete exc ", je.getMessage().toString());
                }
                OrderDetailListAdapter.this.sendOrderStatus = (RestaurantWebService.SendOrderStatus) OrderDetailListAdapter.this.restAdapter.create(RestaurantWebService.SendOrderStatus.class);
                OrderDetailListAdapter.this.sendOrderStatus.sendOrderStatus(OrderDetailListAdapter.this.gsonObject, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.2.1
                    @Override // retrofit.Callback
                    public void success(JsonObject jsonObject, Response response) {
                        String message = jsonObject.getAsJsonPrimitive("message").getAsString();
                        if (jsonObject.get("statusCode").getAsInt() == 200) {
                            try {
                                OrderDetailListAdapter.this.checkOrderDetails.loadOrderDetailsList();
                                vh.layoutComplete.setEnabled(true);
                                return;
                            } catch (Exception e) {
                                Toast.makeText(OrderDetailListAdapter.this._context, "Error.Please try again later " + e.toString(), 0).show();
                                return;
                            }
                        }
                        Util.showErrorMessageWithTitle("OrderDetails Complete Error", "Complete Order Failed" + message, OrderDetailListAdapter.this.getContext());
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        Util.showRetrofitErrorMessage(error.toString(), OrderDetailListAdapter.this.getContext());
                    }
                });
            }
        });
        return this.myConvertView;
    }

    public class ViewHolder {
        ImageView ivItemImage;
        LinearLayout layoutComplete;
        LinearLayout layoutInProgress;
        LinearLayout myStatusList;
        TextView tvItemName;
        TextView tvNootes;
        TextView tvNotes;
        TextView tvQty;
        TextView tvRoomNo;
        TextView tvRunningOrder;
        TextView tvSeatNo;
        TextView tvTableNo;
        TextView tvTime;
        TextView tvnootes;

        public ViewHolder() {
        }
    }
}
