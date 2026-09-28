package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.gcm.GcmReceiver;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class InstanceIDListenerService extends Service {
    MessengerCompat zzaDD = new MessengerCompat(new Handler(Looper.getMainLooper()) { // from class: com.google.android.gms.iid.InstanceIDListenerService.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            InstanceIDListenerService.this.zza(msg, MessengerCompat.zzc(msg));
        }
    });
    BroadcastReceiver zzaDE = new BroadcastReceiver() { // from class: com.google.android.gms.iid.InstanceIDListenerService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Log.isLoggable("InstanceID", 3)) {
                intent.getStringExtra("registration_id");
                Log.d("InstanceID", "Received GSF callback using dynamic receiver: " + intent.getExtras());
            }
            InstanceIDListenerService.this.zzn(intent);
            InstanceIDListenerService.this.stop();
        }
    };
    int zzaDH;
    int zzaDI;
    static String ACTION = "action";
    private static String zzaDF = "google.com/iid";
    private static String zzaDG = "CMD";
    private static String zzaCn = "gcm.googleapis.com/refresh";

    static void zza(Context context, zzd zzdVar) {
        zzdVar.zzwt();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra(zzaDG, "RST");
        intent.setPackage(context.getPackageName());
        context.startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(Message message, int i) {
        zzc.zzaE(this);
        getPackageManager();
        if (i == zzc.zzaDP || i == zzc.zzaDO) {
            zzn((Intent) message.obj);
        } else {
            Log.w("InstanceID", "Message from unexpected caller " + i + " mine=" + zzc.zzaDO + " appid=" + zzc.zzaDP);
        }
    }

    static void zzaD(Context context) {
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.setPackage(context.getPackageName());
        intent.putExtra(zzaDG, "SYNC");
        context.startService(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent == null || !"com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            return null;
        }
        return this.zzaDD.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
        intentFilter.addCategory(getPackageName());
        registerReceiver(this.zzaDE, intentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
    }

    @Override // android.app.Service
    public void onDestroy() {
        unregisterReceiver(this.zzaDE);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Intent intent2;
        zzgI(startId);
        if (intent == null) {
            return 2;
        }
        try {
            if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
                if (Build.VERSION.SDK_INT <= 18 && (intent2 = (Intent) intent.getParcelableExtra("GSF")) != null) {
                    startService(intent2);
                    return 1;
                }
                zzn(intent);
            }
            stop();
            if (intent.getStringExtra("from") != null) {
                GcmReceiver.completeWakefulIntent(intent);
            }
            return 2;
        } finally {
            stop();
        }
    }

    public void onTokenRefresh() {
    }

    void stop() {
        synchronized (this) {
            this.zzaDH--;
            if (this.zzaDH == 0) {
                stopSelf(this.zzaDI);
            }
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Stop " + this.zzaDH + " " + this.zzaDI);
            }
        }
    }

    public void zzag(boolean z) {
        onTokenRefresh();
    }

    void zzgI(int i) {
        synchronized (this) {
            this.zzaDH++;
            if (i > this.zzaDI) {
                this.zzaDI = i;
            }
        }
    }

    public void zzn(Intent intent) {
        InstanceID instanceIDZza;
        String stringExtra = intent.getStringExtra("subtype");
        if (stringExtra == null) {
            instanceIDZza = InstanceID.getInstance(this);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("subtype", stringExtra);
            instanceIDZza = InstanceID.zza(this, bundle);
        }
        String stringExtra2 = intent.getStringExtra(zzaDG);
        if (intent.getStringExtra("error") != null || intent.getStringExtra("registration_id") != null) {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Register result in service " + stringExtra);
            }
            instanceIDZza.zzwp().zzr(intent);
            return;
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Service command " + stringExtra + " " + stringExtra2 + " " + intent.getExtras());
        }
        if (intent.getStringExtra("unregistered") != null) {
            zzd zzdVarZzwo = instanceIDZza.zzwo();
            if (stringExtra == null) {
                stringExtra = "";
            }
            zzdVarZzwo.zzds(stringExtra);
            instanceIDZza.zzwp().zzr(intent);
            return;
        }
        if (zzaCn.equals(intent.getStringExtra("from"))) {
            instanceIDZza.zzwo().zzds(stringExtra);
            zzag(false);
            return;
        }
        if ("RST".equals(stringExtra2)) {
            instanceIDZza.zzwn();
            zzag(true);
            return;
        }
        if ("RST_FULL".equals(stringExtra2)) {
            if (instanceIDZza.zzwo().isEmpty()) {
                return;
            }
            instanceIDZza.zzwo().zzwt();
            zzag(true);
            return;
        }
        if ("SYNC".equals(stringExtra2)) {
            instanceIDZza.zzwo().zzds(stringExtra);
            zzag(false);
        } else if ("PING".equals(stringExtra2)) {
            try {
                GoogleCloudMessaging.getInstance(this).send(zzaDF, zzc.zzws(), 0L, intent.getExtras());
            } catch (IOException e) {
                Log.w("InstanceID", "Failed to send ping response");
            }
        }
    }
}
