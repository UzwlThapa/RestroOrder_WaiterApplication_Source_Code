package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class BillingTermDbDao extends AbstractDao<BillingTermDb, Long> {
    public static final String TABLENAME = "BILLING_TERM_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "Id", true, "ID");
        public static final Property BillingId = new Property(1, Integer.class, "billingId", false, "BILLING_ID");
        public static final Property Name = new Property(2, String.class, "Name", false, "NAME");
        public static final Property IsAdded = new Property(3, Boolean.class, "IsAdded", false, "IS_ADDED");
        public static final Property Rate = new Property(4, String.class, "rate", false, "RATE");
        public static final Property Description = new Property(5, String.class, "Description", false, "DESCRIPTION");
        public static final Property SequenceOrder = new Property(6, Integer.class, "SequenceOrder", false, "SEQUENCE_ORDER");
        public static final Property CostCenter = new Property(7, String.class, "CostCenter", false, "COST_CENTER");
    }

    public BillingTermDbDao(DaoConfig config) {
        super(config);
    }

    public BillingTermDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"BILLING_TERM_DB\" (\"ID\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"BILLING_ID\" INTEGER,\"NAME\" TEXT,\"IS_ADDED\" INTEGER,\"RATE\" TEXT,\"DESCRIPTION\" TEXT,\"SEQUENCE_ORDER\" INTEGER,\"COST_CENTER\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"BILLING_TERM_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, BillingTermDb entity) {
        stmt.clearBindings();
        Long Id = entity.getId();
        if (Id != null) {
            stmt.bindLong(1, Id.longValue());
        }
        Integer billingId = entity.getBillingId();
        if (billingId != null) {
            stmt.bindLong(2, billingId.intValue());
        }
        String Name = entity.getName();
        if (Name != null) {
            stmt.bindString(3, Name);
        }
        Boolean IsAdded = entity.getIsAdded();
        if (IsAdded != null) {
            stmt.bindLong(4, IsAdded.booleanValue() ? 1L : 0L);
        }
        String rate = entity.getRate();
        if (rate != null) {
            stmt.bindString(5, rate);
        }
        String Description = entity.getDescription();
        if (Description != null) {
            stmt.bindString(6, Description);
        }
        Integer SequenceOrder = entity.getSequenceOrder();
        if (SequenceOrder != null) {
            stmt.bindLong(7, SequenceOrder.intValue());
        }
        String CostCenter = entity.getCostCenter();
        if (CostCenter != null) {
            stmt.bindString(8, CostCenter);
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
    public BillingTermDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        Integer numValueOf = cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1));
        String string = cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2);
        if (cursor.isNull(offset + 3)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 3) != 0);
        }
        BillingTermDb entity = new BillingTermDb(lValueOf, numValueOf, string, boolValueOf, cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)), cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, BillingTermDb entity, int offset) {
        Boolean boolValueOf;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setBillingId(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        if (cursor.isNull(offset + 3)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 3) != 0);
        }
        entity.setIsAdded(boolValueOf);
        entity.setRate(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setDescription(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setSequenceOrder(cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)));
        entity.setCostCenter(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(BillingTermDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(BillingTermDb entity) {
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
