package com.danfe.restaurantapp1.helper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.danfe.restaurantapp1.LoginActivity;

/* JADX INFO: loaded from: classes.dex */
public class ScreenReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.USER_PRESENT")) {
            Intent intent1 = new Intent(context, (Class<?>) LoginActivity.class);
            intent1.addFlags(268435456);
            context.startActivity(intent1);
        }
    }
}
