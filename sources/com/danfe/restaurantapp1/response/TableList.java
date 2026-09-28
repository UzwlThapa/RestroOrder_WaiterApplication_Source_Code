package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class TableList {

    @SerializedName("BillPaid")
    @Expose
    private Integer billPaid;

    @SerializedName("CompMasterID")
    @Expose
    private Integer compMasterID;

    @SerializedName("GuestNo")
    @Expose
    private Integer guestNo;

    @SerializedName("IsCancelled")
    @Expose
    private Integer isCancelled;

    @SerializedName("IsTable")
    @Expose
    private Boolean isTable;

    @SerializedName("MergeID")
    @Expose
    private Integer mergeID;

    @SerializedName("MergeTableList")
    @Expose
    private Integer mergeTableList;

    @SerializedName("MergeTableName")
    @Expose
    private Object mergeTableName;

    @SerializedName("OrderMasterId")
    @Expose
    private Integer orderMasterId;

    @SerializedName("Rate")
    @Expose
    private Double rate;

    @SerializedName("restroRoom")
    @Expose
    private Object restroRoom;

    @SerializedName("restroRoomId")
    @Expose
    private Integer restroRoomId;

    @SerializedName("restrotableId")
    @Expose
    private Integer restrotableId;

    @SerializedName("restrotableTitle")
    @Expose
    private String restrotableTitle;

    @SerializedName("restrotablesStatusID")
    @Expose
    private Integer restrotablesStatusID;

    @SerializedName("Seatcap")
    @Expose
    private Integer seatcap;

    @SerializedName("tableDate")
    @Expose
    private Object tableDate;

    @SerializedName("tabletime")
    @Expose
    private Object tabletime;

    public TableList(Integer restrotableId, String restrotableTitle, Integer restroRoomId, Object restroRoom, Integer seatcap, Integer mergeTableList, Integer mergeID, Object mergeTableName, Integer restrotablesStatusID, Integer billPaid, Object tableDate, Object tabletime, Integer isCancelled, Boolean isTable, Double rate, Integer orderMasterId, Integer compMasterID, Integer guestNo) {
        this.restrotableId = restrotableId;
        this.restrotableTitle = restrotableTitle;
        this.restroRoomId = restroRoomId;
        this.restroRoom = restroRoom;
        this.seatcap = seatcap;
        this.mergeTableList = mergeTableList;
        this.mergeID = mergeID;
        this.mergeTableName = mergeTableName;
        this.restrotablesStatusID = restrotablesStatusID;
        this.billPaid = billPaid;
        this.tableDate = tableDate;
        this.tabletime = tabletime;
        this.isCancelled = isCancelled;
        this.isTable = isTable;
        this.rate = rate;
        this.orderMasterId = orderMasterId;
        this.compMasterID = compMasterID;
        this.guestNo = guestNo;
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

    public Object getRestroRoom() {
        return this.restroRoom;
    }

    public void setRestroRoom(Object restroRoom) {
        this.restroRoom = restroRoom;
    }

    public Integer getSeatcap() {
        return this.seatcap;
    }

    public void setSeatcap(Integer seatcap) {
        this.seatcap = seatcap;
    }

    public Integer getMergeTableList() {
        return this.mergeTableList;
    }

    public void setMergeTableList(Integer mergeTableList) {
        this.mergeTableList = mergeTableList;
    }

    public Integer getMergeID() {
        return this.mergeID;
    }

    public void setMergeID(Integer mergeID) {
        this.mergeID = mergeID;
    }

    public Object getMergeTableName() {
        return this.mergeTableName;
    }

    public void setMergeTableName(Object mergeTableName) {
        this.mergeTableName = mergeTableName;
    }

    public Integer getRestrotablesStatusID() {
        return this.restrotablesStatusID;
    }

    public void setRestrotablesStatusID(Integer restrotablesStatusID) {
        this.restrotablesStatusID = restrotablesStatusID;
    }

    public Integer getBillPaid() {
        return this.billPaid;
    }

    public void setBillPaid(Integer billPaid) {
        this.billPaid = billPaid;
    }

    public Object getTableDate() {
        return this.tableDate;
    }

    public void setTableDate(Object tableDate) {
        this.tableDate = tableDate;
    }

    public Object getTabletime() {
        return this.tabletime;
    }

    public void setTabletime(Object tabletime) {
        this.tabletime = tabletime;
    }

    public Integer getIsCancelled() {
        return this.isCancelled;
    }

    public void setIsCancelled(Integer isCancelled) {
        this.isCancelled = isCancelled;
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

    public Integer getCompMasterID() {
        return this.compMasterID;
    }

    public void setCompMasterID(Integer compMasterID) {
        this.compMasterID = compMasterID;
    }

    public Integer getGuestNo() {
        return this.guestNo;
    }

    public void setGuestNo(Integer guestNo) {
        this.guestNo = guestNo;
    }
}
