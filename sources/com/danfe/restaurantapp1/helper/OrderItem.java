package com.danfe.restaurantapp1.helper;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class OrderItem {
    private float extra;
    private Boolean isCancelled;
    private int itemid;
    private String note;
    private int orderDetailsId;
    private long price;
    private long qty;
    private int seatId;
    private int seatNo;
    private String title;

    public OrderItem() {
    }

    public OrderItem(String title, long qty, long price) {
        this.title = title;
        this.qty = qty;
        this.price = price;
        this.isCancelled = false;
        this.extra = 0.0f;
        this.note = "";
        this.seatId = 0;
        this.seatNo = 0;
    }

    public OrderItem(String title, long qty, int itemid) {
        this.title = title;
        this.qty = qty;
        this.itemid = itemid;
        this.isCancelled = false;
        this.extra = 0.0f;
        this.note = "";
        this.seatId = 0;
        this.seatNo = 0;
    }

    public OrderItem(String title, long qty, int itemid, int orderDetailsId) {
        this.title = title;
        this.qty = qty;
        this.itemid = itemid;
        this.orderDetailsId = orderDetailsId;
        this.extra = 0.0f;
        this.note = "";
        this.isCancelled = false;
        this.seatId = 0;
        this.seatNo = 0;
    }

    public OrderItem(String title, long qty, int itemid, int orderDetailsId, int seatNo, String note, float extra) {
        this.title = title;
        this.qty = qty;
        this.itemid = itemid;
        this.orderDetailsId = orderDetailsId;
        this.seatNo = seatNo;
        this.note = note;
        this.extra = extra;
        this.isCancelled = false;
    }

    public OrderItem(String title) {
        this.title = title;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getQty() {
        return this.qty;
    }

    public void setQty(long qty) {
        this.qty = qty;
    }

    public long getPrice() {
        return this.price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getItemid() {
        return this.itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public int getOrderDetailsId() {
        return this.orderDetailsId;
    }

    public void setOrderDetailsId(int orderDetailsId) {
        this.orderDetailsId = orderDetailsId;
    }

    public Boolean getIsCancelled() {
        return this.isCancelled;
    }

    public void setIsCancelled(Boolean isCancelled) {
        this.isCancelled = isCancelled;
    }

    public int getSeatNo() {
        return this.seatNo;
    }

    public void setSeatNo(int seatNo) {
        this.seatNo = seatNo;
    }

    public int getSeatId() {
        return this.seatId;
    }

    public void setSeatId(int seatId) {
        this.seatId = seatId;
    }

    public float getExtra() {
        return this.extra;
    }

    public void setExtra(float extra) {
        this.extra = extra;
    }

    public String getNotes() {
        return this.note;
    }

    public void setNotes(String note) {
        this.note = note;
    }

    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        try {
            Log.e("ItemId", getTitle() + getQty());
            jsonObject.put("title", getTitle());
            jsonObject.put("Quantity", getQty());
            jsonObject.put("ItemId", getItemid());
            jsonObject.put("OrderDetailsID", getOrderDetailsId());
            jsonObject.put("isCancelled", getIsCancelled());
            jsonObject.put("SeatNo", getSeatNo());
            jsonObject.put("Note", getNotes());
            jsonObject.put("ExtraCharge", getExtra());
            return jsonObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
