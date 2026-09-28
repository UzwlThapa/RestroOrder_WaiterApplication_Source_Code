package com.danfe.restaurantapp1.helper;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RoomWithStatus {
    private Integer RoomStatusId;
    private String Title;
    private Map<String, Object> additionalProperties = new HashMap();
    private String restroRoom;
    private Integer restroRoomId;
    private Object tableList;

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
