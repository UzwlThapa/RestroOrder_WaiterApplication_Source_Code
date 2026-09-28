package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Itemgroup {
    private Integer CostCenterID;
    private String Currency;
    private Integer DPUnitId;
    private Integer DSUnitId;
    private String Details;
    private String ImagePath;
    private Boolean IsExpirable;
    private Boolean IsProdMaterial;
    private Boolean IsUnitWiseRate;
    private String ItemCode;
    private Integer ItemId;
    private String ItemName;
    private Integer Level;
    private Integer MUnitId;
    private Integer PItemId;
    private Integer SRate;
    private List<ExtraMenu> extradata = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public Integer getItemId() {
        return this.ItemId;
    }

    public void setItemId(Integer itemId) {
        this.ItemId = itemId;
    }

    public String getItemName() {
        return this.ItemName;
    }

    public void setItemName(String itemName) {
        this.ItemName = itemName;
    }

    public Integer getPItemId() {
        return this.PItemId;
    }

    public void setPItemId(Integer pItemId) {
        this.PItemId = pItemId;
    }

    public String getItemCode() {
        return this.ItemCode;
    }

    public void setItemCode(String itemCode) {
        this.ItemCode = itemCode;
    }

    public String getImagePath() {
        return this.ImagePath;
    }

    public void setImagePath(String imagePath) {
        this.ImagePath = imagePath;
    }

    public Integer getCostCenterID() {
        return this.CostCenterID;
    }

    public void setCostCenterID(Integer costCenterID) {
        this.CostCenterID = costCenterID;
    }

    public Integer getMUnitId() {
        return this.MUnitId;
    }

    public void setMUnitId(Integer mUnitId) {
        this.MUnitId = mUnitId;
    }

    public Integer getDSUnitId() {
        return this.DSUnitId;
    }

    public void setDSUnitId(Integer dSUnitId) {
        this.DSUnitId = dSUnitId;
    }

    public Integer getDPUnitId() {
        return this.DPUnitId;
    }

    public void setDPUnitId(Integer dPUnitId) {
        this.DPUnitId = dPUnitId;
    }

    public Boolean getIsExpirable() {
        return this.IsExpirable;
    }

    public void setIsExpirable(Boolean isExpirable) {
        this.IsExpirable = isExpirable;
    }

    public Boolean getIsProdMaterial() {
        return this.IsProdMaterial;
    }

    public void setIsProdMaterial(Boolean isProdMaterial) {
        this.IsProdMaterial = isProdMaterial;
    }

    public Integer getLevel() {
        return this.Level;
    }

    public void setLevel(Integer level) {
        this.Level = level;
    }

    public Boolean getIsUnitWiseRate() {
        return this.IsUnitWiseRate;
    }

    public void setIsUnitWiseRate(Boolean isUnitWiseRate) {
        this.IsUnitWiseRate = isUnitWiseRate;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public Integer getSRate() {
        return this.SRate;
    }

    public void setSRate(Integer SRate) {
        this.SRate = SRate;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public String getCurrency() {
        return this.Currency;
    }

    public void setCurrency(String currency) {
        this.Currency = currency;
    }

    public String getDetails() {
        return this.Details;
    }

    public void setDetails(String details) {
        this.Details = details;
    }

    public List<ExtraMenu> getExtradata() {
        return this.extradata;
    }

    public void setExtradata(List<ExtraMenu> extradata) {
        this.extradata = extradata;
    }

    public class ExtraMenu {
        private String ExtraItem;
        private Double ExtraPrice;
        private Map<String, Object> additionalProperties = new HashMap();

        public ExtraMenu() {
        }

        public String getExtraItem() {
            return this.ExtraItem;
        }

        public void setExtraItem(String extraItem) {
            this.ExtraItem = extraItem;
        }

        public Double getExtraPrice() {
            return this.ExtraPrice;
        }

        public void setExtraPrice(Double extraPrice) {
            this.ExtraPrice = extraPrice;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
