package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class GcmPubSub {
    private static GcmPubSub zzaCk;
    private static final Pattern zzaCm = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    private InstanceID zzaCl;

    private GcmPubSub(Context context) {
        this.zzaCl = InstanceID.getInstance(context);
    }

    public static synchronized GcmPubSub getInstance(Context context) {
        if (zzaCk == null) {
            zzaCk = new GcmPubSub(context);
        }
        return zzaCk;
    }

    public void subscribe(String registrationToken, String topic, Bundle extras) throws IOException {
        if (registrationToken == null || registrationToken.isEmpty()) {
            throw new IllegalArgumentException("Invalid appInstanceToken: " + registrationToken);
        }
        if (topic == null || !zzaCm.matcher(topic).matches()) {
            throw new IllegalArgumentException("Invalid topic name: " + topic);
        }
        if (extras == null) {
            extras = new Bundle();
        }
        extras.putString("gcm.topic", topic);
        this.zzaCl.getToken(registrationToken, topic, extras);
    }

    public void unsubscribe(String registrationToken, String topic) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", topic);
        this.zzaCl.zzb(registrationToken, topic, bundle);
    }
}
