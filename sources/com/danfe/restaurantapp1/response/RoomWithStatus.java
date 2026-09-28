package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RoomWithStatus {

    @SerializedName("message")
    @Expose
    private String message;

    @SerializedName("Data")
    @Expose
    private List<RoomWithStatusData> roomWithStatusData = null;

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

    public List<RoomWithStatusData> getRoomWithStatusData() {
        return this.roomWithStatusData;
    }

    public void setRoomWithStatusData(List<RoomWithStatusData> roomWithStatusData) {
        this.roomWithStatusData = roomWithStatusData;
    }

    public class RoomWithStatusData {

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
        private Object tableList;

        @SerializedName("Title")
        @Expose
        private String title;

        public RoomWithStatusData() {
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

        public Object getTableList() {
            return this.tableList;
        }

        public void setTableList(Object tableList) {
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
}
