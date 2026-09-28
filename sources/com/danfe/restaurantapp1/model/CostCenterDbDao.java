package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class CostCenterDbDao extends AbstractDao<CostCenterDb, Long> {
    public static final String TABLENAME = "COST_CENTER_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "Id", true, "ID");
        public static final Property CostCenterId = new Property(1, Integer.class, "CostCenterId", false, "COST_CENTER_ID");
        public static final Property CostCenterName = new Property(2, String.class, "CostCenterName", false, "COST_CENTER_NAME");
        public static final Property CoDiscout = new Property(3, Integer.class, "CoDiscout", false, "CO_DISCOUT");
        public static final Property TableList = new Property(4, String.class, "tableList", false, "TABLE_LIST");
    }

    public CostCenterDbDao(DaoConfig config) {
        super(config);
    }

    public CostCenterDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"COST_CENTER_DB\" (\"ID\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"COST_CENTER_ID\" INTEGER,\"COST_CENTER_NAME\" TEXT,\"CO_DISCOUT\" INTEGER,\"TABLE_LIST\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"COST_CENTER_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, CostCenterDb entity) {
        stmt.clearBindings();
        Long Id = entity.getId();
        if (Id != null) {
            stmt.bindLong(1, Id.longValue());
        }
        Integer CostCenterId = entity.getCostCenterId();
        if (CostCenterId != null) {
            stmt.bindLong(2, CostCenterId.intValue());
        }
        String CostCenterName = entity.getCostCenterName();
        if (CostCenterName != null) {
            stmt.bindString(3, CostCenterName);
        }
        Integer CoDiscout = entity.getCoDiscout();
        if (CoDiscout != null) {
            stmt.bindLong(4, CoDiscout.intValue());
        }
        String tableList = entity.getTableList();
        if (tableList != null) {
            stmt.bindString(5, tableList);
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
    public CostCenterDb readEntity(Cursor cursor, int offset) {
        CostCenterDb entity = new CostCenterDb(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)), cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)), cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, CostCenterDb entity, int offset) {
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setCostCenterId(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setCostCenterName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setCoDiscout(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        entity.setTableList(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(CostCenterDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(CostCenterDb entity) {
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
