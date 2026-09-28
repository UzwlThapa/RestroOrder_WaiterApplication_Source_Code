package com.danfe.restaurantapp1.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.Property;
import de.greenrobot.dao.internal.DaoConfig;

/* JADX INFO: loaded from: classes.dex */
public class RoomDbDao extends AbstractDao<RoomDb, Long> {
    public static final String TABLENAME = "ROOM_DB";

    public static class Properties {
        public static final Property Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property RestroRoom = new Property(1, String.class, "restroRoom", false, "RESTRO_ROOM");
        public static final Property RoomStatus = new Property(2, Integer.class, "roomStatus", false, "ROOM_STATUS");
        public static final Property RoomTypeId = new Property(3, Integer.class, "roomTypeId", false, "ROOM_TYPE_ID");
    }

    public RoomDbDao(DaoConfig config) {
        super(config);
    }

    public RoomDbDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(SQLiteDatabase db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"ROOM_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"RESTRO_ROOM\" TEXT,\"ROOM_STATUS\" INTEGER,\"ROOM_TYPE_ID\" INTEGER);");
    }

    public static void dropTable(SQLiteDatabase db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"ROOM_DB\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public void bindValues(SQLiteStatement stmt, RoomDb entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String restroRoom = entity.getRestroRoom();
        if (restroRoom != null) {
            stmt.bindString(2, restroRoom);
        }
        Integer roomStatus = entity.getRoomStatus();
        if (roomStatus != null) {
            stmt.bindLong(3, roomStatus.intValue());
        }
        Integer roomTypeId = entity.getRoomTypeId();
        if (roomTypeId != null) {
            stmt.bindLong(4, roomTypeId.intValue());
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
    public RoomDb readEntity(Cursor cursor, int offset) {
        RoomDb entity = new RoomDb(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2)), cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
        return entity;
    }

    @Override // de.greenrobot.dao.AbstractDao
    public void readEntity(Cursor cursor, RoomDb entity, int offset) {
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setRestroRoom(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setRoomStatus(cursor.isNull(offset + 2) ? null : Integer.valueOf(cursor.getInt(offset + 2)));
        entity.setRoomTypeId(cursor.isNull(offset + 3) ? null : Integer.valueOf(cursor.getInt(offset + 3)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.greenrobot.dao.AbstractDao
    public Long updateKeyAfterInsert(RoomDb entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // de.greenrobot.dao.AbstractDao
    public Long getKey(RoomDb entity) {
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
