package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class RoomTypeDb {
    private String description;
    private Long id;
    private String restroRoom;

    public RoomTypeDb() {
    }

    public RoomTypeDb(Long id) {
        this.id = id;
    }

    public RoomTypeDb(Long id, String restroRoom, String description) {
        this.id = id;
        this.restroRoom = restroRoom;
        this.description = description;
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

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
