package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzc {
    protected final DataHolder zzabq;
    protected int zzadl;
    private int zzadm;

    public zzc(DataHolder dataHolder, int i) {
        this.zzabq = (DataHolder) zzx.zzw(dataHolder);
        zzbr(i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzw.equal(Integer.valueOf(zzcVar.zzadl), Integer.valueOf(this.zzadl)) && zzw.equal(Integer.valueOf(zzcVar.zzadm), Integer.valueOf(this.zzadm)) && zzcVar.zzabq == this.zzabq;
    }

    protected boolean getBoolean(String column) {
        return this.zzabq.zze(column, this.zzadl, this.zzadm);
    }

    protected byte[] getByteArray(String column) {
        return this.zzabq.zzg(column, this.zzadl, this.zzadm);
    }

    protected float getFloat(String column) {
        return this.zzabq.zzf(column, this.zzadl, this.zzadm);
    }

    protected int getInteger(String column) {
        return this.zzabq.zzc(column, this.zzadl, this.zzadm);
    }

    protected long getLong(String column) {
        return this.zzabq.zzb(column, this.zzadl, this.zzadm);
    }

    protected String getString(String column) {
        return this.zzabq.zzd(column, this.zzadl, this.zzadm);
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzadl), Integer.valueOf(this.zzadm), this.zzabq);
    }

    public boolean isDataValid() {
        return !this.zzabq.isClosed();
    }

    protected void zza(String str, CharArrayBuffer charArrayBuffer) {
        this.zzabq.zza(str, this.zzadl, this.zzadm, charArrayBuffer);
    }

    protected void zzbr(int i) {
        zzx.zzZ(i >= 0 && i < this.zzabq.getCount());
        this.zzadl = i;
        this.zzadm = this.zzabq.zzbt(this.zzadl);
    }

    public boolean zzce(String str) {
        return this.zzabq.zzce(str);
    }

    protected Uri zzcf(String str) {
        return this.zzabq.zzh(str, this.zzadl, this.zzadm);
    }

    protected boolean zzcg(String str) {
        return this.zzabq.zzi(str, this.zzadl, this.zzadm);
    }

    protected int zzou() {
        return this.zzadl;
    }
}
