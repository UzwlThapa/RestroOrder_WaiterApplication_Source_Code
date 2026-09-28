package com.danfe.restaurantapp1.response;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WaiterListResponse {
    private Object Department;
    private Object ItemName;
    private Integer OrderDetailId;
    private Object RoomName;
    private Object TableName;
    private String WaiterIP;
    private String WaiterName;
    private Map<String, Object> additionalProperties = new HashMap();

    public String getWaiterName() {
        return this.WaiterName;
    }

    public void setWaiterName(String waiterName) {
        this.WaiterName = waiterName;
    }

    public Object getItemName() {
        return this.ItemName;
    }

    public void setItemName(Object itemName) {
        this.ItemName = itemName;
    }

    public Object getRoomName() {
        return this.RoomName;
    }

    public void setRoomName(Object roomName) {
        this.RoomName = roomName;
    }

    public Object getTableName() {
        return this.TableName;
    }

    public void setTableName(Object tableName) {
        this.TableName = tableName;
    }

    public String getWaiterIP() {
        return this.WaiterIP;
    }

    public void setWaiterIP(String waiterIP) {
        this.WaiterIP = waiterIP;
    }

    public Object getDepartment() {
        return this.Department;
    }

    public void setDepartment(Object department) {
        this.Department = department;
    }

    public Integer getOrderDetailId() {
        return this.OrderDetailId;
    }

    public void setOrderDetailId(Integer orderDetailId) {
        this.OrderDetailId = orderDetailId;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }
}
