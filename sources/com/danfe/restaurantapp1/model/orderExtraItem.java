package com.danfe.restaurantapp1.model;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class orderExtraItem {
    private String ExtraItem;
    private Integer ExtraItemID;
    private Double ExtraPrice;
    private Integer ItemID;
    private String ItemStatus;
    private Integer Quantity;
    private String SeatNo;

    public orderExtraItem(Integer itemID, Integer extraItemID, String extraItem, Double extraPrice, Integer quantity, String itemStatus, String seatNo) {
        this.ItemID = itemID;
        this.ExtraItemID = extraItemID;
        this.ExtraItem = extraItem;
        this.ExtraPrice = extraPrice;
        this.Quantity = quantity;
        this.ItemStatus = itemStatus;
        this.SeatNo = seatNo;
    }

    public String getSeatNo() {
        return this.SeatNo;
    }

    public void setSeatNo(String seatNo) {
        this.SeatNo = seatNo;
    }

    public String getItemStatus() {
        return this.ItemStatus;
    }

    public void setItemStatus(String itemStatus) {
        this.ItemStatus = itemStatus;
    }

    public Integer getItemID() {
        return this.ItemID;
    }

    public void setItemID(Integer itemID) {
        this.ItemID = itemID;
    }

    public Integer getExtraItemID() {
        return this.ExtraItemID;
    }

    public void setExtraItemID(Integer extraItemID) {
        this.ExtraItemID = extraItemID;
    }

    public String getExtraItem() {
        return this.ExtraItem;
    }

    public void setExtraItem(String extraItem) {
        this.ExtraItem = extraItem;
    }

    public Double getExtraPrice() {
        return this.ExtraPrice;
    }

    public void setExtraPrice(Double extraPrice) {
        this.ExtraPrice = extraPrice;
    }

    public Integer getQuantity() {
        return this.Quantity;
    }

    public void setQuantity(Integer quantity) {
        this.Quantity = quantity;
    }

    public JSONObject toExtraJson() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("ItemID", getItemID());
            jsonObject.put("ExtraItemID", getExtraItemID());
            jsonObject.put("ExtraItem", getExtraItem());
            jsonObject.put("ExtraPrice", getExtraPrice());
            jsonObject.put("Quantity", getQuantity());
            jsonObject.put("SeatNo", getSeatNo());
            return jsonObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
