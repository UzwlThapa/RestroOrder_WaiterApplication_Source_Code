package com.danfe.restaurantapp1.helper;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TableWithStatus {
    private Integer MergeID;
    private Integer MergeTableList;
    private String MergeTableName;
    private Integer Seatcap;
    private Map<String, Object> additionalProperties = new HashMap();
    private String restroRoom;
    private Integer restroRoomId;
    private Integer restrotableId;
    private String restrotableTitle;
    private Integer restrotablesStatusID;

    public Integer getMergeID() {
        return this.MergeID;
    }

    public void setMergeID(Integer mergeID) {
        this.MergeID = mergeID;
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

    public Integer getMergeTableList() {
        return this.MergeTableList;
    }

    public void setMergeTableList(Integer mergeTableList) {
        this.MergeTableList = mergeTableList;
    }

    public String getMergeTableName() {
        return this.MergeTableName;
    }

    public void setMergeTableName(String mergeTableName) {
        this.MergeTableName = mergeTableName;
    }

    public Integer getSeatcap() {
        return this.Seatcap;
    }

    public void setSeatcap(Integer seatcap) {
        this.Seatcap = seatcap;
    }

    public Integer getRestrotablesStatusID() {
        return this.restrotablesStatusID;
    }

    public void setRestrotablesStatusID(Integer restrotablesStatusID) {
        this.restrotablesStatusID = restrotablesStatusID;
    }

    public Map<String, Object> getAdditionalProperties() {
        return this.additionalProperties;
    }

    public void setAdditionalProperty(String name, Object value) {
        this.additionalProperties.put(name, value);
    }
}
