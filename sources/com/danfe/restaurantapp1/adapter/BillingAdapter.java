package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.UpdateTotalPrice;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.response.CostCenterModelResponse;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BillingAdapter extends ArrayAdapter {
    private Double actualamount;
    private Double actualdis;
    private Double amount;
    private int amountDisc;
    private int amountDiscNew;
    private ArrayList<Double> amountList;
    private List<Double> amountarray;
    private List<CostCenterModelResponse.BillingTerm> billingTermList;
    private Context context;
    private int costcenter;
    private HashMap<Integer, Double> costcenterhashmap;
    private String costcentername;
    private Double discountamount;
    private List<Double> discountarray;
    private HashMap<Integer, Double> finalhashmap;
    private HashMap<Integer, Double> hashMap;
    private List<Double> itemPriceList;
    private List<Integer> keyList;
    private int quantity;
    private RestaurantDatabase restaurantDatabase;
    public Double sendDiscount;
    public Double sendamount;
    private HashMap<Integer, Double> tempHashMap;
    private Double totalamount;
    private UpdateTotalPrice updateTotalPrice;
    private List<Double> valueList;
    private ViewHolder vh;

    public BillingAdapter(Context context, HashMap<Integer, Double> costcenterhashmap, UpdateTotalPrice updateTotalPrice) {
        super(context, R.layout.view_billing);
        this.amount = Double.valueOf(0.0d);
        this.discountamount = Double.valueOf(0.0d);
        this.totalamount = Double.valueOf(0.0d);
        this.sendDiscount = Double.valueOf(0.0d);
        this.sendamount = Double.valueOf(0.0d);
        this.context = context;
        this.costcenterhashmap = costcenterhashmap;
        this.tempHashMap = costcenterhashmap;
        this.restaurantDatabase = new RestaurantDatabase();
        this.keyList = new ArrayList(costcenterhashmap.keySet());
        this.valueList = new ArrayList(costcenterhashmap.values());
        this.amountList = new ArrayList<>();
        this.amountarray = new ArrayList();
        this.discountarray = new ArrayList();
        this.updateTotalPrice = updateTotalPrice;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.costcenterhashmap.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public Object getItem(int position) {
        return Integer.valueOf(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return this.keyList.get(position).intValue();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        this.vh = new ViewHolder();
        if (convertView == null) {
            convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.view_billing, parent, false);
            this.vh.tv_costcenter_name = (TextView) convertView.findViewById(R.id.tv_costcenter_name);
            this.vh.tv_costcenter_amount = (TextView) convertView.findViewById(R.id.tv_costcenter_amount);
            this.vh.tv_costcenter_discount = (TextView) convertView.findViewById(R.id.tv_costcenter_percent);
            this.vh.tv_totalamount = (TextView) convertView.findViewById(R.id.tv_totalmount);
            this.vh.tv_percent = (TextView) convertView.findViewById(R.id.percent);
            this.vh.tv_equals = (TextView) convertView.findViewById(R.id.equals);
            convertView.setTag(this.vh);
        } else {
            this.vh = (ViewHolder) convertView.getTag();
        }
        try {
            if (getCount() > 0) {
                int id = this.keyList.get(position).intValue();
                String costcentername = this.restaurantDatabase.getCostcenterNamebyId(this.context, id);
                this.vh.tv_costcenter_name.setText(costcentername);
                this.vh.tv_costcenter_amount.setText(new DecimalFormat("#.00").format(this.valueList.get(position)));
                this.amountDisc = this.restaurantDatabase.getDiscountbyCostcenter(this.context, id);
                if (this.amountDisc > 0) {
                    this.amount = this.valueList.get(position);
                    this.discountamount = Double.valueOf((this.valueList.get(position).doubleValue() * ((double) this.amountDisc)) / 100.0d);
                    this.totalamount = Double.valueOf(this.amount.doubleValue() - this.discountamount.doubleValue());
                    this.vh.tv_costcenter_discount.setText(String.valueOf(this.amountDisc) + "%");
                    this.vh.tv_totalamount.setText(String.format("%.2f", this.totalamount));
                } else if (position > 0) {
                    int idnew = this.keyList.get(0).intValue();
                    this.amountDiscNew = this.restaurantDatabase.getDiscountbyCostcenter(this.context, idnew);
                    if (this.amountDiscNew > 0) {
                        this.discountamount = Double.valueOf(0.0d);
                        this.totalamount = this.valueList.get(position);
                        this.vh.tv_costcenter_discount.setText("0%");
                        this.vh.tv_totalamount.setText(String.format("%.2f", this.totalamount));
                    } else {
                        setNoDiscountView(position);
                    }
                } else {
                    setNoDiscountView(position);
                }
                notifyDataSetChanged();
            } else {
                this.costcenterhashmap.clear();
                this.tempHashMap.clear();
                this.amountarray.clear();
                this.discountarray.clear();
            }
        } catch (Exception e) {
            Log.e("exceptionhere", e.getMessage().toString());
        }
        return convertView;
    }

    public void setNoDiscountView(int position) {
        this.discountamount = Double.valueOf(0.0d);
        this.totalamount = this.valueList.get(position);
        this.vh.tv_costcenter_discount.setText("0%");
        this.vh.tv_costcenter_discount.setVisibility(8);
        this.vh.tv_percent.setVisibility(8);
        this.vh.tv_equals.setVisibility(8);
        this.vh.tv_totalamount.setText(String.format("%.2f", this.totalamount));
        this.vh.tv_totalamount.setVisibility(8);
    }

    public void updateTotalAmount() {
        if (this.costcenterhashmap.size() > 0) {
            for (int position = 0; position < this.costcenterhashmap.size(); position++) {
                int id = this.keyList.get(position).intValue();
                this.amountDisc = this.restaurantDatabase.getDiscountbyCostcenter(this.context, id);
                if (this.amountDisc > 0) {
                    this.amount = this.valueList.get(position);
                    this.discountamount = Double.valueOf((((double) this.amountDisc) * this.valueList.get(position).doubleValue()) / 100.0d);
                    this.totalamount = Double.valueOf(this.amount.doubleValue() - this.discountamount.doubleValue());
                    this.discountarray.add(this.discountamount);
                    this.amountarray.add(this.totalamount);
                } else {
                    this.discountamount = Double.valueOf(0.0d);
                    this.totalamount = this.valueList.get(position);
                    this.discountarray.add(this.discountamount);
                    this.amountarray.add(this.totalamount);
                }
            }
            if (this.discountarray.size() > 0) {
                double dis = 0.0d;
                for (Double d : this.discountarray) {
                    dis += d.doubleValue();
                }
                this.actualdis = Double.valueOf(dis);
            } else {
                this.actualdis = Double.valueOf(0.0d);
            }
            if (this.amountarray.size() > 0) {
                double sum = 0.0d;
                for (Double d2 : this.amountarray) {
                    sum += d2.doubleValue();
                }
                this.actualamount = Double.valueOf(sum);
            } else {
                this.actualamount = Double.valueOf(0.0d);
            }
            this.updateTotalPrice.onPriceUpdate(this.actualdis.doubleValue(), this.actualamount.doubleValue());
            return;
        }
        this.actualdis = Double.valueOf(0.0d);
        this.actualamount = Double.valueOf(0.0d);
        this.updateTotalPrice.onPriceUpdate(this.actualdis.doubleValue(), this.actualamount.doubleValue());
    }

    public class ViewHolder {
        TextView tv_costcenter_amount;
        TextView tv_costcenter_discount;
        TextView tv_costcenter_name;
        TextView tv_equals;
        TextView tv_percent;
        TextView tv_totalamount;

        public ViewHolder() {
        }
    }
}
