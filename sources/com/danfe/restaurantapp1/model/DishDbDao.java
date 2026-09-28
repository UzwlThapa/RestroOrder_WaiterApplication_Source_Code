package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.danfe.restaurantapp1.helper.Constants;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class DishDbDao extends AbstractDao<DishDb, Long> {
    public static final String TABLENAME = "DISH_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property Categoryid = new Property(1, Integer.class, "categoryid", false, "CATEGORYID");
        public static final Property Name = new Property(2, String.class, "name", false, "NAME");
        public static final Property Itemid = new Property(3, Integer.class, "itemid", false, "ITEMID");
        public static final Property Itemcode = new Property(4, String.class, "itemcode", false, "ITEMCODE");
        public static final Property Description = new Property(5, String.class, Constants.KEY_DESC, false, "DESCRIPTION");
        public static final Property CostCenterId = new Property(6, Integer.class, "costCenterId", false, "COST_CENTER_ID");
        public static final Property CostCenterName = new Property(7, String.class, "costCenterName", false, "COST_CENTER_NAME");
        public static final Property Price = new Property(8, Double.class, "price", false, "PRICE");
        public static final Property PriceWithCurr = new Property(9, String.class, "priceWithCurr", false, "PRICE_WITH_CURR");
        public static final Property ImageLink = new Property(10, String.class, "imageLink", false, "IMAGE_LINK");
    }

    public DishDbDao(DaoConfig config) {
        super(config);
    }

    public DishDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"DISH_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"CATEGORYID\" INTEGER,\"NAME\" TEXT,\"ITEMID\" INTEGER,\"ITEMCODE\" TEXT,\"DESCRIPTION\" TEXT,\"COST_CENTER_ID\" INTEGER,\"COST_CENTER_NAME\" TEXT,\"PRICE\" REAL,\"PRICE_WITH_CURR\" TEXT,\"IMAGE_LINK\" TEXT);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"DISH_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, DishDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        Integer categoryid = entity.getCategoryid();
        if (categoryid != null) {
            stmt.bindLong(2, categoryid.intValue());
        }
        String name = entity.getName();
        if (name != null) {
            stmt.bindString(3, name);
        }
        Integer itemid = entity.getItemid();
        if (itemid != null) {
            stmt.bindLong(4, itemid.intValue());
        }
        String itemcode = entity.getItemcode();
        if (itemcode != null) {
            stmt.bindString(5, itemcode);
        }
        String description = entity.getDescription();
        if (description != null) {
            stmt.bindString(6, description);
        }
        Integer costCenterId = entity.getCostCenterId();
        if (costCenterId != null) {
            stmt.bindLong(7, costCenterId.intValue());
        }
        String costCenterName = entity.getCostCenterName();
        if (costCenterName != null) {
            stmt.bindString(8, costCenterName);
        }
        Double price = entity.getPrice();
        if (price != null) {
            stmt.bindDouble(9, price.doubleValue());
        }
        String priceWithCurr = entity.getPriceWithCurr();
        if (priceWithCurr != null) {
            stmt.bindString(10, priceWithCurr);
        }
        String imageLink = entity.getImageLink();
        if (imageLink != null) {
            stmt.bindString(11, imageLink);
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
    public DishDb readEntity(Cursor cursor, int offset) {
        DishDb entity = new DishDb(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)), cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2), cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)), cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4), cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5), cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)), cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7), cursor.isNull(offset + 8) ? null : Double.valueOf(cursor.getDouble(offset + 8)), cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9), cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, DishDb entity, int offset) {
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setCategoryid(cursor.isNull(offset + 1) ? null : Integer.valueOf(cursor.getInt(offset + 1)));
        entity.setName(cursor.isNull(offset + 2) ? null : cursor.getString(offset + 2));
        entity.setItemid(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        entity.setItemcode(cursor.isNull(offset + 4) ? null : cursor.getString(offset + 4));
        entity.setDescription(cursor.isNull(offset + 5) ? null : cursor.getString(offset + 5));
        entity.setCostCenterId(cursor.isNull(offset + 6) ? null : Integer.valueOf(cursor.getInt(offset + 6)));
        entity.setCostCenterName(cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        entity.setPrice(cursor.isNull(offset + 8) ? null : Double.valueOf(cursor.getDouble(offset + 8)));
        entity.setPriceWithCurr(cursor.isNull(offset + 9) ? null : cursor.getString(offset + 9));
        entity.setImageLink(cursor.isNull(offset + 10) ? null : cursor.getString(offset + 10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(DishDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(DishDb entity) {
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
