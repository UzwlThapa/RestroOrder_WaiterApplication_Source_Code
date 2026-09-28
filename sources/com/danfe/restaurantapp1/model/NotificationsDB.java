package com.danfe.restaurantapp1.model;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsDB {
    private Long id;
    private String notification;
    private String notificationdate;

    public NotificationsDB() {
    }

    public NotificationsDB(Long id) {
        this.id = id;
    }

    public NotificationsDB(Long id, String notificationdate, String notification) {
        this.id = id;
        this.notificationdate = notificationdate;
        this.notification = notification;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNotificationdate() {
        return this.notificationdate;
    }

    public void setNotificationdate(String notificationdate) {
        this.notificationdate = notificationdate;
    }

    public String getNotification() {
        return this.notification;
    }

    public void setNotification(String notification) {
        this.notification = notification;
    }
}
