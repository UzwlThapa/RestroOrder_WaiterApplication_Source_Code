package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class ItemListByName {
    float completedQuantity;
    String imagePath;
    int itemId;
    String itemname;
    String note;
    float orderedQuantity;
    float progressQuantity;
    float totalqty;

    public ItemListByName(String itemname, float totalqty, float progressQuantity, float completedQuantity, float orderedQuantity, String imagePath, String note, int itemId) {
        this.progressQuantity = 0.0f;
        this.completedQuantity = 0.0f;
        this.orderedQuantity = 0.0f;
        this.itemname = itemname;
        this.totalqty = totalqty;
        this.progressQuantity = progressQuantity;
        this.completedQuantity = completedQuantity;
        this.orderedQuantity = orderedQuantity;
        this.imagePath = imagePath;
        this.note = note;
        this.itemId = itemId;
    }

    public String getItemname() {
        return this.itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public float getTotalqty() {
        return this.totalqty;
    }

    public void setTotalqty(float totalqty) {
        this.totalqty = totalqty;
    }

    public float getProgressQuantity() {
        return this.progressQuantity;
    }

    public void setProgressQuantity(float progressQuantity) {
        this.progressQuantity = progressQuantity;
    }

    public float getCompletedQuantity() {
        return this.completedQuantity;
    }

    public void setCompletedQuantity(float completedQuantity) {
        this.completedQuantity = completedQuantity;
    }

    public float getOrderedQuantity() {
        return this.orderedQuantity;
    }

    public void setOrderedQuantity(float orderedQuantity) {
        this.orderedQuantity = orderedQuantity;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getItemId() {
        return this.itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }
}
