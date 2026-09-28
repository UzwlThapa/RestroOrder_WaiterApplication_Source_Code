package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class ItemgroupDbDao extends AbstractDao<ItemgroupDb, Long> {
    public static final String TABLENAME = "ITEMGROUP_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "Id", true, "_Id");
        public static final Property ItemId = new Property(1, Integer.class, "ItemId", false, "ITEM_ID");
        public static final Property ItemName = new Property(2, String.class, "ItemName", false, "ITEM_NAME");
        public static final Property PId = new Property(3, Integer.class, "PId", false, "PID");
        public static final Property ImagePath = new Property(4, String.class, "ImagePath", false, "IMAGE_PATH");
        public static final Property CostcenterID = new Property(5, Integer.class, "CostcenterID", false, "COSTCENTER_ID");
        public static final Property Level = new Property(6, Integer.class, "Level", false, "LEVEL");
        public static final Property Details = new Property(7, String.class, "Details", false, "DETAILS");
        public static final Property SRate = new Property(8, String.class, "SRate", false, "SRATE");
        public static final Property Currency = new Property(9, String.class, "Currency", false, "CURRENCY");
        public static final Property IsCategory = new Property(10, Boolean.class, "IsCategory", false, "IS_CATEGORY");
        public static final Property IsCombo = new Property(11, Boolean.class, "IsCombo", false, "IS_COMBO");
        public static final Property ItemCode = new Property(12, String.class, "ItemCode", false, "ITEM_CODE");
        public static final Property IsOutOfStock = new Property(13, Boolean.class, "IsOutOfStock", false, "IS_OUTOF_STOCK");
        public static final Property CostCenterName = new Property(14, String.class, "CostCenterName", false, "COST_CENTER_NAME");
    }

    public ItemgroupDbDao(DaoConfig config) {
        super(config);
    }

    public ItemgroupDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"ITEMGROUP_DB\" (\"_Id\" INTEGER PRIMARY KEY ,\"ITEM_ID\" INTEGER,\"ITEM_NAME\" TEXT,\"PID\" INTEGER,\"IMAGE_PATH\" TEXT,\"COSTCENTER_ID\" INTEGER,\"LEVEL\" INTEGER,\"DETAILS\" TEXT,\"SRATE\" TEXT,\"CURRENCY\" TEXT,\"IS_CATEGORY\" INTEGER,\"IS_COMBO\" INTEGER,\"ITEM_CODE\" TEXT,\"IS_OUTOF_STOCK\"INTEGER,\"COST_CENTER_NAME\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"ITEMGROUP_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, ItemgroupDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        Integer itemId = entity.getItemId();
        if (itemId != null) {
            stmt.bindLong(2, itemId.intValue());
        }
        String itemName = entity.getItemName();
        if (itemName != null) {
            stmt.bindString(3, itemName);
        }
        Integer PId = entity.getPId();
        if (PId != null) {
            stmt.bindLong(4, PId.intValue());
        }
        String imagePath = entity.getImagePath();
        if (imagePath != null) {
            stmt.bindString(5, imagePath);
        }
        Integer CostcenterID = entity.getCostcenterID();
        if (CostcenterID != null) {
            stmt.bindLong(6, CostcenterID.intValue());
        }
        Integer Level = entity.getLevel();
        if (Level != null) {
            stmt.bindLong(7, Level.intValue());
        }
        String Details = entity.getDetails();
        if (Details != null) {
            stmt.bindString(8, Details);
        }
        String SRate = entity.getSRate();
        if (SRate != null) {
            stmt.bindString(9, SRate);
        }
        String Currency = entity.getCurrency();
        if (Currency != null) {
            stmt.bindString(10, Currency);
        }
        Boolean IsCategory = entity.getIsCategory();
        if (IsCategory != null) {
            stmt.bindLong(11, IsCategory.booleanValue() ? 1L : 0L);
        }
        Boolean isCombo = entity.getIsCombo();
        if (isCombo != null) {
            stmt.bindLong(12, isCombo.booleanValue() ? 1L : 0L);
        }
        String itemCode = entity.getItemCode();
        if (itemCode != null) {
            stmt.bindString(13, itemCode);
        }
        Boolean isOutOfStock = entity.getOutOfStock();
        if (isOutOfStock != null) {
            stmt.bindLong(14, isOutOfStock.booleanValue() ? 1L : 0L);
        }
        String costCenterName = entity.getCostCenterName();
        if (costCenterName != null) {
            stmt.bindString(15, costCenterName);
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
    public ItemgroupDb readEntity(Cursor cursor, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Boolean boolValueOf3;
        Long lValueOf = cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0));
        Integer numValueOf = cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1));
        String string = cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2);
        Integer numValueOf2 = cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3));
        String string2 = cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4);
        Integer numValueOf3 = cursor.isNull(offset + 5) ? null : Integer.valueOf(cursor.getInt(offset + 5));
        Integer numValueOf4 = cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6));
        String string3 = cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7);
        String string4 = cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8);
        String string5 = cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9);
        if (cursor.isNull(offset + 10)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 10) != 0);
        }
        if (cursor.isNull(offset + 11)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 11) != 0);
        }
        String string6 = cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12);
        if (cursor.isNull(offset + 13)) {
            boolValueOf3 = null;
        } else {
            boolValueOf3 = Boolean.valueOf(cursor.getShort(offset + 13) != 0);
        }
        ItemgroupDb entity = new ItemgroupDb(lValueOf, numValueOf, string, numValueOf2, string2, numValueOf3, numValueOf4, string3, string4, string5, boolValueOf, boolValueOf2, string6, boolValueOf3, cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, ItemgroupDb entity, int offset) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Boolean boolValueOf3;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setItemId(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setItemName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setPId(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        entity.setImagePath(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setCostcenterID(cursor.isNull(offset + 5) ? null : Integer.valueOf(cursor.getInt(offset + 5)));
        entity.setLevel(cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)));
        entity.setDetails(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        entity.setSRate(cursor.isNull(offset + 8) ? null : cursor.getString(offset + 8));
        entity.setCurrency(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
        if (cursor.isNull(offset + 10)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(cursor.getShort(offset + 10) != 0);
        }
        entity.setIsCategory(boolValueOf);
        if (cursor.isNull(offset + 11)) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(cursor.getShort(offset + 11) != 0);
        }
        entity.setIsCombo(boolValueOf2);
        entity.setItemCode(cursor.isNull(offset + 12) ? null : cursor.getString(offset + 12));
        if (cursor.isNull(offset + 13)) {
            boolValueOf3 = null;
        } else {
            boolValueOf3 = Boolean.valueOf(cursor.getShort(offset + 13) != 0);
        }
        entity.setOutOfStock(boolValueOf3);
        entity.setCostCenterName(cursor.isNull(offset + 14) ? null : cursor.getString(offset + 14));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(ItemgroupDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(ItemgroupDb entity) {
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
