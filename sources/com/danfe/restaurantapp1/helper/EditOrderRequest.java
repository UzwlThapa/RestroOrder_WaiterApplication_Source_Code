package com.danfe.restaurantapp1.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class EditOrderRequest {
    private Double BasicAmount;
    private String BillNo;
    private Integer BillPaid;
    private String Date;
    private Integer GuestNo;
    private Boolean IsCancelled;
    private Boolean IsSplit;
    private Double NetAmount;
    private Integer OrderMasterID;
    private String Remarks;
    private Integer RoomId;
    private String TableId;
    private Double TermAmount;
    private String UserName;
    private List<OrderDetailsList> OrderDetailsList = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public Integer getBillPaid() {
        return this.BillPaid;
    }

    public void setBillPaid(Integer BillPaid) {
        this.BillPaid = BillPaid;
    }

    public Integer getOrderMasterID() {
        return this.OrderMasterID;
    }

    public void setOrderMasterID(Integer OrderMasterID) {
        this.OrderMasterID = OrderMasterID;
    }

    public String getTableId() {
        return this.TableId;
    }

    public void setTableId(String TableId) {
        this.TableId = TableId;
    }

    public String getBillNo() {
        return this.BillNo;
    }

    public void setBillNo(String BillNo) {
        this.BillNo = BillNo;
    }

    public String getDate() {
        return this.Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public Double getBasicAmount() {
        return this.BasicAmount;
    }

    public void setBasicAmount(Double BasicAmount) {
        this.BasicAmount = BasicAmount;
    }

    public Double getTermAmount() {
        return this.TermAmount;
    }

    public void setTermAmount(Double TermAmount) {
        this.TermAmount = TermAmount;
    }

    public Double getNetAmount() {
        return this.NetAmount;
    }

    public void setNetAmount(Double NetAmount) {
        this.NetAmount = NetAmount;
    }

    public String getRemarks() {
        return this.Remarks;
    }

    public void setRemarks(String Remarks) {
        this.Remarks = Remarks;
    }

    public Boolean getIsCancelled() {
        return this.IsCancelled;
    }

    public void setIsCancelled(Boolean IsCancelled) {
        this.IsCancelled = IsCancelled;
    }

    public String getUserName() {
        return this.UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public Boolean getIsSplit() {
        return this.IsSplit;
    }

    public void setIsSplit(Boolean IsSplit) {
        this.IsSplit = IsSplit;
    }

    public Integer getGuestNo() {
        return this.GuestNo;
    }

    public void setGuestNo(Integer GuestNo) {
        this.GuestNo = GuestNo;
    }

    public Integer getRoomId() {
        return this.RoomId;
    }

    public void setRoomId(Integer RoomId) {
        this.RoomId = RoomId;
    }

    public List<OrderDetailsList> getOrderDetailsList() {
        return this.OrderDetailsList;
    }

    public void setOrderDetailsList(List<OrderDetailsList> OrderDetailsList2) {
        this.OrderDetailsList = OrderDetailsList2;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class OrderDetailsList {
        private Double Amount;
        private Integer BasicAmount;
        private Object BillNo;
        private Integer BillPaid;
        private Object Date;
        private Double ExtraCharge;
        private Boolean IsCancelled;
        private String Note;
        private Integer OrderDetailsID;
        private Integer OrderMasterId;
        private Integer Quantity;
        private Integer ROI_ItemId;
        private String ROI_ItemName;
        private Double Rate;
        private Integer SeatNo;
        private String Status;
        private Map<String, Object> additionalProperties = new HashMap();
        private Integer restrotableId;
        private Object restrotableTitle;

        public OrderDetailsList() {
        }

        public Integer getOrderDetailsID() {
            return this.OrderDetailsID;
        }

        public void setOrderDetailsID(Integer OrderDetailsID) {
            this.OrderDetailsID = OrderDetailsID;
        }

        public Integer getQuantity() {
            return this.Quantity;
        }

        public void setQuantity(Integer Quantity) {
            this.Quantity = Quantity;
        }

        public Double getRate() {
            return this.Rate;
        }

        public void setRate(Double Rate) {
            this.Rate = Rate;
        }

        public Double getAmount() {
            return this.Amount;
        }

        public void setAmount(Double Amount) {
            this.Amount = Amount;
        }

        public Boolean getIsCancelled() {
            return this.IsCancelled;
        }

        public void setIsCancelled(Boolean IsCancelled) {
            this.IsCancelled = IsCancelled;
        }

        public Integer getROI_ItemId() {
            return this.ROI_ItemId;
        }

        public void setROI_ItemId(Integer ROI_ItemId) {
            this.ROI_ItemId = ROI_ItemId;
        }

        public String getROI_ItemName() {
            return this.ROI_ItemName;
        }

        public void setROI_ItemName(String ROI_ItemName) {
            this.ROI_ItemName = ROI_ItemName;
        }

        public Integer getOrderMasterId() {
            return this.OrderMasterId;
        }

        public void setOrderMasterId(Integer OrderMasterId) {
            this.OrderMasterId = OrderMasterId;
        }

        public Integer getSeatNo() {
            return this.SeatNo;
        }

        public void setSeatNo(Integer SeatNo) {
            this.SeatNo = SeatNo;
        }

        public String getNote() {
            return this.Note;
        }

        public void setNote(String Note) {
            this.Note = Note;
        }

        public Double getExtraCharge() {
            return this.ExtraCharge;
        }

        public void setExtraCharge(Double ExtraCharge) {
            this.ExtraCharge = ExtraCharge;
        }

        public Integer getBillPaid() {
            return this.BillPaid;
        }

        public void setBillPaid(Integer BillPaid) {
            this.BillPaid = BillPaid;
        }

        public String getStatus() {
            return this.Status;
        }

        public void setStatus(String Status) {
            this.Status = Status;
        }

        public Integer getBasicAmount() {
            return this.BasicAmount;
        }

        public void setBasicAmount(Integer BasicAmount) {
            this.BasicAmount = BasicAmount;
        }

        public Integer getRestrotableId() {
            return this.restrotableId;
        }

        public void setRestrotableId(Integer restrotableId) {
            this.restrotableId = restrotableId;
        }

        public Object getRestrotableTitle() {
            return this.restrotableTitle;
        }

        public void setRestrotableTitle(Object restrotableTitle) {
            this.restrotableTitle = restrotableTitle;
        }

        public Object getBillNo() {
            return this.BillNo;
        }

        public void setBillNo(Object BillNo) {
            this.BillNo = BillNo;
        }

        public Object getDate() {
            return this.Date;
        }

        public void setDate(Object Date) {
            this.Date = Date;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
