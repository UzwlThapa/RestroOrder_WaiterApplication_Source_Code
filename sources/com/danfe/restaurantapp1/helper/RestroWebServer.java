package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import fi.iki.elonen.NanoHTTPD;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RestroWebServer extends NanoHTTPD {
    private Context mContext;
    private Handler mHandler;
    private Map<String, String> params;

    public RestroWebServer(int port, Context context) {
        super(port);
        this.mContext = context;
        this.mHandler = new Handler();
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession session) {
        String msg = "";
        this.params = session.getParms();
        if (this.params.get("Department") != null || this.params.get("ItemName") != null || this.params.get("TableName") != null) {
            try {
                msg = "{\"response\":\"success\"}";
                this.mHandler.post(new Runnable() { // from class: com.danfe.restaurantapp1.helper.RestroWebServer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Notification notification = new Notification(RestroWebServer.this.mContext, (String) RestroWebServer.this.params.get("Department"), (String) RestroWebServer.this.params.get("ItemName"), (String) RestroWebServer.this.params.get("TableName"), true, true);
                        notification.getWaiterLists(true);
                    }
                });
            } catch (Exception e) {
                Log.e("EXCEPTIONERROR", e.getMessage());
            }
        } else {
            String msg2 = "<html><body>\n<form action='?' method='get'>\n";
            msg = ((((msg2 + "<p>Your name: <input type='text' name='Department'></p>\n") + "<p>ItemName: <input type='text' name='ItemName'></p>\n") + "<p>Table: <input type='text' name='TableName'></p>\n") + "<p> Submit: <input type='submit'></p\n>") + "</form>\n</body></html>\n";
        }
        return newFixedLengthResponse(msg + "");
    }
}
