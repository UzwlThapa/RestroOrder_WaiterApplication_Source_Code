package com.danfe.restaurantapp1.model;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class TableDb {
    private Integer BillPaid;
    private Integer GuestNo;
    private Long id;
    private Integer isCancelled;
    private Boolean isChecked;
    private Boolean isTable;
    private Integer mergeId;
    private Integer mergeTableId;
    private String number;
    private Integer orderMasterId;
    private Double rate;
    private Integer roomId;
    private Integer tableCapacity;
    private String tableDate;
    private Integer tableStatus;
    private String tabletime;

    public TableDb() {
    }

    public TableDb(Long id) {
        this.id = id;
    }

    public TableDb(Long id, String number, Integer tableStatus, Integer tableCapacity, Integer mergeTableId, Integer mergeId, Integer roomId, Integer billPaid, String tableDate, String tabletime, Integer isCancelled, Boolean isChecked, Boolean isTable, Double rate, Integer orderMasterId, Integer guestNo) {
        this.id = id;
        this.number = number;
        this.tableStatus = tableStatus;
        this.tableCapacity = tableCapacity;
        this.mergeTableId = mergeTableId;
        this.mergeId = mergeId;
        this.roomId = roomId;
        this.BillPaid = billPaid;
        this.tableDate = tableDate;
        this.tabletime = tabletime;
        this.isCancelled = isCancelled;
        this.isChecked = isChecked;
        this.isTable = isTable;
        this.rate = rate;
        this.orderMasterId = orderMasterId;
        this.GuestNo = guestNo;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Integer getTableStatus() {
        return this.tableStatus;
    }

    public void setTableStatus(Integer tableStatus) {
        this.tableStatus = tableStatus;
    }

    public Integer getTableCapacity() {
        return this.tableCapacity;
    }

    public void setTableCapacity(Integer tableCapacity) {
        this.tableCapacity = tableCapacity;
    }

    public Integer getMergeTableId() {
        return this.mergeTableId;
    }

    public void setMergeTableId(Integer mergeTableId) {
        this.mergeTableId = mergeTableId;
    }

    public Integer getMergeId() {
        return this.mergeId;
    }

    public void setMergeId(Integer mergeId) {
        this.mergeId = mergeId;
    }

    public Integer getRoomId() {
        return this.roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public Integer getBillPaid() {
        return this.BillPaid;
    }

    public void setBillPaid(Integer billPaid) {
        this.BillPaid = billPaid;
    }

    public String getTableDate() {
        return this.tableDate;
    }

    public void setTableDate(String tableDate) {
        this.tableDate = tableDate;
    }

    public String getTabletime() {
        return this.tabletime;
    }

    public void setTabletime(String tabletime) {
        this.tabletime = tabletime;
    }

    public Integer getIsCancelled() {
        return this.isCancelled;
    }

    public void setIsCancelled(Integer isCancelled) {
        this.isCancelled = isCancelled;
    }

    public Boolean getIsChecked() {
        return this.isChecked;
    }

    public void setIsChecked(Boolean isChecked) {
        this.isChecked = isChecked;
    }

    public Boolean getIsTable() {
        return this.isTable;
    }

    public void setIsTable(Boolean isTable) {
        this.isTable = isTable;
    }

    public Double getRate() {
        return this.rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

    public Integer getOrderMasterId() {
        return this.orderMasterId;
    }

    public void setOrderMasterId(Integer orderMasterId) {
        this.orderMasterId = orderMasterId;
    }

    public Integer getGuestNo() {
        return this.GuestNo;
    }

    public void setGuestNo(Integer guestNo) {
        this.GuestNo = guestNo;
    }

    public JSONObject toJSON() {
        long mergeId;
        long mergeTableId;
        JSONObject jsonObject = new JSONObject();
        try {
            Log.e("table", getId() + getNumber());
            jsonObject.put("TableID", getId());
            if (getMergeId().intValue() == -1) {
                mergeId = 0;
            } else {
                mergeId = getMergeId().intValue();
            }
            jsonObject.put("MergeID", mergeId);
            if (getMergeTableId().intValue() == -1) {
                mergeTableId = 0;
            } else {
                mergeTableId = getMergeTableId().intValue();
            }
            jsonObject.put("MergeTableList", mergeTableId);
            return jsonObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
