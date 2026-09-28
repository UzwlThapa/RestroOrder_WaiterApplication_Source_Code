package com.danfe.restaurantapp1.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CostCenterModelResponse {
    private Map<String, Object> additionalProperties = new HashMap();
    private D d;

    public D getD() {
        return this.d;
    }

    public void setD(D d) {
        this.d = d;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class D {
        private String __type;
        private List<BillingTerm> billingTerm = new ArrayList();
        private List<CostCenter> costCenter = new ArrayList();
        private Map<String, Object> additionalProperties = new HashMap();

        public D() {
        }

        public String getType() {
            return this.__type;
        }

        public void setType(String type) {
            this.__type = type;
        }

        public List<BillingTerm> getBillingTerm() {
            return this.billingTerm;
        }

        public void setBillingTerm(List<BillingTerm> billingTerm) {
            this.billingTerm = billingTerm;
        }

        public List<CostCenter> getCostCenter() {
            return this.costCenter;
        }

        public void setCostCenter(List<CostCenter> costCenter) {
            this.costCenter = costCenter;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class BillingTerm {
        private Integer BilingID;
        private Object CostCenter;
        private String Description;
        private Boolean IsAdd;
        private String Name;
        private String Rate;
        private Integer SequenceOrder;
        private Map<String, Object> additionalProperties = new HashMap();

        public BillingTerm() {
        }

        public Integer getBilingID() {
            return this.BilingID;
        }

        public void setBilingID(Integer bilingID) {
            this.BilingID = bilingID;
        }

        public String getName() {
            return this.Name;
        }

        public void setName(String name) {
            this.Name = name;
        }

        public Boolean getIsAdd() {
            return this.IsAdd;
        }

        public void setIsAdd(Boolean isAdd) {
            this.IsAdd = isAdd;
        }

        public String getRate() {
            return this.Rate;
        }

        public void setRate(String rate) {
            this.Rate = rate;
        }

        public String getDescription() {
            return this.Description;
        }

        public void setDescription(String description) {
            this.Description = description;
        }

        public Integer getSequenceOrder() {
            return this.SequenceOrder;
        }

        public void setSequenceOrder(Integer sequenceOrder) {
            this.SequenceOrder = sequenceOrder;
        }

        public Object getCostCenter() {
            return this.CostCenter;
        }

        public void setCostCenter(Object costCenter) {
            this.CostCenter = costCenter;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class CostCenter {
        private Integer CostCenterID;
        private String CostCenterName;
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer coDiscount;

        public CostCenter() {
        }

        public Integer getCostCenterID() {
            return this.CostCenterID;
        }

        public void setCostCenterID(Integer costCenterID) {
            this.CostCenterID = costCenterID;
        }

        public String getCostCenterName() {
            return this.CostCenterName;
        }

        public void setCostCenterName(String costCenterName) {
            this.CostCenterName = costCenterName;
        }

        public Integer getCoDiscount() {
            return this.coDiscount;
        }

        public void setCoDiscount(Integer coDiscount) {
            this.coDiscount = coDiscount;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
