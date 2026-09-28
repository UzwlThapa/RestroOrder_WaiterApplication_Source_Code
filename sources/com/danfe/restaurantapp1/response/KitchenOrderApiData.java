package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class KitchenOrderApiData {

    @SerializedName("message")
    @Expose
    private String message;

    @SerializedName("data")
    @Expose
    private List<OrderResponse> orderResponseData = null;

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

    public List<OrderResponse> getOrderResponseData() {
        return this.orderResponseData;
    }

    public void setOrderResponseData(List<OrderResponse> data) {
        this.orderResponseData = data;
    }

    public class OrderResponse {

        @SerializedName("coDiscount")
        @Expose
        private Float coDiscount;

        @SerializedName("CostCenterID")
        @Expose
        private Integer costCenterID;

        @SerializedName("CostCenterName")
        @Expose
        private String costCenterName;

        @SerializedName("DefaultPrinter")
        @Expose
        private String defaultPrinter;

        @SerializedName("tableList")
        @Expose
        private List<TableList> tableList = null;

        public OrderResponse() {
        }

        public Integer getCostCenterID() {
            return this.costCenterID;
        }

        public void setCostCenterID(Integer costCenterID) {
            this.costCenterID = costCenterID;
        }

        public String getCostCenterName() {
            return this.costCenterName;
        }

        public void setCostCenterName(String costCenterName) {
            this.costCenterName = costCenterName;
        }

        public String getDefaultPrinter() {
            return this.defaultPrinter;
        }

        public void setDefaultPrinter(String defaultPrinter) {
            this.defaultPrinter = defaultPrinter;
        }

        public Float getCoDiscount() {
            return this.coDiscount;
        }

        public void setCoDiscount(Float coDiscount) {
            this.coDiscount = coDiscount;
        }

        public List<TableList> getTableList() {
            return this.tableList;
        }

        public void setTableList(List<TableList> tableList) {
            this.tableList = tableList;
        }
    }

    public class TableList {

        @SerializedName("Address")
        @Expose
        private Object address;

        @SerializedName("AdvancePayment")
        @Expose
        private Float advancePayment;

        @SerializedName("Amount")
        @Expose
        private Float amount;

        @SerializedName("AmountinWords")
        @Expose
        private Object amountinWords;

        @SerializedName("Bakery")
        @Expose
        private Float bakery;

        @SerializedName("BasicAmount")
        @Expose
        private Float basicAmount;

        @SerializedName("Bevrage")
        @Expose
        private Float bevrage;

        @SerializedName("BillNo")
        @Expose
        private Object billNo;

        @SerializedName("BillPaid")
        @Expose
        private Integer billPaid;

        @SerializedName("billtime")
        @Expose
        private String billtime;

        @SerializedName("BookedDays")
        @Expose
        private Float bookedDays;

        @SerializedName("CCDiscount")
        @Expose
        private Integer cCDiscount;

        @SerializedName("Cashier")
        @Expose
        private Object cashier;

        @SerializedName("coDiscount")
        @Expose
        private Float coDiscount;

        @SerializedName("CompId")
        @Expose
        private Integer compId;

        @SerializedName("CompMasterID")
        @Expose
        private Integer compMasterID;

        @SerializedName("CostCenterId")
        @Expose
        private Integer costCenterId;

        @SerializedName("CostCenterName")
        @Expose
        private Object costCenterName;

        @SerializedName("CusID")
        @Expose
        private Integer cusID;

        @SerializedName("CusName")
        @Expose
        private Object cusName;

        @SerializedName("Date")
        @Expose
        private String date;

        @SerializedName("ExtraCharge")
        @Expose
        private Float extraCharge;

        @SerializedName("ExtraItem")
        @Expose
        private Object extraItem;

        @SerializedName("fiscalYear")
        @Expose
        private Object fiscalYear;

        @SerializedName("GetWaiterLog")
        @Expose
        private Object getWaiterLog;

        @SerializedName("GuestNo")
        @Expose
        private Integer guestNo;

        @SerializedName("HomeDeliveyNumber")
        @Expose
        private Integer homeDeliveyNumber;

        @SerializedName("HomePackQty")
        @Expose
        private Integer homePackQty;

        @SerializedName("ITName")
        @Expose
        private String iTName;

        @SerializedName("ImagePath")
        @Expose
        private String imagePath;

        @SerializedName("IsCancelled")
        @Expose
        private Boolean isCancelled;

        @SerializedName("IsCombo")
        @Expose
        private Boolean isCombo;

        @SerializedName("IsEveningDiscount")
        @Expose
        private Boolean isEveningDiscount;

        @SerializedName("IsHomeDelivery")
        @Expose
        private Boolean isHomeDelivery;

        @SerializedName("IsRunningOrder")
        @Expose
        private Integer isRunningOrder;

        @SerializedName("IsSplit")
        @Expose
        private Integer isSplit;

        @SerializedName("IsTable")
        @Expose
        private Boolean isTable;

        @SerializedName("ItemDescription")
        @Expose
        private Object itemDescription;

        @SerializedName("ItemId")
        @Expose
        private Integer itemId;

        @SerializedName("ItemName")
        @Expose
        private Object itemName;

        @SerializedName("ItemStatus")
        @Expose
        private String itemStatus;

        @SerializedName("MembershipID")
        @Expose
        private Integer membershipID;

        @SerializedName("MergeTableName")
        @Expose
        private Object mergeTableName;

        @SerializedName("MergedTables")
        @Expose
        private Object mergedTables;

        @SerializedName("NepaliInvoiceDate")
        @Expose
        private Object nepaliInvoiceDate;

        @SerializedName("Note")
        @Expose
        private String note;

        @SerializedName("OrderDetailsID")
        @Expose
        private Integer orderDetailsID;

        @SerializedName("orderExtraItem")
        @Expose
        private Object orderExtraItem;

        @SerializedName("OrderMasterId")
        @Expose
        private Integer orderMasterId;

        @SerializedName("PAN")
        @Expose
        private Object pAN;

        @SerializedName("Pizza")
        @Expose
        private Float pizza;

        @SerializedName("Price")
        @Expose
        private Float price;

        @SerializedName("PrintCount")
        @Expose
        private Integer printCount;

        @SerializedName("Quantity")
        @Expose
        private Float quantity;

        @SerializedName("ROI_ItemId")
        @Expose
        private Integer rOIItemId;

        @SerializedName("ROI_ItemName")
        @Expose
        private Object rOIItemName;

        @SerializedName("Rate")
        @Expose
        private Float rate;

        @SerializedName("restroRoom")
        @Expose
        private String restroRoom;

        @SerializedName("restroRoomId")
        @Expose
        private Integer restroRoomId;

        @SerializedName("restrotableId")
        @Expose
        private Integer restrotableId;

        @SerializedName("restrotableTitle")
        @Expose
        private String restrotableTitle;

        @SerializedName("RoomCharge")
        @Expose
        private Float roomCharge;

        @SerializedName("RoomRate")
        @Expose
        private Float roomRate;

        @SerializedName("SRate")
        @Expose
        private Float sRate;

        @SerializedName("salesMasterId")
        @Expose
        private Integer salesMasterId;

        @SerializedName("SeatNo")
        @Expose
        private Integer seatNo;

        @SerializedName("Status")
        @Expose
        private Object status;

        @SerializedName("totaldiscount")
        @Expose
        private Float totaldiscount;

        @SerializedName("Waiter")
        @Expose
        private String waiter;

        public TableList() {
        }

        public Integer getCompId() {
            return this.compId;
        }

        public void setCompId(Integer compId) {
            this.compId = compId;
        }

        public Integer getCompMasterID() {
            return this.compMasterID;
        }

        public void setCompMasterID(Integer compMasterID) {
            this.compMasterID = compMasterID;
        }

        public String getNote() {
            return this.note;
        }

        public void setNote(String note) {
            this.note = note;
        }

        public Integer getSalesMasterId() {
            return this.salesMasterId;
        }

        public void setSalesMasterId(Integer salesMasterId) {
            this.salesMasterId = salesMasterId;
        }

        public Boolean getIsCombo() {
            return this.isCombo;
        }

        public void setIsCombo(Boolean isCombo) {
            this.isCombo = isCombo;
        }

        public Integer getOrderDetailsID() {
            return this.orderDetailsID;
        }

        public void setOrderDetailsID(Integer orderDetailsID) {
            this.orderDetailsID = orderDetailsID;
        }

        public Float getQuantity() {
            return this.quantity;
        }

        public void setQuantity(Float quantity) {
            this.quantity = quantity;
        }

        public Float getRate() {
            return this.rate;
        }

        public void setRate(Float rate) {
            this.rate = rate;
        }

        public Float getSRate() {
            return this.sRate;
        }

        public void setSRate(Float sRate) {
            this.sRate = sRate;
        }

        public Float getAmount() {
            return this.amount;
        }

        public void setAmount(Float amount) {
            this.amount = amount;
        }

        public Float getBevrage() {
            return this.bevrage;
        }

        public void setBevrage(Float bevrage) {
            this.bevrage = bevrage;
        }

        public Boolean getIsCancelled() {
            return this.isCancelled;
        }

        public void setIsCancelled(Boolean isCancelled) {
            this.isCancelled = isCancelled;
        }

        public Integer getItemId() {
            return this.itemId;
        }

        public void setItemId(Integer itemId) {
            this.itemId = itemId;
        }

        public Object getItemName() {
            return this.itemName;
        }

        public void setItemName(Object itemName) {
            this.itemName = itemName;
        }

        public Integer getOrderMasterId() {
            return this.orderMasterId;
        }

        public void setOrderMasterId(Integer orderMasterId) {
            this.orderMasterId = orderMasterId;
        }

        public Integer getSeatNo() {
            return this.seatNo;
        }

        public void setSeatNo(Integer seatNo) {
            this.seatNo = seatNo;
        }

        public Integer getGuestNo() {
            return this.guestNo;
        }

        public void setGuestNo(Integer guestNo) {
            this.guestNo = guestNo;
        }

        public Object getExtraItem() {
            return this.extraItem;
        }

        public void setExtraItem(Object extraItem) {
            this.extraItem = extraItem;
        }

        public Float getExtraCharge() {
            return this.extraCharge;
        }

        public void setExtraCharge(Float extraCharge) {
            this.extraCharge = extraCharge;
        }

        public Boolean getIsHomeDelivery() {
            return this.isHomeDelivery;
        }

        public void setIsHomeDelivery(Boolean isHomeDelivery) {
            this.isHomeDelivery = isHomeDelivery;
        }

        public Integer getHomeDeliveyNumber() {
            return this.homeDeliveyNumber;
        }

        public void setHomeDeliveyNumber(Integer homeDeliveyNumber) {
            this.homeDeliveyNumber = homeDeliveyNumber;
        }

        public Integer getBillPaid() {
            return this.billPaid;
        }

        public void setBillPaid(Integer billPaid) {
            this.billPaid = billPaid;
        }

        public Object getStatus() {
            return this.status;
        }

        public void setStatus(Object status) {
            this.status = status;
        }

        public Float getBasicAmount() {
            return this.basicAmount;
        }

        public void setBasicAmount(Float basicAmount) {
            this.basicAmount = basicAmount;
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
            return this.billNo;
        }

        public void setBillNo(Object billNo) {
            this.billNo = billNo;
        }

        public Object getFiscalYear() {
            return this.fiscalYear;
        }

        public void setFiscalYear(Object fiscalYear) {
            this.fiscalYear = fiscalYear;
        }

        public String getDate() {
            return this.date;
        }

        public void setDate(String date) {
            this.date = date;
        }

        public Object getNepaliInvoiceDate() {
            return this.nepaliInvoiceDate;
        }

        public void setNepaliInvoiceDate(Object nepaliInvoiceDate) {
            this.nepaliInvoiceDate = nepaliInvoiceDate;
        }

        public Object getItemDescription() {
            return this.itemDescription;
        }

        public void setItemDescription(Object itemDescription) {
            this.itemDescription = itemDescription;
        }

        public String getItemStatus() {
            return this.itemStatus;
        }

        public void setItemStatus(String itemStatus) {
            this.itemStatus = itemStatus;
        }

        public Object getAmountinWords() {
            return this.amountinWords;
        }

        public void setAmountinWords(Object amountinWords) {
            this.amountinWords = amountinWords;
        }

        public Float getTotaldiscount() {
            return this.totaldiscount;
        }

        public void setTotaldiscount(Float totaldiscount) {
            this.totaldiscount = totaldiscount;
        }

        public String getBilltime() {
            return this.billtime;
        }

        public void setBilltime(String billtime) {
            this.billtime = billtime;
        }

        public Float getPrice() {
            return this.price;
        }

        public void setPrice(Float price) {
            this.price = price;
        }

        public Integer getCostCenterId() {
            return this.costCenterId;
        }

        public void setCostCenterId(Integer costCenterId) {
            this.costCenterId = costCenterId;
        }

        public Object getCostCenterName() {
            return this.costCenterName;
        }

        public void setCostCenterName(Object costCenterName) {
            this.costCenterName = costCenterName;
        }

        public Integer getIsRunningOrder() {
            return this.isRunningOrder;
        }

        public void setIsRunningOrder(Integer isRunningOrder) {
            this.isRunningOrder = isRunningOrder;
        }

        public Integer getIsSplit() {
            return this.isSplit;
        }

        public void setIsSplit(Integer isSplit) {
            this.isSplit = isSplit;
        }

        public Integer getHomePackQty() {
            return this.homePackQty;
        }

        public void setHomePackQty(Integer homePackQty) {
            this.homePackQty = homePackQty;
        }

        public Integer getPrintCount() {
            return this.printCount;
        }

        public void setPrintCount(Integer printCount) {
            this.printCount = printCount;
        }

        public Integer getROIItemId() {
            return this.rOIItemId;
        }

        public void setROIItemId(Integer rOIItemId) {
            this.rOIItemId = rOIItemId;
        }

        public Object getROIItemName() {
            return this.rOIItemName;
        }

        public void setROIItemName(Object rOIItemName) {
            this.rOIItemName = rOIItemName;
        }

        public String getITName() {
            return this.iTName;
        }

        public void setITName(String iTName) {
            this.iTName = iTName;
        }

        public String getImagePath() {
            return this.imagePath;
        }

        public void setImagePath(String imagePath) {
            this.imagePath = imagePath;
        }

        public Integer getCusID() {
            return this.cusID;
        }

        public void setCusID(Integer cusID) {
            this.cusID = cusID;
        }

        public Object getCusName() {
            return this.cusName;
        }

        public void setCusName(Object cusName) {
            this.cusName = cusName;
        }

        public Object getPAN() {
            return this.pAN;
        }

        public void setPAN(Object pAN) {
            this.pAN = pAN;
        }

        public Object getAddress() {
            return this.address;
        }

        public void setAddress(Object address) {
            this.address = address;
        }

        public Object getCashier() {
            return this.cashier;
        }

        public void setCashier(Object cashier) {
            this.cashier = cashier;
        }

        public Object getMergeTableName() {
            return this.mergeTableName;
        }

        public void setMergeTableName(Object mergeTableName) {
            this.mergeTableName = mergeTableName;
        }

        public String getWaiter() {
            return this.waiter;
        }

        public void setWaiter(String waiter) {
            this.waiter = waiter;
        }

        public Float getRoomRate() {
            return this.roomRate;
        }

        public void setRoomRate(Float roomRate) {
            this.roomRate = roomRate;
        }

        public Float getBookedDays() {
            return this.bookedDays;
        }

        public void setBookedDays(Float bookedDays) {
            this.bookedDays = bookedDays;
        }

        public Float getRoomCharge() {
            return this.roomCharge;
        }

        public void setRoomCharge(Float roomCharge) {
            this.roomCharge = roomCharge;
        }

        public Float getAdvancePayment() {
            return this.advancePayment;
        }

        public void setAdvancePayment(Float advancePayment) {
            this.advancePayment = advancePayment;
        }

        public Boolean getIsTable() {
            return this.isTable;
        }

        public void setIsTable(Boolean isTable) {
            this.isTable = isTable;
        }

        public Float getCoDiscount() {
            return this.coDiscount;
        }

        public void setCoDiscount(Float coDiscount) {
            this.coDiscount = coDiscount;
        }

        public Integer getCCDiscount() {
            return this.cCDiscount;
        }

        public void setCCDiscount(Integer cCDiscount) {
            this.cCDiscount = cCDiscount;
        }

        public Integer getMembershipID() {
            return this.membershipID;
        }

        public void setMembershipID(Integer membershipID) {
            this.membershipID = membershipID;
        }

        public Boolean getIsEveningDiscount() {
            return this.isEveningDiscount;
        }

        public void setIsEveningDiscount(Boolean isEveningDiscount) {
            this.isEveningDiscount = isEveningDiscount;
        }

        public Object getMergedTables() {
            return this.mergedTables;
        }

        public void setMergedTables(Object mergedTables) {
            this.mergedTables = mergedTables;
        }

        public Float getBakery() {
            return this.bakery;
        }

        public void setBakery(Float bakery) {
            this.bakery = bakery;
        }

        public Float getPizza() {
            return this.pizza;
        }

        public void setPizza(Float pizza) {
            this.pizza = pizza;
        }

        public Object getOrderExtraItem() {
            return this.orderExtraItem;
        }

        public void setOrderExtraItem(Object orderExtraItem) {
            this.orderExtraItem = orderExtraItem;
        }

        public Object getGetWaiterLog() {
            return this.getWaiterLog;
        }

        public void setGetWaiterLog(Object getWaiterLog) {
            this.getWaiterLog = getWaiterLog;
        }
    }
}
