package com.danfe.restaurantapp1.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.danfe.restaurantapp1.model.BillingTermDb;
import com.danfe.restaurantapp1.model.BillingTermDbDao;
import com.danfe.restaurantapp1.model.CostCenterDb;
import com.danfe.restaurantapp1.model.CostCenterDbDao;
import com.danfe.restaurantapp1.model.CustomerDb;
import com.danfe.restaurantapp1.model.CustomerDbDao;
import com.danfe.restaurantapp1.model.ExtraItemDb;
import com.danfe.restaurantapp1.model.ExtraItemDbDao;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.danfe.restaurantapp1.model.ItemgroupDbDao;
import com.danfe.restaurantapp1.model.NotificationsDB;
import com.danfe.restaurantapp1.model.NotificationsDBDao;
import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.OrderDetailDbDao;
import com.danfe.restaurantapp1.model.OrderMasterDb;
import com.danfe.restaurantapp1.model.OrderMasterDbDao;
import com.danfe.restaurantapp1.model.RoomDb;
import com.danfe.restaurantapp1.model.RoomDbDao;
import com.danfe.restaurantapp1.model.RoomTypeDb;
import com.danfe.restaurantapp1.model.RoomTypeDbDao;
import com.danfe.restaurantapp1.model.TableDb;
import com.danfe.restaurantapp1.model.TableDbDao;
import com.danfe.restaurantapp1.model.WaiterListsDB;
import com.danfe.restaurantapp1.model.WaiterListsDBDao;
import com.danfe.restaurantapp1.response.CostCenterModelResponse;
import com.danfe.restaurantapp1.response.CustomerResponseModel;
import com.danfe.restaurantapp1.response.FullRestroRoomData;
import com.danfe.restaurantapp1.response.MenuItemGroup;
import com.danfe.restaurantapp1.response.WaiterListResponse;
import de.greenrobot.dao.query.WhereCondition;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RestaurantDatabase {
    public static RoomTypeDbDao getRoomTypeDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getRoomTypeDbDao();
    }

    public static RoomDbDao getRoomDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getRoomDbDao();
    }

    public static TableDbDao getTableDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getTableDbDao();
    }

    public static ItemgroupDbDao getItemgroupDbDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getItemgroupDbDao();
    }

    public static OrderMasterDbDao getOrderMasterDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getOrderMasterDbDao();
    }

    public static OrderDetailDbDao getOrderDetailDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getOrderDetailDbDao();
    }

    public static NotificationsDBDao getNotificationDao(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getNotificationsDBDao();
    }

    public static ExtraItemDbDao getExtraItemDao(Context x) {
        return ((MyApplication) x.getApplicationContext()).getDaoSession().getExtraItemDbDao();
    }

    public static WaiterListsDBDao getWaiterListDbDao(Context x) {
        return ((MyApplication) x.getApplicationContext()).getDaoSession().getWaiterListsDBDao();
    }

    public static CustomerDbDao getCustomerDbDao(Context m) {
        return ((MyApplication) m.getApplicationContext()).getDaoSession().getCustomerDbDao();
    }

    public static BillingTermDbDao getBillingTermDbDao(Context m) {
        return ((MyApplication) m.getApplicationContext()).getDaoSession().getBillingTermDbDao();
    }

    public static CostCenterDbDao getCostCenterDBDao(Context m) {
        return ((MyApplication) m.getApplicationContext()).getDaoSession().getCostCenterDbDao();
    }

    public SQLiteDatabase getSqlDb(Context c) {
        return ((MyApplication) c.getApplicationContext()).getDaoSession().getDatabase();
    }

    public List<RoomTypeDb> loadAllRoomType(Context context) {
        List<RoomTypeDb> roomTypeDbs = getRoomTypeDao(context).loadAll();
        return roomTypeDbs;
    }

    public List<RoomDb> loadRoomTypeRooms(Context context, int roomTypeId) {
        List<RoomDb> roomDbs = getRoomDao(context).queryBuilder().where(RoomDbDao.Properties.RoomTypeId.eq(Integer.valueOf(roomTypeId)), new WhereCondition[0]).list();
        return roomDbs;
    }

    public List<RoomDb> loadRoomTitle(Context context) {
        List<RoomDb> roomDbs = getRoomDao(context).queryBuilder().list();
        return roomDbs;
    }

    public List<RoomDb> loadAllRoom(Context context) {
        List<RoomDb> rooms = getRoomDao(context).loadAll();
        return rooms;
    }

    public List<TableDb> loadRoomTables(Context context, int roomId) {
        List<TableDb> tables = getTableDao(context).queryBuilder().where(TableDbDao.Properties.RoomId.eq(Integer.valueOf(roomId)), new WhereCondition[0]).list();
        return tables;
    }

    public List<TableDb> loadAllTables(Context context) {
        List<TableDb> tables = getTableDao(context).loadAll();
        return tables;
    }

    public List<ItemgroupDb> loadAllItemGroups(Context context) {
        List<ItemgroupDb> itemgroups = getItemgroupDbDao(context).loadAll();
        return itemgroups;
    }

    public List<ItemgroupDb> loadAllItems(Context context, int PID, int Level) {
        List<ItemgroupDb> items = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.PId.eq(0), ItemgroupDbDao.Properties.Level.eq(Integer.valueOf(Level))).list();
        return items;
    }

    public List<ItemgroupDb> loadItemLevel(Context context, int ItemID, int Level) {
        List<ItemgroupDb> items = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.PId.eq(Integer.valueOf(ItemID)), new WhereCondition[0]).where(ItemgroupDbDao.Properties.Level.eq(Integer.valueOf(Level)), new WhereCondition[0]).list();
        return items;
    }

    public List<ItemgroupDb> loadItemNextLevel(Context context, int ItemID) {
        List<ItemgroupDb> items = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.PId.eq(Integer.valueOf(ItemID)), new WhereCondition[0]).list();
        return items;
    }

    public int getHighestLevel(Context context) {
        List<ItemgroupDb> itemgroups = getItemgroupDbDao(context).loadAll();
        int highestLevel = 0;
        for (int i = 0; i < itemgroups.size(); i++) {
            if (highestLevel < itemgroups.get(i).getLevel().intValue()) {
                Log.e("level", itemgroups.get(i).getLevel().toString());
                highestLevel = itemgroups.get(i).getLevel().intValue();
            }
        }
        return highestLevel;
    }

    public List<OrderMasterDb> loadAllOrderMaster(Context context) {
        List<OrderMasterDb> orderMasterDbs = getOrderMasterDao(context).loadAll();
        return orderMasterDbs;
    }

    public List<OrderDetailDb> loadAllOrderDetail(Context context) {
        List<OrderDetailDb> OrderDetailDbs = getOrderDetailDao(context).loadAll();
        return OrderDetailDbs;
    }

    public String getTableName(Context context, int tableId) {
        List<TableDb> tableList = getTableDao(context).queryBuilder().where(TableDbDao.Properties.Id.eq(Integer.valueOf(tableId)), new WhereCondition[0]).list();
        return tableList.get(0).getNumber();
    }

    public String getItemNameByid(Context context, int id, Boolean isCombo) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), ItemgroupDbDao.Properties.IsCombo.eq(isCombo)).list().get(0).getItemName();
    }

    public Double getItemRateById(Context context, int id, Boolean isCombo) {
        return Double.valueOf(getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), ItemgroupDbDao.Properties.IsCombo.eq(isCombo)).list().get(0).getSRate());
    }

    public Boolean getItemComboById(Context context, int id) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), new WhereCondition[0]).list().get(0).getIsCombo();
    }

    public int getCostcenterByItemId(Context context, int id, Boolean isCombo) {
        try {
            return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), ItemgroupDbDao.Properties.IsCombo.eq(isCombo)).list().get(0).getCostcenterID().intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public String getCostcenterNamebyId(Context context, int id) {
        List<CostCenterDb> costCenterDbList = getCostCenterDBDao(context).queryBuilder().where(CostCenterDbDao.Properties.CostCenterId.eq(Integer.valueOf(id)), new WhereCondition[0]).list();
        return costCenterDbList.get(0).getCostCenterName();
    }

    public int getDiscountbyCostcenter(Context context, int id) {
        List<CostCenterDb> costCenterDbs = getCostCenterDBDao(context).queryBuilder().where(CostCenterDbDao.Properties.CostCenterId.eq(Integer.valueOf(id)), new WhereCondition[0]).list();
        return costCenterDbs.get(0).getCoDiscout().intValue();
    }

    public String getItemPriceById(Context context, int id, boolean isCombo) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), ItemgroupDbDao.Properties.IsCombo.eq(Boolean.valueOf(isCombo))).list().get(0).getSRate();
    }

    public String getImagePathById(Context context, int id) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), new WhereCondition[0]).list().get(0).getImagePath();
    }

    public Boolean getItemStockInfo(Context context, int id) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), new WhereCondition[0]).list().get(0).getOutOfStock();
    }

    public String getCostCenterName(Context context, int id) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(id)), new WhereCondition[0]).list().get(0).getCostCenterName();
    }

    public List<BillingTermDb> loadAllBillingTerminAsc(Context context) {
        List<BillingTermDb> billingTermDbs = getBillingTermDbDao(context).queryBuilder().orderAsc(BillingTermDbDao.Properties.SequenceOrder).list();
        return billingTermDbs;
    }

    public List<ItemgroupDb> getItembyItemId(Context x, int Id, Boolean isCombo) {
        return getItemgroupDbDao(x).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(Integer.valueOf(Id)), ItemgroupDbDao.Properties.IsCombo.eq(isCombo)).list();
    }

    public List<ItemgroupDb> getItemByOutOfStock(Context x, Boolean outofStock) {
        return getItemgroupDbDao(x).queryBuilder().where(ItemgroupDbDao.Properties.IsOutOfStock.eq(true), new WhereCondition[0]).list();
    }

    public boolean getIsOutOfStockById(Context x, int Id) {
        return getItemgroupDbDao(x).queryBuilder().where(ItemgroupDbDao.Properties.Id.eq(Integer.valueOf(Id)), new WhereCondition[0]).list().get(0).getOutOfStock().booleanValue();
    }

    public int getTableCapacity(Context context, int tableId) {
        getTableDao(context).queryBuilder().where(TableDbDao.Properties.Id.eq(Integer.valueOf(tableId)), new WhereCondition[0]).list();
        return 5;
    }

    public void insertItemgroup(Context context, List<MenuItemGroup.Itemgroup> itemgroups) {
        ItemgroupDb itemgroupDb;
        SQLiteDatabase sqLiteDatabase = getSqlDb(context);
        Boolean comboAvailable = false;
        try {
            sqLiteDatabase.beginTransaction();
            getItemgroupDbDao(context).deleteAll();
            getExtraItemDao(context).deleteAll();
            ItemgroupDb itemgroupDb2 = new ItemgroupDb(null, -2, "Combo Items", 0, "", 0, 1, "", "0", "", true, true, "comboitems", false, "");
            getItemgroupDbDao(context).insert(itemgroupDb2);
            for (int k = 0; k < itemgroups.size(); k++) {
                MenuItemGroup.Itemgroup itemgroup = itemgroups.get(k);
                if (itemgroup.getIsCombo().booleanValue()) {
                    comboAvailable = true;
                    itemgroup.getCurrency().toString();
                    itemgroupDb = new ItemgroupDb(null, itemgroup.getItemId(), itemgroup.getItemName(), -2, itemgroup.getImagePath(), itemgroup.getCostCenterID(), 2, itemgroup.getDetails(), String.valueOf(itemgroup.getSRate()), itemgroup.getCurrency(), itemgroup.getIsCategory(), itemgroup.getIsCombo(), itemgroup.getItemCode(), itemgroup.getIsOutOfStock(), itemgroup.getCostCenterName());
                } else {
                    itemgroupDb = new ItemgroupDb(null, itemgroup.getItemId(), itemgroup.getItemName(), itemgroup.getPItemId(), itemgroup.getImagePath(), itemgroup.getCostCenterID(), itemgroup.getLevel(), itemgroup.getDetails(), String.valueOf(itemgroup.getSRate()), itemgroup.getCurrency(), itemgroup.getIsCategory(), itemgroup.getIsCombo(), itemgroup.getItemCode(), itemgroup.getIsOutOfStock(), itemgroup.getCostCenterName());
                }
                getItemgroupDbDao(context).insert(itemgroupDb);
                if (itemgroups.get(k).getExtradata() != null && itemgroups.get(k).getExtradata().size() > 0) {
                    new ArrayList();
                    List<MenuItemGroup.ExtraMenu> extraMenus = itemgroups.get(k).getExtradata();
                    insertExtraItem(context, extraMenus, itemgroups.get(k).getItemId().intValue());
                    for (int i = 0; i < extraMenus.size(); i++) {
                        Log.e("FullRestroRoomData is", "My FullRestroRoomData: " + extraMenus.get(i).getExtraItem() + " FullRestroRoomData size: " + extraMenus.size());
                    }
                }
            }
            if (!comboAvailable.booleanValue()) {
                List<ItemgroupDb> deletionList = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemId.eq(-2), new WhereCondition[0]).list();
                getItemgroupDbDao(context).deleteInTx(deletionList);
            }
        } catch (Exception e) {
            Log.e("DBERROR", String.valueOf(e));
        } finally {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
        }
    }

    public List<ItemgroupDb> searchItems(Context context, CharSequence ch) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(context);
        List<ItemgroupDb> itemgroups = new ArrayList<>();
        try {
            sqLiteDatabase.beginTransaction();
            List<ItemgroupDb> itemgroups2 = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemCode.like("%" + ((Object) ch) + "%"), ItemgroupDbDao.Properties.IsCategory.eq("false")).list();
            if (itemgroups2.size() == 0) {
                itemgroups2 = getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.ItemName.like("%" + ((Object) ch) + "%"), ItemgroupDbDao.Properties.IsCategory.eq("false")).list();
            }
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
            return itemgroups2;
        } catch (Exception e) {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
            return itemgroups;
        } catch (Throwable th) {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
            return itemgroups;
        }
    }

    public List<ItemgroupDb> getRelatedItems(Context context, int itemId) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.PId.eq(Integer.valueOf(itemId)), new WhereCondition[0]).list();
    }

    public List<ItemgroupDb> getActualItem(Context context, int itemId, Boolean isCombo) {
        return getItemgroupDbDao(context).queryBuilder().where(ItemgroupDbDao.Properties.PId.eq(Integer.valueOf(itemId)), ItemgroupDbDao.Properties.IsCombo.eq(isCombo)).list();
    }

    public void insertTable(Context context, List<FullRestroRoomData.Room> rooms) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(context);
        try {
            sqLiteDatabase.beginTransaction();
            getTableDao(context).deleteAll();
            getRoomDao(context).deleteAll();
            getRoomTypeDao(context).deleteAll();
            for (int k = 0; k < rooms.size(); k++) {
                FullRestroRoomData.Room room = rooms.get(k);
                RoomTypeDb roomTypeDb = new RoomTypeDb(Long.valueOf(room.getRoomTypeID().intValue()), room.getTitle(), room.getDescription());
                List<FullRestroRoomData.Roomlist> roomlist = room.getRoomlist();
                for (int i = 0; i < roomlist.size(); i++) {
                    FullRestroRoomData.Roomlist eachTable = roomlist.get(i);
                    RoomDb roomDb = new RoomDb(Long.valueOf(eachTable.getRestroRoomId().intValue()), eachTable.getRestroRoom(), eachTable.getRoomStatusId(), room.getRoomTypeID());
                    List<FullRestroRoomData.TableList> tableList = eachTable.getTableList();
                    for (int j = 0; j < tableList.size(); j++) {
                        FullRestroRoomData.TableList table = tableList.get(j);
                        TableDb tableDb = new TableDb(Long.valueOf(table.getRestrotableId().intValue()), table.getRestrotableTitle(), table.getRestrotablesStatusID(), table.getSeatcap(), table.getMergeTableList(), table.getMergeID(), Integer.valueOf(Integer.parseInt(String.valueOf(eachTable.getRestroRoomId()))), table.getBillPaid(), table.getTableDate(), table.getTabletime(), table.getIsCancelled(), false, table.getIsTable(), Double.valueOf(Double.parseDouble(String.valueOf(table.getRate()))), table.getOrderMasterId(), table.getGuestNo());
                        getTableDao(context).insert(tableDb);
                    }
                    getRoomDao(context).insert(roomDb);
                }
                getRoomTypeDao(context).insert(roomTypeDb);
            }
        } catch (Exception e) {
            Log.e("TABLEDBERROR", String.valueOf(e));
        } finally {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
        }
    }

    public long insertOrderMaster(Context context, OrderMasterDb orderMasterDb) {
        return getOrderMasterDao(context).insert(orderMasterDb);
    }

    public void insertOrderDetail(Context context, OrderDetailDb orderDetailDb) {
        getOrderDetailDao(context).insert(orderDetailDb);
    }

    public List<OrderMasterDb> getOrderDetailMasterId(Context context, int orderMasterId) {
        List<OrderMasterDb> orderMasterDbs = getOrderMasterDao(context).queryBuilder().where(OrderDetailDbDao.Properties.OrderMasterId.eq(Integer.valueOf(orderMasterId)), new WhereCondition[0]).list();
        return orderMasterDbs;
    }

    public List<OrderMasterDb> getOrderDetailSeatNo(Context context, int seatNo) {
        List<OrderMasterDb> orderMasterDbs = getOrderMasterDao(context).queryBuilder().where(OrderDetailDbDao.Properties.SeatNo.eq(Integer.valueOf(seatNo)), new WhereCondition[0]).list();
        return orderMasterDbs;
    }

    public String getRoomTypeNameById(Context context, long Id) {
        return getRoomTypeDao(context).queryBuilder().where(RoomTypeDbDao.Properties.Id.eq(Long.valueOf(Id)), new WhereCondition[0]).list().get(0).getRestroRoom();
    }

    public void truncateOrder(Context context) {
        getOrderDetailDao(context).deleteAll();
        getOrderMasterDao(context).deleteAll();
    }

    public void truncateOrderMaster(Context context) {
        getOrderMasterDao(context).deleteAll();
    }

    public void truncateOrderDetail(Context context) {
        getOrderDetailDao(context).deleteAll();
    }

    public void insertExtraItem(Context c, List<MenuItemGroup.ExtraMenu> extraItemDbs, int itemId) throws Throwable {
        ExtraItemDb extraItemDb = null;
        SQLiteDatabase sqLiteDatabase = getSqlDb(c);
        try {
            try {
                sqLiteDatabase.beginTransaction();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        if (extraItemDbs.size() > 0) {
            int x = 0;
            while (true) {
                try {
                    if (x >= extraItemDbs.size()) {
                        break;
                    }
                    extraItemDb = new ExtraItemDb(null, extraItemDbs.get(x).getItemID(), extraItemDbs.get(x).getExtraItemID(), extraItemDbs.get(x).getExtraItem(), Double.valueOf(Double.parseDouble(extraItemDbs.get(x).getExtraPrice().toString())), extraItemDbs.get(x).getIsActive(), extraItemDbs.get(x).getAddedBy().toString(), extraItemDbs.get(x).getIsExtra());
                    getExtraItemDao(c).insert(extraItemDb);
                    x++;
                } catch (Exception e2) {
                    e = e2;
                } catch (Throwable th2) {
                    th = th2;
                    sqLiteDatabase.setTransactionSuccessful();
                    sqLiteDatabase.endTransaction();
                    throw th;
                }
                Log.e("EXTRAITEMDBEXCEPTION", String.valueOf(e));
                sqLiteDatabase.setTransactionSuccessful();
                sqLiteDatabase.endTransaction();
                return;
            }
        }
        sqLiteDatabase.setTransactionSuccessful();
        sqLiteDatabase.endTransaction();
    }

    public List<ExtraItemDb> loadItemsWith(Context c, Integer id) {
        Log.e("Msg", getExtraItemDao(c).queryBuilder().where(ExtraItemDbDao.Properties.itemID.eq(id), new WhereCondition[0]).list().toString());
        return getExtraItemDao(c).queryBuilder().where(ExtraItemDbDao.Properties.itemID.eq(id), new WhereCondition[0]).list();
    }

    public static void truncateAllItems(Context context) {
        getItemgroupDbDao(context).deleteAll();
    }

    public void insertNotifications(Context context, NotificationsDB notificationsDB) {
        getNotificationDao(context).insert(notificationsDB);
    }

    public void deleteNotification(Context context, int id) {
        getNotificationDao(context).deleteByKey(Long.valueOf(id));
    }

    public List<NotificationsDB> getNotifications(Context context) {
        return getNotificationDao(context).loadAll();
    }

    public int getNotificationsCount(Context m) {
        return getNotificationDao(m).loadAll().size();
    }

    public void deleteAllNotifications(Context context) {
        getNotificationDao(context).deleteAll();
    }

    public void insertWaiters(Context c, List<WaiterListResponse> waiterListResponseLists) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(c);
        try {
            sqLiteDatabase.beginTransaction();
            getWaiterListDbDao(c).deleteAll();
            for (int x = 0; x < waiterListResponseLists.size(); x++) {
                WaiterListsDB waiterListsDB = new WaiterListsDB(null, waiterListResponseLists.get(x).getWaiterName(), waiterListResponseLists.get(x).getWaiterIP());
                getWaiterListDbDao(c).insert(waiterListsDB);
            }
        } catch (Exception e) {
            Log.e("WAITERDBEXCEPTION", e.getMessage());
        } finally {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
        }
    }

    public List<WaiterListsDB> getAllWaiters(Context c, String username) {
        return getWaiterListDbDao(c).queryBuilder().where(WaiterListsDBDao.Properties.WaiterName.notEq(username), new WhereCondition[0]).list();
    }

    public String getIpByUserName(Context c, String username) {
        return getWaiterListDbDao(c).queryBuilder().where(WaiterListsDBDao.Properties.WaiterName.eq(username), new WhereCondition[0]).list().get(0).getWaiterIp();
    }

    public void insertCustomers(Context m, List<CustomerResponseModel.D> customerLists) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(m);
        try {
            sqLiteDatabase.beginTransaction();
            getCustomerDbDao(m).deleteAll();
            for (int x = 0; x < customerLists.size(); x++) {
                CustomerResponseModel.D customerItem = customerLists.get(x);
                CustomerDb customerDb = new CustomerDb(null, String.valueOf(customerItem.getCusCreditID()), String.valueOf(customerItem.getAddress()), String.valueOf(customerItem.getName()), String.valueOf(customerItem.getMembershipID()), String.valueOf(customerItem.getVendorID()), String.valueOf(customerItem.getFname()), String.valueOf(customerItem.getLname()), String.valueOf(customerItem.getAddress()), String.valueOf(customerItem.getCity()), String.valueOf(customerItem.getCountry()), String.valueOf(customerItem.getTelHome()), String.valueOf(customerItem.getTelWork()), String.valueOf(customerItem.getTelMobile()), String.valueOf(customerItem.getEmail()), String.valueOf(customerItem.getOccupation()), String.valueOf(customerItem.getBirthday()), String.valueOf(customerItem.getAnniversary()), String.valueOf(customerItem.getCardNumber()), String.valueOf(customerItem.getDateOfIssue()), String.valueOf(customerItem.getDateOfExpire()), String.valueOf(customerItem.getDiscount()), String.valueOf(customerItem.getPAN()), String.valueOf(customerItem.getIsCustomer()), String.valueOf(customerItem.getRemainingBalance()), String.valueOf(customerItem.getUptoNowPaid()), String.valueOf(customerItem.getPayAmount()), String.valueOf(customerItem.getAddedBy()), String.valueOf(customerItem.getGTID()), String.valueOf(customerItem.getGuestType()), String.valueOf(customerItem.getDiscount()), String.valueOf(customerItem.getCitizenshipPassportNo()));
                getCustomerDbDao(m).insert(customerDb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<CustomerDb> getAllCustomers(Context m) {
        return getCustomerDbDao(m).loadAll();
    }

    public void insertBillingTerms(Context m, List<CostCenterModelResponse.BillingTerm> billingTermList) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(m);
        getBillingTermDbDao(m).deleteAll();
        try {
            sqLiteDatabase.beginTransaction();
            for (int x = 0; x < billingTermList.size(); x++) {
                CostCenterModelResponse.BillingTerm billingTerm = billingTermList.get(x);
                BillingTermDb billingTermDb = new BillingTermDb(null, billingTerm.getBilingID(), billingTerm.getName().toString(), billingTerm.getIsAdd(), billingTerm.getRate().toString(), billingTerm.getDescription().toString(), billingTerm.getSequenceOrder(), null);
                getBillingTermDbDao(m).insert(billingTermDb);
            }
        } catch (Exception e) {
        } finally {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
        }
    }

    public void insertCostCenter(Context m, List<CostCenterModelResponse.CostCenter> costCenterList) {
        SQLiteDatabase sqLiteDatabase = getSqlDb(m);
        getCostCenterDBDao(m).deleteAll();
        try {
            sqLiteDatabase.beginTransaction();
            for (int x = 0; x < costCenterList.size(); x++) {
                CostCenterModelResponse.CostCenter costCenter = costCenterList.get(x);
                CostCenterDb costCenterDb = new CostCenterDb(null, costCenter.getCostCenterID(), costCenter.getCostCenterName().toString(), costCenter.getCoDiscount(), null);
                getCostCenterDBDao(m).insert(costCenterDb);
            }
        } catch (Exception e) {
        } finally {
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
        }
    }
}
