package com.danfe.restaurantapp1.helper;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CostCenterResponse {
    private String CostCenterAddedBy;
    private String CostCenterAddedDate;
    private Integer CostCenterId;
    private String CostCenterName;
    private String DefaultPrinter;
    private Object Username;
    private Map<String, Object> additionalProperties = new HashMap();

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

    public String getCostCenterAddedDate() {
        return this.CostCenterAddedDate;
    }

    public void setCostCenterAddedDate(String CostCenterAddedDate) {
        this.CostCenterAddedDate = CostCenterAddedDate;
    }

    public String getCostCenterAddedBy() {
        return this.CostCenterAddedBy;
    }

    public void setCostCenterAddedBy(String CostCenterAddedBy) {
        this.CostCenterAddedBy = CostCenterAddedBy;
    }

    public Object getUsername() {
        return this.Username;
    }

    public void setUsername(Object Username) {
        this.Username = Username;
    }

    public String getDefaultPrinter() {
        return this.DefaultPrinter;
    }

    public void setDefaultPrinter(String DefaultPrinter) {
        this.DefaultPrinter = DefaultPrinter;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }
}
