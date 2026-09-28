###### Class com.danfe.restaurantapp1.model.DaoMaster (com.danfe.restaurantapp1.model.DaoMaster)
.class public Lcom/danfe/restaurantapp1/model/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;,
        Lcom/danfe/restaurantapp1/model/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 93
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 95
    const-class v0, Lcom/danfe/restaurantapp1/model/TableDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 96
    const-class v0, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 97
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 98
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 99
    const-class v0, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 100
    const-class v0, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 101
    const-class v0, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 102
    const-class v0, Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 103
    const-class v0, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 104
    const-class v0, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 39
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 40
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 41
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 42
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 43
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 44
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 45
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 50
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 51
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 52
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 53
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 54
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 55
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 56
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 57
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 58
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 59
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 60
    invoke-static {p0, p1}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public newSession()Lcom/danfe/restaurantapp1/model/DaoSession;
    .registers 5

    .prologue
    .line 108
    new-instance v0, Lcom/danfe/restaurantapp1/model/DaoSession;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/model/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/danfe/restaurantapp1/model/DaoSession;
    .registers 5
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 112
    new-instance v0, Lcom/danfe/restaurantapp1/model/DaoSession;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/model/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/danfe/restaurantapp1/model/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->newSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.model.DaoMaster.DevOpenHelper (com.danfe.restaurantapp1.model.DaoMaster$DevOpenHelper)
.class public Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;
.super Lcom/danfe/restaurantapp1/model/DaoMaster$OpenHelper;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/model/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 84
    const-string v0, "greenDAO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by dropping all tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    const-string v0, "ALTER TABLE TABLE_DB ADD COLUMN \'Guest_No\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method

###### Class com.danfe.restaurantapp1.model.DaoMaster.OpenHelper (com.danfe.restaurantapp1.model.DaoMaster$OpenHelper)
.class public abstract Lcom/danfe/restaurantapp1/model/DaoMaster$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/model/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    const-string v0, "greenDAO"

    const-string v1, "Creating tables for schema version 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 73
    return-void
.end method
