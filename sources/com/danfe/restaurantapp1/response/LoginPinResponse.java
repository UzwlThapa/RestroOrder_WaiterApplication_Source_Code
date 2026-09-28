package com.danfe.restaurantapp1.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes.dex */
public class LoginPinResponse {

    @SerializedName("data")
    @Expose
    private Data data;

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

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public class Data {

        @SerializedName("DisablePin")
        @Expose
        private Boolean disablePin;

        @SerializedName("Message")
        @Expose
        private String message;

        @SerializedName("OrderMenuImageshow")
        @Expose
        private String orderMenuImageshow;

        @SerializedName("OrderMenuListType")
        @Expose
        private String orderMenuListType;

        @SerializedName("Roles")
        @Expose
        private String roles;

        @SerializedName("UserID")
        @Expose
        private String userID;

        @SerializedName("UserName")
        @Expose
        private String userName;

        public Data() {
        }

        public String getMessage() {
            return this.message;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public String getUserID() {
            return this.userID;
        }

        public void setUserID(String userID) {
            this.userID = userID;
        }

        public String getUserName() {
            return this.userName;
        }

        public void setUserName(String userName) {
            this.userName = userName;
        }

        public String getRoles() {
            return this.roles;
        }

        public void setRoles(String roles) {
            this.roles = roles;
        }

        public Boolean getDisablePin() {
            return this.disablePin;
        }

        public void setDisablePin(Boolean disablePin) {
            this.disablePin = disablePin;
        }

        public String getOrderMenuListType() {
            return this.orderMenuListType;
        }

        public void setOrderMenuListType(String orderMenuListType) {
            this.orderMenuListType = orderMenuListType;
        }

        public String getOrderMenuImageshow() {
            return this.orderMenuImageshow;
        }

        public void setOrderMenuImageshow(String orderMenuImageshow) {
            this.orderMenuImageshow = orderMenuImageshow;
        }
    }
}
