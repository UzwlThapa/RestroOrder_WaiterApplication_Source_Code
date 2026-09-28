###### Class com.danfe.restaurantapp1.model.TableDbDao (com.danfe.restaurantapp1.model.TableDbDao)
.class public Lcom/danfe/restaurantapp1/model/TableDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "TableDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/TableDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "TABLE_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 51
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 55
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 56
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"TABLE_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"NUMBER\" TEXT,\"TABLE_STATUS\" INTEGER,\"TABLE_CAPACITY\" INTEGER,\"MERGE_TABLE_ID\" INTEGER,\"MERGE_ID\" INTEGER,\"ROOM_ID\" INTEGER,\"BILL_PAID\" INTEGER,\"TABLE_DATE\" TEXT,\"TABLETIME\" TEXT,\"IS_CANCELLED\" INTEGER,\"IS_CHECKED\" INTEGER,\"IS_TABLE\" INTEGER,\"RATE\" REAL,\"ORDER_MASTER_ID\" INTEGER,\"Guest_No\"INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void

    .line 55
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_21
    const-string v0, ""

    goto :goto_4
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_21

    const-string v1, "IF EXISTS "

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"TABLE_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    return-void

    .line 77
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/TableDb;)V
    .registers 27
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/TableDb;

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v6

    .line 88
    .local v6, "id":Ljava/lang/Long;
    if-eqz v6, :cond_18

    .line 89
    const/16 v20, 0x1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 92
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, "number":Ljava/lang/String;
    if-eqz v12, :cond_27

    .line 94
    const/16 v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    :cond_27
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v18

    .line 98
    .local v18, "tableStatus":Ljava/lang/Integer;
    if-eqz v18, :cond_41

    .line 99
    const/16 v20, 0x3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    :cond_41
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableCapacity()Ljava/lang/Integer;

    move-result-object v16

    .line 103
    .local v16, "tableCapacity":Ljava/lang/Integer;
    if-eqz v16, :cond_5b

    .line 104
    const/16 v20, 0x4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 107
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v11

    .line 108
    .local v11, "mergeTableId":Ljava/lang/Integer;
    if-eqz v11, :cond_75

    .line 109
    const/16 v20, 0x5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 112
    :cond_75
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeId()Ljava/lang/Integer;

    move-result-object v10

    .line 113
    .local v10, "mergeId":Ljava/lang/Integer;
    if-eqz v10, :cond_8f

    .line 114
    const/16 v20, 0x6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 117
    :cond_8f
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getRoomId()Ljava/lang/Integer;

    move-result-object v15

    .line 118
    .local v15, "roomId":Ljava/lang/Integer;
    if-eqz v15, :cond_a9

    .line 119
    const/16 v20, 0x7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    :cond_a9
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v4

    .line 123
    .local v4, "billPaid":Ljava/lang/Integer;
    if-eqz v4, :cond_c3

    .line 124
    const/16 v20, 0x8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    :cond_c3
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableDate()Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, "tableDate":Ljava/lang/String;
    if-eqz v17, :cond_d4

    .line 129
    const/16 v20, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_d4
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTabletime()Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "tabletime":Ljava/lang/String;
    if-eqz v19, :cond_e5

    .line 134
    const/16 v20, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 137
    :cond_e5
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsCancelled()Ljava/lang/Integer;

    move-result-object v7

    .line 138
    .local v7, "isCancelled":Ljava/lang/Integer;
    if-eqz v7, :cond_ff

    .line 139
    const/16 v20, 0xb

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 142
    :cond_ff
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v8

    .line 143
    .local v8, "isChecked":Ljava/lang/Boolean;
    if-eqz v8, :cond_118

    .line 144
    const/16 v22, 0xc

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_17b

    const-wide/16 v20, 0x1

    :goto_10f
    move-object/from16 v0, p1

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    :cond_118
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v9

    .line 148
    .local v9, "isTable":Ljava/lang/Boolean;
    if-eqz v9, :cond_131

    .line 149
    const/16 v22, 0xd

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_17e

    const-wide/16 v20, 0x1

    :goto_128
    move-object/from16 v0, p1

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    :cond_131
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getRate()Ljava/lang/Double;

    move-result-object v14

    .line 153
    .local v14, "rate":Ljava/lang/Double;
    if-eqz v14, :cond_146

    .line 154
    const/16 v20, 0xe

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 157
    :cond_146
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v13

    .line 158
    .local v13, "orderMasterId":Ljava/lang/Integer;
    if-eqz v13, :cond_160

    .line 159
    const/16 v20, 0xf

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 162
    :cond_160
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/TableDb;->getGuestNo()Ljava/lang/Integer;

    move-result-object v5

    .line 163
    .local v5, "guestNo":Ljava/lang/Integer;
    if-eqz v5, :cond_17a

    .line 164
    const/16 v20, 0x10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 166
    :cond_17a
    return-void

    .line 144
    .end local v5    # "guestNo":Ljava/lang/Integer;
    .end local v9    # "isTable":Ljava/lang/Boolean;
    .end local v13    # "orderMasterId":Ljava/lang/Integer;
    .end local v14    # "rate":Ljava/lang/Double;
    :cond_17b
    const-wide/16 v20, 0x0

    goto :goto_10f

    .line 149
    .restart local v9    # "isTable":Ljava/lang/Boolean;
    :cond_17e
    const-wide/16 v20, 0x0

    goto :goto_128
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/TableDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/TableDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/TableDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/TableDb;

    .prologue
    .line 228
    if-eqz p1, :cond_7

    .line 229
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 231
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->getKey(Lcom/danfe/restaurantapp1/model/TableDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/TableDb;
    .registers 22
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 177
    new-instance v2, Lcom/danfe/restaurantapp1/model/TableDb;

    add-int/lit8 v3, p2, 0x0

    .line 178
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_bf

    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v4, p2, 0x1

    .line 179
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_cd

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, p2, 0x2

    .line 180
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_d7

    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v6, p2, 0x3

    .line 181
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e5

    const/4 v6, 0x0

    :goto_2e
    add-int/lit8 v7, p2, 0x4

    .line 182
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_f3

    const/4 v7, 0x0

    :goto_39
    add-int/lit8 v8, p2, 0x5

    .line 183
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_101

    const/4 v8, 0x0

    :goto_44
    add-int/lit8 v9, p2, 0x6

    .line 184
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_10f

    const/4 v9, 0x0

    :goto_4f
    add-int/lit8 v10, p2, 0x7

    .line 185
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_11d

    const/4 v10, 0x0

    :goto_5a
    add-int/lit8 v11, p2, 0x8

    .line 186
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_12b

    const/4 v11, 0x0

    :goto_65
    add-int/lit8 v12, p2, 0x9

    .line 187
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_135

    const/4 v12, 0x0

    :goto_70
    add-int/lit8 v13, p2, 0xa

    .line 188
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_13f

    const/4 v13, 0x0

    :goto_7b
    add-int/lit8 v14, p2, 0xb

    .line 189
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_14d

    const/4 v14, 0x0

    :goto_86
    add-int/lit8 v15, p2, 0xc

    .line 190
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_160

    const/4 v15, 0x0

    :goto_91
    add-int/lit8 v16, p2, 0xd

    .line 191
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_173

    const/16 v16, 0x0

    :goto_9f
    add-int/lit8 v17, p2, 0xe

    .line 192
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_183

    const/16 v17, 0x0

    :goto_ad
    add-int/lit8 v18, p2, 0xf

    .line 193
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_193

    const/16 v18, 0x0

    :goto_bb
    invoke-direct/range {v2 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 194
    .local v2, "entity":Lcom/danfe/restaurantapp1/model/TableDb;
    return-object v2

    .line 178
    .end local v2    # "entity":Lcom/danfe/restaurantapp1/model/TableDb;
    :cond_bf
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_d

    .line 179
    :cond_cd
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 180
    :cond_d7
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_23

    .line 181
    :cond_e5
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_2e

    .line 182
    :cond_f3
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_39

    .line 183
    :cond_101
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_44

    .line 184
    :cond_10f
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_4f

    .line 185
    :cond_11d
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_5a

    .line 186
    :cond_12b
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_65

    .line 187
    :cond_135
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_70

    .line 188
    :cond_13f
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto/16 :goto_7b

    .line 189
    :cond_14d
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v14

    if-eqz v14, :cond_15e

    const/4 v14, 0x1

    :goto_158
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_86

    :cond_15e
    const/4 v14, 0x0

    goto :goto_158

    .line 190
    :cond_160
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getShort(I)S

    move-result v15

    if-eqz v15, :cond_171

    const/4 v15, 0x1

    :goto_16b
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_91

    :cond_171
    const/4 v15, 0x0

    goto :goto_16b

    .line 191
    :cond_173
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    goto/16 :goto_9f

    .line 192
    :cond_183
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_ad

    .line 193
    :cond_193
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_bb
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/TableDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/TableDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/TableDb;I)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/TableDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 200
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setId(Ljava/lang/Long;)V

    .line 201
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setNumber(Ljava/lang/String;)V

    .line 202
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setTableStatus(Ljava/lang/Integer;)V

    .line 203
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setTableCapacity(Ljava/lang/Integer;)V

    .line 204
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ef

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setMergeTableId(Ljava/lang/Integer;)V

    .line 205
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_fb

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setMergeId(Ljava/lang/Integer;)V

    .line 206
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_107

    move-object v0, v1

    :goto_54
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setRoomId(Ljava/lang/Integer;)V

    .line 207
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_113

    move-object v0, v1

    :goto_60
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setBillPaid(Ljava/lang/Integer;)V

    .line 208
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11f

    move-object v0, v1

    :goto_6c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setTableDate(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_127

    move-object v0, v1

    :goto_78
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setTabletime(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12f

    move-object v0, v1

    :goto_84
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setIsCancelled(Ljava/lang/Integer;)V

    .line 211
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13b

    move-object v0, v1

    :goto_90
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setIsChecked(Ljava/lang/Boolean;)V

    .line 212
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14c

    move-object v0, v1

    :goto_9c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setIsTable(Ljava/lang/Boolean;)V

    .line 213
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15c

    move-object v0, v1

    :goto_a8
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setRate(Ljava/lang/Double;)V

    .line 214
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_168

    move-object v0, v1

    :goto_b4
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setOrderMasterId(Ljava/lang/Integer;)V

    .line 215
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_174

    :goto_bf
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/TableDb;->setGuestNo(Ljava/lang/Integer;)V

    .line 216
    return-void

    .line 200
    :cond_c3
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_c

    .line 201
    :cond_cf
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 202
    :cond_d7
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_24

    .line 203
    :cond_e3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_30

    .line 204
    :cond_ef
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3c

    .line 205
    :cond_fb
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_48

    .line 206
    :cond_107
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_54

    .line 207
    :cond_113
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_60

    .line 208
    :cond_11f
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 209
    :cond_127
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_78

    .line 210
    :cond_12f
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_84

    .line 211
    :cond_13b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_14a

    move v0, v2

    :goto_144
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_90

    :cond_14a
    move v0, v3

    goto :goto_144

    .line 212
    :cond_14c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_15a

    :goto_154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_9c

    :cond_15a
    move v2, v3

    goto :goto_154

    .line 213
    :cond_15c
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_a8

    .line 214
    :cond_168
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_b4

    .line 215
    :cond_174
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_bf
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/TableDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/TableDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 171
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/TableDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/TableDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/TableDb;
    .param p2, "rowId"    # J

    .prologue
    .line 221
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/TableDb;->setId(Ljava/lang/Long;)V

    .line 222
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/TableDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/TableDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.TableDbDao.Properties (com.danfe.restaurantapp1.model.TableDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;
.super Ljava/lang/Object;
.source "TableDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/TableDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final BillPaid:Lde/greenrobot/dao/Property;

.field public static final GuestNo:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final IsCancelled:Lde/greenrobot/dao/Property;

.field public static final IsChecked:Lde/greenrobot/dao/Property;

.field public static final IsTable:Lde/greenrobot/dao/Property;

.field public static final MergeId:Lde/greenrobot/dao/Property;

.field public static final MergeTableId:Lde/greenrobot/dao/Property;

.field public static final Number:Lde/greenrobot/dao/Property;

.field public static final OrderMasterId:Lde/greenrobot/dao/Property;

.field public static final Rate:Lde/greenrobot/dao/Property;

.field public static final RoomId:Lde/greenrobot/dao/Property;

.field public static final TableCapacity:Lde/greenrobot/dao/Property;

.field public static final TableDate:Lde/greenrobot/dao/Property;

.field public static final TableStatus:Lde/greenrobot/dao/Property;

.field public static final Tabletime:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "number"

    const-string v8, "NUMBER"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Number:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Integer;

    const-string v5, "tableStatus"

    const-string v7, "TABLE_STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->TableStatus:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "tableCapacity"

    const-string v7, "TABLE_CAPACITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->TableCapacity:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Integer;

    const-string v5, "mergeTableId"

    const-string v7, "MERGE_TABLE_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->MergeTableId:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Integer;

    const-string v5, "mergeId"

    const-string v7, "MERGE_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->MergeId:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Integer;

    const-string v5, "roomId"

    const-string v7, "ROOM_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->RoomId:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Integer;

    const-string v5, "billPaid"

    const-string v7, "BILL_PAID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->BillPaid:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "tableDate"

    const-string v7, "TABLE_DATE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->TableDate:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "tabletime"

    const-string v7, "TABLETIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Tabletime:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/Integer;

    const-string v5, "isCancelled"

    const-string v7, "IS_CANCELLED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->IsCancelled:Lde/greenrobot/dao/Property;

    .line 37
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isChecked"

    const-string v7, "IS_CHECKED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->IsChecked:Lde/greenrobot/dao/Property;

    .line 38
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isTable"

    const-string v7, "IS_TABLE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->IsTable:Lde/greenrobot/dao/Property;

    .line 39
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Double;

    const-string v5, "rate"

    const-string v7, "RATE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Rate:Lde/greenrobot/dao/Property;

    .line 40
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Integer;

    const-string v5, "orderMasterId"

    const-string v7, "ORDER_MASTER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->OrderMasterId:Lde/greenrobot/dao/Property;

    .line 41
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/Integer;

    const-string v5, "guestNo"

    const-string v7, "Guest_No"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->GuestNo:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
