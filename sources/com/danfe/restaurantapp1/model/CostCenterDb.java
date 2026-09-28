package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class CostCenterDb {
    private Integer CoDiscout;
    private Integer CostCenterId;
    private String CostCenterName;
    private Long Id;
    private String tableList;

    public CostCenterDb() {
    }

    public CostCenterDb(Long Id) {
        this.Id = Id;
    }

    public CostCenterDb(Long Id, Integer CostCenterId, String CostCenterName, Integer CoDiscout, String tableList) {
        this.Id = Id;
        this.CostCenterId = CostCenterId;
        this.CostCenterName = CostCenterName;
        this.CoDiscout = CoDiscout;
        this.tableList = tableList;
    }

    public Long getId() {
        return this.Id;
    }

    public void setId(Long Id) {
        this.Id = Id;
    }

    public Integer getCostCenterId() {
        return this.CostCenterId;
    }

    public void setCostCenterId(Integer CostCenterId) {
        this.CostCenterId = CostCenterId;
    }

    public String getCostCenterName() {
        return this.CostCenterName;
    }

    public void setCostCenterName(String CostCenterName) {
        this.CostCenterName = CostCenterName;
    }

    public Integer getCoDiscout() {
        return this.CoDiscout;
    }

    public void setCoDiscout(Integer CoDiscout) {
        this.CoDiscout = CoDiscout;
    }

    public String getTableList() {
        return this.tableList;
    }

    public void setTableList(String tableList) {
        this.tableList = tableList;
    }
}
