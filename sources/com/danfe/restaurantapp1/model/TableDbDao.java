package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class TableDbDao extends AbstractDao<TableDb, Long> {
    public static final String TABLENAME = "TABLE_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property Number = new Property(1, String.class, "number", false, "NUMBER");
        public static final Property TableStatus = new Property(2, Integer.class, "tableStatus", false, "TABLE_STATUS");
        public static final Property TableCapacity = new Property(3, Integer.class, "tableCapacity", false, "TABLE_CAPACITY");
        public static final Property MergeTableId = new Property(4, Integer.class, "mergeTableId", false, "MERGE_TABLE_ID");
        public static final Property MergeId = new Property(5, Integer.class, "mergeId", false, "MERGE_ID");
        public static final Property RoomId = new Property(6, Integer.class, "roomId", false, "ROOM_ID");
        public static final Property BillPaid = new Property(7, Integer.class, "billPaid", false, "BILL_PAID");
        public static final Property TableDate = new Property(8, String.class, "tableDate", false, "TABLE_DATE");
        public static final Property Tabletime = new Property(9, String.class, "tabletime", false, "TABLETIME");
        public static final Property IsCancelled = new Property(10, Integer.class, "isCancelled", false, "IS_CANCELLED");
        public static final Property IsChecked = new Property(11, Boolean.class, "isChecked", false, "IS_CHECKED");
        public static final Property IsTable = new Property(12, Boolean.class, "isTable", false, "IS_TABLE");
        public static final Property Rate = new Property(13, Double.class, "rate", false, "RATE");
        public static final Property OrderMasterId = new Property(14, Integer.class, "orderMasterId", false, "ORDER_MASTER_ID");
        public static final Property GuestNo = new Property(15, Integer.class, "guestNo", false, "Guest_No");
    }

    public TableDbDao(DaoConfig config) {
        super(config);
    }

    public TableDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"TABLE_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"NUMBER\" TEXT,\"TABLE_STATUS\" INTEGER,\"TABLE_CAPACITY\" INTEGER,\"MERGE_TABLE_ID\" INTEGER,\"MERGE_ID\" INTEGER,\"ROOM_ID\" INTEGER,\"BILL_PAID\" INTEGER,\"TABLE_DATE\" TEXT,\"TABLETIME\" TEXT,\"IS_CANCELLED\" INTEGER,\"IS_CHECKED\" INTEGER,\"IS_TABLE\" INTEGER,\"RATE\" REAL,\"ORDER_MASTER_ID\" INTEGER,\"Guest_No\"INTEGER);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"TABLE_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, TableDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String number = entity.getNumber();
        if (number != null) {
            stmt.bindString(2, number);
        }
        Integer tableStatus = entity.getTableStatus();
        if (tableStatus != null) {
            stmt.bindLong(3, tableStatus.intValue());
        }
        Integer tableCapacity = entity.getTableCapacity();
        if (tableCapacity != null) {
            stmt.bindLong(4, tableCapacity.intValue());
        }
        Integer mergeTableId = entity.getMergeTableId();
        if (mergeTableId != null) {
            stmt.bindLong(5, mergeTableId.intValue());
        }
        Integer mergeId = entity.getMergeId();
        if (mergeId != null) {
            stmt.bindLong(6, mergeId.intValue());
        }
        Integer roomId = entity.getRoomId();
        if (roomId != null) {
            stmt.bindLong(7, roomId.intValue());
        }
        Integer billPaid = entity.getBillPaid();
        if (billPaid != null) {
            stmt.bindLong(8, billPaid.intValue());
        }
        String tableDate = entity.getTableDate();
        if (tableDate != null) {
            stmt.bindString(9, tableDate);
        }
        String tabletime = entity.getTabletime();
        if (tabletime != null) {
            stmt.bindString(10, tabletime);
        }
        Integer isCancelled = entity.getIsCancelled();
        if (isCancelled != null) {
            stmt.bindLong(11, isCancelled.intValue());
        }
        Boolean isChecked = entity.getIsChecked();
        if (isChecked != null) {
            stmt.bindLong(12, isChecked.booleanValue() ? 1L : 0L);
        }
        Boolean isTable = entity.getIsTable();
        if (isTable != null) {
            stmt.bindLong(13, isTable.booleanValue() ? 1L : 0L);
        }
        Double rate = entity.getRate();
        if (rate != null) {
            stmt.bindDouble(14, rate.doubleValue());
        }
        Integer orderMasterId = entity.getOrderMasterId();
        if (orderMasterId != null) {
            stmt.bindLong(15, orderMasterId.intValue());
        }
        Integer guestNo = entity.getGuestNo();
        if (guestNo != null) {
            stmt.bindLong(16, guestNo.intValue());
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
    public TableDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        String string = cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1);
        Integer numValueOf = cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2));
        Integer numValueOf2 = cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3));
        Integer numValueOf3 = cursor.isNull(offset + 4) ? null : Integer.valueOf(cursor.getInt(offset + 4));
        Integer numValueOf4 = cursor.isNull(offset + 5) ? null : Integer.valueOf(cursor.getInt(offset + 5));
        Integer numValueOf5 = cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6));
        Integer numValueOf6 = cursor.isNull(offset + 7) ? null : Integer.valueOf(cursor.getInt(offset + 7));
        String string2 = cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8);
        String string3 = cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9);
        Integer numValueOf7 = cursor.isNull(offset + 10) ? null : Integer.valueOf(cursor.getInt(offset + 10));
        if (cursor.isNull(offset + 11)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 11) != 0);
        }
        if (cursor.isNull(offset + 12)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 12) != 0);
        }
        TableDb entity = new TableDb(lValueOf, string, numValueOf, numValueOf2, numValueOf3, numValueOf4, numValueOf5, numValueOf6, string2, string3, numValueOf7, boolValueOf, boolValueOf2, cursor.isNull(offset + 13) ? null : Double.valueOf(cursor.getDouble(offset + 13)), cursor.isNull(offset + 14) ? null : Integer.valueOf(cursor.getInt(offset + 14)), cursor.isNull(offset + 15) ? null : Integer.valueOf(cursor.getInt(offset + 15)));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, TableDb entity, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setNumber(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setTableStatus(cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2)));
        entity.setTableCapacity(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        entity.setMergeTableId(cursor.isNull(offset + 4) ? null : Integer.valueOf(cursor.getInt(offset + 4)));
        entity.setMergeId(cursor.isNull(offset + 5) ? null : Integer.valueOf(cursor.getInt(offset + 5)));
        entity.setRoomId(cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)));
        entity.setBillPaid(cursor.isNull(offset + 7) ? null : Integer.valueOf(cursor.getInt(offset + 7)));
        entity.setTableDate(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setTabletime(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
        entity.setIsCancelled(cursor.isNull(offset + 10) ? null : Integer.valueOf(cursor.getInt(offset + 10)));
        if (cursor.isNull(offset + 11)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 11) != 0);
        }
        entity.setIsChecked(boolValueOf);
        if (cursor.isNull(offset + 12)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 12) != 0);
        }
        entity.setIsTable(boolValueOf2);
        entity.setRate(cursor.isNull(offset + 13) ? null : Double.valueOf(cursor.getDouble(offset + 13)));
        entity.setOrderMasterId(cursor.isNull(offset + 14) ? null : Integer.valueOf(cursor.getInt(offset + 14)));
        entity.setGuestNo(cursor.isNull(offset + 15) ? null : Integer.valueOf(cursor.getInt(offset + 15)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(TableDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(TableDb entity) {
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
