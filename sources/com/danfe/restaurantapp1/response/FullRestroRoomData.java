package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FullRestroRoomData implements Serializable {

    @SerializedName("data")
    @Expose
    private List<Room> data = null;

    @SerializedName("message")
    @Expose
    private String message;

    @SerializedName("statusCode")
    @Expose
    private Integer statusCode;

    public Integer getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<Room> getData() {
        return this.data;
    }

    public void setData(List<Room> data) {
        this.data = data;
    }

    public class Room {

        @SerializedName("DeleteBy")
        @Expose
        private String deleteBy;

        @SerializedName("Description")
        @Expose
        private String description;

        @SerializedName("InsertedBy")
        @Expose
        private String insertedBy;

        @SerializedName("RoomTypeID")
        @Expose
        private Integer roomTypeID;

        @SerializedName("roomlist")
        @Expose
        private List<Roomlist> roomlist = null;

        @SerializedName("Title")
        @Expose
        private String title;

        @SerializedName("UpdateBy")
        @Expose
        private String updateBy;

        public Room() {
        }

        public Integer getRoomTypeID() {
            return this.roomTypeID;
        }

        public void setRoomTypeID(Integer roomTypeID) {
            this.roomTypeID = roomTypeID;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getDescription() {
            return this.description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public String getInsertedBy() {
            return this.insertedBy;
        }

        public void setInsertedBy(String insertedBy) {
            this.insertedBy = insertedBy;
        }

        public String getUpdateBy() {
            return this.updateBy;
        }

        public void setUpdateBy(String updateBy) {
            this.updateBy = updateBy;
        }

        public String getDeleteBy() {
            return this.deleteBy;
        }

        public void setDeleteBy(String deleteBy) {
            this.deleteBy = deleteBy;
        }

        public List<Roomlist> getRoomlist() {
            return this.roomlist;
        }

        public void setRoomlist(List<Roomlist> roomlist) {
            this.roomlist = roomlist;
        }
    }

    public class Roomlist {

        @SerializedName("restroRoom")
        @Expose
        private String restroRoom;

        @SerializedName("restroRoomId")
        @Expose
        private Integer restroRoomId;

        @SerializedName("RoomStatusId")
        @Expose
        private Integer roomStatusId;

        @SerializedName("RoomType")
        @Expose
        private Object roomType;

        @SerializedName("RoomTypeID")
        @Expose
        private Integer roomTypeID;

        @SerializedName("tableList")
        @Expose
        private List<TableList> tableList = null;

        @SerializedName("Title")
        @Expose
        private String title;

        public Roomlist() {
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

        public List<TableList> getTableList() {
            return this.tableList;
        }

        public void setTableList(List<TableList> tableList) {
            this.tableList = tableList;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public Integer getRoomStatusId() {
            return this.roomStatusId;
        }

        public void setRoomStatusId(Integer roomStatusId) {
            this.roomStatusId = roomStatusId;
        }

        public Integer getRoomTypeID() {
            return this.roomTypeID;
        }

        public void setRoomTypeID(Integer roomTypeID) {
            this.roomTypeID = roomTypeID;
        }

        public Object getRoomType() {
            return this.roomType;
        }

        public void setRoomType(Object roomType) {
            this.roomType = roomType;
        }
    }

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
        private String mergeTableName;

        @SerializedName("OrderMasterId")
        @Expose
        private Integer orderMasterId;

        @SerializedName("OrderNo")
        @Expose
        private Integer orderNo;

        @SerializedName("Rate")
        @Expose
        private Float rate;

        @SerializedName("restroRoom")
        @Expose
        private String restroRoom;

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
        private String tableDate;

        @SerializedName("tabletime")
        @Expose
        private String tabletime;

        @SerializedName("TokenNo")
        @Expose
        private Integer tokenNo;

        @SerializedName("UserModuleID")
        @Expose
        private Integer userModuleID;

        public TableList() {
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

        public String getMergeTableName() {
            return this.mergeTableName;
        }

        public void setMergeTableName(String mergeTableName) {
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

        public Boolean getIsTable() {
            return this.isTable;
        }

        public void setIsTable(Boolean isTable) {
            this.isTable = isTable;
        }

        public Float getRate() {
            return this.rate;
        }

        public void setRate(Float rate) {
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

        public Integer getOrderNo() {
            return this.orderNo;
        }

        public void setOrderNo(Integer orderNo) {
            this.orderNo = orderNo;
        }

        public Integer getTokenNo() {
            return this.tokenNo;
        }

        public void setTokenNo(Integer tokenNo) {
            this.tokenNo = tokenNo;
        }

        public Integer getUserModuleID() {
            return this.userModuleID;
        }

        public void setUserModuleID(Integer userModuleID) {
            this.userModuleID = userModuleID;
        }
    }
}
