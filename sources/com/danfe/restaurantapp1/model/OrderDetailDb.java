package com.danfe.restaurantapp1.model;

import android.util.Log;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class OrderDetailDb {
    private Integer CostCenterId;
    private Boolean IsCombo;
    private String Note;
    private Float extra;
    private Integer homePackQty;
    private Long id;
    private Boolean isCanceled;
    private Integer itemId;
    private List<orderExtraItem> orderExtraItemList;
    private Integer orderMasterId;
    private Double price;
    private Double quantity;
    private Integer seatNo;
    private String status;
    private String title;

    public List<orderExtraItem> getOrderExtraItemList() {
        return this.orderExtraItemList;
    }

    public void setOrderExtraItemList(List<orderExtraItem> orderExtraItemList) {
        this.orderExtraItemList = orderExtraItemList;
    }

    public OrderDetailDb() {
    }

    public OrderDetailDb(Long id) {
        this.id = id;
    }

    public OrderDetailDb(Long id, Integer orderMasterId, Integer itemId, String title, Double quantity, Double price, Boolean isCanceled, Integer seatNo, String Note, Float extra, String status, Integer homePackQty, Boolean IsCombo, Integer CostCenterId) {
        this.id = id;
        this.orderMasterId = orderMasterId;
        this.itemId = itemId;
        this.title = title;
        this.quantity = quantity;
        this.price = price;
        this.isCanceled = isCanceled;
        this.seatNo = seatNo;
        this.Note = Note;
        this.extra = extra;
        this.status = status;
        this.homePackQty = homePackQty;
        this.IsCombo = IsCombo;
        this.CostCenterId = CostCenterId;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getOrderMasterId() {
        return this.orderMasterId;
    }

    public void setOrderMasterId(Integer orderMasterId) {
        this.orderMasterId = orderMasterId;
    }

    public Integer getItemId() {
        return this.itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return this.price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Boolean getIsCanceled() {
        return this.isCanceled;
    }

    public void setIsCanceled(Boolean isCanceled) {
        this.isCanceled = isCanceled;
    }

    public Integer getSeatNo() {
        return this.seatNo;
    }

    public void setSeatNo(Integer seatNo) {
        this.seatNo = seatNo;
    }

    public String getNote() {
        return this.Note;
    }

    public void setNote(String note) {
        this.Note = note;
    }

    public Float getExtra() {
        return this.extra;
    }

    public void setExtra(Float extra) {
        this.extra = extra;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getHomePackQty() {
        return this.homePackQty;
    }

    public void setHomePackQty(Integer homePackQty) {
        this.homePackQty = homePackQty;
    }

    public Boolean getIsCombo() {
        return this.IsCombo;
    }

    public void setIsCombo(Boolean IsCombo) {
        this.IsCombo = IsCombo;
    }

    public Integer getCostCenterId() {
        return this.CostCenterId;
    }

    public void setCostCenterId(Integer CostCenterId) {
        this.CostCenterId = CostCenterId;
    }

    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        try {
            String finalNotes = "";
            Log.e("ItemId", getTitle() + getQuantity());
            jsonObject.put("title", getTitle());
            jsonObject.put("Quantity", getQuantity());
            jsonObject.put("ItemId", getItemId());
            jsonObject.put("OrderDetailsID", getId());
            jsonObject.put("isCancelled", getIsCanceled());
            jsonObject.put("ItemId", getItemId());
            if (!getNote().toString().equals("")) {
                finalNotes = getNote().toString().replaceAll("(?<=[,.!?;:])(?!$)", "$0 ");
            }
            jsonObject.put("Note", finalNotes);
            jsonObject.put("ExtraCharge", getExtra());
            jsonObject.put("HomePackQty", getHomePackQty());
            jsonObject.put("Status", getStatus());
            jsonObject.put("IsCombo", getIsCombo());
            jsonObject.put("SeatNo", getSeatNo());
            return jsonObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public JSONObject toJsonForShift() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("ItemId", getItemId());
            jsonObject.put("Quantity", getQuantity());
            jsonObject.put("IsCombo", getIsCombo());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsonObject;
    }
}
