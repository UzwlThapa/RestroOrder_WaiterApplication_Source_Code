package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class Task implements Parcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final Bundle mExtras;
    private final String mTag;
    private final String zzaCN;
    private final boolean zzaCO;
    private final boolean zzaCP;
    private final int zzaCQ;
    private final boolean zzaCR;
    private final zzc zzaCS;

    public static abstract class Builder {
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;
        protected zzc zzaCT = zzc.zzaCI;

        public abstract Task build();

        protected void checkConditions() {
            zzx.zzb(this.gcmTaskService != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzdh(this.tag);
            Task.zza(this.zzaCT);
            if (this.isPersisted) {
                Task.zzA(this.extras);
            }
        }

        public abstract Builder setExtras(Bundle bundle);

        public abstract Builder setPersisted(boolean z);

        public abstract Builder setRequiredNetwork(int i);

        public abstract Builder setRequiresCharging(boolean z);

        public abstract Builder setService(Class<? extends GcmTaskService> cls);

        public abstract Builder setTag(String str);

        public abstract Builder setUpdateCurrent(boolean z);
    }

    @Deprecated
    Task(Parcel in) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.zzaCN = in.readString();
        this.mTag = in.readString();
        this.zzaCO = in.readInt() == 1;
        this.zzaCP = in.readInt() == 1;
        this.zzaCQ = 2;
        this.zzaCR = false;
        this.zzaCS = zzc.zzaCI;
        this.mExtras = null;
    }

    Task(Builder builder) {
        this.zzaCN = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.zzaCO = builder.updateCurrent;
        this.zzaCP = builder.isPersisted;
        this.zzaCQ = builder.requiredNetworkState;
        this.zzaCR = builder.requiresCharging;
        this.zzaCS = builder.zzaCT;
        this.mExtras = builder.extras;
    }

    public static void zzA(Bundle bundle) {
        if (bundle != null) {
            Parcel parcelObtain = Parcel.obtain();
            bundle.writeToParcel(parcelObtain, 0);
            int iDataSize = parcelObtain.dataSize();
            if (iDataSize > 10240) {
                parcelObtain.recycle();
                throw new IllegalArgumentException("Extras exceeding maximum size(10240 bytes): " + iDataSize);
            }
            parcelObtain.recycle();
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                if (!zzz(bundle.get(it.next()))) {
                    throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. ");
                }
            }
        }
    }

    public static void zza(zzc zzcVar) {
        if (zzcVar != null) {
            int iZzvZ = zzcVar.zzvZ();
            if (iZzvZ != 1 && iZzvZ != 0) {
                throw new IllegalArgumentException("Must provide a valid RetryPolicy: " + iZzvZ);
            }
            int iZzwa = zzcVar.zzwa();
            int iZzwb = zzcVar.zzwb();
            if (iZzvZ == 0 && iZzwa < 0) {
                throw new IllegalArgumentException("InitialBackoffSeconds can't be negative: " + iZzwa);
            }
            if (iZzvZ == 1 && iZzwa < 10) {
                throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
            }
            if (iZzwb < iZzwa) {
                throw new IllegalArgumentException("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: " + zzcVar.zzwb());
            }
        }
    }

    private static boolean zzz(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.zzaCQ;
    }

    public boolean getRequiresCharging() {
        return this.zzaCR;
    }

    public String getServiceName() {
        return this.zzaCN;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.zzaCP;
    }

    public boolean isUpdateCurrent() {
        return this.zzaCO;
    }

    public void toBundle(Bundle bundle) {
        bundle.putString("tag", this.mTag);
        bundle.putBoolean("update_current", this.zzaCO);
        bundle.putBoolean("persisted", this.zzaCP);
        bundle.putString("service", this.zzaCN);
        bundle.putInt("requiredNetwork", this.zzaCQ);
        bundle.putBoolean("requiresCharging", this.zzaCR);
        bundle.putBundle("retryStrategy", this.zzaCS.zzz(new Bundle()));
        bundle.putBundle("extras", this.mExtras);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzaCN);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.zzaCO ? 1 : 0);
        parcel.writeInt(this.zzaCP ? 1 : 0);
    }
}
