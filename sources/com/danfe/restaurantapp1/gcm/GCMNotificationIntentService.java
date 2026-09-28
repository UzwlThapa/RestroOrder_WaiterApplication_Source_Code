package com.danfe.restaurantapp1.gcm;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.widget.Toast;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.TableActivity;
import com.google.android.gms.gcm.GoogleCloudMessaging;

/* JADX INFO: loaded from: classes.dex */
public class GCMNotificationIntentService extends IntentService {
    public static final int notifyID = 9001;
    NotificationCompat.Builder builder;

    public GCMNotificationIntentService() {
        super("GcmIntentService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        GoogleCloudMessaging gcm = GoogleCloudMessaging.getInstance(this);
        String messageType = gcm.getMessageType(intent);
        Toast.makeText(getApplicationContext(), extras.toString(), 1).show();
        Log.e("extra", String.valueOf(extras));
        if (GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR.equals(messageType)) {
            sendNotification("Send error: " + extras.toString());
        } else if (GoogleCloudMessaging.MESSAGE_TYPE_DELETED.equals(messageType)) {
            sendNotification("Deleted messages on server: " + extras.toString());
        } else if (GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE.equals(messageType)) {
            sendNotification("Message:\n\n" + extras.get(ApplicationConstants.MSG_KEY));
        }
        GcmBroadcastReceiver.completeWakefulIntent(intent);
    }

    private void sendNotification(String msg) {
        Intent resultIntent = new Intent(this, (Class<?>) TableActivity.class);
        resultIntent.putExtra("msg", msg);
        PendingIntent resultPendingIntent = PendingIntent.getActivity(this, 0, resultIntent, 1073741824);
        NotificationManager mNotificationManager = (NotificationManager) getSystemService("notification");
        NotificationCompat.Builder mNotifyBuilder = new NotificationCompat.Builder(this).setContentTitle("Alert").setContentText(msg).setSmallIcon(R.drawable.ic_logo);
        mNotifyBuilder.setContentIntent(resultPendingIntent);
        int defaults = 0 | 4;
        mNotifyBuilder.setDefaults(defaults | 2 | 1);
        mNotifyBuilder.setContentText(msg);
        mNotifyBuilder.setAutoCancel(true);
        mNotificationManager.notify(687886, mNotifyBuilder.build());
        Log.d("log gcm notify", "Notification sent successfully.");
    }
}
