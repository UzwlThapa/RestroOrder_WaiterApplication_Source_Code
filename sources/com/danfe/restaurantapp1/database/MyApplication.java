package com.danfe.restaurantapp1.database;

import android.app.Application;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import com.danfe.restaurantapp1.Interface.LogoutInterface;
import com.danfe.restaurantapp1.model.DaoMaster;
import com.danfe.restaurantapp1.model.DaoSession;
import com.danfe.restaurantapp1.model.ItemgroupDbDao;
import com.danfe.restaurantapp1.model.TableDbDao;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class MyApplication extends Application {
    private static boolean activityVisible;
    public DaoSession daoSession;
    Handler handler;
    public ItemgroupDbDao itemgroupDbDao;
    LogoutInterface logoutInterface;
    public TableDbDao tableDao;
    Timer timer;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        setupDb();
        this.handler = new Handler(getApplicationContext().getMainLooper());
    }

    private void setupDb() {
        DaoMaster.DevOpenHelper helper = new DaoMaster.DevOpenHelper(this, "routine-db", null);
        SQLiteDatabase db = helper.getWritableDatabase();
        DaoMaster daoMaster = new DaoMaster(db);
        this.daoSession = daoMaster.newSession();
        this.itemgroupDbDao = this.daoSession.getItemgroupDbDao();
        this.tableDao = this.daoSession.getTableDbDao();
    }

    public DaoSession getDaoSession() {
        return this.daoSession;
    }

    public static boolean isActivityVisible() {
        return activityVisible;
    }

    public static void activityResumed() {
        activityVisible = true;
    }

    public static void activityPaused() {
        activityVisible = false;
    }

    public void detectUserInActivity() {
        cancelTimer();
        this.timer = new Timer();
        new Thread(new Runnable() { // from class: com.danfe.restaurantapp1.database.MyApplication.1
            @Override // java.lang.Runnable
            public void run() {
                MyApplication.this.timer.schedule(new TimerTask() { // from class: com.danfe.restaurantapp1.database.MyApplication.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (MyApplication.this.logoutInterface != null) {
                            MyApplication.this.logoutInterface.logout();
                        }
                    }
                }, 1800000L);
            }
        }).start();
    }

    public void registerSessionListener(LogoutInterface logoutInterface) {
        this.logoutInterface = logoutInterface;
    }

    public void cancelTimer() {
        if (this.timer != null) {
            this.timer.cancel();
        }
    }

    public void detectUserInteracted() {
        detectUserInActivity();
    }
}
