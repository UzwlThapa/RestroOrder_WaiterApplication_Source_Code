package com.danfe.restaurantapp1.Interface;

import com.danfe.restaurantapp1.model.OrderDetailDb;
import com.danfe.restaurantapp1.model.orderExtraItem;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ExtraItemsInterface {
    void sendExtraItems(List<orderExtraItem> list, String str, OrderDetailDb orderDetailDb);
}
