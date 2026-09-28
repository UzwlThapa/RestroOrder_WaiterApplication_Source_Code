package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class OrderMasterDb {
    private Integer guestNo;
    private Long id;
    private Boolean isCanceled;
    private Boolean isSplit;
    private String remarks;
    private Integer tableId;
    private String username;

    public OrderMasterDb() {
    }

    public OrderMasterDb(Long id) {
        this.id = id;
    }

    public OrderMasterDb(Long id, Integer tableId, Boolean isSplit, Integer guestNo, Boolean isCanceled, String remarks, String username) {
        this.id = id;
        this.tableId = tableId;
        this.isSplit = isSplit;
        this.guestNo = guestNo;
        this.isCanceled = isCanceled;
        this.remarks = remarks;
        this.username = username;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getTableId() {
        return this.tableId;
    }

    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    public Boolean getIsSplit() {
        return this.isSplit;
    }

    public void setIsSplit(Boolean isSplit) {
        this.isSplit = isSplit;
    }

    public Integer getGuestNo() {
        return this.guestNo;
    }

    public void setGuestNo(Integer guestNo) {
        this.guestNo = guestNo;
    }

    public Boolean getIsCanceled() {
        return this.isCanceled;
    }

    public void setIsCanceled(Boolean isCanceled) {
        this.isCanceled = isCanceled;
    }

    public String getRemarks() {
        return this.remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
