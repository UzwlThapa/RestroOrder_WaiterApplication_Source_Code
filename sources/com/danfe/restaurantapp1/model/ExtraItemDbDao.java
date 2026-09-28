package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class ExtraItemDbDao extends AbstractDao<ExtraItemDb, Long> {
    public static final String TABLENAME = "EXTRA_ITEM_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property itemID = new Property(1, Integer.class, "ItemId", false, "ITEM_ID");
        public static final Property extraItemID = new Property(2, Integer.class, "extraItemID", false, "EXTRA_ITEM_ID");
        public static final Property extraItem = new Property(3, String.class, "extraItem", false, "EXTRA_ITEM");
        public static final Property extraPrice = new Property(4, Double.class, "extraPrice", false, "EXTRA_PRICE");
        public static final Property isActive = new Property(5, Boolean.class, "isActive", false, "IS_ACTIVE");
        public static final Property addedBy = new Property(6, String.class, "addedBy", false, "ADDED_BY");
        public static final Property isExtra = new Property(7, Boolean.class, "isExtra", false, "IS_EXTRA");
    }

    public ExtraItemDbDao(DaoConfig config) {
        super(config);
    }

    public ExtraItemDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"EXTRA_ITEM_DB\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"ITEM_ID\" INTEGER,\"EXTRA_ITEM_ID\" INTEGER,\"EXTRA_ITEM\" TEXT,\"EXTRA_PRICE\" REAL,\"IS_ACTIVE\" INTEGER,\"ADDED_BY\" TEXT,\"IS_EXTRA\" INTEGER);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"EXTRA_ITEM_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, ExtraItemDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        Integer ItemId = entity.getItemID();
        if (ItemId != null) {
            stmt.bindLong(2, ItemId.intValue());
        }
        Integer ExtraItemId = entity.getExtraItemID();
        if (ExtraItemId != null) {
            stmt.bindLong(3, ExtraItemId.intValue());
        }
        String extraItem = entity.getExtraItem();
        if (extraItem != null) {
            stmt.bindString(4, extraItem);
        }
        Double extraItemPrice = entity.getExtraPrice();
        if (extraItemPrice != null) {
            stmt.bindDouble(5, extraItemPrice.doubleValue());
        }
        Boolean isActive = entity.getIsActive();
        if (isActive != null) {
            stmt.bindLong(6, isActive.booleanValue() ? 1L : 0L);
        }
        String addedBy = entity.getAddedBy();
        if (addedBy != null) {
            stmt.bindString(7, addedBy);
        }
        Boolean isExtra = entity.getIsExtra();
        if (isExtra != null) {
            stmt.bindLong(8, isExtra.booleanValue() ? 1L : 0L);
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
    public ExtraItemDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2 = null;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        Integer numValueOf = cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1));
        Integer numValueOf2 = cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2));
        String string = cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3);
        Double dValueOf = cursor.isNull(offset + 4) ? null : Double.valueOf(cursor.getDouble(offset + 4));
        if (cursor.isNull(offset + 5)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 5) != 0);
        }
        String string2 = cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6);
        if (!cursor.isNull(offset + 7)) {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 7) != 0);
        }
        ExtraItemDb entity = new ExtraItemDb(lValueOf, numValueOf, numValueOf2, string, dValueOf, boolValueOf, string2, boolValueOf2);
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, ExtraItemDb entity, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2 = null;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setItemID(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setExtraItemID(cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2)));
        entity.setExtraItem(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setExtraPrice(cursor.isNull(offset + 4) ? null : Double.valueOf(cursor.getDouble(offset + 4)));
        if (cursor.isNull(offset + 5)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 5) != 0);
        }
        entity.setIsActive(boolValueOf);
        entity.setAddedBy(cursor.isNull(offset + 6) ? null : cursor.getString(offset + 6));
        if (!cursor.isNull(offset + 7)) {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 7) != 0);
        }
        entity.setIsExtra(boolValueOf2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(ExtraItemDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(ExtraItemDb entity) {
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
