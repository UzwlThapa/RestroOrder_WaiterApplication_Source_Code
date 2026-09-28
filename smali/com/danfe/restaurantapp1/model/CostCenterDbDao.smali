###### Class com.danfe.restaurantapp1.model.CostCenterDbDao (com.danfe.restaurantapp1.model.CostCenterDbDao)
.class public Lcom/danfe/restaurantapp1/model/CostCenterDbDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "CostCenterDbDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/danfe/restaurantapp1/model/CostCenterDb;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "COST_CENTER_DB"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V
    .registers 3
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/danfe/restaurantapp1/model/DaoSession;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 40
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    .line 45
    .local v0, "constraint":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"COST_CENTER_DB\" (\"ID\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"COST_CENTER_ID\" INTEGER,\"COST_CENTER_NAME\" TEXT,\"CO_DISCOUT\" INTEGER,\"TABLE_LIST\" TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void

    .line 44
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
    .line 55
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

    const-string v2, "\"COST_CENTER_DB\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void

    .line 55
    .end local v0    # "sql":Ljava/lang/String;
    :cond_21
    const-string v1, ""

    goto :goto_f
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/CostCenterDb;)V
    .registers 11
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/CostCenterDb;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 64
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 65
    .local v3, "Id":Ljava/lang/Long;
    if-eqz v3, :cond_11

    .line 66
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 69
    :cond_11
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v1

    .line 70
    .local v1, "CostCenterId":Ljava/lang/Integer;
    if-eqz v1, :cond_20

    .line 71
    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 74
    :cond_20
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getCostCenterName()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "CostCenterName":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 76
    const/4 v5, 0x3

    invoke-virtual {p1, v5, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_2a
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getCoDiscout()Ljava/lang/Integer;

    move-result-object v0

    .line 80
    .local v0, "CoDiscout":Ljava/lang/Integer;
    if-eqz v0, :cond_39

    .line 81
    const/4 v5, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    :cond_39
    invoke-virtual {p2}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getTableList()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "tableList":Ljava/lang/String;
    if-eqz v4, :cond_43

    .line 86
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :cond_43
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/danfe/restaurantapp1/model/CostCenterDb;)V

    return-void
.end method

.method public getKey(Lcom/danfe/restaurantapp1/model/CostCenterDb;)Ljava/lang/Long;
    .registers 3
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/CostCenterDb;

    .prologue
    .line 129
    if-eqz p1, :cond_7

    .line 130
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 132
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
    check-cast p1, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->getKey(Lcom/danfe/restaurantapp1/model/CostCenterDb;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/CostCenterDb;
    .registers 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v0, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    add-int/lit8 v1, p2, 0x0

    .line 100
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v1, v5

    :goto_c
    add-int/lit8 v2, p2, 0x1

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object v2, v5

    :goto_15
    add-int/lit8 v3, p2, 0x2

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_49

    move-object v3, v5

    :goto_1e
    add-int/lit8 v4, p2, 0x3

    .line 103
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object v4, v5

    :goto_27
    add-int/lit8 v6, p2, 0x4

    .line 104
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5b

    :goto_2f
    invoke-direct/range {v0 .. v5}, Lcom/danfe/restaurantapp1/model/CostCenterDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 106
    .local v0, "entity":Lcom/danfe/restaurantapp1/model/CostCenterDb;
    return-object v0

    .line 100
    .end local v0    # "entity":Lcom/danfe/restaurantapp1/model/CostCenterDb;
    :cond_33
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_c

    .line 101
    :cond_3e
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_15

    .line 102
    :cond_49
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 103
    :cond_50
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_27

    .line 104
    :cond_5b
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2f
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->readEntity(Landroid/database/Cursor;I)Lcom/danfe/restaurantapp1/model/CostCenterDb;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/CostCenterDb;I)V
    .registers 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/danfe/restaurantapp1/model/CostCenterDb;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setId(Ljava/lang/Long;)V

    .line 113
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_48

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setCostCenterId(Ljava/lang/Integer;)V

    .line 114
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_53

    move-object v0, v1

    :goto_22
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setCostCenterName(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    move-object v0, v1

    :goto_2e
    invoke-virtual {p2, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setCoDiscout(Ljava/lang/Integer;)V

    .line 116
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_65

    :goto_39
    invoke-virtual {p2, v1}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setTableList(Ljava/lang/String;)V

    .line 117
    return-void

    .line 112
    :cond_3d
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    .line 113
    :cond_48
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    .line 114
    :cond_53
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 115
    :cond_5a
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    .line 116
    :cond_65
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_39
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 17
    check-cast p2, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->readEntity(Landroid/database/Cursor;Lcom/danfe/restaurantapp1/model/CostCenterDb;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 93
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
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/CostCenterDb;J)Ljava/lang/Long;
    .registers 6
    .param p1, "entity"    # Lcom/danfe/restaurantapp1/model/CostCenterDb;
    .param p2, "rowId"    # J

    .prologue
    .line 122
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->setId(Ljava/lang/Long;)V

    .line 123
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 17
    check-cast p1, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->updateKeyAfterInsert(Lcom/danfe/restaurantapp1/model/CostCenterDb;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.CostCenterDbDao.Properties (com.danfe.restaurantapp1.model.CostCenterDbDao$Properties)
.class public Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;
.super Ljava/lang/Object;
.source "CostCenterDbDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/CostCenterDbDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CoDiscout:Lde/greenrobot/dao/Property;

.field public static final CostCenterId:Lde/greenrobot/dao/Property;

.field public static final CostCenterName:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final TableList:Lde/greenrobot/dao/Property;


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

    sput-object v0, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/Integer;

    const-string v6, "CostCenterId"

    const-string v8, "COST_CENTER_ID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->CostCenterId:Lde/greenrobot/dao/Property;

    .line 28
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "CostCenterName"

    const-string v7, "COST_CENTER_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->CostCenterName:Lde/greenrobot/dao/Property;

    .line 29
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "CoDiscout"

    const-string v7, "CO_DISCOUT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->CoDiscout:Lde/greenrobot/dao/Property;

    .line 30
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "tableList"

    const-string v7, "TABLE_LIST"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->TableList:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
