package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MenuItemGroup {

    @SerializedName("data")
    @Expose
    private List<Itemgroup> itemgroup = null;

    @SerializedName("message")
    @Expose
    private String message;

    @SerializedName("statusCode")
    @Expose
    private Integer statusCode;

    public Integer getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<Itemgroup> getItemgroup() {
        return this.itemgroup;
    }

    public void setItemgroup(List<Itemgroup> data) {
        this.itemgroup = data;
    }

    public class Itemgroup {

        @SerializedName("CostCenterID")
        @Expose
        private Integer costCenterID;

        @SerializedName("CostCenterName")
        @Expose
        private String costCenterName;

        @SerializedName("Currency")
        @Expose
        private String currency;

        @SerializedName("DPUnitId")
        @Expose
        private Integer dPUnitId;

        @SerializedName("DSUnitId")
        @Expose
        private Integer dSUnitId;

        @SerializedName("Details")
        @Expose
        private String details;

        @SerializedName("extradata")
        @Expose
        private List<ExtraMenu> extraMenu = null;

        @SerializedName("ImagePath")
        @Expose
        private String imagePath;

        @SerializedName("IsCategory")
        @Expose
        private Boolean isCategory;

        @SerializedName("IsCombo")
        @Expose
        private Boolean isCombo;

        @SerializedName("IsExpirable")
        @Expose
        private Boolean isExpirable;

        @SerializedName("IsOutOfStock")
        @Expose
        private Boolean isOutOfStock;

        @SerializedName("IsProdMaterial")
        @Expose
        private Boolean isProdMaterial;

        @SerializedName("IsUnitWiseRate")
        @Expose
        private Boolean isUnitWiseRate;

        @SerializedName("ItemCode")
        @Expose
        private String itemCode;

        @SerializedName("ItemId")
        @Expose
        private Integer itemId;

        @SerializedName("ItemName")
        @Expose
        private String itemName;

        @SerializedName("Level")
        @Expose
        private Integer level;

        @SerializedName("MUnitId")
        @Expose
        private Integer mUnitId;

        @SerializedName("PItemId")
        @Expose
        private Integer pItemId;

        @SerializedName("SRate")
        @Expose
        private Float sRate;

        public Itemgroup() {
        }

        public Integer getItemId() {
            return this.itemId;
        }

        public void setItemId(Integer itemId) {
            this.itemId = itemId;
        }

        public String getItemName() {
            return this.itemName;
        }

        public void setItemName(String itemName) {
            this.itemName = itemName;
        }

        public String getDetails() {
            return this.details;
        }

        public void setDetails(String details) {
            this.details = details;
        }

        public Integer getPItemId() {
            return this.pItemId;
        }

        public void setPItemId(Integer pItemId) {
            this.pItemId = pItemId;
        }

        public String getItemCode() {
            return this.itemCode;
        }

        public void setItemCode(String itemCode) {
            this.itemCode = itemCode;
        }

        public String getImagePath() {
            return this.imagePath;
        }

        public void setImagePath(String imagePath) {
            this.imagePath = imagePath;
        }

        public Integer getCostCenterID() {
            return this.costCenterID;
        }

        public void setCostCenterID(Integer costCenterID) {
            this.costCenterID = costCenterID;
        }

        public Integer getMUnitId() {
            return this.mUnitId;
        }

        public void setMUnitId(Integer mUnitId) {
            this.mUnitId = mUnitId;
        }

        public Integer getDSUnitId() {
            return this.dSUnitId;
        }

        public void setDSUnitId(Integer dSUnitId) {
            this.dSUnitId = dSUnitId;
        }

        public Integer getDPUnitId() {
            return this.dPUnitId;
        }

        public void setDPUnitId(Integer dPUnitId) {
            this.dPUnitId = dPUnitId;
        }

        public Boolean getIsExpirable() {
            return this.isExpirable;
        }

        public void setIsExpirable(Boolean isExpirable) {
            this.isExpirable = isExpirable;
        }

        public Boolean getIsProdMaterial() {
            return this.isProdMaterial;
        }

        public void setIsProdMaterial(Boolean isProdMaterial) {
            this.isProdMaterial = isProdMaterial;
        }

        public Integer getLevel() {
            return this.level;
        }

        public void setLevel(Integer level) {
            this.level = level;
        }

        public Boolean getIsUnitWiseRate() {
            return this.isUnitWiseRate;
        }

        public void setIsUnitWiseRate(Boolean isUnitWiseRate) {
            this.isUnitWiseRate = isUnitWiseRate;
        }

        public Float getSRate() {
            return this.sRate;
        }

        public void setSRate(Float sRate) {
            this.sRate = sRate;
        }

        public String getCurrency() {
            return this.currency;
        }

        public void setCurrency(String currency) {
            this.currency = currency;
        }

        public List<ExtraMenu> getExtradata() {
            return this.extraMenu;
        }

        public void setExtraMenu(List<ExtraMenu> extradata) {
            this.extraMenu = this.extraMenu;
        }

        public Boolean getIsCombo() {
            return this.isCombo;
        }

        public void setIsCombo(Boolean isCombo) {
            this.isCombo = isCombo;
        }

        public Boolean getIsCategory() {
            return this.isCategory;
        }

        public void setIsCategory(Boolean isCategory) {
            this.isCategory = isCategory;
        }

        public Boolean getIsOutOfStock() {
            return this.isOutOfStock;
        }

        public void setIsOutOfStock(Boolean isOutOfStock) {
            this.isOutOfStock = isOutOfStock;
        }

        public String getCostCenterName() {
            return this.costCenterName;
        }

        public void setCostCenterName(String costCenterName) {
            this.costCenterName = costCenterName;
        }
    }

    public class ExtraMenu {

        @SerializedName("AddedBy")
        @Expose
        private Object addedBy;

        @SerializedName("ExtraItem")
        @Expose
        private String extraItem;

        @SerializedName("ExtraItemID")
        @Expose
        private Integer extraItemID;

        @SerializedName("ExtraPrice")
        @Expose
        private Float extraPrice;

        @SerializedName("Ingredientdata")
        @Expose
        private Object ingredientdata;

        @SerializedName("IsActive")
        @Expose
        private Boolean isActive;

        @SerializedName("IsDeleted")
        @Expose
        private Boolean isDeleted;

        @SerializedName("IsExtra")
        @Expose
        private Boolean isExtra;

        @SerializedName("ItemID")
        @Expose
        private Integer itemID;

        public ExtraMenu() {
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

        public Float getExtraPrice() {
            return this.extraPrice;
        }

        public void setExtraPrice(Float extraPrice) {
            this.extraPrice = extraPrice;
        }

        public Boolean getIsActive() {
            return this.isActive;
        }

        public void setIsActive(Boolean isActive) {
            this.isActive = isActive;
        }

        public Object getAddedBy() {
            return this.addedBy;
        }

        public void setAddedBy(Object addedBy) {
            this.addedBy = addedBy;
        }

        public Boolean getIsExtra() {
            return this.isExtra;
        }

        public void setIsExtra(Boolean isExtra) {
            this.isExtra = isExtra;
        }

        public Boolean getIsDeleted() {
            return this.isDeleted;
        }

        public void setIsDeleted(Boolean isDeleted) {
            this.isDeleted = isDeleted;
        }

        public Object getIngredientdata() {
            return this.ingredientdata;
        }

        public void setIngredientdata(Object ingredientdata) {
            this.ingredientdata = ingredientdata;
        }
    }
}
