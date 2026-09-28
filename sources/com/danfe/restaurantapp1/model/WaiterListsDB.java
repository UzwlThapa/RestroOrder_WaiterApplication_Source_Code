package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class WaiterListsDB {
    private String WaiterIp;
    private String WaiterName;
    private Long id;

    public WaiterListsDB() {
    }

    public WaiterListsDB(Long id) {
        this.id = id;
    }

    public WaiterListsDB(Long id, String WaiterName, String WaiterIp) {
        this.id = id;
        this.WaiterName = WaiterName;
        this.WaiterIp = WaiterIp;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWaiterName() {
        return this.WaiterName;
    }

    public void setWaiterName(String WaiterName) {
        this.WaiterName = WaiterName;
    }

    public String getWaiterIp() {
        return this.WaiterIp;
    }

    public void setWaiterIp(String WaiterIp) {
        this.WaiterIp = WaiterIp;
    }
}
