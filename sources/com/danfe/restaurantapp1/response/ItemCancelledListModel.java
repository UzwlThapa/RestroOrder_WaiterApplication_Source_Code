package com.danfe.restaurantapp1.response;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ItemCancelledListModel {
    private Integer SeatNo;
    private String cancelledBy;
    private String item;
    private String orderBy;
    private Integer orderMasterID;
    private Double quantity;
    private String reason;
    private String responsible;
    private Integer tableId;

    public ItemCancelledListModel(String item, Double quantity, String orderBy, String cancelledBy, String reason, String responsible, Integer tableId, Integer SeatNo, Integer orderMasterID) {
        this.item = item;
        this.quantity = quantity;
        this.orderBy = orderBy;
        this.cancelledBy = cancelledBy;
        this.reason = reason;
        this.responsible = responsible;
        this.tableId = tableId;
        this.SeatNo = SeatNo;
        this.orderMasterID = orderMasterID;
    }

    public Integer getOrderMasterID() {
        return this.orderMasterID;
    }

    public void setOrderMasterID(Integer orderMasterID) {
        this.orderMasterID = orderMasterID;
    }

    public String getItem() {
        return this.item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public Double getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public String getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getCancelledBy() {
        return this.cancelledBy;
    }

    public void setCancelledBy(String cancelledBy) {
        this.cancelledBy = cancelledBy;
    }

    public String getReason() {
        return this.reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getResponsible() {
        return this.responsible;
    }

    public void setResponsible(String responsible) {
        this.responsible = responsible;
    }

    public Integer getTableId() {
        return this.tableId;
    }

    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    public Integer getSeatNo() {
        return this.SeatNo;
    }

    public void setSeatNo(Integer SeatNo) {
        this.SeatNo = SeatNo;
    }

    public JSONObject toJSON() {
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("Item", getItem());
            jsonObject.put("Quantity", getQuantity());
            jsonObject.put("OrderBy", getOrderBy());
            jsonObject.put("CanceledBy", getCancelledBy());
            jsonObject.put("Reason", getReason());
            jsonObject.put("Responsible", getResponsible());
            jsonObject.put("tableId", getTableId());
            jsonObject.put("SeatNo", getSeatNo());
            jsonObject.put("orderMasterID", getOrderMasterID());
            return jsonObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
