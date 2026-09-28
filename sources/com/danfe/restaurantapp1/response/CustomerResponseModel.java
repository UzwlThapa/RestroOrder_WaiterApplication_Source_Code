package com.danfe.restaurantapp1.response;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CustomerResponseModel {
    private List<D> d = null;
    private Map<String, Object> additionalProperties = new HashMap();

    public List<D> getD() {
        return this.d;
    }

    public void setD(List<D> d) {
        this.d = d;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }

    public class D {
        private Object AddedBy;
        private String Address;
        private String Addresss;
        private String Anniversary;
        private String Birthday;
        private String CardNumber;
        private String CitizenshipPassportNo;
        private String City;
        private String Company;
        private String Country;
        private Integer CusCreditID;
        private String DateOfExpire;
        private String DateOfIssue;
        private Double Discount;
        private String Email;
        private String Fname;
        private Object GTDiscount;
        private Integer GTID;
        private String GuestType;
        private Boolean IsCustomer;
        private String Lname;
        private Integer MembershipID;
        private String Name;
        private String Occupation;
        private String PAN;
        private Integer PayAmount;
        private Double RemainingBalance;
        private Object TelHome;
        private String TelMobile;
        private String TelWork;
        private String Type;
        private Double UptoNowPaid;
        private Integer VendorID;
        private Map<String, Object> additionalProperties = new HashMap();

        public D() {
        }

        public String getType() {
            return this.Type;
        }

        public void setType(String type) {
            this.Type = type;
        }

        public Integer getCusCreditID() {
            return this.CusCreditID;
        }

        public void setCusCreditID(Integer cusCreditID) {
            this.CusCreditID = cusCreditID;
        }

        public String getAddresss() {
            return this.Addresss;
        }

        public void setAddresss(String addresss) {
            this.Addresss = addresss;
        }

        public String getName() {
            return this.Name;
        }

        public void setName(String name) {
            this.Name = name;
        }

        public Integer getMembershipID() {
            return this.MembershipID;
        }

        public void setMembershipID(Integer membershipID) {
            this.MembershipID = membershipID;
        }

        public Integer getVendorID() {
            return this.VendorID;
        }

        public void setVendorID(Integer vendorID) {
            this.VendorID = vendorID;
        }

        public String getFname() {
            return this.Fname;
        }

        public void setFname(String fname) {
            this.Fname = fname;
        }

        public String getLname() {
            return this.Lname;
        }

        public void setLname(String lname) {
            this.Lname = lname;
        }

        public String getAddress() {
            return this.Address;
        }

        public void setAddress(String address) {
            this.Address = address;
        }

        public String getCity() {
            return this.City;
        }

        public void setCity(String city) {
            this.City = city;
        }

        public String getCountry() {
            return this.Country;
        }

        public void setCountry(String country) {
            this.Country = country;
        }

        public Object getTelHome() {
            return this.TelHome;
        }

        public void setTelHome(Object telHome) {
            this.TelHome = telHome;
        }

        public String getTelWork() {
            return this.TelWork;
        }

        public void setTelWork(String telWork) {
            this.TelWork = telWork;
        }

        public String getTelMobile() {
            return this.TelMobile;
        }

        public void setTelMobile(String telMobile) {
            this.TelMobile = telMobile;
        }

        public String getEmail() {
            return this.Email;
        }

        public void setEmail(String email) {
            this.Email = email;
        }

        public String getOccupation() {
            return this.Occupation;
        }

        public void setOccupation(String occupation) {
            this.Occupation = occupation;
        }

        public String getCompany() {
            return this.Company;
        }

        public void setCompany(String company) {
            this.Company = company;
        }

        public String getBirthday() {
            return this.Birthday;
        }

        public void setBirthday(String birthday) {
            this.Birthday = birthday;
        }

        public String getAnniversary() {
            return this.Anniversary;
        }

        public void setAnniversary(String anniversary) {
            this.Anniversary = anniversary;
        }

        public String getCardNumber() {
            return this.CardNumber;
        }

        public void setCardNumber(String cardNumber) {
            this.CardNumber = cardNumber;
        }

        public String getDateOfIssue() {
            return this.DateOfIssue;
        }

        public void setDateOfIssue(String dateOfIssue) {
            this.DateOfIssue = dateOfIssue;
        }

        public String getDateOfExpire() {
            return this.DateOfExpire;
        }

        public void setDateOfExpire(String dateOfExpire) {
            this.DateOfExpire = dateOfExpire;
        }

        public Double getDiscount() {
            return this.Discount;
        }

        public void setDiscount(Double discount) {
            this.Discount = discount;
        }

        public String getPAN() {
            return this.PAN;
        }

        public void setPAN(String pAN) {
            this.PAN = pAN;
        }

        public Boolean getIsCustomer() {
            return this.IsCustomer;
        }

        public void setIsCustomer(Boolean isCustomer) {
            this.IsCustomer = isCustomer;
        }

        public Double getRemainingBalance() {
            return this.RemainingBalance;
        }

        public void setRemainingBalance(Double remainingBalance) {
            this.RemainingBalance = remainingBalance;
        }

        public Double getUptoNowPaid() {
            return this.UptoNowPaid;
        }

        public void setUptoNowPaid(Double uptoNowPaid) {
            this.UptoNowPaid = uptoNowPaid;
        }

        public Integer getPayAmount() {
            return this.PayAmount;
        }

        public void setPayAmount(Integer payAmount) {
            this.PayAmount = payAmount;
        }

        public Object getAddedBy() {
            return this.AddedBy;
        }

        public void setAddedBy(Object addedBy) {
            this.AddedBy = addedBy;
        }

        public Integer getGTID() {
            return this.GTID;
        }

        public void setGTID(Integer gTID) {
            this.GTID = gTID;
        }

        public String getGuestType() {
            return this.GuestType;
        }

        public void setGuestType(String guestType) {
            this.GuestType = guestType;
        }

        public Object getGTDiscount() {
            return this.GTDiscount;
        }

        public void setGTDiscount(Object gTDiscount) {
            this.GTDiscount = gTDiscount;
        }

        public String getCitizenshipPassportNo() {
            return this.CitizenshipPassportNo;
        }

        public void setCitizenshipPassportNo(String citizenshipPassportNo) {
            this.CitizenshipPassportNo = citizenshipPassportNo;
        }

        public Map<String, Object> getAdditionalProperties() {
            return this.additionalProperties;
        }

        public void setAdditionalProperty(String name, Object value) {
            this.additionalProperties.put(name, value);
        }
    }
}
