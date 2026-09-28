package com.danfe.restaurantapp1.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Room {
    private String DeleteBy;
    private String Description;
    private String InsertedBy;
    private Integer RoomTypeID;
    private String Title;
    private String UpdateBy;
    private Map<String, Object> additionalProperties = new HashMap();
    private List<Roomlist> roomlist;

    public Room(Integer roomTypeID, String title, String description, String insertedBy, String updateBy, String deleteBy, List<Roomlist> roomlist) {
        this.roomlist = new ArrayList();
        this.RoomTypeID = roomTypeID;
        this.Title = title;
        this.Description = description;
        this.InsertedBy = insertedBy;
        this.UpdateBy = updateBy;
        this.DeleteBy = deleteBy;
        this.roomlist = roomlist;
    }

    public Integer getRoomTypeID() {
        return this.RoomTypeID;
    }

    public void setRoomTypeID(Integer RoomTypeID) {
        this.RoomTypeID = RoomTypeID;
    }

    public String getTitle() {
        return this.Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getDescription() {
        return this.Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getInsertedBy() {
        return this.InsertedBy;
    }

    public void setInsertedBy(String InsertedBy) {
        this.InsertedBy = InsertedBy;
    }

    public String getUpdateBy() {
        return this.UpdateBy;
    }

    public void setUpdateBy(String UpdateBy) {
        this.UpdateBy = UpdateBy;
    }

    public String getDeleteBy() {
        return this.DeleteBy;
    }

    public void setDeleteBy(String DeleteBy) {
        this.DeleteBy = DeleteBy;
    }

    public List<Roomlist> getRoomlist() {
        return this.roomlist;
    }

    public void setRoomlist(List<Roomlist> roomlist) {
        this.roomlist = roomlist;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class Roomlist {
        private Integer RoomStatusId;
        private String Title;
        private Map<String, Object> additionalProperties = new HashMap();
        private String restroRoom;
        private Integer restroRoomId;
        private List<TableList> tableList;

        public Roomlist(Integer restroRoomId, String restroRoom, List<TableList> tableList, String title, Integer roomStatusId) {
            this.tableList = new ArrayList();
            this.restroRoomId = restroRoomId;
            this.restroRoom = restroRoom;
            this.tableList = tableList;
            this.Title = title;
            this.RoomStatusId = roomStatusId;
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
            return this.Title;
        }

        public void setTitle(String Title) {
            this.Title = Title;
        }

        public Integer getRoomStatusId() {
            return this.RoomStatusId;
        }

        public void setRoomStatusId(Integer RoomStatusId) {
            this.RoomStatusId = RoomStatusId;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class TableList {
        private Integer BillPaid;
        private Integer GuestNo;
        private Boolean IsTable;
        private Integer MergeID;
        private Integer MergeTableList;
        private Integer OrderMasterId;
        private Double Rate;
        private Integer SeatNo;
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer isCancelled;
        private Object restroRoom;
        private Integer restroRoomId;
        private Integer restrotableId;
        private String restrotableTitle;
        private Integer restrotablesStatusID;
        private String tableDate;
        private String tabletime;

        public TableList(Integer restrotableId, String restrotableTitle, Integer restroRoomId, Object restroRoom, Integer restrotablesStatusID, Integer seatNo, Integer mergeTableList, Integer mergeID, Integer billPaid, String tableDate, String tabletime, Integer isCancelled, Boolean isTable, Double rate, Integer orderMasterId, Integer guestNo) {
            this.restrotableId = restrotableId;
            this.restrotableTitle = restrotableTitle;
            this.restroRoomId = restroRoomId;
            this.restroRoom = restroRoom;
            this.restrotablesStatusID = restrotablesStatusID;
            this.SeatNo = seatNo;
            this.MergeTableList = mergeTableList;
            this.MergeID = mergeID;
            this.BillPaid = billPaid;
            this.tableDate = tableDate;
            this.tabletime = tabletime;
            this.isCancelled = isCancelled;
            this.IsTable = isTable;
            this.Rate = rate;
            this.OrderMasterId = orderMasterId;
            this.GuestNo = guestNo;
        }

        public Integer getMergeTableList() {
            return this.MergeTableList;
        }

        public void setMergeTableList(Integer mergeTableList) {
            this.MergeTableList = mergeTableList;
        }

        public Integer getMergeID() {
            return this.MergeID;
        }

        public void setMergeID(Integer mergeID) {
            this.MergeID = mergeID;
        }

        public Integer getSeatNo() {
            return this.SeatNo;
        }

        public void setSeatNo(Integer seatNo) {
            this.SeatNo = seatNo;
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
            return this.isCancelled;
        }

        public void setIsCancelled(Integer isCancelled) {
            this.isCancelled = isCancelled;
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
}
