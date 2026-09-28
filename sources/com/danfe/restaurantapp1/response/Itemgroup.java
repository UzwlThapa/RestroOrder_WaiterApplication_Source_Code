package com.danfe.restaurantapp1.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Itemgroup {
    private Integer CostCenterID;
    private String CostCenterName;
    private String Currency;
    private Integer DPUnitId;
    private Integer DSUnitId;
    private String Details;
    private String ImagePath;
    private Boolean IsCategory;
    private Boolean IsCombo;
    private Boolean IsExpirable;
    private Boolean IsOutOfStock;
    private Boolean IsProdMaterial;
    private Boolean IsUnitWiseRate;
    private String ItemCode;
    private Integer ItemId;
    private String ItemName;
    private Integer Level;
    private Integer MUnitId;
    private Integer PItemId;
    private String SRate;
    private ArrayList<ExtraMenu> extradata = new ArrayList<>();
    private Map<String, Object> additionalProperties = new HashMap();

    public Integer getItemId() {
        return this.ItemId;
    }

    public String getCostCenterName() {
        return this.CostCenterName;
    }

    public void setCostCenterName(String costCenterName) {
        this.CostCenterName = costCenterName;
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

    public void setPItemId(Integer PItemId) {
        this.PItemId = PItemId;
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

    public void setMUnitId(Integer MUnitId) {
        this.MUnitId = MUnitId;
    }

    public Integer getDSUnitId() {
        return this.DSUnitId;
    }

    public void setDSUnitId(Integer DSUnitId) {
        this.DSUnitId = DSUnitId;
    }

    public Integer getDPUnitId() {
        return this.DPUnitId;
    }

    public void setDPUnitId(Integer DPUnitId) {
        this.DPUnitId = DPUnitId;
    }

    public Boolean getExpirable() {
        return this.IsExpirable;
    }

    public void setExpirable(Boolean expirable) {
        this.IsExpirable = expirable;
    }

    public Boolean getProdMaterial() {
        return this.IsProdMaterial;
    }

    public void setProdMaterial(Boolean prodMaterial) {
        this.IsProdMaterial = prodMaterial;
    }

    public Integer getLevel() {
        return this.Level;
    }

    public void setLevel(Integer level) {
        this.Level = level;
    }

    public Boolean getUnitWiseRate() {
        return this.IsUnitWiseRate;
    }

    public void setUnitWiseRate(Boolean unitWiseRate) {
        this.IsUnitWiseRate = unitWiseRate;
    }

    public String getSRate() {
        return this.SRate;
    }

    public void setSRate(String SRate) {
        this.SRate = SRate;
    }

    public String getDetails() {
        return this.Details;
    }

    public void setDetails(String details) {
        this.Details = details;
    }

    public String getCurrency() {
        return this.Currency;
    }

    public void setCurrency(String currency) {
        this.Currency = currency;
    }

    public Boolean getCombo() {
        return this.IsCombo;
    }

    public void setCombo(Boolean combo) {
        this.IsCombo = combo;
    }

    public Boolean getIsCategory() {
        return this.IsCategory;
    }

    public void setIsCategory(Boolean category) {
        this.IsCategory = category;
    }

    public ArrayList<ExtraMenu> getExtradata() {
        return this.extradata;
    }

    public void setExtradata(ArrayList<ExtraMenu> extradata) {
        this.extradata = extradata;
    }

    public Boolean getOutOfStock() {
        return this.IsOutOfStock;
    }

    public void setOutOfStock(Boolean outOfStock) {
        this.IsOutOfStock = outOfStock;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperties(Map<String, Object> additionalProperties) {
        this.additionalProperties = additionalProperties;
    }

    public class ExtraMenu {
        private String AddedBy;
        private String ExtraItem;
        private Integer ExtraItemID;
        private Double ExtraPrice;
        private Boolean IsActive;
        private Boolean IsExtra;
        private Integer ItemID;
        private Map<String, Object> additionalProperties = new HashMap();

        public ExtraMenu() {
        }

        public Integer getItemID() {
            return this.ItemID;
        }

        public void setItemID(Integer itemID) {
            this.ItemID = itemID;
        }

        public Integer getExtraItemID() {
            return this.ExtraItemID;
        }

        public void setExtraItemID(Integer extraItemID) {
            this.ExtraItemID = extraItemID;
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

        public Boolean getActive() {
            return this.IsActive;
        }

        public void setActive(Boolean active) {
            this.IsActive = active;
        }

        public String getAddedBy() {
            return this.AddedBy;
        }

        public void setAddedBy(String addedBy) {
            this.AddedBy = addedBy;
        }

        public Boolean getExtra() {
            return this.IsExtra;
        }

        public void setExtra(Boolean extra) {
            this.IsExtra = extra;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperties(Map<String, Object> additionalProperties) {
            this.additionalProperties = additionalProperties;
        }
    }
}
