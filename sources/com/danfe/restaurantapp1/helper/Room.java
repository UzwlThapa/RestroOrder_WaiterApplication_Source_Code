package com.danfe.restaurantapp1.helper;

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
    private List<Roomlist> roomlist = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

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
        private String restroRoom;
        private Integer restroRoomId;
        private List<TableList> tableList = new ArrayList();
        private Map<String, Object> additionalProperties = new HashMap();

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
        private Integer MergeID;
        private Integer MergeTableList;
        private Integer SeatNo;
        private Map<String, Object> additionalProperties = new HashMap();
        private Object restroRoom;
        private Integer restroRoomId;
        private Integer restrotableId;
        private String restrotableTitle;
        private Integer restrotablesStatusID;

        public TableList() {
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

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
