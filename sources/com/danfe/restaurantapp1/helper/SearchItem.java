package com.danfe.restaurantapp1.helper;

/* JADX INFO: loaded from: classes.dex */
public class SearchItem {
    private String item;
    private String rate;

    public SearchItem() {
    }

    public SearchItem(String item) {
        this.item = item;
    }

    public SearchItem(String item, String rate) {
        this.item = item;
        this.rate = rate;
    }

    public String getItem() {
        return this.item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getRate() {
        return this.rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }
}
