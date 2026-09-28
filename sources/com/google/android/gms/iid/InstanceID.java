package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InstanceID {
    public static final String ERROR_BACKOFF = "RETRY_LATER";
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_MISSING_INSTANCEID_SERVICE = "MISSING_INSTANCEID_SERVICE";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String ERROR_TIMEOUT = "TIMEOUT";
    static String zzaDC;
    static Map<String, InstanceID> zzaDw = new HashMap();
    private static zzd zzaDx;
    private static zzc zzaDy;
    Context mContext;
    String zzaDA;
    long zzaDB;
    KeyPair zzaDz;

    protected InstanceID(Context context, String subtype, Bundle options) {
        this.zzaDA = "";
        this.mContext = context.getApplicationContext();
        this.zzaDA = subtype;
    }

    public static InstanceID getInstance(Context context) {
        return zza(context, null);
    }

    public static synchronized InstanceID zza(Context context, Bundle bundle) {
        InstanceID instanceID;
        String string = bundle == null ? "" : bundle.getString("subtype");
        String str = string == null ? "" : string;
        Context applicationContext = context.getApplicationContext();
        if (zzaDx == null) {
            zzaDx = new zzd(applicationContext);
            zzaDy = new zzc(applicationContext);
        }
        zzaDC = Integer.toString(zzaC(applicationContext));
        instanceID = zzaDw.get(str);
        if (instanceID == null) {
            instanceID = new InstanceID(applicationContext, str, bundle);
            zzaDw.put(str, instanceID);
        }
        return instanceID;
    }

    static String zza(KeyPair keyPair) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            bArrDigest[0] = (byte) (((bArrDigest[0] & 15) + 112) & 255);
            return Base64.encodeToString(bArrDigest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
            return null;
        }
    }

    static int zzaC(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("InstanceID", "Never happens: can't find own package " + e);
            return 0;
        }
    }

    static String zzm(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    public void deleteInstanceID() throws IOException {
        zzb("*", "*", null);
        zzwn();
    }

    public void deleteToken(String authorizedEntity, String scope) throws IOException {
        zzb(authorizedEntity, scope, null);
    }

    public long getCreationTime() {
        String str;
        if (this.zzaDB == 0 && (str = zzaDx.get(this.zzaDA, "cre")) != null) {
            this.zzaDB = Long.parseLong(str);
        }
        return this.zzaDB;
    }

    public String getId() {
        return zza(zzwm());
    }

    public String getToken(String authorizedEntity, String scope) throws IOException {
        return getToken(authorizedEntity, scope, null);
    }

    public String getToken(String authorizedEntity, String scope, Bundle extras) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String strZzg = zzwq() ? null : zzaDx.zzg(this.zzaDA, authorizedEntity, scope);
        if (strZzg == null) {
            if (extras == null) {
                extras = new Bundle();
            }
            boolean z = "jwt".equals(extras.getString("type")) ? false : extras.getString("ttl") == null;
            strZzg = zzc(authorizedEntity, scope, extras);
            Log.w("InstanceID", "token: " + strZzg);
            if (strZzg != null && z) {
                zzaDx.zza(this.zzaDA, authorizedEntity, scope, strZzg, zzaDC);
            }
        }
        return strZzg;
    }

    public void zzb(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zzaDx.zzh(this.zzaDA, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("sender", str);
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("subscription", str);
        bundle.putString("delete", "1");
        bundle.putString("X-delete", "1");
        bundle.putString("subtype", "".equals(this.zzaDA) ? str : this.zzaDA);
        if (!"".equals(this.zzaDA)) {
            str = this.zzaDA;
        }
        bundle.putString("X-subtype", str);
        zzaDy.zzp(zzaDy.zza(bundle, zzwm()));
    }

    public String zzc(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        String str3 = "".equals(this.zzaDA) ? str : this.zzaDA;
        if (!bundle.containsKey("legacy.register")) {
            bundle.putString("subscription", str);
            bundle.putString("subtype", str3);
            bundle.putString("X-subscription", str);
            bundle.putString("X-subtype", str3);
        }
        return zzaDy.zzp(zzaDy.zza(bundle, zzwm()));
    }

    KeyPair zzwm() {
        if (this.zzaDz == null) {
            this.zzaDz = zzaDx.zzdq(this.zzaDA);
        }
        if (this.zzaDz == null) {
            this.zzaDB = System.currentTimeMillis();
            this.zzaDz = zzaDx.zze(this.zzaDA, this.zzaDB);
        }
        return this.zzaDz;
    }

    void zzwn() {
        this.zzaDB = 0L;
        zzaDx.zzdr(this.zzaDA);
        this.zzaDz = null;
    }

    zzd zzwo() {
        return zzaDx;
    }

    zzc zzwp() {
        return zzaDy;
    }

    boolean zzwq() {
        String str;
        String str2 = zzaDx.get("appVersion");
        if (str2 == null || !str2.equals(zzaDC) || (str = zzaDx.get("lastToken")) == null) {
            return true;
        }
        return (System.currentTimeMillis() / 1000) - Long.valueOf(Long.parseLong(str)).longValue() > 604800;
    }
}
