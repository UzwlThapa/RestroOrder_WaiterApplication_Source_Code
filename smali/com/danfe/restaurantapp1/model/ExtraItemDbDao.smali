###### Class com.danfe.restaurantapp1.model.ExtraItemDbDao (com.danfe.restaurantapp1.model.ExtraItemDbDao)
.class public Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "ExtraItemDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/ExtraItemDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "EXTRA_ITEM_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 43
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 48
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"EXTRA_ITEM_DB\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"ITEM_ID\" INTEGER,\"EXTRA_ITEM_ID\" INTEGER,\"EXTRA_ITEM\" TEXT,\"EXTRA_PRICE\" REAL,\"IS_ACTIVE\" INTEGER,\"ADDED_BY\" TEXT,\"IS_EXTRA\" INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void

    .line 47
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
    .line 63
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

    const-string v2, "\"EXTRA_ITEM_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    return-void

    .line 63
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/ExtraItemDb;)V
    .registers 15
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 72
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getId()Ljava/lang/Long;

    move-result-object v5

    .line 73
    .local v5, "id":Ljava/lang/Long;
    if-eqz v5, :cond_11

    .line 74
    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 77
    :cond_11
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getItemID()Ljava/lang/Integer;

    move-result-object v1

    .line 78
    .local v1, "ItemId":Ljava/lang/Integer;
    if-eqz v1, :cond_20

    .line 79
    const/4 v8, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 82
    :cond_20
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v0

    .line 83
    .local v0, "ExtraItemId":Ljava/lang/Integer;
    if-eqz v0, :cond_2f

    .line 84
    const/4 v8, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 87
    :cond_2f
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraItem()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "extraItem":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 89
    const/4 v8, 0x4

    invoke-virtual {p1, v8, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 92
    :cond_39
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraPrice()Ljava/lang/Double;

    move-result-object v4

    .line 93
    .local v4, "extraItemPrice":Ljava/lang/Double;
    if-eqz v4, :cond_47

    .line 94
    const/4 v8, 0x5

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 97
    :cond_47
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getIsActive()Ljava/lang/Boolean;

    move-result-object v6

    .line 98
    .local v6, "isActive":Ljava/lang/Boolean;
    if-eqz v6, :cond_59

    .line 99
    const/4 v10, 0x6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_77

    const-wide/16 v8, 0x1

    :goto_56
    invoke-virtual {p1, v10, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 102
    :cond_59
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getAddedBy()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "addedBy":Ljava/lang/String;
    if-eqz v2, :cond_63

    .line 104
    const/4 v8, 0x7

    invoke-virtual {p1, v8, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_63
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getIsExtra()Ljava/lang/Boolean;

    move-result-object v7

    .line 108
    .local v7, "isExtra":Ljava/lang/Boolean;
    if-eqz v7, :cond_76

    .line 109
    const/16 v10, 0x8

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7a

    const-wide/16 v8, 0x1

    :goto_73
    invoke-virtual {p1, v10, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    :cond_76
    return-void

    .line 99
    .end local v2    # "addedBy":Ljava/lang/String;
    .end local v7    # "isExtra":Ljava/lang/Boolean;
    :cond_77
    const-wide/16 v8, 0x0

    goto :goto_56

    .line 109
    .restart local v2    # "addedBy":Ljava/lang/String;
    .restart local v7    # "isExtra":Ljava/lang/Boolean;
    :cond_7a
    const-wide/16 v8, 0x0

    goto :goto_73
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/ExtraItemDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/ExtraItemDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    .prologue
    .line 160
    if-eqz p1, :cond_7

    .line 161
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 163
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->getKey(Lcom/danfe/restaurantapp1/model/ExtraItemDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 125
    new-instance v0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    add-int/lit8 v1, p2, 0x0

    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_50

    move-object v1, v8

    :goto_e
    add-int/lit8 v2, p2, 0x1

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object v2, v8

    :goto_17
    add-int/lit8 v3, p2, 0x2

    .line 128
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_66

    move-object v3, v8

    :goto_20
    add-int/lit8 v4, p2, 0x3

    .line 129
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_71

    move-object v4, v8

    :goto_29
    add-int/lit8 v5, p2, 0x4

    .line 130
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_78

    move-object v5, v8

    :goto_32
    add-int/lit8 v6, p2, 0x5

    .line 131
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_83

    move-object v6, v8

    :goto_3b
    add-int/lit8 v7, p2, 0x6

    .line 132
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_93

    move-object v7, v8

    :goto_44
    add-int/lit8 v11, p2, 0x7

    .line 133
    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_9a

    :goto_4c
    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 134
    .local v0, "entity":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    return-object v0

    .line 126
    .end local v0    # "entity":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    :cond_50
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e

    .line 127
    :cond_5b
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_17

    .line 128
    :cond_66
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_20

    .line 129
    :cond_71
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    .line 130
    :cond_78
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_32

    .line 131
    :cond_83
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_91

    move v6, v9

    :goto_8c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_3b

    :cond_91
    move v6, v10

    goto :goto_8c

    .line 132
    :cond_93
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    .line 133
    :cond_9a
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    if-eqz v8, :cond_a7

    :goto_a2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_4c

    :cond_a7
    move v9, v10

    goto :goto_a2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/ExtraItemDb;I)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 140
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_63

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setId(Ljava/lang/Long;)V

    .line 141
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setItemID(Ljava/lang/Integer;)V

    .line 142
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_79

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setExtraItemID(Ljava/lang/Integer;)V

    .line 143
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_84

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setExtraItem(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setExtraPrice(Ljava/lang/Double;)V

    .line 145
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_96

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setIsActive(Ljava/lang/Boolean;)V

    .line 146
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    move-object v0, v1

    :goto_54
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setAddedBy(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    :goto_5f
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setIsExtra(Ljava/lang/Boolean;)V

    .line 148
    return-void

    .line 140
    :cond_63
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 141
    :cond_6e
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18

    .line 142
    :cond_79
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_24

    .line 143
    :cond_84
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 144
    :cond_8b
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3c

    .line 145
    :cond_96
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_a4

    move v0, v2

    :goto_9f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_48

    :cond_a4
    move v0, v3

    goto :goto_9f

    .line 146
    :cond_a6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 147
    :cond_ad
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_ba

    :goto_b5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5f

    :cond_ba
    move v2, v3

    goto :goto_b5
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 15
    check-cast p2, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/ExtraItemDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 119
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/ExtraItemDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .param p2, "rowId"    # J

    .prologue
    .line 153
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->setId(Ljava/lang/Long;)V

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 15
    check-cast p1, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/ExtraItemDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.ExtraItemDbDao.Properties (com.danfe.restaurantapp1.model.ExtraItemDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;
.super Ljava/lang/Object;
.source "ExtraItemDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final addedBy:Lde/greenrobot/dao/Property;

.field public static final extraItem:Lde/greenrobot/dao/Property;

.field public static final extraItemID:Lde/greenrobot/dao/Property;

.field public static final extraPrice:Lde/greenrobot/dao/Property;

.field public static final isActive:Lde/greenrobot/dao/Property;

.field public static final isExtra:Lde/greenrobot/dao/Property;

.field public static final itemID:Lde/greenrobot/dao/Property;


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

    sput-object v0, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "ItemId"

    const-string v8, "ITEM_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->itemID:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Integer;

    const-string v5, "extraItemID"

    const-string v7, "EXTRA_ITEM_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->extraItemID:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "extraItem"

    const-string v7, "EXTRA_ITEM"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->extraItem:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Double;

    const-string v5, "extraPrice"

    const-string v7, "EXTRA_PRICE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->extraPrice:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isActive"

    const-string v7, "IS_ACTIVE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->isActive:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "addedBy"

    const-string v7, "ADDED_BY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->addedBy:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isExtra"

    const-string v7, "IS_EXTRA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->isExtra:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
