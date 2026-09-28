package com.danfe.restaurantapp1.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class EditOrderRequest {
    private Double AdvancePaid;
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
    private Integer RoomBookedDays;
    private Integer RoomId;
    private Double RoomRate;
    private Double RoomTotal;
    private String TableId;
    private Double TermAmount;
    private String UserName;
    private Integer membershipId;
    private String names;
    private String phoneNo;
    private List<OrderDetailsList> OrderDetailsList = new ArrayList();
    private Map<String, Object> additionalProperties = new HashMap();

    public String getNames() {
        return this.names;
    }

    public void setNames(String names) {
        this.names = names;
    }

    public String getPhoneNo() {
        return this.phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public Integer getMembershipId() {
        return this.membershipId;
    }

    public void setMembershipId(Integer membershipId) {
        this.membershipId = membershipId;
    }

    public Integer getRoomBookedDays() {
        return this.RoomBookedDays;
    }

    public void setRoomBookedDays(Integer roomBookedDays) {
        this.RoomBookedDays = roomBookedDays;
    }

    public Double getRoomRate() {
        return this.RoomRate;
    }

    public void setRoomRate(Double roomRate) {
        this.RoomRate = roomRate;
    }

    public Double getRoomTotal() {
        return this.RoomTotal;
    }

    public void setRoomTotal(Double roomTotal) {
        this.RoomTotal = roomTotal;
    }

    public Double getAdvancePaid() {
        return this.AdvancePaid;
    }

    public void setAdvancePaid(Double advancePaid) {
        this.AdvancePaid = advancePaid;
    }

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

    public static class OrderDetailsList {
        private Double Amount;
        private Integer BasicAmount;
        private Object BillNo;
        private Integer BillPaid;
        private Integer CostCenterId;
        private Object Date;
        private Double ExtraCharge;
        private Boolean IsCancelled;
        private Boolean IsCombo;
        private String Note;
        private Integer OrderDetailsID;
        private Integer OrderMasterId;
        private Double Quantity;
        private Integer ROI_ItemId;
        private String ROI_ItemName;
        private Double Rate;
        private Integer SeatNo;
        private String Status;
        private Map<String, Object> additionalProperties;
        private List<orderExtraItem> orderExtraItem;
        private Integer restrotableId;
        private String restrotableTitle;

        public OrderDetailsList() {
            this.orderExtraItem = new ArrayList();
            this.additionalProperties = new HashMap();
        }

        public OrderDetailsList(Integer orderDetailsID, Double quantity, Double rate, Double amount, Boolean isCancelled, Integer ROI_ItemId, String ROI_ItemName, Integer orderMasterId, Integer seatNo, String note, Double extraCharge, Integer billPaid, String status, Integer basicAmount, Integer restrotableId, String restrotableTitle, Object billNo, Object date, Boolean isCombo, Integer costCenterId, List<orderExtraItem> orderExtraItem2) {
            this.orderExtraItem = new ArrayList();
            this.additionalProperties = new HashMap();
            this.OrderDetailsID = orderDetailsID;
            this.Quantity = quantity;
            this.Rate = rate;
            this.Amount = amount;
            this.IsCancelled = isCancelled;
            this.ROI_ItemId = ROI_ItemId;
            this.ROI_ItemName = ROI_ItemName;
            this.OrderMasterId = orderMasterId;
            this.SeatNo = seatNo;
            this.Note = note;
            this.ExtraCharge = extraCharge;
            this.BillPaid = billPaid;
            this.Status = status;
            this.BasicAmount = basicAmount;
            this.restrotableId = restrotableId;
            this.restrotableTitle = restrotableTitle;
            this.BillNo = billNo;
            this.Date = date;
            this.IsCombo = isCombo;
            this.CostCenterId = costCenterId;
            this.orderExtraItem = orderExtraItem2;
        }

        public OrderDetailsList(OrderDetailsList orderDetailsList) {
            this.orderExtraItem = new ArrayList();
            this.additionalProperties = new HashMap();
            this.OrderDetailsID = orderDetailsList.OrderDetailsID;
            this.Quantity = orderDetailsList.Quantity;
            this.Rate = orderDetailsList.Rate;
            this.Amount = orderDetailsList.Amount;
            this.IsCancelled = orderDetailsList.IsCancelled;
            this.ROI_ItemId = orderDetailsList.ROI_ItemId;
            this.ROI_ItemName = orderDetailsList.ROI_ItemName;
            this.OrderMasterId = orderDetailsList.OrderMasterId;
            this.SeatNo = orderDetailsList.SeatNo;
            this.Note = orderDetailsList.Note;
            this.ExtraCharge = orderDetailsList.ExtraCharge;
            this.BillPaid = orderDetailsList.BillPaid;
            this.Status = orderDetailsList.Status;
            this.BasicAmount = orderDetailsList.BasicAmount;
            this.restrotableId = orderDetailsList.restrotableId;
            this.restrotableTitle = orderDetailsList.restrotableTitle;
            this.BillNo = orderDetailsList.BillNo;
            this.Date = orderDetailsList.Date;
            this.IsCombo = orderDetailsList.IsCombo;
            this.CostCenterId = orderDetailsList.CostCenterId;
            this.orderExtraItem = orderDetailsList.orderExtraItem;
        }

        public void setAdditionalProperties(Map<String, Object> additionalProperties) {
            this.additionalProperties = additionalProperties;
        }

        public Integer getCostCenterId() {
            return this.CostCenterId;
        }

        public void setCostCenterId(Integer costCenterId) {
            this.CostCenterId = costCenterId;
        }

        public Boolean getCombo() {
            return this.IsCombo;
        }

        public void setCombo(Boolean combo) {
            this.IsCombo = combo;
        }

        public Integer getOrderDetailsID() {
            return this.OrderDetailsID;
        }

        public void setOrderDetailsID(Integer OrderDetailsID) {
            this.OrderDetailsID = OrderDetailsID;
        }

        public Double getQuantity() {
            return this.Quantity;
        }

        public void setQuantity(Double Quantity) {
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

        public String getRestrotableTitle() {
            return this.restrotableTitle;
        }

        public void setRestrotableTitle(String restrotableTitle) {
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

        public List<orderExtraItem> getOrderExtraItems() {
            return this.orderExtraItem;
        }

        public void setOrderExtraItems(List<orderExtraItem> orderExtraItems) {
            this.orderExtraItem = orderExtraItems;
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

        public class orderExtraItem {
            private String ExtraItem;
            private Integer ExtraItemID;
            private Double ExtraPrice;
            private Integer ItemID;
            private String ItemStatus;
            private Integer Quantity;
            private String SeatNo;
            private Map<String, Object> additionalProperties = new HashMap();

            public orderExtraItem() {
            }

            public String getSeatNo() {
                return this.SeatNo;
            }

            public void setSeatNo(String seatNo) {
                this.SeatNo = seatNo;
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

            public Integer getQuantity() {
                return this.Quantity;
            }

            public void setQuantity(Integer quantity) {
                this.Quantity = quantity;
            }

            public Double getExtraPrice() {
                return this.ExtraPrice;
            }

            public void setExtraPrice(Double extraPrice) {
                this.ExtraPrice = extraPrice;
            }

            public void setAdditionalProperties(Map<String, Object> additionalProperties) {
                this.additionalProperties = additionalProperties;
            }

            public String getItemStatus() {
                return this.ItemStatus;
            }

            public void setItemStatus(String itemStatus) {
                this.ItemStatus = itemStatus;
            }

            public Map<String, Object> getAdditionalProperties() {
                return this.additionalProperties;
            }

            public void setAdditionalProperty(String name, Object value) {
                this.additionalProperties.put(name, value);
            }
        }
    }
}
