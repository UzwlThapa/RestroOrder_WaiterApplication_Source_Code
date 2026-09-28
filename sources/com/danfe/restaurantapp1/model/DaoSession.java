package com.danfe.restaurantapp1.model;

import android.database.sqlite.SQLiteDatabase;
import de.greenrobot.dao.AbstractDao;
import de.greenrobot.dao.AbstractDaoSession;
import de.greenrobot.dao.identityscope.IdentityScopeType;
import de.greenrobot.dao.internal.DaoConfig;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DaoSession extends AbstractDaoSession {
    private final BillingTermDbDao billingTermDbDao;
    private final DaoConfig billingTermDbDaoConfig;
    private final CostCenterDbDao costCenterDbDao;
    private final DaoConfig costCenterDbDaoConfig;
    private final CustomerDbDao customerDbDao;
    private final DaoConfig customerDbDaoConfig;
    private final ExtraItemDbDao extraItemDbDao;
    private final DaoConfig extraItemDbDaoConfig;
    private final ItemgroupDbDao itemgroupDbDao;
    private final DaoConfig itemgroupDbDaoConfig;
    private final NotificationsDBDao notificationsDBDao;
    private final DaoConfig notificationsDBDaoConfig;
    private final OrderDetailDbDao orderDetailDbDao;
    private final DaoConfig orderDetailDbDaoConfig;
    private final OrderMasterDbDao orderMasterDbDao;
    private final DaoConfig orderMasterDbDaoConfig;
    private final RoomDbDao roomDbDao;
    private final DaoConfig roomDbDaoConfig;
    private final RoomTypeDbDao roomTypeDbDao;
    private final DaoConfig roomTypeDbDaoConfig;
    private final TableDbDao tableDbDao;
    private final DaoConfig tableDbDaoConfig;
    private final WaiterListsDBDao waiterListsDBDao;
    private final DaoConfig waiterListsDBDaoConfig;

    public DaoSession(SQLiteDatabase db, IdentityScopeType type, Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> daoConfigMap) {
        super(db);
        this.roomTypeDbDaoConfig = daoConfigMap.get(RoomTypeDbDao.class).m10clone();
        this.roomTypeDbDaoConfig.initIdentityScope(type);
        this.roomDbDaoConfig = daoConfigMap.get(RoomDbDao.class).m10clone();
        this.roomDbDaoConfig.initIdentityScope(type);
        this.tableDbDaoConfig = daoConfigMap.get(TableDbDao.class).m10clone();
        this.tableDbDaoConfig.initIdentityScope(type);
        this.itemgroupDbDaoConfig = daoConfigMap.get(ItemgroupDbDao.class).m10clone();
        this.itemgroupDbDaoConfig.initIdentityScope(type);
        this.orderMasterDbDaoConfig = daoConfigMap.get(OrderMasterDbDao.class).m10clone();
        this.orderMasterDbDaoConfig.initIdentityScope(type);
        this.orderDetailDbDaoConfig = daoConfigMap.get(OrderDetailDbDao.class).m10clone();
        this.orderDetailDbDaoConfig.initIdentityScope(type);
        this.extraItemDbDaoConfig = daoConfigMap.get(ExtraItemDbDao.class).m10clone();
        this.extraItemDbDaoConfig.initIdentityScope(type);
        this.notificationsDBDaoConfig = daoConfigMap.get(NotificationsDBDao.class).m10clone();
        this.notificationsDBDaoConfig.initIdentityScope(type);
        this.waiterListsDBDaoConfig = daoConfigMap.get(WaiterListsDBDao.class).m10clone();
        this.waiterListsDBDaoConfig.initIdentityScope(type);
        this.customerDbDaoConfig = daoConfigMap.get(CustomerDbDao.class).m10clone();
        this.customerDbDaoConfig.initIdentityScope(type);
        this.costCenterDbDaoConfig = daoConfigMap.get(CostCenterDbDao.class).m10clone();
        this.costCenterDbDaoConfig.initIdentityScope(type);
        this.billingTermDbDaoConfig = daoConfigMap.get(BillingTermDbDao.class).m10clone();
        this.billingTermDbDaoConfig.initIdentityScope(type);
        this.roomTypeDbDao = new RoomTypeDbDao(this.roomTypeDbDaoConfig, this);
        this.roomDbDao = new RoomDbDao(this.roomDbDaoConfig, this);
        this.tableDbDao = new TableDbDao(this.tableDbDaoConfig, this);
        this.itemgroupDbDao = new ItemgroupDbDao(this.itemgroupDbDaoConfig, this);
        this.orderMasterDbDao = new OrderMasterDbDao(this.orderMasterDbDaoConfig, this);
        this.orderDetailDbDao = new OrderDetailDbDao(this.orderDetailDbDaoConfig, this);
        this.extraItemDbDao = new ExtraItemDbDao(this.extraItemDbDaoConfig, this);
        this.notificationsDBDao = new NotificationsDBDao(this.notificationsDBDaoConfig, this);
        this.waiterListsDBDao = new WaiterListsDBDao(this.waiterListsDBDaoConfig, this);
        this.customerDbDao = new CustomerDbDao(this.customerDbDaoConfig, this);
        this.costCenterDbDao = new CostCenterDbDao(this.costCenterDbDaoConfig, this);
        this.billingTermDbDao = new BillingTermDbDao(this.billingTermDbDaoConfig, this);
        registerDao(RoomTypeDb.class, this.roomTypeDbDao);
        registerDao(RoomDb.class, this.roomDbDao);
        registerDao(TableDb.class, this.tableDbDao);
        registerDao(ItemgroupDb.class, this.itemgroupDbDao);
        registerDao(OrderMasterDb.class, this.orderMasterDbDao);
        registerDao(OrderDetailDb.class, this.orderDetailDbDao);
        registerDao(ExtraItemDb.class, this.extraItemDbDao);
        registerDao(NotificationsDB.class, this.notificationsDBDao);
        registerDao(WaiterListsDB.class, this.waiterListsDBDao);
        registerDao(CustomerDb.class, this.customerDbDao);
        registerDao(CostCenterDb.class, this.costCenterDbDao);
        registerDao(BillingTermDb.class, this.billingTermDbDao);
    }

    public void clear() {
        this.roomTypeDbDaoConfig.getIdentityScope().clear();
        this.roomDbDaoConfig.getIdentityScope().clear();
        this.tableDbDaoConfig.getIdentityScope().clear();
        this.itemgroupDbDaoConfig.getIdentityScope().clear();
        this.orderMasterDbDaoConfig.getIdentityScope().clear();
        this.orderDetailDbDaoConfig.getIdentityScope().clear();
        this.extraItemDbDaoConfig.getIdentityScope().clear();
        this.notificationsDBDaoConfig.getIdentityScope().clear();
        this.waiterListsDBDaoConfig.getIdentityScope().clear();
        this.customerDbDaoConfig.getIdentityScope().clear();
        this.costCenterDbDaoConfig.getIdentityScope().clear();
        this.billingTermDbDaoConfig.getIdentityScope().clear();
    }

    public RoomTypeDbDao getRoomTypeDbDao() {
        return this.roomTypeDbDao;
    }

    public RoomDbDao getRoomDbDao() {
        return this.roomDbDao;
    }

    public TableDbDao getTableDbDao() {
        return this.tableDbDao;
    }

    public ItemgroupDbDao getItemgroupDbDao() {
        return this.itemgroupDbDao;
    }

    public OrderMasterDbDao getOrderMasterDbDao() {
        return this.orderMasterDbDao;
    }

    public OrderDetailDbDao getOrderDetailDbDao() {
        return this.orderDetailDbDao;
    }

    public ExtraItemDbDao getExtraItemDbDao() {
        return this.extraItemDbDao;
    }

    public NotificationsDBDao getNotificationsDBDao() {
        return this.notificationsDBDao;
    }

    public WaiterListsDBDao getWaiterListsDBDao() {
        return this.waiterListsDBDao;
    }

    public CustomerDbDao getCustomerDbDao() {
        return this.customerDbDao;
    }

    public CostCenterDbDao getCostCenterDbDao() {
        return this.costCenterDbDao;
    }

    public BillingTermDbDao getBillingTermDbDao() {
        return this.billingTermDbDao;
    }
}
