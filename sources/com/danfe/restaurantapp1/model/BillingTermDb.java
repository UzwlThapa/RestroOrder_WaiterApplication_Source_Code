package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class BillingTermDb {
    private String CostCenter;
    private String Description;
    private Long Id;
    private Boolean IsAdded;
    private String Name;
    private Integer SequenceOrder;
    private Integer billingId;
    private String rate;

    public BillingTermDb() {
    }

    public BillingTermDb(Long Id) {
        this.Id = Id;
    }

    public BillingTermDb(Long Id, Integer billingId, String Name, Boolean IsAdded, String rate, String Description, Integer SequenceOrder, String CostCenter) {
        this.Id = Id;
        this.billingId = billingId;
        this.Name = Name;
        this.IsAdded = IsAdded;
        this.rate = rate;
        this.Description = Description;
        this.SequenceOrder = SequenceOrder;
        this.CostCenter = CostCenter;
    }

    public Long getId() {
        return this.Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public Integer getBillingId() {
        return this.billingId;
    }

    public void setBillingId(Integer billingId) {
        this.billingId = billingId;
    }

    public String getName() {
        return this.Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public Boolean getIsAdded() {
        return this.IsAdded;
    }

    public void setIsAdded(Boolean IsAdded) {
        this.IsAdded = IsAdded;
    }

    public String getRate() {
        return this.rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getDescription() {
        return this.Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Integer getSequenceOrder() {
        return this.SequenceOrder;
    }

    public void setSequenceOrder(Integer SequenceOrder) {
        this.SequenceOrder = SequenceOrder;
    }

    public String getCostCenter() {
        return this.CostCenter;
    }

    public void setCostCenter(String CostCenter) {
        this.CostCenter = CostCenter;
    }
}
