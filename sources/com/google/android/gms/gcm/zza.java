package com.google.android.gms.gcm;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
class zza {
    static zza zzaCi;
    private Context mContext;

    /* JADX INFO: renamed from: com.google.android.gms.gcm.zza$zza, reason: collision with other inner class name */
    private class C0026zza extends IllegalArgumentException {
        private C0026zza(String str) {
            super(str);
        }
    }

    private zza(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void zza(String str, Notification notification) {
        if (Log.isLoggable("GcmNotification", 3)) {
            Log.d("GcmNotification", "Showing notification");
        }
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (TextUtils.isEmpty(str)) {
            str = "GCM-Notification:" + SystemClock.uptimeMillis();
        }
        notificationManager.notify(str, 0, notification);
    }

    static synchronized zza zzaz(Context context) {
        if (zzaCi == null) {
            zzaCi = new zza(context);
        }
        return zzaCi;
    }

    static String zzc(Bundle bundle, String str) {
        String string = bundle.getString(str);
        return string == null ? bundle.getString(str.replace("gcm.n.", "gcm.notification.")) : string;
    }

    private String zzd(Bundle bundle, String str) {
        String strZzc = zzc(bundle, str);
        if (!TextUtils.isEmpty(strZzc)) {
            return strZzc;
        }
        String strZzc2 = zzc(bundle, str + "_loc_key");
        if (TextUtils.isEmpty(strZzc2)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(strZzc2, "string", this.mContext.getPackageName());
        if (identifier == 0) {
            throw new C0026zza(zzdj(str + "_loc_key") + " resource not found: " + strZzc2);
        }
        String strZzc3 = zzc(bundle, str + "_loc_args");
        if (TextUtils.isEmpty(strZzc3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(strZzc3);
            Object[] objArr = new String[jSONArray.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            try {
                return resources.getString(identifier, objArr);
            } catch (MissingFormatArgumentException e) {
                throw new C0026zza("Missing format argument for " + strZzc2 + ": " + e);
            }
        } catch (JSONException e2) {
            throw new C0026zza("Malformed " + zzdj(str + "_loc_args") + ": " + strZzc3);
        }
    }

    private String zzdj(String str) {
        return str.substring("gcm.n.".length());
    }

    private int zzdk(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new C0026zza("Missing icon");
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(str, "drawable", this.mContext.getPackageName());
        if (identifier == 0 && (identifier = resources.getIdentifier(str, "mipmap", this.mContext.getPackageName())) == 0) {
            throw new C0026zza("Icon resource not found: " + str);
        }
        return identifier;
    }

    private Uri zzdl(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if ("default".equals(str)) {
            return RingtoneManager.getDefaultUri(2);
        }
        throw new C0026zza("Invalid sound: " + str);
    }

    static boolean zzu(Bundle bundle) {
        return zzc(bundle, "gcm.n.icon") != null;
    }

    private int zzvW() {
        return (int) SystemClock.uptimeMillis();
    }

    private Notification zzw(Bundle bundle) {
        String strZzd = zzd(bundle, "gcm.n.title");
        if (TextUtils.isEmpty(strZzd)) {
            throw new C0026zza("Missing title");
        }
        String strZzd2 = zzd(bundle, "gcm.n.body");
        int iZzdk = zzdk(zzc(bundle, "gcm.n.icon"));
        Uri uriZzdl = zzdl(zzc(bundle, "gcm.n.sound"));
        PendingIntent pendingIntentZzx = zzx(bundle);
        if (Build.VERSION.SDK_INT < 11) {
            if (pendingIntentZzx == null) {
                Intent intent = new Intent();
                intent.setPackage("com.google.example.invalidpackage");
                pendingIntentZzx = PendingIntent.getBroadcast(this.mContext, 0, intent, 0);
            }
            NotificationCompat.Builder contentText = new NotificationCompat.Builder(this.mContext).setSmallIcon(iZzdk).setAutoCancel(true).setContentIntent(pendingIntentZzx).setContentTitle(strZzd).setContentText(strZzd2);
            if (uriZzdl != null) {
                contentText.setSound(uriZzdl);
            }
            return contentText.build();
        }
        Notification.Builder contentText2 = new Notification.Builder(this.mContext).setAutoCancel(true).setSmallIcon(iZzdk).setContentTitle(strZzd).setContentText(strZzd2);
        if (Build.VERSION.SDK_INT >= 21) {
            String strZzc = zzc(bundle, "gcm.n.color");
            if (!TextUtils.isEmpty(strZzc)) {
                contentText2.setColor(Color.parseColor(strZzc));
            }
        }
        if (uriZzdl != null) {
            contentText2.setSound(uriZzdl);
        }
        if (pendingIntentZzx != null) {
            contentText2.setContentIntent(pendingIntentZzx);
        }
        return Build.VERSION.SDK_INT >= 16 ? contentText2.build() : contentText2.getNotification();
    }

    private PendingIntent zzx(Bundle bundle) {
        String strZzc = zzc(bundle, "gcm.n.click_action");
        if (TextUtils.isEmpty(strZzc)) {
            return null;
        }
        Intent intent = new Intent(strZzc);
        intent.setPackage(this.mContext.getPackageName());
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        for (String str : bundle.keySet()) {
            if (str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                intent.removeExtra(str);
            }
        }
        return PendingIntent.getActivity(this.mContext, zzvW(), intent, 1073741824);
    }

    boolean zzv(Bundle bundle) {
        try {
            zza(zzc(bundle, "gcm.n.tag"), zzw(bundle));
            return true;
        } catch (C0026zza e) {
            Log.w("GcmNotification", "Failed to show notification: " + e.getMessage());
            return false;
        }
    }
}
