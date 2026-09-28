###### Class com.danfe.restaurantapp1.model.ItemgroupDbDao (com.danfe.restaurantapp1.model.ItemgroupDbDao)
.class public Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "ItemgroupDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "ITEMGROUP_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 49
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 53
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 54
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ITEMGROUP_DB\" (\"_Id\" INTEGER PRIMARY KEY ,\"ITEM_ID\" INTEGER,\"ITEM_NAME\" TEXT,\"PID\" INTEGER,\"IMAGE_PATH\" TEXT,\"COSTCENTER_ID\" INTEGER,\"LEVEL\" INTEGER,\"DETAILS\" TEXT,\"SRATE\" TEXT,\"CURRENCY\" TEXT,\"IS_CATEGORY\" INTEGER,\"IS_COMBO\" INTEGER,\"ITEM_CODE\" TEXT,\"IS_OUTOF_STOCK\"INTEGER,\"COST_CENTER_NAME\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void

    .line 53
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
    .line 74
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

    const-string v2, "\"ITEMGROUP_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void

    .line 74
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/ItemgroupDb;)V
    .registers 25
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getId()Ljava/lang/Long;

    move-result-object v12

    .line 84
    .local v12, "id":Ljava/lang/Long;
    if-eqz v12, :cond_18

    .line 85
    const/16 v19, 0x1

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v17

    .line 89
    .local v17, "itemId":Ljava/lang/Integer;
    if-eqz v17, :cond_32

    .line 90
    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v18

    .line 94
    .local v18, "itemName":Ljava/lang/String;
    if-eqz v18, :cond_43

    .line 95
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :cond_43
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getPId()Ljava/lang/Integer;

    move-result-object v9

    .line 99
    .local v9, "PId":Ljava/lang/Integer;
    if-eqz v9, :cond_5d

    .line 100
    const/16 v19, 0x4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 103
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "imagePath":Ljava/lang/String;
    if-eqz v13, :cond_6c

    .line 105
    const/16 v19, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_6c
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v4

    .line 109
    .local v4, "CostcenterID":Ljava/lang/Integer;
    if-eqz v4, :cond_86

    .line 110
    const/16 v19, 0x6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 113
    :cond_86
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v8

    .line 114
    .local v8, "Level":Ljava/lang/Integer;
    if-eqz v8, :cond_a0

    .line 115
    const/16 v19, 0x7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 118
    :cond_a0
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getDetails()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "Details":Ljava/lang/String;
    if-eqz v6, :cond_af

    .line 120
    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :cond_af
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "SRate":Ljava/lang/String;
    if-eqz v10, :cond_be

    .line 125
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 128
    :cond_be
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCurrency()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "Currency":Ljava/lang/String;
    if-eqz v5, :cond_cd

    .line 130
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 133
    :cond_cd
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v7

    .line 134
    .local v7, "IsCategory":Ljava/lang/Boolean;
    if-eqz v7, :cond_e6

    .line 135
    const/16 v19, 0xb

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_139

    const-wide/16 v20, 0x1

    :goto_dd
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 138
    :cond_e6
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v14

    .line 139
    .local v14, "isCombo":Ljava/lang/Boolean;
    if-eqz v14, :cond_ff

    .line 140
    const/16 v19, 0xc

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_13c

    const-wide/16 v20, 0x1

    :goto_f6
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 143
    :cond_ff
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemCode()Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, "itemCode":Ljava/lang/String;
    if-eqz v16, :cond_110

    .line 145
    const/16 v19, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 147
    :cond_110
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v15

    .line 148
    .local v15, "isOutOfStock":Ljava/lang/Boolean;
    if-eqz v15, :cond_129

    .line 150
    const/16 v19, 0xe

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_13f

    const-wide/16 v20, 0x1

    :goto_120
    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    :cond_129
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostCenterName()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "costCenterName":Ljava/lang/String;
    if-eqz v11, :cond_138

    .line 155
    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 157
    :cond_138
    return-void

    .line 135
    .end local v11    # "costCenterName":Ljava/lang/String;
    .end local v14    # "isCombo":Ljava/lang/Boolean;
    .end local v15    # "isOutOfStock":Ljava/lang/Boolean;
    .end local v16    # "itemCode":Ljava/lang/String;
    :cond_139
    const-wide/16 v20, 0x0

    goto :goto_dd

    .line 140
    .restart local v14    # "isCombo":Ljava/lang/Boolean;
    :cond_13c
    const-wide/16 v20, 0x0

    goto :goto_f6

    .line 150
    .restart local v15    # "isOutOfStock":Ljava/lang/Boolean;
    .restart local v16    # "itemCode":Ljava/lang/String;
    :cond_13f
    const-wide/16 v20, 0x0

    goto :goto_120
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/ItemgroupDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/ItemgroupDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .prologue
    .line 218
    if-eqz p1, :cond_7

    .line 219
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 221
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 15
    check-cast p1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->getKey(Lcom/danfe/restaurantapp1/model/ItemgroupDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .registers 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 168
    new-instance v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    add-int/lit8 v3, p2, 0x0

    .line 169
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v4, p2, 0x1

    .line 170
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_bf

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, p2, 0x2

    .line 171
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_cd

    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v6, p2, 0x3

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d7

    const/4 v6, 0x0

    :goto_2e
    add-int/lit8 v7, p2, 0x4

    .line 173
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_e5

    const/4 v7, 0x0

    :goto_39
    add-int/lit8 v8, p2, 0x5

    .line 174
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_ef

    const/4 v8, 0x0

    :goto_44
    add-int/lit8 v9, p2, 0x6

    .line 175
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_fd

    const/4 v9, 0x0

    :goto_4f
    add-int/lit8 v10, p2, 0x7

    .line 176
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_10b

    const/4 v10, 0x0

    :goto_5a
    add-int/lit8 v11, p2, 0x8

    .line 177
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_115

    const/4 v11, 0x0

    :goto_65
    add-int/lit8 v12, p2, 0x9

    .line 178
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_11f

    const/4 v12, 0x0

    :goto_70
    add-int/lit8 v13, p2, 0xa

    .line 179
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_129

    const/4 v13, 0x0

    :goto_7b
    add-int/lit8 v14, p2, 0xb

    .line 180
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_13c

    const/4 v14, 0x0

    :goto_86
    add-int/lit8 v15, p2, 0xc

    .line 181
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_14f

    const/4 v15, 0x0

    :goto_91
    add-int/lit8 v16, p2, 0xd

    .line 182
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_159

    const/16 v16, 0x0

    :goto_9f
    add-int/lit8 v17, p2, 0xe

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_170

    const/16 v17, 0x0

    :goto_ad
    invoke-direct/range {v2 .. v17}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 185
    .local v2, "entity":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    return-object v2

    .line 169
    .end local v2    # "entity":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :cond_b1
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_d

    .line 170
    :cond_bf
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_18

    .line 171
    :cond_cd
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_23

    .line 172
    :cond_d7
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_2e

    .line 173
    :cond_e5
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_39

    .line 174
    :cond_ef
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_44

    .line 175
    :cond_fd
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_4f

    .line 176
    :cond_10b
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5a

    .line 177
    :cond_115
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_65

    .line 178
    :cond_11f
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_70

    .line 179
    :cond_129
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getShort(I)S

    move-result v13

    if-eqz v13, :cond_13a

    const/4 v13, 0x1

    :goto_134
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto/16 :goto_7b

    :cond_13a
    const/4 v13, 0x0

    goto :goto_134

    .line 180
    :cond_13c
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v14

    if-eqz v14, :cond_14d

    const/4 v14, 0x1

    :goto_147
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_86

    :cond_14d
    const/4 v14, 0x0

    goto :goto_147

    .line 181
    :cond_14f
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_91

    .line 182
    :cond_159
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v16

    if-eqz v16, :cond_16d

    const/16 v16, 0x1

    :goto_167
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_9f

    :cond_16d
    const/16 v16, 0x0

    goto :goto_167

    .line 183
    :cond_170
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_ad
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/ItemgroupDb;I)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 191
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setId(Ljava/lang/Long;)V

    .line 192
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setItemId(Ljava/lang/Integer;)V

    .line 193
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setItemName(Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setPId(Ljava/lang/Integer;)V

    .line 195
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setImagePath(Ljava/lang/String;)V

    .line 196
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_eb

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setCostcenterID(Ljava/lang/Integer;)V

    .line 197
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    move-object v0, v1

    :goto_54
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setLevel(Ljava/lang/Integer;)V

    .line 198
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_103

    move-object v0, v1

    :goto_60
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setDetails(Ljava/lang/String;)V

    .line 199
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10b

    move-object v0, v1

    :goto_6c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setSRate(Ljava/lang/String;)V

    .line 200
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_113

    move-object v0, v1

    :goto_78
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setCurrency(Ljava/lang/String;)V

    .line 201
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11b

    move-object v0, v1

    :goto_84
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setIsCategory(Ljava/lang/Boolean;)V

    .line 202
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12c

    move-object v0, v1

    :goto_90
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setIsCombo(Ljava/lang/Boolean;)V

    .line 203
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13d

    move-object v0, v1

    :goto_9c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setItemCode(Ljava/lang/String;)V

    .line 204
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_145

    move-object v0, v1

    :goto_a8
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setOutOfStock(Ljava/lang/Boolean;)V

    .line 205
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_155

    :goto_b3
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setCostCenterName(Ljava/lang/String;)V

    .line 206
    return-void

    .line 191
    :cond_b7
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_c

    .line 192
    :cond_c3
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_18

    .line 193
    :cond_cf
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 194
    :cond_d7
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_30

    .line 195
    :cond_e3
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c

    .line 196
    :cond_eb
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_48

    .line 197
    :cond_f7
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_54

    .line 198
    :cond_103
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_60

    .line 199
    :cond_10b
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 200
    :cond_113
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_78

    .line 201
    :cond_11b
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_12a

    move v0, v2

    :goto_124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_84

    :cond_12a
    move v0, v3

    goto :goto_124

    .line 202
    :cond_12c
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_13b

    move v0, v2

    :goto_135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_90

    :cond_13b
    move v0, v3

    goto :goto_135

    .line 203
    :cond_13d
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9c

    .line 204
    :cond_145
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_153

    :goto_14d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_a8

    :cond_153
    move v2, v3

    goto :goto_14d

    .line 205
    :cond_155
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b3
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/ItemgroupDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 162
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/ItemgroupDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .param p2, "rowId"    # J

    .prologue
    .line 211
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->setId(Ljava/lang/Long;)V

    .line 212
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 15
    check-cast p1, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/ItemgroupDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.ItemgroupDbDao.Properties (com.danfe.restaurantapp1.model.ItemgroupDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;
.super Ljava/lang/Object;
.source "ItemgroupDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CostCenterName:Lde/greenrobot/dao/Property;

.field public static final CostcenterID:Lde/greenrobot/dao/Property;

.field public static final Currency:Lde/greenrobot/dao/Property;

.field public static final Details:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImagePath:Lde/greenrobot/dao/Property;

.field public static final IsCategory:Lde/greenrobot/dao/Property;

.field public static final IsCombo:Lde/greenrobot/dao/Property;

.field public static final IsOutOfStock:Lde/greenrobot/dao/Property;

.field public static final ItemCode:Lde/greenrobot/dao/Property;

.field public static final ItemId:Lde/greenrobot/dao/Property;

.field public static final ItemName:Lde/greenrobot/dao/Property;

.field public static final Level:Lde/greenrobot/dao/Property;

.field public static final PId:Lde/greenrobot/dao/Property;

.field public static final SRate:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "Id"

    const-string v5, "_Id"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 25
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "ItemId"

    const-string v8, "ITEM_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    .line 26
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "ItemName"

    const-string v7, "ITEM_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemName:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "PId"

    const-string v7, "PID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "ImagePath"

    const-string v7, "IMAGE_PATH"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ImagePath:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Integer;

    const-string v5, "CostcenterID"

    const-string v7, "COSTCENTER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->CostcenterID:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Integer;

    const-string v5, "Level"

    const-string v7, "LEVEL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Level:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "Details"

    const-string v7, "DETAILS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Details:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "SRate"

    const-string v7, "SRATE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->SRate:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "Currency"

    const-string v7, "CURRENCY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Currency:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IsCategory"

    const-string v7, "IS_CATEGORY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCategory:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IsCombo"

    const-string v7, "IS_COMBO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "ItemCode"

    const-string v7, "ITEM_CODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemCode:Lde/greenrobot/dao/Property;

    .line 37
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IsOutOfStock"

    const-string v7, "IS_OUTOF_STOCK"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsOutOfStock:Lde/greenrobot/dao/Property;

    .line 38
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "CostCenterName"

    const-string v7, "COST_CENTER_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->CostCenterName:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
