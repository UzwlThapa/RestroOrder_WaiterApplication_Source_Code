package com.danfe.restaurantapp1.response;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TableWithStatus {
    private Integer BillPaid;
    private Integer GuestNo;
    private Integer IsCancelled;
    private Boolean IsTable;
    private Integer MergeID;
    private Integer MergeTableList;
    private String MergeTableName;
    private Integer OrderMasterId;
    private Double Rate;
    private Integer Seatcap;
    private Map<String, Object> additionalProperties = new HashMap();
    private String restroRoom;
    private Integer restroRoomId;
    private Integer restrotableId;
    private String restrotableTitle;
    private Integer restrotablesStatusID;
    private String tableDate;
    private String tabletime;

    public Integer getMergeID() {
        return this.MergeID;
    }

    public void setMergeID(Integer mergeID) {
        this.MergeID = mergeID;
    }

    public Integer getRestrotableId() {
        return this.restrotableId;
    }

    public void setRestrotableId(Integer restrotableId) {
        this.restrotableId = restrotableId;
    }

    public String getRestrotableTitle() {
        return this.restrotableTitle;
    }

    public void setRestrotableTitle(String restrotableTitle) {
        this.restrotableTitle = restrotableTitle;
    }

    public Integer getRestroRoomId() {
        return this.restroRoomId;
    }

    public void setRestroRoomId(Integer restroRoomId) {
        this.restroRoomId = restroRoomId;
    }

    public String getRestroRoom() {
        return this.restroRoom;
    }

    public void setRestroRoom(String restroRoom) {
        this.restroRoom = restroRoom;
    }

    public Integer getMergeTableList() {
        return this.MergeTableList;
    }

    public void setMergeTableList(Integer mergeTableList) {
        this.MergeTableList = mergeTableList;
    }

    public String getMergeTableName() {
        return this.MergeTableName;
    }

    public void setMergeTableName(String mergeTableName) {
        this.MergeTableName = mergeTableName;
    }

    public Integer getSeatcap() {
        return this.Seatcap;
    }

    public void setSeatcap(Integer seatcap) {
        this.Seatcap = seatcap;
    }

    public Integer getRestrotablesStatusID() {
        return this.restrotablesStatusID;
    }

    public void setRestrotablesStatusID(Integer restrotablesStatusID) {
        this.restrotablesStatusID = restrotablesStatusID;
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
        return this.IsCancelled;
    }

    public void setIsCancelled(Integer isCancelled) {
        this.IsCancelled = isCancelled;
    }

    public Boolean getIsTable() {
        return this.IsTable;
    }

    public void setIsTable(Boolean isTable) {
        this.IsTable = isTable;
    }

    public Double getRate() {
        return this.Rate;
    }

    public void setRate(Double rate) {
        this.Rate = rate;
    }

    public Integer getOrderMasterId() {
        return this.OrderMasterId;
    }

    public void setOrderMasterId(Integer orderMasterId) {
        this.OrderMasterId = orderMasterId;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public Integer getGuestNo() {
        return this.GuestNo;
    }

    public void setGuestNo(Integer guestNo) {
        this.GuestNo = guestNo;
    }
}
