package com.danfe.restaurantapp1;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import com.danfe.restaurantapp1.Interface.LogoutInterface;

/* JADX INFO: loaded from: classes.dex */
public class LogoutService extends Service {
    BroadcastReceiver broadcastReceiver;
    private int lastInteractionTime;
    private LogoutInterface logoutInterface;
    private final IBinder binder = new LocalBinder();
    boolean screenState = true;

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        LogoutService getService() {
            return LogoutService.this;
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        this.broadcastReceiver = new LogoutReceiver();
        registerReceiver(this.broadcastReceiver, filter);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null) {
            this.screenState = intent.getBooleanExtra("screen_state", true);
            if (!this.screenState) {
                Log.d(" screenState OFF", "true");
                if (this.logoutInterface != null) {
                    this.logoutInterface.logout();
                }
            } else {
                Log.d("screenState ON", "true");
            }
        }
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.broadcastReceiver);
        super.onDestroy();
    }

    public void setCallbacks(LogoutInterface logoutInterface) {
        this.logoutInterface = logoutInterface;
    }

    public long getLastInteractionTime() {
        return this.lastInteractionTime;
    }

    public void setLastInteractionTime(int lastInteractionTime) {
        this.lastInteractionTime = lastInteractionTime;
    }
}
