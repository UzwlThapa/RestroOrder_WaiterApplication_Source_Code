package com.danfe.restaurantapp1.helper;

/* JADX INFO: loaded from: classes.dex */
public class Order {
    private String orderBy;
    private int orderNo;
    private String tableNo;
    private String time;

    public Order() {
    }

    public Order(int orderNo) {
        this.orderNo = orderNo;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getOrderBy() {
        return this.orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getTableNo() {
        return this.tableNo;
    }

    public void setTableNo(String tableNo) {
        this.tableNo = tableNo;
    }

    public int getOrderNo() {
        return this.orderNo;
    }

    public void setOrderNo(int orderNo) {
        this.orderNo = orderNo;
    }
}
