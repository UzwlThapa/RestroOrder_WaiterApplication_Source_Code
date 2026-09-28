package com.danfe.restaurantapp1.helper;

import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class DeviceLock {
    ActivityManager activityManager;
    ComponentName componentName;
    Context context;
    DevicePolicyManager devicePolicyManager;

    public DeviceLock(Context context) {
        this.context = context;
        this.devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        this.activityManager = (ActivityManager) context.getSystemService("activity");
        this.componentName = new ComponentName(context, (Class<?>) MyAdmin.class);
    }

    public DevicePolicyManager getDevicePolicyManager() {
        return this.devicePolicyManager;
    }

    public ComponentName getComponentName() {
        return this.componentName;
    }

    public ActivityManager getActivityManager() {
        return this.activityManager;
    }
}
