package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ServiceResult {
    private List<MenuList> MenuList = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public List<MenuList> getMenuList() {
        return this.MenuList;
    }

    public void setMenuList(List<MenuList> MenuList2) {
        this.MenuList = MenuList2;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class MenuList {
        private Integer MenuID;
        private String MenuName;
        private String PhotoPath;
        private List<CategoryList> categoryList = new ArrayList();
        private Map<String, Object> additionalProperties = new HashMap();

        public MenuList() {
        }

        public Integer getMenuID() {
            return this.MenuID;
        }

        public void setMenuID(Integer MenuID) {
            this.MenuID = MenuID;
        }

        public String getMenuName() {
            return this.MenuName;
        }

        public void setMenuName(String MenuName) {
            this.MenuName = MenuName;
        }

        public List<CategoryList> getCategoryList() {
            return this.categoryList;
        }

        public void setCategoryList(List<CategoryList> categoryList) {
            this.categoryList = categoryList;
        }

        public String getPhotoPath() {
            return this.PhotoPath;
        }

        public void setPhotoPath(String PhotoPath) {
            this.PhotoPath = PhotoPath;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class CategoryList {
        private Integer CategoriesID;
        private String CategoriesName;
        private Integer MenuID;
        private Object MenuName;
        private String PhotoPath;
        private List<ItemList> itemList = new ArrayList();
        private Map<String, Object> additionalProperties = new HashMap();

        public CategoryList() {
        }

        public Integer getCategoriesID() {
            return this.CategoriesID;
        }

        public void setCategoriesID(Integer CategoriesID) {
            this.CategoriesID = CategoriesID;
        }

        public Integer getMenuID() {
            return this.MenuID;
        }

        public void setMenuID(Integer MenuID) {
            this.MenuID = MenuID;
        }

        public String getCategoriesName() {
            return this.CategoriesName;
        }

        public void setCategoriesName(String CategoriesName) {
            this.CategoriesName = CategoriesName;
        }

        public String getPhotoPath() {
            return this.PhotoPath;
        }

        public void setPhotoPath(String PhotoPath) {
            this.PhotoPath = PhotoPath;
        }

        public Object getMenuName() {
            return this.MenuName;
        }

        public void setMenuName(Object MenuName) {
            this.MenuName = MenuName;
        }

        public List<ItemList> getItemList() {
            return this.itemList;
        }

        public void setItemList(List<ItemList> itemList) {
            this.itemList = itemList;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class ItemList {
        private Integer CategoriesID;
        private Object CategoriesName;
        private Integer CostCenterId;
        private String CostCenterName;
        private Object ExtraCharge;
        private Integer GuestNo;
        private Integer IsCancelled;
        private Integer IsSplit;
        private String ItemCode;
        private String ItemDescription;
        private Integer ItemID;
        private String ItemName;
        private Object Note;
        private Integer OrderDetailsID;
        private Integer OrderMasterId;
        private String PhotoPath;
        private Double Price;
        private String PriceWithIcon;
        private Integer Quantity;
        private Object Remarks;
        private Integer RoomId;
        private Object RowTotal;
        private Integer SeatNo;
        private Object Status;
        private Integer TableId;
        private Integer UnitID;
        private Object UnitName;
        private Object restrotableTitle;
        private Object room;
        private List<UnitList> unitList = new ArrayList();
        private Map<String, Object> additionalProperties = new HashMap();

        public ItemList() {
        }

        public Integer getItemID() {
            return this.ItemID;
        }

        public void setItemID(Integer ItemID) {
            this.ItemID = ItemID;
        }

        public String getItemName() {
            return this.ItemName;
        }

        public void setItemName(String ItemName) {
            this.ItemName = ItemName;
        }

        public String getItemDescription() {
            return this.ItemDescription;
        }

        public void setItemDescription(String ItemDescription) {
            this.ItemDescription = ItemDescription;
        }

        public String getPhotoPath() {
            return this.PhotoPath;
        }

        public void setPhotoPath(String PhotoPath) {
            this.PhotoPath = PhotoPath;
        }

        public Double getPrice() {
            return this.Price;
        }

        public void setPrice(Double Price) {
            this.Price = Price;
        }

        public String getPriceWithIcon() {
            return this.PriceWithIcon;
        }

        public void setPriceWithIcon(String PriceWithIcon) {
            this.PriceWithIcon = PriceWithIcon;
        }

        public String getItemCode() {
            return this.ItemCode;
        }

        public void setItemCode(String ItemCode) {
            this.ItemCode = ItemCode;
        }

        public Integer getUnitID() {
            return this.UnitID;
        }

        public void setUnitID(Integer UnitID) {
            this.UnitID = UnitID;
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

        public Object getRowTotal() {
            return this.RowTotal;
        }

        public void setRowTotal(Object RowTotal) {
            this.RowTotal = RowTotal;
        }

        public Integer getCategoriesID() {
            return this.CategoriesID;
        }

        public void setCategoriesID(Integer CategoriesID) {
            this.CategoriesID = CategoriesID;
        }

        public Object getCategoriesName() {
            return this.CategoriesName;
        }

        public void setCategoriesName(Object CategoriesName) {
            this.CategoriesName = CategoriesName;
        }

        public Object getUnitName() {
            return this.UnitName;
        }

        public void setUnitName(Object UnitName) {
            this.UnitName = UnitName;
        }

        public Object getNote() {
            return this.Note;
        }

        public void setNote(Object Note) {
            this.Note = Note;
        }

        public Object getExtraCharge() {
            return this.ExtraCharge;
        }

        public void setExtraCharge(Object ExtraCharge) {
            this.ExtraCharge = ExtraCharge;
        }

        public Integer getQuantity() {
            return this.Quantity;
        }

        public void setQuantity(Integer Quantity) {
            this.Quantity = Quantity;
        }

        public Integer getSeatNo() {
            return this.SeatNo;
        }

        public void setSeatNo(Integer SeatNo) {
            this.SeatNo = SeatNo;
        }

        public Integer getGuestNo() {
            return this.GuestNo;
        }

        public void setGuestNo(Integer GuestNo) {
            this.GuestNo = GuestNo;
        }

        public Integer getIsSplit() {
            return this.IsSplit;
        }

        public void setIsSplit(Integer IsSplit) {
            this.IsSplit = IsSplit;
        }

        public Object getRemarks() {
            return this.Remarks;
        }

        public void setRemarks(Object Remarks) {
            this.Remarks = Remarks;
        }

        public Integer getOrderDetailsID() {
            return this.OrderDetailsID;
        }

        public void setOrderDetailsID(Integer OrderDetailsID) {
            this.OrderDetailsID = OrderDetailsID;
        }

        public Integer getIsCancelled() {
            return this.IsCancelled;
        }

        public void setIsCancelled(Integer IsCancelled) {
            this.IsCancelled = IsCancelled;
        }

        public Object getStatus() {
            return this.Status;
        }

        public void setStatus(Object Status) {
            this.Status = Status;
        }

        public Integer getRoomId() {
            return this.RoomId;
        }

        public void setRoomId(Integer RoomId) {
            this.RoomId = RoomId;
        }

        public Integer getOrderMasterId() {
            return this.OrderMasterId;
        }

        public void setOrderMasterId(Integer OrderMasterId) {
            this.OrderMasterId = OrderMasterId;
        }

        public Integer getTableId() {
            return this.TableId;
        }

        public void setTableId(Integer TableId) {
            this.TableId = TableId;
        }

        public Object getRestrotableTitle() {
            return this.restrotableTitle;
        }

        public void setRestrotableTitle(Object restrotableTitle) {
            this.restrotableTitle = restrotableTitle;
        }

        public Object getRoom() {
            return this.room;
        }

        public void setRoom(Object room) {
            this.room = room;
        }

        public List<UnitList> getUnitList() {
            return this.unitList;
        }

        public void setUnitList(List<UnitList> unitList) {
            this.unitList = unitList;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }

    public class UnitList {
        private Integer UnitID;
        private String UnitName;
        private Map<String, Object> additionalProperties = new HashMap();

        public UnitList() {
        }

        public Integer getUnitID() {
            return this.UnitID;
        }

        public void setUnitID(Integer UnitID) {
            this.UnitID = UnitID;
        }

        public String getUnitName() {
            return this.UnitName;
        }

        public void setUnitName(String UnitName) {
            this.UnitName = UnitName;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
