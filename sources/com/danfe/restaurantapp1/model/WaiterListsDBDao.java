package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class WaiterListsDBDao extends AbstractDao<WaiterListsDB, Long> {
    public static final String TABLENAME = "WAITER_LISTS_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property WaiterName = new Property(1, String.class, "WaiterName", false, "WAITER_NAME");
        public static final Property WaiterIp = new Property(2, String.class, "WaiterIp", false, "WAITER_IP");
    }

    public WaiterListsDBDao(DaoConfig config) {
        super(config);
    }

    public WaiterListsDBDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"WAITER_LISTS_DB\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"WAITER_NAME\" TEXT,\"WAITER_IP\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"WAITER_LISTS_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, WaiterListsDB entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String WaiterName = entity.getWaiterName();
        if (WaiterName != null) {
            stmt.bindString(2, WaiterName);
        }
        String WaiterIp = entity.getWaiterIp();
        if (WaiterIp != null) {
            stmt.bindString(3, WaiterIp);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // de.greenrobot.dao.AbstractDao
    public Long readKey(Cursor cursor, int offset) {
        if (cursor.isNull(offset + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(offset + 0));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // de.greenrobot.dao.AbstractDao
    public WaiterListsDB readEntity(Cursor cursor, int offset) {
        WaiterListsDB entity = new WaiterListsDB(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, WaiterListsDB entity, int offset) {
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setWaiterName(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setWaiterIp(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(WaiterListsDB entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(WaiterListsDB entity) {
        if (entity != null) {
            return entity.getId();
        }
        return null;
    }

    @Override // de.greenrobot.dao.AbstractDao
    protected boolean isEntityUpdateable() {
        return true;
    }
}
