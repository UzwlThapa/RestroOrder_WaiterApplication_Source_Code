package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class RoomDb {
    private Long id;
    private String restroRoom;
    private Integer roomStatus;
    private Integer roomTypeId;

    public RoomDb() {
    }

    public RoomDb(Long id) {
        this.id = id;
    }

    public RoomDb(Long id, String restroRoom, Integer roomStatus, Integer roomTypeId) {
        this.id = id;
        this.restroRoom = restroRoom;
        this.roomStatus = roomStatus;
        this.roomTypeId = roomTypeId;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRestroRoom() {
        return this.restroRoom;
    }

    public void setRestroRoom(String restroRoom) {
        this.restroRoom = restroRoom;
    }

    public Integer getRoomStatus() {
        return this.roomStatus;
    }

    public void setRoomStatus(Integer roomStatus) {
        this.roomStatus = roomStatus;
    }

    public Integer getRoomTypeId() {
        return this.roomTypeId;
    }

    public void setRoomTypeId(Integer roomTypeId) {
        this.roomTypeId = roomTypeId;
    }
}
