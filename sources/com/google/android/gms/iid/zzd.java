package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.content.ContextCompat;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class zzd {
    Context context;
    SharedPreferences zzaEa;

    public zzd(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    public zzd(Context context, String str) {
        this.context = context;
        this.zzaEa = context.getSharedPreferences(str, 4);
        zzdo(str + "-no-backup");
    }

    private void zzdo(String str) {
        File file = new File(new ContextCompat().getNoBackupFilesDir(this.context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("InstanceID/Store", "App restored, clearing state");
            InstanceIDListenerService.zza(this.context, this);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID/Store", 3)) {
                Log.d("InstanceID/Store", "Error creating file in no backup dir: " + e.getMessage());
            }
        }
    }

    private String zzf(String str, String str2, String str3) {
        return str + "|T|" + str2 + "|" + str3;
    }

    synchronized String get(String key) {
        return this.zzaEa.getString(key, null);
    }

    synchronized String get(String subtype, String key) {
        return this.zzaEa.getString(subtype + "|S|" + key, null);
    }

    boolean isEmpty() {
        return this.zzaEa.getAll().isEmpty();
    }

    synchronized void zza(SharedPreferences.Editor editor, String str, String str2, String str3) {
        editor.putString(str + "|S|" + str2, str3);
    }

    public synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String strZzf = zzf(str, str2, str3);
        SharedPreferences.Editor editorEdit = this.zzaEa.edit();
        editorEdit.putString(strZzf, str4);
        editorEdit.putString("appVersion", str5);
        editorEdit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        editorEdit.commit();
    }

    public synchronized void zzdp(String str) {
        SharedPreferences.Editor editorEdit = this.zzaEa.edit();
        for (String str2 : this.zzaEa.getAll().keySet()) {
            if (str2.startsWith(str)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }

    public KeyPair zzdq(String str) {
        return zzdt(str);
    }

    void zzdr(String str) {
        zzdp(str + "|");
    }

    public void zzds(String str) {
        zzdp(str + "|T|");
    }

    KeyPair zzdt(String str) {
        String str2 = get(str, "|P|");
        String str3 = get(str, "|K|");
        if (str3 == null) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str2, 8);
            byte[] bArrDecode2 = Base64.decode(str3, 8);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("InstanceID/Store", "Invalid key stored " + e);
            InstanceIDListenerService.zza(this.context, this);
            return null;
        }
    }

    synchronized KeyPair zze(String str, long j) {
        KeyPair keyPairZzwl;
        keyPairZzwl = zza.zzwl();
        SharedPreferences.Editor editorEdit = this.zzaEa.edit();
        zza(editorEdit, str, "|P|", InstanceID.zzm(keyPairZzwl.getPublic().getEncoded()));
        zza(editorEdit, str, "|K|", InstanceID.zzm(keyPairZzwl.getPrivate().getEncoded()));
        zza(editorEdit, str, "cre", Long.toString(j));
        editorEdit.commit();
        return keyPairZzwl;
    }

    public synchronized String zzg(String str, String str2, String str3) {
        return this.zzaEa.getString(zzf(str, str2, str3), null);
    }

    public synchronized void zzh(String str, String str2, String str3) {
        String strZzf = zzf(str, str2, str3);
        SharedPreferences.Editor editorEdit = this.zzaEa.edit();
        editorEdit.remove(strZzf);
        editorEdit.commit();
    }

    public synchronized void zzwt() {
        this.zzaEa.edit().clear().commit();
    }
}
