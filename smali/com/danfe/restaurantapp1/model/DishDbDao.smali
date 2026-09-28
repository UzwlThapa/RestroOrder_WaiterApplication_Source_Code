###### Class com.danfe.restaurantapp1.model.DishDbDao (com.danfe.restaurantapp1.model.DishDbDao)
.class public Lcom/danfe/restaurantapp1/model/DishDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "DishDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/DishDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DISH_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 46
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 51
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"DISH_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"CATEGORYID\" INTEGER,\"NAME\" TEXT,\"ITEMID\" INTEGER,\"ITEMCODE\" TEXT,\"DESCRIPTION\" TEXT,\"COST_CENTER_ID\" INTEGER,\"COST_CENTER_NAME\" TEXT,\"PRICE\" REAL,\"PRICE_WITH_CURR\" TEXT,\"IMAGE_LINK\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void

    .line 50
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
    .line 67
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

    const-string v2, "\"DISH_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void

    .line 67
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/DishDb;)V
    .registers 17
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/DishDb;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getId()Ljava/lang/Long;

    move-result-object v4

    .line 77
    .local v4, "id":Ljava/lang/Long;
    if-eqz v4, :cond_11

    .line 78
    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getCategoryid()Ljava/lang/Integer;

    move-result-object v0

    .line 82
    .local v0, "categoryid":Ljava/lang/Integer;
    if-eqz v0, :cond_20

    .line 83
    const/4 v11, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getName()Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_2a

    .line 88
    const/4 v11, 0x3

    invoke-virtual {p1, v11, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getItemid()Ljava/lang/Integer;

    move-result-object v7

    .line 92
    .local v7, "itemid":Ljava/lang/Integer;
    if-eqz v7, :cond_39

    .line 93
    const/4 v11, 0x4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 96
    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getItemcode()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "itemcode":Ljava/lang/String;
    if-eqz v6, :cond_43

    .line 98
    const/4 v11, 0x5

    invoke-virtual {p1, v11, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_43
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "description":Ljava/lang/String;
    if-eqz v3, :cond_4d

    .line 103
    const/4 v11, 0x6

    invoke-virtual {p1, v11, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v1

    .line 107
    .local v1, "costCenterId":Ljava/lang/Integer;
    if-eqz v1, :cond_5c

    .line 108
    const/4 v11, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getCostCenterName()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "costCenterName":Ljava/lang/String;
    if-eqz v2, :cond_67

    .line 113
    const/16 v11, 0x8

    invoke-virtual {p1, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :cond_67
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getPrice()Ljava/lang/Double;

    move-result-object v9

    .line 117
    .local v9, "price":Ljava/lang/Double;
    if-eqz v9, :cond_76

    .line 118
    const/16 v11, 0x9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 121
    :cond_76
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getPriceWithCurr()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "priceWithCurr":Ljava/lang/String;
    if-eqz v10, :cond_81

    .line 123
    const/16 v11, 0xa

    invoke-virtual {p1, v11, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_81
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/model/DishDb;->getImageLink()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "imageLink":Ljava/lang/String;
    if-eqz v5, :cond_8c

    .line 128
    const/16 v11, 0xb

    invoke-virtual {p1, v11, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 130
    :cond_8c
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/DishDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/DishDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/DishDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/DishDb;

    .prologue
    .line 183
    if-eqz p1, :cond_7

    .line 184
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/DishDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 186
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/DishDbDao;->getKey(Lcom/danfe/restaurantapp1/model/DishDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/DishDb;
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 141
    new-instance v0, Lcom/danfe/restaurantapp1/model/DishDb;

    add-int/lit8 v1, p2, 0x0

    .line 142
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_69

    const/4 v1, 0x0

    :goto_b
    add-int/lit8 v2, p2, 0x1

    .line 143
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v2, 0x0

    :goto_14
    add-int/lit8 v3, p2, 0x2

    .line 144
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    const/4 v3, 0x0

    :goto_1d
    add-int/lit8 v4, p2, 0x3

    .line 145
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_86

    const/4 v4, 0x0

    :goto_26
    add-int/lit8 v5, p2, 0x4

    .line 146
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_91

    const/4 v5, 0x0

    :goto_2f
    add-int/lit8 v6, p2, 0x5

    .line 147
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_98

    const/4 v6, 0x0

    :goto_38
    add-int/lit8 v7, p2, 0x6

    .line 148
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_9f

    const/4 v7, 0x0

    :goto_41
    add-int/lit8 v8, p2, 0x7

    .line 149
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    const/4 v8, 0x0

    :goto_4a
    add-int/lit8 v9, p2, 0x8

    .line 150
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_b1

    const/4 v9, 0x0

    :goto_53
    add-int/lit8 v10, p2, 0x9

    .line 151
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_bc

    const/4 v10, 0x0

    :goto_5c
    add-int/lit8 v11, p2, 0xa

    .line 152
    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_c3

    const/4 v11, 0x0

    :goto_65
    invoke-direct/range {v0 .. v11}, Lcom/danfe/restaurantapp1/model/DishDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "entity":Lcom/danfe/restaurantapp1/model/DishDb;
    return-object v0

    .line 142
    .end local v0    # "entity":Lcom/danfe/restaurantapp1/model/DishDb;
    :cond_69
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_b

    .line 143
    :cond_74
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_14

    .line 144
    :cond_7f
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 145
    :cond_86
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_26

    .line 146
    :cond_91
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    .line 147
    :cond_98
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_38

    .line 148
    :cond_9f
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_41

    .line 149
    :cond_aa
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4a

    .line 150
    :cond_b1
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_53

    .line 151
    :cond_bc
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5c

    .line 152
    :cond_c3
    add-int/lit8 v11, p2, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_65
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/DishDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/DishDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/DishDb;I)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/DishDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_85

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setId(Ljava/lang/Long;)V

    .line 161
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_91

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setCategoryid(Ljava/lang/Integer;)V

    .line 162
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    move-object v0, v1

    :goto_22
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setName(Ljava/lang/String;)V

    .line 163
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    move-object v0, v1

    :goto_2e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setItemid(Ljava/lang/Integer;)V

    .line 164
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    move-object v0, v1

    :goto_3a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setItemcode(Ljava/lang/String;)V

    .line 165
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b8

    move-object v0, v1

    :goto_46
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setDescription(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_bf

    move-object v0, v1

    :goto_52
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setCostCenterId(Ljava/lang/Integer;)V

    .line 167
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    move-object v0, v1

    :goto_5e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setCostCenterName(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d1

    move-object v0, v1

    :goto_6a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setPrice(Ljava/lang/Double;)V

    .line 169
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_dc

    move-object v0, v1

    :goto_76
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setPriceWithCurr(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e3

    :goto_81
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/DishDb;->setImageLink(Ljava/lang/String;)V

    .line 171
    return-void

    .line 160
    :cond_85
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_a

    .line 161
    :cond_91
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_16

    .line 162
    :cond_9d
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 163
    :cond_a5
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2e

    .line 164
    :cond_b1
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 165
    :cond_b8
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 166
    :cond_bf
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_52

    .line 167
    :cond_ca
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    .line 168
    :cond_d1
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6a

    .line 169
    :cond_dc
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 170
    :cond_e3
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_81
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/DishDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/DishDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 135
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/DishDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/DishDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/DishDb;
    .param p2, "rowId"    # J

    .prologue
    .line 176
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/DishDb;->setId(Ljava/lang/Long;)V

    .line 177
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/DishDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/DishDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/DishDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.DishDbDao.Properties (com.danfe.restaurantapp1.model.DishDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;
.super Ljava/lang/Object;
.source "DishDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/DishDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Categoryid:Lde/greenrobot/dao/Property;

.field public static final CostCenterId:Lde/greenrobot/dao/Property;

.field public static final CostCenterName:Lde/greenrobot/dao/Property;

.field public static final Description:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImageLink:Lde/greenrobot/dao/Property;

.field public static final Itemcode:Lde/greenrobot/dao/Property;

.field public static final Itemid:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final Price:Lde/greenrobot/dao/Property;

.field public static final PriceWithCurr:Lde/greenrobot/dao/Property;


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

    sput-object v0, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "categoryid"

    const-string v8, "CATEGORYID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Categoryid:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "itemid"

    const-string v7, "ITEMID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Itemid:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "itemcode"

    const-string v7, "ITEMCODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Itemcode:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "description"

    const-string v7, "DESCRIPTION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Description:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Integer;

    const-string v5, "costCenterId"

    const-string v7, "COST_CENTER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->CostCenterId:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "costCenterName"

    const-string v7, "COST_CENTER_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->CostCenterName:Lde/greenrobot/dao/Property;

    .line 34
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Double;

    const-string v5, "price"

    const-string v7, "PRICE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->Price:Lde/greenrobot/dao/Property;

    .line 35
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "priceWithCurr"

    const-string v7, "PRICE_WITH_CURR"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->PriceWithCurr:Lde/greenrobot/dao/Property;

    .line 36
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "imageLink"

    const-string v7, "IMAGE_LINK"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/DishDbDao$Properties;->ImageLink:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
