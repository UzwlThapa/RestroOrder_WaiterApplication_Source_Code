package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class Preferences {
    private static final String BASE_URL = "baseUrl";
    private static final String DEVICE_ID = "deviceID";
    private static final String DEVICE_LOCK = "device_lock";
    private static final String DEVICE_PSWD = "device_pswd";
    private static final String ENABLE_MENU_IMAGE = "menu_image";
    private static final String ENABLE_MERGETABLE = "merge_table";
    private static final String ENABLE_ORDER_GRID = "order_grid";
    private static final String ENABLE_OUTSTOCK = "out_of_stock";
    private static final String ENABLE_SHIFTITEM = "shift_item";
    private static final String ENABLE_SHOW_BILL = "show_bill";
    private static final String ENABLE_SPLITBILL = "split_bill";
    private static final String ROOM_ID = "roomId";
    private static final String ROOM_NAME = "roomName";
    private static final String ROOM_TYPE_ID = "roomTypeId";
    private static final String TABLE_ID = "table_id";
    private static final String TABLE_NAME = "tableName";
    private final String API_REQUEST_STATUS = "api_request_status";
    private SharedPreferences.Editor editor;
    private SharedPreferences preferences;

    public Preferences(Context context) {
        this.preferences = context.getSharedPreferences(Constants.PREF_NAME, 0);
        this.editor = this.preferences.edit();
    }

    public boolean getApiRequestStatus() {
        return this.preferences.getBoolean("api_request_status", false);
    }

    public void setApiRequestStatus(boolean status) {
        this.editor.putBoolean("api_request_status", status);
        this.editor.commit();
    }

    public void setPreferencesBoolean(String key, boolean status) {
        this.editor.putBoolean(key, status);
        this.editor.commit();
    }

    public boolean getPreferencesBoolean(String key) {
        return this.preferences.getBoolean(key, false);
    }

    public void setPreferencesInt(String key, int number) {
        this.editor.putInt(key, number);
        this.editor.commit();
    }

    public int getPreferencesInt(String key) {
        return this.preferences.getInt(key, 0);
    }

    public void setPreferencesString(String key, String status) {
        this.editor.putString(key, status);
        this.editor.commit();
    }

    public String getPreferencesString(String key) {
        return this.preferences.getString(key, null);
    }

    public void setPreferencesLong(String key, Long value) {
        this.editor.putLong(key, value.longValue());
        this.editor.commit();
    }

    public long getPreferencesLong(String key) {
        return this.preferences.getLong(key, 0L);
    }

    public void clearPreference() {
        this.editor.remove(BASE_URL);
        this.editor.remove(DEVICE_ID);
        this.editor.remove("api_request_status");
        this.editor.remove(ROOM_ID);
        this.editor.remove(ROOM_NAME);
        this.editor.remove(ROOM_TYPE_ID);
        this.editor.remove(TABLE_ID);
        this.editor.remove(TABLE_NAME);
        this.editor.commit();
    }

    public void setRoomTypeId(int id) {
        this.editor.putInt(ROOM_TYPE_ID, id);
        this.editor.commit();
    }

    public int getRoomTypeId() {
        return this.preferences.getInt(ROOM_TYPE_ID, -1);
    }

    public void setRoomId(int id) {
        this.editor.putInt(ROOM_ID, id);
        this.editor.commit();
    }

    public int getRoomId() {
        return this.preferences.getInt(ROOM_ID, -1);
    }

    public void setTableId(int id) {
        this.editor.putInt(TABLE_ID, id);
        this.editor.commit();
    }

    public int getTableId() {
        return this.preferences.getInt(TABLE_ID, -1);
    }

    public void setTableName(String tableName) {
        this.editor.putString(TABLE_NAME, tableName);
        this.editor.commit();
    }

    public String getTableName() {
        return this.preferences.getString(TABLE_NAME, "");
    }

    public void setRoomName(String roomName) {
        this.editor.putString(ROOM_NAME, roomName);
        this.editor.commit();
    }

    public String getRoomName() {
        return this.preferences.getString(ROOM_NAME, "");
    }

    public String getBaseUrl() {
        return this.preferences.getString(BASE_URL, "");
    }

    public void setBaseUrl(String baseUrl) {
        this.editor.putString(BASE_URL, baseUrl);
        this.editor.commit();
    }

    public void setDeviceId(String deviceId) {
        this.editor.putString(DEVICE_ID, deviceId);
        this.editor.commit();
    }

    public void setDevicePswd(String devicePswd) {
        this.editor.putString(DEVICE_PSWD, devicePswd);
        this.editor.commit();
    }

    public void setDeviceLock(Boolean deviceLock) {
        this.editor.putBoolean(DEVICE_LOCK, deviceLock.booleanValue());
        this.editor.commit();
    }

    public void setEnableOutstock(boolean outofstock) {
        this.editor.putBoolean(ENABLE_OUTSTOCK, outofstock);
        this.editor.commit();
    }

    public void setEnableShiftitem(boolean shiftitem) {
        this.editor.putBoolean(ENABLE_SHIFTITEM, shiftitem);
        this.editor.commit();
    }

    public void setEnableSplitbill(boolean splitbill) {
        this.editor.putBoolean(ENABLE_SPLITBILL, splitbill);
        this.editor.commit();
    }

    public void setEnableMergeTable(boolean mergeTable) {
        this.editor.putBoolean(ENABLE_MERGETABLE, mergeTable);
        this.editor.commit();
    }

    public void setEnableMenuImage(boolean menuImage) {
        this.editor.putBoolean(ENABLE_MENU_IMAGE, menuImage);
        this.editor.commit();
    }

    public void setEnableOrderGrid(boolean orderGrid) {
        this.editor.putBoolean(ENABLE_ORDER_GRID, orderGrid);
        this.editor.commit();
    }

    public void setEnableShowBill(boolean showBill) {
        this.editor.putBoolean(ENABLE_SHOW_BILL, showBill);
        this.editor.commit();
    }

    public Boolean getShiftItem() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_SHIFTITEM, true));
    }

    public Boolean getSplitBill() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_SPLITBILL, true));
    }

    public Boolean getOutofStock() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_OUTSTOCK, true));
    }

    public Boolean getMergeTable() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_MERGETABLE, true));
    }

    public Boolean getShowBill() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_SHOW_BILL, true));
    }

    public Boolean getEnableMenuImage() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_MENU_IMAGE, true));
    }

    public Boolean getEnableOrderGrid() {
        return Boolean.valueOf(this.preferences.getBoolean(ENABLE_ORDER_GRID, false));
    }

    public Boolean getDeviceLock() {
        return Boolean.valueOf(this.preferences.getBoolean(DEVICE_LOCK, false));
    }

    public String getDevicePswd() {
        return this.preferences.getString(DEVICE_PSWD, "");
    }

    public String getDeviceId() {
        return this.preferences.getString(DEVICE_ID, "");
    }
}
