package com.danfe.restaurantapp1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class LogoutReceiver extends BroadcastReceiver {
    public static boolean screenState;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (action.equalsIgnoreCase("android.intent.action.SCREEN_OFF")) {
                screenState = false;
            } else if (action.equalsIgnoreCase("android.intent.action.SCREEN_ON")) {
                screenState = true;
            } else if (action.equalsIgnoreCase("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                screenState = false;
            }
        }
        Intent i = new Intent(context, (Class<?>) LogoutService.class);
        i.putExtra("screen_state", screenState);
        context.startService(i);
    }
}
