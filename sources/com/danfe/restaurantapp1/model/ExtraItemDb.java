package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class ExtraItemDb {
    private String addedBy;
    private String extraItem;
    private Integer extraItemID;
    private Double extraPrice;
    private Long id;
    private Boolean isActive;
    private Boolean isExtra;
    private Integer itemID;

    public ExtraItemDb(Long id) {
        this.id = id;
    }

    public ExtraItemDb(Long id, Integer itemID, Integer extraItemID, String extraItem, Double extraPrice, Boolean isActive, String addedBy, Boolean isExtra) {
        this.id = id;
        this.itemID = itemID;
        this.extraItemID = extraItemID;
        this.extraItem = extraItem;
        this.extraPrice = extraPrice;
        this.isActive = isActive;
        this.addedBy = addedBy;
        this.isExtra = isExtra;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getItemID() {
        return this.itemID;
    }

    public void setItemID(Integer itemID) {
        this.itemID = itemID;
    }

    public Integer getExtraItemID() {
        return this.extraItemID;
    }

    public void setExtraItemID(Integer extraItemID) {
        this.extraItemID = extraItemID;
    }

    public String getExtraItem() {
        return this.extraItem;
    }

    public void setExtraItem(String extraItem) {
        this.extraItem = extraItem;
    }

    public Double getExtraPrice() {
        return this.extraPrice;
    }

    public void setExtraPrice(Double extraPrice) {
        this.extraPrice = extraPrice;
    }

    public Boolean getIsActive() {
        return this.isActive;
    }

    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public String getAddedBy() {
        return this.addedBy;
    }

    public void setAddedBy(String addedBy) {
        this.addedBy = addedBy;
    }

    public Boolean getIsExtra() {
        return this.isExtra;
    }

    public void setIsExtra(Boolean isExtra) {
        this.isExtra = isExtra;
    }
}
