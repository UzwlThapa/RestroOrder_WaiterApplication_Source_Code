package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class OrderMasterDbDao extends AbstractDao<OrderMasterDb, Long> {
    public static final String TABLENAME = "ORDER_MASTER_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property TableId = new Property(1, Integer.class, "tableId", false, "TABLE_ID");
        public static final Property IsSplit = new Property(2, Boolean.class, "isSplit", false, "IS_SPLIT");
        public static final Property GuestNo = new Property(3, Integer.class, "guestNo", false, "GUEST_NO");
        public static final Property IsCanceled = new Property(4, Boolean.class, "isCanceled", false, "IS_CANCELED");
        public static final Property Remarks = new Property(5, String.class, "remarks", false, "REMARKS");
        public static final Property Username = new Property(6, String.class, "username", false, "USERNAME");
    }

    public OrderMasterDbDao(DaoConfig config) {
        super(config);
    }

    public OrderMasterDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"ORDER_MASTER_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"TABLE_ID\" INTEGER,\"IS_SPLIT\" INTEGER,\"GUEST_NO\" INTEGER,\"IS_CANCELED\" INTEGER,\"REMARKS\" TEXT,\"USERNAME\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"ORDER_MASTER_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, OrderMasterDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        Integer tableId = entity.getTableId();
        if (tableId != null) {
            stmt.bindLong(2, tableId.intValue());
        }
        Boolean isSplit = entity.getIsSplit();
        if (isSplit != null) {
            stmt.bindLong(3, isSplit.booleanValue() ? 1L : 0L);
        }
        Integer guestNo = entity.getGuestNo();
        if (guestNo != null) {
            stmt.bindLong(4, guestNo.intValue());
        }
        Boolean isCanceled = entity.getIsCanceled();
        if (isCanceled != null) {
            stmt.bindLong(5, isCanceled.booleanValue() ? 1L : 0L);
        }
        String remarks = entity.getRemarks();
        if (remarks != null) {
            stmt.bindString(6, remarks);
        }
        String username = entity.getUsername();
        if (username != null) {
            stmt.bindString(7, username);
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
    public OrderMasterDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        Integer numValueOf = cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1));
        if (cursor.isNull(offset + 2)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 2) != 0);
        }
        Integer numValueOf2 = cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3));
        if (cursor.isNull(offset + 4)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 4) != 0);
        }
        OrderMasterDb entity = new OrderMasterDb(lValueOf, numValueOf, boolValueOf, numValueOf2, boolValueOf2, cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, OrderMasterDb entity, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setTableId(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        if (cursor.isNull(offset + 2)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 2) != 0);
        }
        entity.setIsSplit(boolValueOf);
        entity.setGuestNo(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        if (cursor.isNull(offset + 4)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 4) != 0);
        }
        entity.setIsCanceled(boolValueOf2);
        entity.setRemarks(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setUsername(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(OrderMasterDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(OrderMasterDb entity) {
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
