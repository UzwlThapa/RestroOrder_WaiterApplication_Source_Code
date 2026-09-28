package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class DishDb {
    private Integer categoryid;
    private Integer costCenterId;
    private String costCenterName;
    private String description;
    private Long id;
    private String imageLink;
    private String itemcode;
    private Integer itemid;
    private String name;
    private Double price;
    private String priceWithCurr;

    public DishDb() {
    }

    public DishDb(Long id) {
        this.id = id;
    }

    public DishDb(Long id, Integer categoryid, String name, Integer itemid, String itemcode, String description, Integer costCenterId, String costCenterName, Double price, String priceWithCurr, String imageLink) {
        this.id = id;
        this.categoryid = categoryid;
        this.name = name;
        this.itemid = itemid;
        this.itemcode = itemcode;
        this.description = description;
        this.costCenterId = costCenterId;
        this.costCenterName = costCenterName;
        this.price = price;
        this.priceWithCurr = priceWithCurr;
        this.imageLink = imageLink;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getCategoryid() {
        return this.categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getItemid() {
        return this.itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getItemcode() {
        return this.itemcode;
    }

    public void setItemcode(String itemcode) {
        this.itemcode = itemcode;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getCostCenterId() {
        return this.costCenterId;
    }

    public void setCostCenterId(Integer costCenterId) {
        this.costCenterId = costCenterId;
    }

    public String getCostCenterName() {
        return this.costCenterName;
    }

    public void setCostCenterName(String costCenterName) {
        this.costCenterName = costCenterName;
    }

    public Double getPrice() {
        return this.price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPriceWithCurr() {
        return this.priceWithCurr;
    }

    public void setPriceWithCurr(String priceWithCurr) {
        this.priceWithCurr = priceWithCurr;
    }

    public String getImageLink() {
        return this.imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }
}
