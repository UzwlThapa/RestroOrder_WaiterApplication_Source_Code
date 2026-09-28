###### Class com.danfe.restaurantapp1.model.BillingTermDbDao (com.danfe.restaurantapp1.model.BillingTermDbDao)
.class public Lcom/danfe/restaurantapp1/model/BillingTermDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "BillingTermDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/BillingTermDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "BILLING_TERM_DB"


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

    const-string v2, "\"BILLING_TERM_DB\" (\"ID\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"BILLING_ID\" INTEGER,\"NAME\" TEXT,\"IS_ADDED\" INTEGER,\"RATE\" TEXT,\"DESCRIPTION\" TEXT,\"SEQUENCE_ORDER\" INTEGER,\"COST_CENTER\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
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
    .line 61
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

    const-string v2, "\"BILLING_TERM_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void

    .line 61
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/BillingTermDb;)V
    .registers 15
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/BillingTermDb;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 70
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 71
    .local v2, "Id":Ljava/lang/Long;
    if-eqz v2, :cond_11

    .line 72
    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    :cond_11
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getBillingId()Ljava/lang/Integer;

    move-result-object v6

    .line 76
    .local v6, "billingId":Ljava/lang/Integer;
    if-eqz v6, :cond_20

    .line 77
    const/4 v8, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    :cond_20
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "Name":Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 82
    const/4 v8, 0x3

    invoke-virtual {p1, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :cond_2a
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v3

    .line 86
    .local v3, "IsAdded":Ljava/lang/Boolean;
    if-eqz v3, :cond_3c

    .line 87
    const/4 v10, 0x4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6b

    const-wide/16 v8, 0x1

    :goto_39
    invoke-virtual {p1, v10, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 90
    :cond_3c
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "rate":Ljava/lang/String;
    if-eqz v7, :cond_46

    .line 92
    const/4 v8, 0x5

    invoke-virtual {p1, v8, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :cond_46
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "Description":Ljava/lang/String;
    if-eqz v1, :cond_50

    .line 97
    const/4 v8, 0x6

    invoke-virtual {p1, v8, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_50
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getSequenceOrder()Ljava/lang/Integer;

    move-result-object v5

    .line 101
    .local v5, "SequenceOrder":Ljava/lang/Integer;
    if-eqz v5, :cond_5f

    .line 102
    const/4 v8, 0x7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p1, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    :cond_5f
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getCostCenter()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "CostCenter":Ljava/lang/String;
    if-eqz v0, :cond_6a

    .line 107
    const/16 v8, 0x8

    invoke-virtual {p1, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    :cond_6a
    return-void

    .line 87
    .end local v0    # "CostCenter":Ljava/lang/String;
    .end local v1    # "Description":Ljava/lang/String;
    .end local v5    # "SequenceOrder":Ljava/lang/Integer;
    .end local v7    # "rate":Ljava/lang/String;
    :cond_6b
    const-wide/16 v8, 0x0

    goto :goto_39
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/BillingTermDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/BillingTermDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/BillingTermDb;

    .prologue
    .line 156
    if-eqz p1, :cond_7

    .line 157
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 159
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->getKey(Lcom/danfe/restaurantapp1/model/BillingTermDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/BillingTermDb;
    .registers 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v8, 0x0

    .line 120
    new-instance v0, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    add-int/lit8 v1, p2, 0x0

    .line 121
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    move-object v1, v8

    :goto_c
    add-int/lit8 v2, p2, 0x1

    .line 122
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_59

    move-object v2, v8

    :goto_15
    add-int/lit8 v3, p2, 0x2

    .line 123
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_64

    move-object v3, v8

    :goto_1e
    add-int/lit8 v4, p2, 0x3

    .line 124
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    move-object v4, v8

    :goto_27
    add-int/lit8 v5, p2, 0x4

    .line 125
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    move-object v5, v8

    :goto_30
    add-int/lit8 v6, p2, 0x5

    .line 126
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_82

    move-object v6, v8

    :goto_39
    add-int/lit8 v7, p2, 0x6

    .line 127
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_89

    move-object v7, v8

    :goto_42
    add-int/lit8 v9, p2, 0x7

    .line 128
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_94

    :goto_4a
    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/BillingTermDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 130
    .local v0, "entity":Lcom/danfe/restaurantapp1/model/BillingTermDb;
    return-object v0

    .line 121
    .end local v0    # "entity":Lcom/danfe/restaurantapp1/model/BillingTermDb;
    :cond_4e
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_c

    .line 122
    :cond_59
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    .line 123
    :cond_64
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 124
    :cond_6b
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x1

    :goto_74
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_27

    :cond_79
    const/4 v4, 0x0

    goto :goto_74

    .line 125
    :cond_7b
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    .line 126
    :cond_82
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_39

    .line 127
    :cond_89
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_42

    .line 128
    :cond_94
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4a
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/BillingTermDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/BillingTermDb;I)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/BillingTermDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_61

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setId(Ljava/lang/Long;)V

    .line 137
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setBillingId(Ljava/lang/Integer;)V

    .line 138
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_77

    move-object v0, v1

    :goto_22
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setName(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7e

    move-object v0, v1

    :goto_2e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setIsAdded(Ljava/lang/Boolean;)V

    .line 140
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    move-object v0, v1

    :goto_3a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setRate(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_95

    move-object v0, v1

    :goto_46
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setDescription(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object v0, v1

    :goto_52
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setSequenceOrder(Ljava/lang/Integer;)V

    .line 143
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    :goto_5d
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setCostCenter(Ljava/lang/String;)V

    .line 144
    return-void

    .line 136
    :cond_61
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    .line 137
    :cond_6c
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    .line 138
    :cond_77
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 139
    :cond_7e
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x1

    :goto_87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :cond_8c
    const/4 v0, 0x0

    goto :goto_87

    .line 140
    :cond_8e
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 141
    :cond_95
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 142
    :cond_9c
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_52

    .line 143
    :cond_a7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5d
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/BillingTermDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 114
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/BillingTermDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/BillingTermDb;
    .param p2, "rowId"    # J

    .prologue
    .line 149
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->setId(Ljava/lang/Long;)V

    .line 150
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/BillingTermDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.BillingTermDbDao.Properties (com.danfe.restaurantapp1.model.BillingTermDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;
.super Ljava/lang/Object;
.source "BillingTermDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/BillingTermDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final BillingId:Lde/greenrobot/dao/Property;

.field public static final CostCenter:Lde/greenrobot/dao/Property;

.field public static final Description:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final IsAdded:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final Rate:Lde/greenrobot/dao/Property;

.field public static final SequenceOrder:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "Id"

    const-string v5, "ID"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "billingId"

    const-string v8, "BILLING_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->BillingId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "Name"

    const-string v7, "NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "IsAdded"

    const-string v7, "IS_ADDED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->IsAdded:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "rate"

    const-string v7, "RATE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->Rate:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "Description"

    const-string v7, "DESCRIPTION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->Description:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Integer;

    const-string v5, "SequenceOrder"

    const-string v7, "SEQUENCE_ORDER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->SequenceOrder:Lde/greenrobot/dao/Property;

    .line 33
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "CostCenter"

    const-string v7, "COST_CENTER"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->CostCenter:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
