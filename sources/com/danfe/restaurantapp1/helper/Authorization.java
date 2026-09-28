package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.content.SharedPreferences;
import com.danfe.restaurantapp1.MainActivity;

/* JADX INFO: loaded from: classes.dex */
public class Authorization {
    private static SharedPreferences preferences;
    private final Context context;

    public Authorization(Context c) {
        this.context = c;
        preferences = c.getSharedPreferences(MainActivity.LOGIN_PREF_NAME, 0);
    }

    public boolean isAuthorized() {
        String token = getToken();
        return token.length() > 1;
    }

    public String getToken() {
        return preferences.getString(MainActivity.PREF_TOKEN, "");
    }

    public void setToken(String token) {
        SharedPreferences.Editor e = preferences.edit();
        e.putString(MainActivity.PREF_TOKEN, token);
        e.commit();
    }

    public void removeToken() {
        setToken("");
    }
}
