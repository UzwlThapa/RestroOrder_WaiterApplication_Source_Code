###### Class com.danfe.restaurantapp1.model.OrderDetailDbDao (com.danfe.restaurantapp1.model.OrderDetailDbDao)
.class public Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "OrderDetailDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "ORDER_DETAIL_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 47
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 51
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 52
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ORDER_DETAIL_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"ORDER_MASTER_ID\" INTEGER,\"ITEM_ID\" INTEGER,\"TITLE\" TEXT,\"QUANTITY\" REAL,\"PRICE\" REAL,\"IS_CANCELED\" INTEGER,\"SEAT_NO\" INTEGER,\"NOTES\" TEXT,\"EXTRA\" REAL,\"STATUS\" TEXT,\"HOME_PACK_QTY\" INTEGER,\"IS_COMBO\" INTEGER,\"COST_CENTER_ID\" INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void

    .line 51
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
    .line 71
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

    const-string v2, "\"ORDER_DETAIL_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void

    .line 71
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 25
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .prologue
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getId()Ljava/lang/Long;

    move-result-object v8

    .line 81
    .local v8, "id":Ljava/lang/Long;
    if-eqz v8, :cond_18

    .line 82
    const/16 v18, 0x1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 85
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v12

    .line 86
    .local v12, "orderMasterId":Ljava/lang/Integer;
    if-eqz v12, :cond_32

    .line 87
    const/16 v18, 0x2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v10

    .line 91
    .local v10, "itemId":Ljava/lang/Integer;
    if-eqz v10, :cond_4c

    .line 92
    const/16 v18, 0x3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v17

    .line 96
    .local v17, "title":Ljava/lang/String;
    if-eqz v17, :cond_5d

    .line 97
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v14

    .line 101
    .local v14, "quantity":Ljava/lang/Double;
    if-eqz v14, :cond_72

    .line 102
    const/16 v18, 0x5

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 105
    :cond_72
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getPrice()Ljava/lang/Double;

    move-result-object v13

    .line 106
    .local v13, "price":Ljava/lang/Double;
    if-eqz v13, :cond_87

    .line 107
    const/16 v18, 0x6

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 110
    :cond_87
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCanceled()Ljava/lang/Boolean;

    move-result-object v9

    .line 111
    .local v9, "isCanceled":Ljava/lang/Boolean;
    if-eqz v9, :cond_a0

    .line 112
    const/16 v20, 0x7

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_142

    const-wide/16 v18, 0x1

    :goto_97
    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    :cond_a0
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v15

    .line 116
    .local v15, "seatNo":Ljava/lang/Integer;
    if-eqz v15, :cond_ba

    .line 117
    const/16 v18, 0x8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 120
    :cond_ba
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "notes":Ljava/lang/String;
    if-eqz v11, :cond_c9

    .line 122
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 125
    :cond_c9
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getExtra()Ljava/lang/Float;

    move-result-object v6

    .line 126
    .local v6, "extra":Ljava/lang/Float;
    if-eqz v6, :cond_e3

    .line 127
    const/16 v18, 0xa

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 130
    :cond_e3
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, "status":Ljava/lang/String;
    if-eqz v16, :cond_f4

    .line 132
    const/16 v18, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :cond_f4
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getHomePackQty()Ljava/lang/Integer;

    move-result-object v7

    .line 136
    .local v7, "homePackQty":Ljava/lang/Integer;
    if-eqz v7, :cond_10e

    .line 137
    const/16 v18, 0xc

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 140
    :cond_10e
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v5

    .line 141
    .local v5, "IsCombo":Ljava/lang/Boolean;
    if-eqz v5, :cond_127

    .line 142
    const/16 v20, 0xd

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_146

    const-wide/16 v18, 0x1

    :goto_11e
    move-object/from16 v0, p1

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    :cond_127
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v4

    .line 146
    .local v4, "CostCenterId":Ljava/lang/Integer;
    if-eqz v4, :cond_141

    .line 147
    const/16 v18, 0xe

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    :cond_141
    return-void

    .line 112
    .end local v4    # "CostCenterId":Ljava/lang/Integer;
    .end local v5    # "IsCombo":Ljava/lang/Boolean;
    .end local v6    # "extra":Ljava/lang/Float;
    .end local v7    # "homePackQty":Ljava/lang/Integer;
    .end local v11    # "notes":Ljava/lang/String;
    .end local v15    # "seatNo":Ljava/lang/Integer;
    .end local v16    # "status":Ljava/lang/String;
    :cond_142
    const-wide/16 v18, 0x0

    goto/16 :goto_97

    .line 142
    .restart local v5    # "IsCombo":Ljava/lang/Boolean;
    .restart local v6    # "extra":Ljava/lang/Float;
    .restart local v7    # "homePackQty":Ljava/lang/Integer;
    .restart local v11    # "notes":Ljava/lang/String;
    .restart local v15    # "seatNo":Ljava/lang/Integer;
    .restart local v16    # "status":Ljava/lang/String;
    :cond_146
    const-wide/16 v18, 0x0

    goto :goto_11e
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .prologue
    .line 208
    if-eqz p1, :cond_7

    .line 209
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 211
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->getKey(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .registers 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 160
    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    add-int/lit8 v3, p2, 0x0

    .line 161
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v4, p2, 0x1

    .line 162
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b1

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, p2, 0x2

    .line 163
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_bf

    const/4 v5, 0x0

    :goto_23
    add-int/lit8 v6, p2, 0x3

    .line 164
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_cd

    const/4 v6, 0x0

    :goto_2e
    add-int/lit8 v7, p2, 0x4

    .line 165
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_d7

    const/4 v7, 0x0

    :goto_39
    add-int/lit8 v8, p2, 0x5

    .line 166
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_e5

    const/4 v8, 0x0

    :goto_44
    add-int/lit8 v9, p2, 0x6

    .line 167
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_f3

    const/4 v9, 0x0

    :goto_4f
    add-int/lit8 v10, p2, 0x7

    .line 168
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_106

    const/4 v10, 0x0

    :goto_5a
    add-int/lit8 v11, p2, 0x8

    .line 169
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_114

    const/4 v11, 0x0

    :goto_65
    add-int/lit8 v12, p2, 0x9

    .line 170
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_11e

    const/4 v12, 0x0

    :goto_70
    add-int/lit8 v13, p2, 0xa

    .line 171
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_12c

    const/4 v13, 0x0

    :goto_7b
    add-int/lit8 v14, p2, 0xb

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_136

    const/4 v14, 0x0

    :goto_86
    add-int/lit8 v15, p2, 0xc

    .line 173
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_144

    const/4 v15, 0x0

    :goto_91
    add-int/lit8 v16, p2, 0xd

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_157

    const/16 v16, 0x0

    :goto_9f
    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 176
    .local v2, "entity":Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    return-object v2

    .line 161
    .end local v2    # "entity":Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    :cond_a3
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_d

    .line 162
    :cond_b1
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_18

    .line 163
    :cond_bf
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_23

    .line 164
    :cond_cd
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2e

    .line 165
    :cond_d7
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto/16 :goto_39

    .line 166
    :cond_e5
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto/16 :goto_44

    .line 167
    :cond_f3
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getShort(I)S

    move-result v9

    if-eqz v9, :cond_104

    const/4 v9, 0x1

    :goto_fe
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_4f

    :cond_104
    const/4 v9, 0x0

    goto :goto_fe

    .line 168
    :cond_106
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto/16 :goto_5a

    .line 169
    :cond_114
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_65

    .line 170
    :cond_11e
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto/16 :goto_70

    .line 171
    :cond_12c
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7b

    .line 172
    :cond_136
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_86

    .line 173
    :cond_144
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getShort(I)S

    move-result v15

    if-eqz v15, :cond_155

    const/4 v15, 0x1

    :goto_14f
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_91

    :cond_155
    const/4 v15, 0x0

    goto :goto_14f

    .line 174
    :cond_157
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_9f
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/OrderDetailDb;I)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 182
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setId(Ljava/lang/Long;)V

    .line 183
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setOrderMasterId(Ljava/lang/Integer;)V

    .line 184
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setItemId(Ljava/lang/Integer;)V

    .line 185
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setTitle(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setQuantity(Ljava/lang/Double;)V

    .line 187
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setPrice(Ljava/lang/Double;)V

    .line 188
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ef

    move-object v0, v1

    :goto_54
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setIsCanceled(Ljava/lang/Boolean;)V

    .line 189
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_100

    move-object v0, v1

    :goto_60
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setSeatNo(Ljava/lang/Integer;)V

    .line 190
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10c

    move-object v0, v1

    :goto_6c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setNote(Ljava/lang/String;)V

    .line 191
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_114

    move-object v0, v1

    :goto_78
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setExtra(Ljava/lang/Float;)V

    .line 192
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_120

    move-object v0, v1

    :goto_84
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setStatus(Ljava/lang/String;)V

    .line 193
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_128

    move-object v0, v1

    :goto_90
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setHomePackQty(Ljava/lang/Integer;)V

    .line 194
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_134

    move-object v0, v1

    :goto_9c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setIsCombo(Ljava/lang/Boolean;)V

    .line 195
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_144

    :goto_a7
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setCostCenterId(Ljava/lang/Integer;)V

    .line 196
    return-void

    .line 182
    :cond_ab
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_c

    .line 183
    :cond_b7
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_18

    .line 184
    :cond_c3
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_24

    .line 185
    :cond_cf
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 186
    :cond_d7
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_3c

    .line 187
    :cond_e3
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_48

    .line 188
    :cond_ef
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v2

    :goto_f8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_54

    :cond_fe
    move v0, v3

    goto :goto_f8

    .line 189
    :cond_100
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_60

    .line 190
    :cond_10c
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6c

    .line 191
    :cond_114
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_78

    .line 192
    :cond_120
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_84

    .line 193
    :cond_128
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_90

    .line 194
    :cond_134
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_142

    :goto_13c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_9c

    :cond_142
    move v2, v3

    goto :goto_13c

    .line 195
    :cond_144
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_a7
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/OrderDetailDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 154
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/OrderDetailDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .param p2, "rowId"    # J

    .prologue
    .line 201
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setId(Ljava/lang/Long;)V

    .line 202
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 15
    check-cast p1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/OrderDetailDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.OrderDetailDbDao.Properties (com.danfe.restaurantapp1.model.OrderDetailDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;
.super Ljava/lang/Object;
.source "OrderDetailDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CostCenterId:Lde/greenrobot/dao/Property;

.field public static final Extra:Lde/greenrobot/dao/Property;

.field public static final HomePackQty:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final IsCanceled:Lde/greenrobot/dao/Property;

.field public static final IsCombo:Lde/greenrobot/dao/Property;

.field public static final ItemId:Lde/greenrobot/dao/Property;

.field public static final Notes:Lde/greenrobot/dao/Property;

.field public static final OrderMasterId:Lde/greenrobot/dao/Property;

.field public static final Price:Lde/greenrobot/dao/Property;

.field public static final Quantity:Lde/greenrobot/dao/Property;

.field public static final SeatNo:Lde/greenrobot/dao/Property;

.field public static final Status:Lde/greenrobot/dao/Property;

.field public static final Title:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 24
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 25
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "orderMasterId"

    const-string v8, "ORDER_MASTER_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->OrderMasterId:Lde/greenrobot/dao/Property;

    .line 26
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Integer;

    const-string v5, "itemId"

    const-string v7, "ITEM_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "title"

    const-string v7, "TITLE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Title:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Double;

    const-string v5, "quantity"

    const-string v7, "QUANTITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Quantity:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Double;

    const-string v5, "price"

    const-string v7, "PRICE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Price:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isCanceled"

    const-string v7, "IS_CANCELED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->IsCanceled:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Integer;

    const-string v5, "seatNo"

    const-string v7, "SEAT_NO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->SeatNo:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "notes"

    const-string v7, "NOTES"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Notes:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/Float;

    const-string v5, "extra"

    const-string v7, "EXTRA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Extra:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "status"

    const-string v7, "STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->Status:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Integer;

    const-string v5, "homePackQty"

    const-string v7, "HOME_PACK_QTY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->HomePackQty:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IsCombo"

    const-string v7, "IS_COMBO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    .line 37
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Integer;

    const-string v5, "CostCenterId"

    const-string v7, "COST_CENTER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->CostCenterId:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
