###### Class com.danfe.restaurantapp1.model.OrderMasterDbDao (com.danfe.restaurantapp1.model.OrderMasterDbDao)
.class public Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "OrderMasterDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/OrderMasterDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "ORDER_MASTER_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 42
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 47
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ORDER_MASTER_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"TABLE_ID\" INTEGER,\"IS_SPLIT\" INTEGER,\"GUEST_NO\" INTEGER,\"IS_CANCELED\" INTEGER,\"REMARKS\" TEXT,\"USERNAME\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    return-void

    .line 46
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
    .line 59
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

    const-string v2, "\"ORDER_MASTER_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    return-void

    .line 59
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/OrderMasterDb;)V
    .registers 13
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 68
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 69
    .local v1, "id":Ljava/lang/Long;
    if-eqz v1, :cond_11

    .line 70
    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 73
    :cond_11
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getTableId()Ljava/lang/Integer;

    move-result-object v5

    .line 74
    .local v5, "tableId":Ljava/lang/Integer;
    if-eqz v5, :cond_20

    .line 75
    const/4 v7, 0x2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 78
    :cond_20
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getIsSplit()Ljava/lang/Boolean;

    move-result-object v3

    .line 79
    .local v3, "isSplit":Ljava/lang/Boolean;
    if-eqz v3, :cond_32

    .line 80
    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_68

    const-wide/16 v8, 0x1

    :goto_2f
    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    :cond_32
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getGuestNo()Ljava/lang/Integer;

    move-result-object v0

    .line 84
    .local v0, "guestNo":Ljava/lang/Integer;
    if-eqz v0, :cond_41

    .line 85
    const/4 v7, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    :cond_41
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getIsCanceled()Ljava/lang/Boolean;

    move-result-object v2

    .line 89
    .local v2, "isCanceled":Ljava/lang/Boolean;
    if-eqz v2, :cond_53

    .line 90
    const/4 v7, 0x5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6b

    const-wide/16 v8, 0x1

    :goto_50
    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    :cond_53
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getRemarks()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "remarks":Ljava/lang/String;
    if-eqz v4, :cond_5d

    .line 95
    const/4 v7, 0x6

    invoke-virtual {p1, v7, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 98
    :cond_5d
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "username":Ljava/lang/String;
    if-eqz v6, :cond_67

    .line 100
    const/4 v7, 0x7

    invoke-virtual {p1, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :cond_67
    return-void

    .line 80
    .end local v0    # "guestNo":Ljava/lang/Integer;
    .end local v2    # "isCanceled":Ljava/lang/Boolean;
    .end local v4    # "remarks":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :cond_68
    const-wide/16 v8, 0x0

    goto :goto_2f

    .line 90
    .restart local v0    # "guestNo":Ljava/lang/Integer;
    .restart local v2    # "isCanceled":Ljava/lang/Boolean;
    :cond_6b
    const-wide/16 v8, 0x0

    goto :goto_50
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/OrderMasterDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/OrderMasterDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    .prologue
    .line 147
    if-eqz p1, :cond_7

    .line 148
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 150
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->getKey(Lcom/danfe/restaurantapp1/model/OrderMasterDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/OrderMasterDb;
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 113
    new-instance v0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    add-int/lit8 v1, p2, 0x0

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_47

    move-object v1, v7

    :goto_e
    add-int/lit8 v2, p2, 0x1

    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_52

    move-object v2, v7

    :goto_17
    add-int/lit8 v3, p2, 0x2

    .line 116
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    move-object v3, v7

    :goto_20
    add-int/lit8 v4, p2, 0x3

    .line 117
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6d

    move-object v4, v7

    :goto_29
    add-int/lit8 v8, p2, 0x4

    .line 118
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_78

    move-object v5, v7

    :goto_32
    add-int/lit8 v6, p2, 0x5

    .line 119
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_87

    move-object v6, v7

    :goto_3b
    add-int/lit8 v8, p2, 0x6

    .line 120
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_8e

    :goto_43
    invoke-direct/range {v0 .. v7}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "entity":Lcom/danfe/restaurantapp1/model/OrderMasterDb;
    return-object v0

    .line 114
    .end local v0    # "entity":Lcom/danfe/restaurantapp1/model/OrderMasterDb;
    :cond_47
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e

    .line 115
    :cond_52
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_17

    .line 116
    :cond_5d
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-eqz v3, :cond_6b

    move v3, v5

    :goto_66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_20

    :cond_6b
    move v3, v6

    goto :goto_66

    .line 117
    :cond_6d
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_29

    .line 118
    :cond_78
    add-int/lit8 v8, p2, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    if-eqz v8, :cond_85

    :goto_80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_32

    :cond_85
    move v5, v6

    goto :goto_80

    .line 119
    :cond_87
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3b

    .line 120
    :cond_8e
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_43
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/OrderMasterDb;I)V
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/OrderMasterDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 128
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setId(Ljava/lang/Long;)V

    .line 129
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_62

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setTableId(Ljava/lang/Integer;)V

    .line 130
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setIsSplit(Ljava/lang/Boolean;)V

    .line 131
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setGuestNo(Ljava/lang/Integer;)V

    .line 132
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_88

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setIsCanceled(Ljava/lang/Boolean;)V

    .line 133
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setRemarks(Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    :goto_53
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setUsername(Ljava/lang/String;)V

    .line 135
    return-void

    .line 128
    :cond_57
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 129
    :cond_62
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_18

    .line 130
    :cond_6d
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v2

    :goto_76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_24

    :cond_7b
    move v0, v3

    goto :goto_76

    .line 131
    :cond_7d
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30

    .line 132
    :cond_88
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_95

    :goto_90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c

    :cond_95
    move v2, v3

    goto :goto_90

    .line 133
    :cond_97
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 134
    :cond_9e
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_53
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/OrderMasterDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 107
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/OrderMasterDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/OrderMasterDb;
    .param p2, "rowId"    # J

    .prologue
    .line 140
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->setId(Ljava/lang/Long;)V

    .line 141
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/OrderMasterDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.OrderMasterDbDao.Properties (com.danfe.restaurantapp1.model.OrderMasterDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;
.super Ljava/lang/Object;
.source "OrderMasterDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final GuestNo:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final IsCanceled:Lde/greenrobot/dao/Property;

.field public static final IsSplit:Lde/greenrobot/dao/Property;

.field public static final Remarks:Lde/greenrobot/dao/Property;

.field public static final TableId:Lde/greenrobot/dao/Property;

.field public static final Username:Lde/greenrobot/dao/Property;


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

    sput-object v0, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "tableId"

    const-string v8, "TABLE_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->TableId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isSplit"

    const-string v7, "IS_SPLIT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->IsSplit:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "guestNo"

    const-string v7, "GUEST_NO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->GuestNo:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isCanceled"

    const-string v7, "IS_CANCELED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->IsCanceled:Lde/greenrobot/dao/Property;

    .line 31
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "remarks"

    const-string v7, "REMARKS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->Remarks:Lde/greenrobot/dao/Property;

    .line 32
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "username"

    const-string v7, "USERNAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao$Properties;->Username:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
