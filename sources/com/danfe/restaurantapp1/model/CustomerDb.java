package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class CustomerDb {
    private String FullAddress;
    private String Name;
    private String PAN;
    private String addedBy;
    private String address;
    private String anniversary;
    private String birthday;
    private String cardNumber;
    private String city;
    private String country;
    private String ctzPassportNumber;
    private String customerCreditId;
    private String dateOfExpire;
    private String dateOfIssue;
    private String discount;
    private String email;
    private String fName;
    private String gtDiscount;
    private String gtId;
    private String guestType;
    private Long id;
    private String isCustomer;
    private String lName;
    private String membershipId;
    private String occupation;
    private String payAmount;
    private String remainingBalance;
    private String telHome;
    private String telMobile;
    private String telWork;
    private String uptoNowPaid;
    private String vendorId;

    public CustomerDb() {
    }

    public CustomerDb(Long id) {
        this.id = id;
    }

    public CustomerDb(Long id, String customerCreditId, String FullAddress, String Name, String membershipId, String vendorId, String fName, String lName, String address, String city, String country, String telHome, String telWork, String telMobile, String email, String occupation, String birthday, String anniversary, String cardNumber, String dateOfIssue, String dateOfExpire, String discount, String PAN, String isCustomer, String remainingBalance, String uptoNowPaid, String payAmount, String addedBy, String gtId, String guestType, String gtDiscount, String ctzPassportNumber) {
        this.id = id;
        this.customerCreditId = customerCreditId;
        this.FullAddress = FullAddress;
        this.Name = Name;
        this.membershipId = membershipId;
        this.vendorId = vendorId;
        this.fName = fName;
        this.lName = lName;
        this.address = address;
        this.city = city;
        this.country = country;
        this.telHome = telHome;
        this.telWork = telWork;
        this.telMobile = telMobile;
        this.email = email;
        this.occupation = occupation;
        this.birthday = birthday;
        this.anniversary = anniversary;
        this.cardNumber = cardNumber;
        this.dateOfIssue = dateOfIssue;
        this.dateOfExpire = dateOfExpire;
        this.discount = discount;
        this.PAN = PAN;
        this.isCustomer = isCustomer;
        this.remainingBalance = remainingBalance;
        this.uptoNowPaid = uptoNowPaid;
        this.payAmount = payAmount;
        this.addedBy = addedBy;
        this.gtId = gtId;
        this.guestType = guestType;
        this.gtDiscount = gtDiscount;
        this.ctzPassportNumber = ctzPassportNumber;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCustomerCreditId() {
        return this.customerCreditId;
    }

    public void setCustomerCreditId(String customerCreditId) {
        this.customerCreditId = customerCreditId;
    }

    public String getFullAddress() {
        return this.FullAddress;
    }

    public void setFullAddress(String FullAddress) {
        this.FullAddress = FullAddress;
    }

    public String getName() {
        return this.Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getMembershipId() {
        return this.membershipId;
    }

    public void setMembershipId(String membershipId) {
        this.membershipId = membershipId;
    }

    public String getVendorId() {
        return this.vendorId;
    }

    public void setVendorId(String vendorId) {
        this.vendorId = vendorId;
    }

    public String getFName() {
        return this.fName;
    }

    public void setFName(String fName) {
        this.fName = fName;
    }

    public String getLName() {
        return this.lName;
    }

    public void setLName(String lName) {
        this.lName = lName;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getTelHome() {
        return this.telHome;
    }

    public void setTelHome(String telHome) {
        this.telHome = telHome;
    }

    public String getTelWork() {
        return this.telWork;
    }

    public void setTelWork(String telWork) {
        this.telWork = telWork;
    }

    public String getTelMobile() {
        return this.telMobile;
    }

    public void setTelMobile(String telMobile) {
        this.telMobile = telMobile;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOccupation() {
        return this.occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAnniversary() {
        return this.anniversary;
    }

    public void setAnniversary(String anniversary) {
        this.anniversary = anniversary;
    }

    public String getCardNumber() {
        return this.cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getDateOfIssue() {
        return this.dateOfIssue;
    }

    public void setDateOfIssue(String dateOfIssue) {
        this.dateOfIssue = dateOfIssue;
    }

    public String getDateOfExpire() {
        return this.dateOfExpire;
    }

    public void setDateOfExpire(String dateOfExpire) {
        this.dateOfExpire = dateOfExpire;
    }

    public String getDiscount() {
        return this.discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public String getPAN() {
        return this.PAN;
    }

    public void setPAN(String PAN) {
        this.PAN = PAN;
    }

    public String getIsCustomer() {
        return this.isCustomer;
    }

    public void setIsCustomer(String isCustomer) {
        this.isCustomer = isCustomer;
    }

    public String getRemainingBalance() {
        return this.remainingBalance;
    }

    public void setRemainingBalance(String remainingBalance) {
        this.remainingBalance = remainingBalance;
    }

    public String getUptoNowPaid() {
        return this.uptoNowPaid;
    }

    public void setUptoNowPaid(String uptoNowPaid) {
        this.uptoNowPaid = uptoNowPaid;
    }

    public String getPayAmount() {
        return this.payAmount;
    }

    public void setPayAmount(String payAmount) {
        this.payAmount = payAmount;
    }

    public String getAddedBy() {
        return this.addedBy;
    }

    public void setAddedBy(String addedBy) {
        this.addedBy = addedBy;
    }

    public String getGtId() {
        return this.gtId;
    }

    public void setGtId(String gtId) {
        this.gtId = gtId;
    }

    public String getGuestType() {
        return this.guestType;
    }

    public void setGuestType(String guestType) {
        this.guestType = guestType;
    }

    public String getGtDiscount() {
        return this.gtDiscount;
    }

    public void setGtDiscount(String gtDiscount) {
        this.gtDiscount = gtDiscount;
    }

    public String getCtzPassportNumber() {
        return this.ctzPassportNumber;
    }

    public void setCtzPassportNumber(String ctzPassportNumber) {
        this.ctzPassportNumber = ctzPassportNumber;
    }
}
