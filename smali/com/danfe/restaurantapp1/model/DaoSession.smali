###### Class com.danfe.restaurantapp1.model.DaoSession (com.danfe.restaurantapp1.model.DaoSession)
.class public Lcom/danfe/restaurantapp1/model/DaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final billingTermDbDao:Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

.field private final billingTermDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final costCenterDbDao:Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

.field private final costCenterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final customerDbDao:Lcom/danfe/restaurantapp1/model/CustomerDbDao;

.field private final customerDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final extraItemDbDao:Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

.field private final extraItemDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

.field private final itemgroupDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final notificationsDBDao:Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

.field private final notificationsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final orderDetailDbDao:Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

.field private final orderDetailDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final orderMasterDbDao:Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

.field private final orderMasterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final roomDbDao:Lcom/danfe/restaurantapp1/model/RoomDbDao;

.field private final roomDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final roomTypeDbDao:Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

.field private final roomTypeDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final tableDbDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

.field private final tableDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final waiterListsDBDao:Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

.field private final waiterListsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 53
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 55
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 56
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 58
    const-class v0, Lcom/danfe/restaurantapp1/model/TableDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 61
    const-class v0, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 64
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 67
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 70
    const-class v0, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 73
    const-class v0, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 76
    const-class v0, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 79
    const-class v0, Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 80
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 82
    const-class v0, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 85
    const-class v0, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 88
    new-instance v0, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDao:Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    .line 89
    new-instance v0, Lcom/danfe/restaurantapp1/model/RoomDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/RoomDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDao:Lcom/danfe/restaurantapp1/model/RoomDbDao;

    .line 90
    new-instance v0, Lcom/danfe/restaurantapp1/model/TableDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/TableDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

    .line 91
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    .line 92
    new-instance v0, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDao:Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    .line 93
    new-instance v0, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDao:Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    .line 94
    new-instance v0, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDao:Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    .line 95
    new-instance v0, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDao:Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    .line 96
    new-instance v0, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDao:Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    .line 97
    new-instance v0, Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDao:Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    .line 98
    new-instance v0, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDao:Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    .line 99
    new-instance v0, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/danfe/restaurantapp1/model/DaoSession;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDao:Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    .line 101
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDao:Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 102
    const-class v0, Lcom/danfe/restaurantapp1/model/RoomDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDao:Lcom/danfe/restaurantapp1/model/RoomDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 103
    const-class v0, Lcom/danfe/restaurantapp1/model/TableDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 104
    const-class v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 105
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDao:Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 106
    const-class v0, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDao:Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 107
    const-class v0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDao:Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 108
    const-class v0, Lcom/danfe/restaurantapp1/model/NotificationsDB;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDao:Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 109
    const-class v0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDao:Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 110
    const-class v0, Lcom/danfe/restaurantapp1/model/CustomerDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDao:Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 111
    const-class v0, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDao:Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 112
    const-class v0, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDao:Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/model/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 113
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 118
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 119
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 120
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 121
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 125
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 126
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 127
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 128
    return-void
.end method

.method public getBillingTermDbDao()Lcom/danfe/restaurantapp1/model/BillingTermDbDao;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->billingTermDbDao:Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    return-object v0
.end method

.method public getCostCenterDbDao()Lcom/danfe/restaurantapp1/model/CostCenterDbDao;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->costCenterDbDao:Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    return-object v0
.end method

.method public getCustomerDbDao()Lcom/danfe/restaurantapp1/model/CustomerDbDao;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->customerDbDao:Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    return-object v0
.end method

.method public getExtraItemDbDao()Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->extraItemDbDao:Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    return-object v0
.end method

.method public getItemgroupDbDao()Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    return-object v0
.end method

.method public getNotificationsDBDao()Lcom/danfe/restaurantapp1/model/NotificationsDBDao;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->notificationsDBDao:Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    return-object v0
.end method

.method public getOrderDetailDbDao()Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderDetailDbDao:Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    return-object v0
.end method

.method public getOrderMasterDbDao()Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->orderMasterDbDao:Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    return-object v0
.end method

.method public getRoomDbDao()Lcom/danfe/restaurantapp1/model/RoomDbDao;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomDbDao:Lcom/danfe/restaurantapp1/model/RoomDbDao;

    return-object v0
.end method

.method public getRoomTypeDbDao()Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->roomTypeDbDao:Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    return-object v0
.end method

.method public getTableDbDao()Lcom/danfe/restaurantapp1/model/TableDbDao;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->tableDbDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

    return-object v0
.end method

.method public getWaiterListsDBDao()Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DaoSession;->waiterListsDBDao:Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    return-object v0
.end method
