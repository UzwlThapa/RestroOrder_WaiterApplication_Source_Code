package com.danfe.restaurantapp1.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import de.greenrobot.dao.AbstractDaoMaster;
import de.greenrobot.dao.identityscope.IdentityScopeType;

/* JADX INFO: loaded from: classes.dex */
public class DaoMaster extends AbstractDaoMaster {
    public static final int SCHEMA_VERSION = 2;

    public static void createAllTables(SQLiteDatabase db, boolean ifNotExists) {
        RoomTypeDbDao.createTable(db, ifNotExists);
        RoomDbDao.createTable(db, ifNotExists);
        TableDbDao.createTable(db, ifNotExists);
        ItemgroupDbDao.createTable(db, ifNotExists);
        OrderMasterDbDao.createTable(db, ifNotExists);
        OrderDetailDbDao.createTable(db, ifNotExists);
        ExtraItemDbDao.createTable(db, ifNotExists);
        NotificationsDBDao.createTable(db, ifNotExists);
        WaiterListsDBDao.createTable(db, ifNotExists);
        CustomerDbDao.createTable(db, ifNotExists);
        CostCenterDbDao.createTable(db, ifNotExists);
        BillingTermDbDao.createTable(db, ifNotExists);
    }

    public static void dropAllTables(SQLiteDatabase db, boolean ifExists) {
        RoomTypeDbDao.dropTable(db, ifExists);
        RoomDbDao.dropTable(db, ifExists);
        TableDbDao.dropTable(db, ifExists);
        ItemgroupDbDao.dropTable(db, ifExists);
        OrderMasterDbDao.dropTable(db, ifExists);
        OrderDetailDbDao.dropTable(db, ifExists);
        ExtraItemDbDao.dropTable(db, ifExists);
        NotificationsDBDao.dropTable(db, ifExists);
        WaiterListsDBDao.dropTable(db, ifExists);
        CustomerDbDao.dropTable(db, ifExists);
        CostCenterDbDao.dropTable(db, ifExists);
        BillingTermDbDao.dropTable(db, ifExists);
    }

    public static abstract class OpenHelper extends SQLiteOpenHelper {
        public OpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory) {
            super(context, name, factory, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase db) {
            Log.i("greenDAO", "Creating tables for schema version 2");
            DaoMaster.createAllTables(db, false);
        }
    }

    public static class DevOpenHelper extends OpenHelper {
        public DevOpenHelper(Context context, String name, SQLiteDatabase.CursorFactory factory) {
            super(context, name, factory);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.i("greenDAO", "Upgrading schema from version " + oldVersion + " to " + newVersion + " by dropping all tables");
            DaoMaster.dropAllTables(db, true);
            onCreate(db);
            db.execSQL("ALTER TABLE TABLE_DB ADD COLUMN 'Guest_No' INTEGER;");
        }
    }

    public DaoMaster(SQLiteDatabase db) {
        super(db, 2);
        registerDaoClass(RoomTypeDbDao.class);
        registerDaoClass(RoomDbDao.class);
        registerDaoClass(TableDbDao.class);
        registerDaoClass(ItemgroupDbDao.class);
        registerDaoClass(OrderMasterDbDao.class);
        registerDaoClass(OrderDetailDbDao.class);
        registerDaoClass(ExtraItemDbDao.class);
        registerDaoClass(NotificationsDBDao.class);
        registerDaoClass(WaiterListsDBDao.class);
        registerDaoClass(CustomerDbDao.class);
        registerDaoClass(CostCenterDbDao.class);
        registerDaoClass(BillingTermDbDao.class);
    }

    @Override // de.greenrobot.dao.AbstractDaoMaster
    public DaoSession newSession() {
        return new DaoSession(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    @Override // de.greenrobot.dao.AbstractDaoMaster
    public DaoSession newSession(IdentityScopeType type) {
        return new DaoSession(this.db, type, this.daoConfigMap);
    }
}
