package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class OrderDetailDbDao extends AbstractDao<OrderDetailDb, Long> {
    public static final String TABLENAME = "ORDER_DETAIL_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property OrderMasterId = new Property(1, Integer.class, "orderMasterId", false, "ORDER_MASTER_ID");
        public static final Property ItemId = new Property(2, Integer.class, "itemId", false, "ITEM_ID");
        public static final Property Title = new Property(3, String.class, "title", false, "TITLE");
        public static final Property Quantity = new Property(4, Double.class, "quantity", false, "QUANTITY");
        public static final Property Price = new Property(5, Double.class, "price", false, "PRICE");
        public static final Property IsCanceled = new Property(6, Boolean.class, "isCanceled", false, "IS_CANCELED");
        public static final Property SeatNo = new Property(7, Integer.class, "seatNo", false, "SEAT_NO");
        public static final Property Notes = new Property(8, String.class, "notes", false, "NOTES");
        public static final Property Extra = new Property(9, Float.class, "extra", false, "EXTRA");
        public static final Property Status = new Property(10, String.class, "status", false, "STATUS");
        public static final Property HomePackQty = new Property(11, Integer.class, "homePackQty", false, "HOME_PACK_QTY");
        public static final Property IsCombo = new Property(12, Boolean.class, "IsCombo", false, "IS_COMBO");
        public static final Property CostCenterId = new Property(13, Integer.class, "CostCenterId", false, "COST_CENTER_ID");
    }

    public OrderDetailDbDao(DaoConfig config) {
        super(config);
    }

    public OrderDetailDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"ORDER_DETAIL_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"ORDER_MASTER_ID\" INTEGER,\"ITEM_ID\" INTEGER,\"TITLE\" TEXT,\"QUANTITY\" REAL,\"PRICE\" REAL,\"IS_CANCELED\" INTEGER,\"SEAT_NO\" INTEGER,\"NOTES\" TEXT,\"EXTRA\" REAL,\"STATUS\" TEXT,\"HOME_PACK_QTY\" INTEGER,\"IS_COMBO\" INTEGER,\"COST_CENTER_ID\" INTEGER);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"ORDER_DETAIL_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, OrderDetailDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        Integer orderMasterId = entity.getOrderMasterId();
        if (orderMasterId != null) {
            stmt.bindLong(2, orderMasterId.intValue());
        }
        Integer itemId = entity.getItemId();
        if (itemId != null) {
            stmt.bindLong(3, itemId.intValue());
        }
        String title = entity.getTitle();
        if (title != null) {
            stmt.bindString(4, title);
        }
        Double quantity = entity.getQuantity();
        if (quantity != null) {
            stmt.bindDouble(5, quantity.doubleValue());
        }
        Double price = entity.getPrice();
        if (price != null) {
            stmt.bindDouble(6, price.doubleValue());
        }
        Boolean isCanceled = entity.getIsCanceled();
        if (isCanceled != null) {
            stmt.bindLong(7, isCanceled.booleanValue() ? 1L : 0L);
        }
        Integer seatNo = entity.getSeatNo();
        if (seatNo != null) {
            stmt.bindLong(8, seatNo.intValue());
        }
        String notes = entity.getNote();
        if (notes != null) {
            stmt.bindString(9, notes);
        }
        Float extra = entity.getExtra();
        if (extra != null) {
            stmt.bindDouble(10, extra.floatValue());
        }
        String status = entity.getStatus();
        if (status != null) {
            stmt.bindString(11, status);
        }
        Integer homePackQty = entity.getHomePackQty();
        if (homePackQty != null) {
            stmt.bindLong(12, homePackQty.intValue());
        }
        Boolean IsCombo = entity.getIsCombo();
        if (IsCombo != null) {
            stmt.bindLong(13, IsCombo.booleanValue() ? 1L : 0L);
        }
        Integer CostCenterId = entity.getCostCenterId();
        if (CostCenterId != null) {
            stmt.bindLong(14, CostCenterId.intValue());
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
    public OrderDetailDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        Integer numValueOf = cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1));
        Integer numValueOf2 = cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2));
        String string = cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3);
        Double dValueOf = cursor.isNull(offset + 4) ? null : Double.valueOf(cursor.getDouble(offset + 4));
        Double dValueOf2 = cursor.isNull(offset + 5) ? null : Double.valueOf(cursor.getDouble(offset + 5));
        if (cursor.isNull(offset + 6)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 6) != 0);
        }
        Integer numValueOf3 = cursor.isNull(offset + 7) ? null : Integer.valueOf(cursor.getInt(offset + 7));
        String string2 = cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8);
        Float fValueOf = cursor.isNull(offset + 9) ? null : Float.valueOf(cursor.getFloat(offset + 9));
        String string3 = cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10);
        Integer numValueOf4 = cursor.isNull(offset + 11) ? null : Integer.valueOf(cursor.getInt(offset + 11));
        if (cursor.isNull(offset + 12)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 12) != 0);
        }
        OrderDetailDb entity = new OrderDetailDb(lValueOf, numValueOf, numValueOf2, string, dValueOf, dValueOf2, boolValueOf, numValueOf3, string2, fValueOf, string3, numValueOf4, boolValueOf2, cursor.isNull(offset + 13) ? null : Integer.valueOf(cursor.getInt(offset + 13)));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, OrderDetailDb entity, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setOrderMasterId(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setItemId(cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2)));
        entity.setTitle(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
        entity.setQuantity(cursor.isNull(offset + 4) ? null : Double.valueOf(cursor.getDouble(offset + 4)));
        entity.setPrice(cursor.isNull(offset + 5) ? null : Double.valueOf(cursor.getDouble(offset + 5)));
        if (cursor.isNull(offset + 6)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 6) != 0);
        }
        entity.setIsCanceled(boolValueOf);
        entity.setSeatNo(cursor.isNull(offset + 7) ? null : Integer.valueOf(cursor.getInt(offset + 7)));
        entity.setNote(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setExtra(cursor.isNull(offset + 9) ? null : Float.valueOf(cursor.getFloat(offset + 9)));
        entity.setStatus(cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10));
        entity.setHomePackQty(cursor.isNull(offset + 11) ? null : Integer.valueOf(cursor.getInt(offset + 11)));
        if (cursor.isNull(offset + 12)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 12) != 0);
        }
        entity.setIsCombo(boolValueOf2);
        entity.setCostCenterId(cursor.isNull(offset + 13) ? null : Integer.valueOf(cursor.getInt(offset + 13)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(OrderDetailDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(OrderDetailDb entity) {
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
