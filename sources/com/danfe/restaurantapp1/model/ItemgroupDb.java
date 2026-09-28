package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class ItemgroupDb {
    private String CostCenterName;
    private Integer CostcenterID;
    private String Currency;
    private String Details;
    private Long Id;
    private String ImagePath;
    private Boolean IsCategory;
    private Boolean IsCombo;
    private Boolean IsOutOfStock;
    private String ItemCode;
    private Integer ItemId;
    private String ItemName;
    private Integer Level;
    private Integer PId;
    private String SRate;

    public ItemgroupDb() {
    }

    public ItemgroupDb(Long id) {
        this.Id = id;
    }

    public ItemgroupDb(Long id, Integer ItemId, String ItemName, Integer PId, String ImagePath, Integer CostcenterID, Integer Level, String Details, String SRate, String Currency, Boolean IsCategory, Boolean IsCombo, String ItemCode, Boolean IsOutOfStock, String CostCenterName) {
        this.Id = id;
        this.ItemId = ItemId;
        this.ItemName = ItemName;
        this.PId = PId;
        this.ImagePath = ImagePath;
        this.CostcenterID = CostcenterID;
        this.Level = Level;
        this.Details = Details;
        this.SRate = SRate;
        this.Currency = Currency;
        this.IsCategory = IsCategory;
        this.IsCombo = IsCombo;
        this.ItemCode = ItemCode;
        this.IsOutOfStock = IsOutOfStock;
        this.CostCenterName = CostCenterName;
    }

    public Long getId() {
        return this.Id;
    }

    public void setId(Long id) {
        this.Id = id;
    }

    public Integer getItemId() {
        return this.ItemId;
    }

    public void setItemId(Integer ItemId) {
        this.ItemId = ItemId;
    }

    public String getItemName() {
        return this.ItemName;
    }

    public void setItemName(String ItemName) {
        this.ItemName = ItemName;
    }

    public Integer getPId() {
        return this.PId;
    }

    public void setPId(Integer PId) {
        this.PId = PId;
    }

    public String getImagePath() {
        return this.ImagePath;
    }

    public void setImagePath(String ImagePath) {
        this.ImagePath = ImagePath;
    }

    public Integer getCostcenterID() {
        return this.CostcenterID;
    }

    public void setCostcenterID(Integer CostcenterID) {
        this.CostcenterID = CostcenterID;
    }

    public Integer getLevel() {
        return this.Level;
    }

    public void setLevel(Integer Level) {
        this.Level = Level;
    }

    public String getDetails() {
        return this.Details;
    }

    public void setDetails(String Details) {
        this.Details = Details;
    }

    public String getSRate() {
        return this.SRate;
    }

    public void setSRate(String SRate) {
        this.SRate = SRate;
    }

    public String getCurrency() {
        return this.Currency;
    }

    public void setCurrency(String Currency) {
        this.Currency = Currency;
    }

    public Boolean getIsCategory() {
        return this.IsCategory;
    }

    public void setIsCategory(Boolean IsCategory) {
        this.IsCategory = IsCategory;
    }

    public Boolean getIsCombo() {
        return this.IsCombo;
    }

    public void setIsCombo(Boolean IsCombo) {
        this.IsCombo = IsCombo;
    }

    public String getItemCode() {
        return this.ItemCode;
    }

    public void setItemCode(String ItemCode) {
        this.ItemCode = ItemCode;
    }

    public Boolean getOutOfStock() {
        return this.IsOutOfStock;
    }

    public void setOutOfStock(Boolean outOfStock) {
        this.IsOutOfStock = outOfStock;
    }

    public String getCostCenterName() {
        return this.CostCenterName;
    }

    public void setCostCenterName(String costCenterName) {
        this.CostCenterName = costCenterName;
    }
}
