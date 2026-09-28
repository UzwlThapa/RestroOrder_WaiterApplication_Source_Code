###### Class com.danfe.restaurantapp1.database.RestaurantDatabase (com.danfe.restaurantapp1.database.RestaurantDatabase)
.class public Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
.super Ljava/lang/Object;
.source "RestaurantDatabase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillingTermDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/BillingTermDbDao;
    .registers 2
    .param p0, "m"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getBillingTermDbDao()Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    move-result-object v0

    return-object v0
.end method

.method public static getCostCenterDBDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CostCenterDbDao;
    .registers 2
    .param p0, "m"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getCostCenterDbDao()Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomerDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CustomerDbDao;
    .registers 2
    .param p0, "m"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getCustomerDbDao()Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraItemDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;
    .registers 2
    .param p0, "x"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 84
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getExtraItemDbDao()Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public static getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 65
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getItemgroupDbDao()Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public static getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getNotificationsDBDao()Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderDetailDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 75
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getOrderDetailDbDao()Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 70
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getOrderMasterDbDao()Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public static getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 54
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getRoomDbDao()Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public static getRoomTypeDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 49
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getRoomTypeDbDao()Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 60
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getTableDbDao()Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public static getWaiterListDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;
    .registers 2
    .param p0, "x"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    .line 89
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getWaiterListsDBDao()Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public static truncateAllItems(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-static {p0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->deleteAll()V

    .line 586
    return-void
.end method


# virtual methods
.method public deleteAllNotifications(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 611
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->deleteAll()V

    .line 612
    return-void
.end method

.method public deleteNotification(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 597
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->deleteByKey(Ljava/lang/Object;)V

    .line 599
    return-void
.end method

.method public getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v3, 0x0

    sget-object v4, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    .line 460
    invoke-virtual {v4, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v3

    .line 459
    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 459
    return-object v0
.end method

.method public getAllCustomers(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p1, "m"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/CustomerDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCustomerDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllWaiters(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/WaiterListsDB;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getWaiterListDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao$Properties;->WaiterName:Lde/greenrobot/dao/Property;

    .line 636
    invoke-virtual {v1, p2}, Lde/greenrobot/dao/Property;->notEq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 635
    return-object v0
.end method

.method public getCostCenterName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostCenterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCostcenterByItemId(Landroid/content/Context;ILjava/lang/Boolean;)I
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 234
    :try_start_1
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v4, 0x0

    sget-object v5, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    move-result v0

    .line 239
    :goto_36
    return v0

    .line 236
    :catch_37
    move-exception v0

    move v0, v1

    .line 239
    goto :goto_36
.end method

.method public getCostcenterNamebyId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterDBDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->CostCenterId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "costCenterDbList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/CostCenterDb;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getCostCenterName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDiscountbyCostcenter(Landroid/content/Context;I)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterDBDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/CostCenterDbDao$Properties;->CostCenterId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "costCenterDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/CostCenterDb;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/CostCenterDb;->getCoDiscout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getHighestLevel(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->loadAll()Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    const/4 v0, 0x0

    .line 168
    .local v0, "highestLevel":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 169
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 170
    const-string v4, "level"

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 168
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 175
    :cond_44
    return v0
.end method

.method public getImagePathById(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 640
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getWaiterListDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao$Properties;->WaiterName:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->getWaiterIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsOutOfStockById(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "x"    # Landroid/content/Context;
    .param p2, "Id"    # I

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getItemByOutOfStock(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;
    .registers 6
    .param p1, "x"    # Landroid/content/Context;
    .param p2, "outofStock"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsOutOfStock:Lde/greenrobot/dao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemComboById(Landroid/content/Context;I)Ljava/lang/Boolean;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getItemNameByid(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/String;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v3, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    .line 219
    invoke-virtual {v3, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v4

    .line 218
    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public getItemPriceById(Landroid/content/Context;IZ)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "isCombo"    # Z

    .prologue
    const/4 v5, 0x0

    .line 253
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v3, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemRateById(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/Double;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 223
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v3, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    .line 224
    invoke-virtual {v3, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    aput-object v3, v2, v4

    .line 223
    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;
    .registers 9
    .param p1, "x"    # Landroid/content/Context;
    .param p2, "Id"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v3, 0x0

    sget-object v4, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCombo:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, p3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotifications(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/NotificationsDB;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsCount(Landroid/content/Context;)I
    .registers 3
    .param p1, "m"    # Landroid/content/Context;

    .prologue
    .line 607
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->loadAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOrderDetailMasterId(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderMasterId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderMasterDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->OrderMasterId:Lde/greenrobot/dao/Property;

    .line 524
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    .line 523
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 525
    .local v0, "orderMasterDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/OrderMasterDb;>;"
    return-object v0
.end method

.method public getOrderDetailSeatNo(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seatNo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderMasterDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao$Properties;->SeatNo:Lde/greenrobot/dao/Property;

    .line 530
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    .line 529
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 531
    .local v0, "orderMasterDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/OrderMasterDb;>;"
    return-object v0
.end method

.method public getRelatedItems(Landroid/content/Context;I)Ljava/util/List;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoomTypeNameById(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Id"    # J

    .prologue
    const/4 v3, 0x0

    .line 535
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomTypeDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoSession;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getTableCapacity(Landroid/content/Context;I)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableId"    # I

    .prologue
    .line 287
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    .line 287
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/TableDb;>;"
    const/4 v1, 0x5

    return v1
.end method

.method public getTableName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableId"    # I

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    .line 190
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/TableDb;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insertBillingTerms(Landroid/content/Context;Ljava/util/List;)V
    .registers 15
    .param p1, "m"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p2, "billingTermList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;>;"
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 744
    .local v10, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getBillingTermDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->deleteAll()V

    .line 746
    :try_start_b
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 747
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_50

    .line 748
    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;

    .line 749
    .local v9, "billingTerm":Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;
    new-instance v0, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getBilingID()Ljava/lang/Integer;

    move-result-object v2

    .line 750
    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getIsAdd()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getRate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 751
    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->getSequenceOrder()Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/BillingTermDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 754
    .local v0, "billingTermDb":Lcom/danfe/restaurantapp1/model/BillingTermDb;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getBillingTermDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->insert(Ljava/lang/Object;)J
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4d} :catch_57
    .catchall {:try_start_b .. :try_end_4d} :catchall_5f

    .line 747
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 760
    .end local v0    # "billingTermDb":Lcom/danfe/restaurantapp1/model/BillingTermDb;
    .end local v9    # "billingTerm":Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;
    :cond_50
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 761
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 763
    .end local v11    # "x":I
    :goto_56
    return-void

    .line 757
    :catch_57
    move-exception v1

    .line 760
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 761
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_56

    .line 760
    :catchall_5f
    move-exception v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 761
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public insertCostCenter(Landroid/content/Context;Ljava/util/List;)V
    .registers 12
    .param p1, "m"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p2, "costCenterList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;>;"
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 770
    .local v7, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterDBDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->deleteAll()V

    .line 772
    :try_start_b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 773
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_3c

    .line 774
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;

    .line 775
    .local v6, "costCenter":Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;
    new-instance v0, Lcom/danfe/restaurantapp1/model/CostCenterDb;

    const/4 v1, 0x0

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->getCostCenterID()Ljava/lang/Integer;

    move-result-object v2

    .line 776
    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->getCostCenterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->getCoDiscount()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/danfe/restaurantapp1/model/CostCenterDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 778
    .local v0, "costCenterDb":Lcom/danfe/restaurantapp1/model/CostCenterDb;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterDBDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CostCenterDbDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/model/CostCenterDbDao;->insert(Ljava/lang/Object;)J
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_43
    .catchall {:try_start_b .. :try_end_39} :catchall_4b

    .line 773
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 784
    .end local v0    # "costCenterDb":Lcom/danfe/restaurantapp1/model/CostCenterDb;
    .end local v6    # "costCenter":Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;
    :cond_3c
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 785
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    .end local v8    # "x":I
    :goto_42
    return-void

    .line 781
    :catch_43
    move-exception v1

    .line 784
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 785
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_42

    .line 784
    :catchall_4b
    move-exception v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 785
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public insertCustomers(Landroid/content/Context;Ljava/util/List;)V
    .registers 42
    .param p1, "m"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, "customerLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v37

    .line 650
    .local v37, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-virtual/range {v37 .. v37}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 651
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCustomerDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->deleteAll()V

    .line 652
    const/16 v38, 0x0

    .local v38, "x":I
    :goto_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v38

    if-ge v0, v3, :cond_12f

    .line 653
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;

    .line 654
    .local v35, "customerItem":Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;
    new-instance v2, Lcom/danfe/restaurantapp1/model/CustomerDb;

    const/4 v3, 0x0

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getCusCreditID()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getMembershipID()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getVendorID()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 657
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getFname()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getLname()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 658
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getCity()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 659
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getTelHome()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 660
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getTelWork()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 661
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getTelMobile()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 662
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getEmail()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getOccupation()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 663
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getBirthday()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getAnniversary()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 664
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getCardNumber()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getDateOfIssue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 665
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getDateOfExpire()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getDiscount()Ljava/lang/Double;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 666
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getPAN()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getIsCustomer()Ljava/lang/Boolean;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 667
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getRemainingBalance()Ljava/lang/Double;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 668
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getUptoNowPaid()Ljava/lang/Double;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getPayAmount()Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 669
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getAddedBy()Ljava/lang/Object;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 670
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getGTID()Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getGuestType()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 671
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getDiscount()Ljava/lang/Double;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 672
    invoke-virtual/range {v35 .. v35}, Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;->getCitizenshipPassportNo()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v2 .. v34}, Lcom/danfe/restaurantapp1/model/CustomerDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v2, "customerDb":Lcom/danfe/restaurantapp1/model/CustomerDb;
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCustomerDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/CustomerDbDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/danfe/restaurantapp1/model/CustomerDbDao;->insert(Ljava/lang/Object;)J
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_127} :catch_12b
    .catchall {:try_start_4 .. :try_end_127} :catchall_130

    .line 652
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_10

    .line 676
    .end local v2    # "customerDb":Lcom/danfe/restaurantapp1/model/CustomerDb;
    .end local v35    # "customerItem":Lcom/danfe/restaurantapp1/response/CustomerResponseModel$D;
    .end local v38    # "x":I
    :catch_12b
    move-exception v36

    .line 677
    .local v36, "e":Ljava/lang/Exception;
    :try_start_12c
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    .line 681
    .end local v36    # "e":Ljava/lang/Exception;
    :cond_12f
    return-void

    .line 678
    :catchall_130
    move-exception v3

    throw v3
.end method

.method public insertExtraItem(Landroid/content/Context;Ljava/util/List;I)V
    .registers 17
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "itemId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "extraItemDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;>;"
    const/4 v0, 0x0

    .line 553
    .local v0, "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 555
    .local v11, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_5
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 557
    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_85
    .catchall {:try_start_5 .. :try_end_b} :catchall_96

    move-result v1

    if-lez v1, :cond_7e

    .line 558
    const/4 v12, 0x0

    .local v12, "x":I
    move-object v10, v0

    .end local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .local v10, "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    :goto_10
    :try_start_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_7d

    .line 559
    new-instance v0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    const/4 v1, 0x0

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getItemID()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v3

    .line 560
    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getExtraItem()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getExtraPrice()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getIsActive()Ljava/lang/Boolean;

    move-result-object v6

    .line 561
    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getAddedBy()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getIsExtra()Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_72} :catch_a1
    .catchall {:try_start_10 .. :try_end_72} :catchall_9e

    .line 562
    .end local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    :try_start_72
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getExtraItemDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->insert(Ljava/lang/Object;)J
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_79} :catch_85
    .catchall {:try_start_72 .. :try_end_79} :catchall_96

    .line 558
    add-int/lit8 v12, v12, 0x1

    move-object v10, v0

    .end local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    goto :goto_10

    :cond_7d
    move-object v0, v10

    .line 572
    .end local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .end local v12    # "x":I
    .restart local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    :cond_7e
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 573
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 576
    :goto_84
    return-void

    .line 568
    :catch_85
    move-exception v9

    .line 569
    .local v9, "e":Ljava/lang/Exception;
    :goto_86
    :try_start_86
    const-string v1, "EXTRAITEMDBEXCEPTION"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_96

    .line 572
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 573
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_84

    .line 572
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_96
    move-exception v1

    :goto_97
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 573
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 572
    .end local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v12    # "x":I
    :catchall_9e
    move-exception v1

    move-object v0, v10

    .end local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    goto :goto_97

    .line 568
    .end local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    :catch_a1
    move-exception v9

    move-object v0, v10

    .end local v10    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    .restart local v0    # "extraItemDb":Lcom/danfe/restaurantapp1/model/ExtraItemDb;
    goto :goto_86
.end method

.method public insertItemgroup(Landroid/content/Context;Ljava/util/List;)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v27

    .line 321
    .local v27, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 322
    .local v19, "comboAvailable":Ljava/lang/Boolean;
    const-string v20, ""

    .line 325
    .local v20, "comboCurrency":Ljava/lang/String;
    :try_start_b
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 326
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->deleteAll()V

    .line 327
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getExtraItemDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->deleteAll()V

    .line 328
    new-instance v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Combo Items"

    const/4 v7, 0x0

    .line 331
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x0

    .line 333
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    .line 334
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ""

    const-string v12, "0"

    const-string v13, ""

    const/4 v14, 0x1

    .line 338
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    .line 339
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v16, "comboitems"

    const/16 v17, 0x0

    .line 340
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const-string v18, ""

    invoke-direct/range {v3 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 348
    .local v3, "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->insert(Ljava/lang/Object;)J

    .line 358
    const/16 v26, 0x0

    .local v26, "k":I
    :goto_5d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_1a8

    .line 359
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;

    .line 360
    .local v25, "itemgroup":Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 361
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 362
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 363
    new-instance v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .end local v3    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    const/4 v4, 0x0

    .line 364
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    .line 365
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 367
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getImagePath()Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCostCenterID()Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 370
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getDetails()Ljava/lang/String;

    move-result-object v11

    .line 371
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getSRate()Ljava/lang/Float;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 372
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCurrency()Ljava/lang/String;

    move-result-object v13

    .line 373
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v14

    .line 374
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v15

    .line 375
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemCode()Ljava/lang/String;

    move-result-object v16

    .line 376
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsOutOfStock()Ljava/lang/Boolean;

    move-result-object v17

    .line 377
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCostCenterName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 400
    .restart local v3    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    :goto_ca
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->insert(Ljava/lang/Object;)J

    .line 401
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getExtradata()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1a4

    .line 402
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getExtradata()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1a4

    .line 403
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v23, "extraMenus":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;>;"
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getExtradata()Ljava/util/List;

    move-result-object v23

    .line 405
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertExtraItem(Landroid/content/Context;Ljava/util/List;I)V

    .line 406
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_125
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_1a4

    .line 408
    const-string v5, "FullRestroRoomData is"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "My FullRestroRoomData: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->getExtraItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " FullRestroRoomData size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    add-int/lit8 v24, v24, 0x1

    goto :goto_125

    .line 379
    .end local v23    # "extraMenus":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;>;"
    .end local v24    # "i":I
    :cond_160
    new-instance v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .end local v3    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    const/4 v4, 0x0

    .line 380
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    .line 381
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemName()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getPItemId()Ljava/lang/Integer;

    move-result-object v7

    .line 383
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getImagePath()Ljava/lang/String;

    move-result-object v8

    .line 384
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCostCenterID()Ljava/lang/Integer;

    move-result-object v9

    .line 385
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getLevel()Ljava/lang/Integer;

    move-result-object v10

    .line 386
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getDetails()Ljava/lang/String;

    move-result-object v11

    .line 387
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getSRate()Ljava/lang/Float;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 388
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCurrency()Ljava/lang/String;

    move-result-object v13

    .line 389
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v14

    .line 390
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v15

    .line 391
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getItemCode()Ljava/lang/String;

    move-result-object v16

    .line 392
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getIsOutOfStock()Ljava/lang/Boolean;

    move-result-object v17

    .line 393
    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->getCostCenterName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .restart local v3    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    goto/16 :goto_ca

    .line 358
    :cond_1a4
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5d

    .line 415
    .end local v25    # "itemgroup":Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;
    :cond_1a8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1d5

    .line 417
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemId:Lde/greenrobot/dao/Property;

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v21

    .line 418
    .local v21, "deletionList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->deleteInTx(Ljava/lang/Iterable;)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d5} :catch_1dc
    .catchall {:try_start_b .. :try_end_1d5} :catchall_1ed

    .line 424
    .end local v21    # "deletionList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    :cond_1d5
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 425
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    .end local v3    # "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .end local v26    # "k":I
    :goto_1db
    return-void

    .line 421
    :catch_1dc
    move-exception v22

    .line 422
    .local v22, "e":Ljava/lang/Exception;
    :try_start_1dd
    const-string v4, "DBERROR"

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e6
    .catchall {:try_start_1dd .. :try_end_1e6} :catchall_1ed

    .line 424
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 425
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1db

    .line 424
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_1ed
    move-exception v4

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 425
    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public insertNotifications(Landroid/content/Context;Lcom/danfe/restaurantapp1/model/NotificationsDB;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationsDB"    # Lcom/danfe/restaurantapp1/model/NotificationsDB;

    .prologue
    .line 592
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/NotificationsDBDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/danfe/restaurantapp1/model/NotificationsDBDao;->insert(Ljava/lang/Object;)J

    .line 593
    return-void
.end method

.method public insertOrderDetail(Landroid/content/Context;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .prologue
    .line 519
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderDetailDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->insert(Ljava/lang/Object;)J

    .line 520
    return-void
.end method

.method public insertOrderMaster(Landroid/content/Context;Lcom/danfe/restaurantapp1/model/OrderMasterDb;)J
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderMasterDb"    # Lcom/danfe/restaurantapp1/model/OrderMasterDb;

    .prologue
    .line 515
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertTable(Landroid/content/Context;Ljava/util/List;)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "rooms":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28

    .line 467
    .local v28, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDbDao;->deleteAll()V

    .line 469
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->deleteAll()V

    .line 470
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomTypeDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->deleteAll()V

    .line 471
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_1e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_128

    .line 472
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;

    .line 473
    .local v24, "room":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;
    new-instance v26, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual/range {v24 .. v24}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->getRoomTypeID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->getDescription()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4, v5}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v26, "roomTypeDb":Lcom/danfe/restaurantapp1/model/RoomTypeDb;
    invoke-virtual/range {v24 .. v24}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->getRoomlist()Ljava/util/List;

    move-result-object v27

    .line 475
    .local v27, "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_52
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_11b

    .line 476
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;

    .line 477
    .local v20, "eachTable":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;
    new-instance v25, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual/range {v20 .. v20}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->getRestroRoomId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->getRestroRoom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->getRoomStatusId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;->getRoomTypeID()Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/danfe/restaurantapp1/model/RoomDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 478
    .local v25, "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    invoke-virtual/range {v20 .. v20}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->getTableList()Ljava/util/List;

    move-result-object v30

    .line 479
    .local v30, "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;>;"
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_8a
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_10e

    .line 480
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;

    .line 481
    .local v29, "table":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;
    new-instance v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getRestrotableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 482
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getRestrotableTitle()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getRestrotablesStatusID()Ljava/lang/Integer;

    move-result-object v5

    .line 484
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getSeatcap()Ljava/lang/Integer;

    move-result-object v6

    .line 485
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getMergeTableList()Ljava/lang/Integer;

    move-result-object v7

    .line 486
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getMergeID()Ljava/lang/Integer;

    move-result-object v8

    .line 487
    invoke-virtual/range {v20 .. v20}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;->getRestroRoomId()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 488
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getBillPaid()Ljava/lang/Integer;

    move-result-object v10

    .line 489
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getTableDate()Ljava/lang/String;

    move-result-object v11

    .line 490
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getTabletime()Ljava/lang/String;

    move-result-object v12

    .line 491
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getIsCancelled()Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    .line 492
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 493
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getIsTable()Ljava/lang/Boolean;

    move-result-object v15

    .line 494
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getRate()Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 495
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v17

    .line 496
    invoke-virtual/range {v29 .. v29}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;->getGuestNo()Ljava/lang/Integer;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 499
    .local v2, "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/danfe/restaurantapp1/model/TableDbDao;->insert(Ljava/lang/Object;)J

    .line 479
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8a

    .line 501
    .end local v2    # "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    .end local v29    # "table":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;
    :cond_10e
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->insert(Ljava/lang/Object;)J

    .line 475
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_52

    .line 503
    .end local v20    # "eachTable":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;
    .end local v22    # "j":I
    .end local v25    # "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    .end local v30    # "tableList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;>;"
    :cond_11b
    invoke-static/range {p1 .. p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomTypeDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->insert(Ljava/lang/Object;)J
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_124} :catch_12f
    .catchall {:try_start_4 .. :try_end_124} :catchall_140

    .line 471
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1e

    .line 508
    .end local v21    # "i":I
    .end local v24    # "room":Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;
    .end local v26    # "roomTypeDb":Lcom/danfe/restaurantapp1/model/RoomTypeDb;
    .end local v27    # "roomlist":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;>;"
    :cond_128
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 509
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 511
    .end local v23    # "k":I
    :goto_12e
    return-void

    .line 505
    :catch_12f
    move-exception v19

    .line 506
    .local v19, "e":Ljava/lang/Exception;
    :try_start_130
    const-string v3, "TABLEDBERROR"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_140

    .line 508
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 509
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12e

    .line 508
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_140
    move-exception v3

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 509
    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public insertWaiters(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/WaiterListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "waiterListResponseLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/WaiterListResponse;>;"
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 619
    .local v1, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 620
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getWaiterListDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->deleteAll()V

    .line 621
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 622
    new-instance v2, Lcom/danfe/restaurantapp1/model/WaiterListsDB;

    const/4 v5, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterName()Ljava/lang/String;

    move-result-object v6

    .line 623
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterIP()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v6, v4}, Lcom/danfe/restaurantapp1/model/WaiterListsDB;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v2, "waiterListsDB":Lcom/danfe/restaurantapp1/model/WaiterListsDB;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getWaiterListDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/danfe/restaurantapp1/model/WaiterListsDBDao;->insert(Ljava/lang/Object;)J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_40
    .catchall {:try_start_4 .. :try_end_36} :catchall_51

    .line 621
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 629
    .end local v2    # "waiterListsDB":Lcom/danfe/restaurantapp1/model/WaiterListsDB;
    :cond_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 630
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 632
    .end local v3    # "x":I
    :goto_3f
    return-void

    .line 626
    :catch_40
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v4, "WAITERDBEXCEPTION"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_51

    .line 629
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 630
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3f

    .line 629
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 630
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public loadAllBillingTerminAsc(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/BillingTermDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getBillingTermDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/BillingTermDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/BillingTermDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/Property;

    const/4 v3, 0x0

    sget-object v4, Lcom/danfe/restaurantapp1/model/BillingTermDbDao$Properties;->SequenceOrder:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "billingTermDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/BillingTermDb;>;"
    return-object v0
.end method

.method public loadAllItemGroups(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    return-object v0
.end method

.method public loadAllItems(Landroid/content/Context;II)Ljava/util/List;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "PID"    # I
    .param p3, "Level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 p2, 0x0

    .line 148
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v4, 0x0

    sget-object v5, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Level:Lde/greenrobot/dao/Property;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    return-object v0
.end method

.method public loadAllOrderDetail(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderDetailDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "OrderDetailDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    return-object v0
.end method

.method public loadAllOrderMaster(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderMasterDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "orderMasterDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/OrderMasterDb;>;"
    return-object v0
.end method

.method public loadAllRoom(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "rooms":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomDb;>;"
    return-object v0
.end method

.method public loadAllRoomType(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomTypeDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomTypeDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/RoomTypeDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "roomTypeDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomTypeDb;>;"
    return-object v0
.end method

.method public loadAllTables(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->loadAll()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/TableDb;>;"
    return-object v0
.end method

.method public loadItemLevel(Landroid/content/Context;II)Ljava/util/List;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ItemID"    # I
    .param p3, "Level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->Level:Lde/greenrobot/dao/Property;

    .line 154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    return-object v0
.end method

.method public loadItemNextLevel(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ItemID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->PId:Lde/greenrobot/dao/Property;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    return-object v0
.end method

.method public loadItemsWith(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/List;
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ExtraItemDb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 579
    const-string v0, "Msg"

    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getExtraItemDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->itemID:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getExtraItemDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/danfe/restaurantapp1/model/ExtraItemDbDao$Properties;->itemID:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    new-array v2, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadRoomTables(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/TableDbDao$Properties;->RoomId:Lde/greenrobot/dao/Property;

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    .line 131
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "tables":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/TableDb;>;"
    return-object v0
.end method

.method public loadRoomTitle(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "roomDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomDb;>;"
    return-object v0
.end method

.method public loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomTypeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/RoomDbDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/RoomDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/danfe/restaurantapp1/model/RoomDbDao$Properties;->RoomTypeId:Lde/greenrobot/dao/Property;

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    .line 116
    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "roomDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/RoomDb;>;"
    return-object v0
.end method

.method public searchItems(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ch"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getSqlDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 434
    .local v2, "sqLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v0, "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 438
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemCode:Lde/greenrobot/dao/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v6, 0x0

    sget-object v7, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCategory:Lde/greenrobot/dao/Property;

    const-string v8, "false"

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_8c

    .line 441
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemgroupDbDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->ItemName:Lde/greenrobot/dao/Property;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v6, 0x0

    sget-object v7, Lcom/danfe/restaurantapp1/model/ItemgroupDbDao$Properties;->IsCategory:Lde/greenrobot/dao/Property;

    const-string v8, "false"

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8b} :catch_94
    .catchall {:try_start_9 .. :try_end_8b} :catchall_9d

    move-result-object v0

    .line 448
    :cond_8c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 449
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 450
    .end local v0    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .local v1, "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    :goto_93
    return-object v1

    .line 444
    .end local v1    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .restart local v0    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    :catch_94
    move-exception v3

    .line 448
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 449
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 450
    .end local v0    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .restart local v1    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    goto :goto_93

    .line 448
    .end local v1    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .restart local v0    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    :catchall_9d
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 449
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v1, v0

    .line 450
    .end local v0    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .restart local v1    # "itemgroups":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    goto :goto_93
.end method

.method public truncateOrder(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderDetailDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->deleteAll()V

    .line 540
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->deleteAll()V

    .line 541
    return-void
.end method

.method public truncateOrderDetail(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderDetailDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/OrderDetailDbDao;->deleteAll()V

    .line 549
    return-void
.end method

.method public truncateOrderMaster(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    invoke-static {p1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getOrderMasterDao(Landroid/content/Context;)Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/OrderMasterDbDao;->deleteAll()V

    .line 545
    return-void
.end method
