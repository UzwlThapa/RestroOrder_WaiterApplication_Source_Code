package com.danfe.restaurantapp1.helper;

import com.danfe.restaurantapp1.model.OrderDetailDb;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SendItem {

    public interface RemoveOrderItem {
        void onRemoveOrderItem(int i, int i2);
    }

    public interface SendExtraPay {
        void onExtraAdded(String str);
    }

    public interface SendGuestNo {
        void onGuestNoAdded(int i);
    }

    public interface SendItemList {
        void onOrderArrivalList(ArrayList<OrderDetailDb> arrayList);
    }

    public interface SendItemSingle {
        void onOrderArrival(OrderDetailDb orderDetailDb, int i, String str, Boolean bool);
    }

    public interface SendNotes {
        void onNotesAdded(String str);
    }

    public interface UpdateDishDb {
        void onDishDbChange();
    }
}
