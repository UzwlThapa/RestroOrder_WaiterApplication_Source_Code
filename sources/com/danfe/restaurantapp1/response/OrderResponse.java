package com.danfe.restaurantapp1.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OrderResponse {
    private Integer CostCenterID;
    private String CostCenterName;
    private Double coDiscount;
    private List<OrderList> tableList = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

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

    public Double getCoDiscount() {
        return this.coDiscount;
    }

    public void setCoDiscount(Double coDiscount) {
        this.coDiscount = coDiscount;
    }

    public List<OrderList> getTableList() {
        return this.tableList;
    }

    public void setTableList(List<OrderList> tableList) {
        this.tableList = tableList;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class OrderList {
        private Double Amount;
        private Object AmountinWords;
        private Double BasicAmount;
        private Double Bevrage;
        private Object BillNo;
        private Integer BillPaid;
        private Integer CostCenterId;
        private Object CusName;
        private String Date;
        private Double ExtraCharge;
        private Object ExtraItem;
        private Integer HomeDeliveyNumber;
        private Integer HomePackQty;
        private String ITName;
        private String ImagePath;
        private Boolean IsCancelled;
        private Boolean IsHomeDelivery;
        private Integer IsRunningOrder;
        private Object ItemDescription;
        private Integer ItemId;
        private Object ItemName;
        private String ItemStatus;
        private String Note;
        private Integer OrderDetailsID;
        private Integer OrderMasterId;
        private Double Price;
        private Float Quantity;
        private Integer ROI_ItemId;
        private Object ROI_ItemName;
        private Double Rate;
        private Double SRate;
        private Integer SeatNo;
        private Object Status;
        private Map<String, Object> additionalProperties = new HashMap();
        private String billtime;
        private String note;
        private String restroRoom;
        private Integer restroRoomId;
        private Integer restrotableId;
        private String restrotableTitle;
        private Double totaldiscount;

        public OrderList() {
        }

        public Integer getOrderDetailsID() {
            return this.OrderDetailsID;
        }

        public void setOrderDetailsID(Integer orderDetailsID) {
            this.OrderDetailsID = orderDetailsID;
        }

        public Float getQuantity() {
            return this.Quantity;
        }

        public void setQuantity(Float quantity) {
            this.Quantity = quantity;
        }

        public Double getRate() {
            return this.Rate;
        }

        public void setRate(Double rate) {
            this.Rate = rate;
        }

        public Double getSRate() {
            return this.SRate;
        }

        public void setSRate(Double sRate) {
            this.SRate = sRate;
        }

        public Double getAmount() {
            return this.Amount;
        }

        public void setAmount(Double amount) {
            this.Amount = amount;
        }

        public Double getBevrage() {
            return this.Bevrage;
        }

        public void setBevrage(Double bevrage) {
            this.Bevrage = bevrage;
        }

        public Boolean getIsCancelled() {
            return this.IsCancelled;
        }

        public void setIsCancelled(Boolean isCancelled) {
            this.IsCancelled = isCancelled;
        }

        public Integer getItemId() {
            return this.ItemId;
        }

        public void setItemId(Integer itemId) {
            this.ItemId = itemId;
        }

        public Object getItemName() {
            return this.ItemName;
        }

        public void setItemName(Object itemName) {
            this.ItemName = itemName;
        }

        public Integer getOrderMasterId() {
            return this.OrderMasterId;
        }

        public void setOrderMasterId(Integer orderMasterId) {
            this.OrderMasterId = orderMasterId;
        }

        public Integer getSeatNo() {
            return this.SeatNo;
        }

        public void setSeatNo(Integer seatNo) {
            this.SeatNo = seatNo;
        }

        public String getNote() {
            return this.Note;
        }

        public void setNote(String note) {
            this.Note = note;
        }

        public Object getExtraItem() {
            return this.ExtraItem;
        }

        public void setExtraItem(Object extraItem) {
            this.ExtraItem = extraItem;
        }

        public Double getExtraCharge() {
            return this.ExtraCharge;
        }

        public void setExtraCharge(Double extraCharge) {
            this.ExtraCharge = extraCharge;
        }

        public Boolean getIsHomeDelivery() {
            return this.IsHomeDelivery;
        }

        public void setIsHomeDelivery(Boolean isHomeDelivery) {
            this.IsHomeDelivery = isHomeDelivery;
        }

        public Integer getHomeDeliveyNumber() {
            return this.HomeDeliveyNumber;
        }

        public void setHomeDeliveyNumber(Integer homeDeliveyNumber) {
            this.HomeDeliveyNumber = homeDeliveyNumber;
        }

        public Integer getBillPaid() {
            return this.BillPaid;
        }

        public void setBillPaid(Integer billPaid) {
            this.BillPaid = billPaid;
        }

        public Object getStatus() {
            return this.Status;
        }

        public void setStatus(Object status) {
            this.Status = status;
        }

        public Double getBasicAmount() {
            return this.BasicAmount;
        }

        public void setBasicAmount(Double basicAmount) {
            this.BasicAmount = basicAmount;
        }

        public Integer getRestrotableId() {
            return this.restrotableId;
        }

        public void setRestrotableId(Integer restrotableId) {
            this.restrotableId = restrotableId;
        }

        public String getRestrotableTitle() {
            return this.restrotableTitle;
        }

        public void setRestrotableTitle(String restrotableTitle) {
            this.restrotableTitle = restrotableTitle;
        }

        public Integer getRestroRoomId() {
            return this.restroRoomId;
        }

        public void setRestroRoomId(Integer restroRoomId) {
            this.restroRoomId = restroRoomId;
        }

        public String getRestroRoom() {
            return this.restroRoom;
        }

        public void setRestroRoom(String restroRoom) {
            this.restroRoom = restroRoom;
        }

        public Object getBillNo() {
            return this.BillNo;
        }

        public void setBillNo(Object billNo) {
            this.BillNo = billNo;
        }

        public String getDate() {
            return this.Date;
        }

        public void setDate(String date) {
            this.Date = date;
        }

        public Object getItemDescription() {
            return this.ItemDescription;
        }

        public void setItemDescription(Object itemDescription) {
            this.ItemDescription = itemDescription;
        }

        public String getItemStatus() {
            return this.ItemStatus;
        }

        public void setItemStatus(String itemStatus) {
            this.ItemStatus = itemStatus;
        }

        public Object getAmountinWords() {
            return this.AmountinWords;
        }

        public void setAmountinWords(Object amountinWords) {
            this.AmountinWords = amountinWords;
        }

        public Double getTotaldiscount() {
            return this.totaldiscount;
        }

        public void setTotaldiscount(Double totaldiscount) {
            this.totaldiscount = totaldiscount;
        }

        public String getBilltime() {
            return this.billtime;
        }

        public void setBilltime(String billtime) {
            this.billtime = billtime;
        }

        public Double getPrice() {
            return this.Price;
        }

        public void setPrice(Double price) {
            this.Price = price;
        }

        public Integer getCostCenterId() {
            return this.CostCenterId;
        }

        public void setCostCenterId(Integer costCenterId) {
            this.CostCenterId = costCenterId;
        }

        public Integer getIsRunningOrder() {
            return this.IsRunningOrder;
        }

        public void setIsRunningOrder(Integer isRunningOrder) {
            this.IsRunningOrder = isRunningOrder;
        }

        public Integer getHomePackQty() {
            return this.HomePackQty;
        }

        public void setHomePackQty(Integer homePackQty) {
            this.HomePackQty = homePackQty;
        }

        public Integer getROIItemId() {
            return this.ROI_ItemId;
        }

        public void setROIItemId(Integer rOIItemId) {
            this.ROI_ItemId = rOIItemId;
        }

        public Object getROIItemName() {
            return this.ROI_ItemName;
        }

        public void setROIItemName(Object rOIItemName) {
            this.ROI_ItemName = rOIItemName;
        }

        public String getITName() {
            return this.ITName;
        }

        public void setITName(String iTName) {
            this.ITName = iTName;
        }

        public String getImagePath() {
            return this.ImagePath;
        }

        public void setImagePath(String imagePath) {
            this.ImagePath = imagePath;
        }

        public Object getCusName() {
            return this.CusName;
        }

        public void setCusName(Object cusName) {
            this.CusName = cusName;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
