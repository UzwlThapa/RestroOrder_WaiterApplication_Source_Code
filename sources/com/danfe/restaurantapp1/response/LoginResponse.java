package com.danfe.restaurantapp1.response;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LoginResponse {
    private String Password;
    private String RoleNames;
    private String Status;
    private Integer UserID;
    private String Username;
    private Map<String, Object> additionalProperties = new HashMap();

    public String getUsername() {
        return this.Username;
    }

    public void setUsername(String username) {
        this.Username = username;
    }

    public String getPassword() {
        return this.Password;
    }

    public void setPassword(String password) {
        this.Password = password;
    }

    public Integer getUserID() {
        return this.UserID;
    }

    public void setUserID(Integer userID) {
        this.UserID = userID;
    }

    public String getStatus() {
        return this.Status;
    }

    public void setStatus(String status) {
        this.Status = status;
    }

    public String getRoleNames() {
        return this.RoleNames;
    }

    public void setRoleNames(String roleNames) {
        this.RoleNames = roleNames;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }
}
