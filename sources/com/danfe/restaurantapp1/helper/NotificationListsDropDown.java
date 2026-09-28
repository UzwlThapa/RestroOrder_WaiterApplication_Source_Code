package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.adapter.NotificationsAdapters;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.model.NotificationsDB;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public class NotificationListsDropDown implements com.danfe.restaurantapp1.Interface.PopupDelete {
    private LayoutInflater layoutInflater;
    private ListView lvNotifications;
    private ImageButton mBtnShowPopup;
    private Context mContext;
    private NotificationsAdapters notificationAdapters;
    private List<NotificationsDB> notificationsDBList;
    private View popUpLayout;
    private PopupWindow popUpWindow;
    private com.danfe.restaurantapp1.Interface.PopupDelete popupDeleteButton;
    private RestaurantDatabase restroDb = new RestaurantDatabase();
    private TextView tvEmptyNotifications;

    public NotificationListsDropDown(Context context, ImageButton btnShowPopup) {
        this.mContext = context;
        this.mBtnShowPopup = btnShowPopup;
        this.notificationsDBList = new ArrayList();
        this.notificationsDBList = this.restroDb.getNotifications(this.mContext);
        this.notificationAdapters = new NotificationsAdapters(this.mContext, this.notificationsDBList, this);
        showDropDownPopup();
    }

    public void showDropDownPopup() {
        try {
            this.layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
            this.popUpLayout = this.layoutInflater.inflate(R.layout.popup_notifications, (ViewGroup) null, false);
            this.popUpWindow = new PopupWindow();
            this.lvNotifications = (ListView) this.popUpLayout.findViewById(R.id.lv_notifications_list);
            this.tvEmptyNotifications = (TextView) this.popUpLayout.findViewById(R.id.tv_notifications_null);
            this.lvNotifications.setDividerHeight(1);
            if (this.notificationsDBList.size() > 0) {
                this.tvEmptyNotifications.setVisibility(8);
                this.lvNotifications.setVisibility(0);
                this.lvNotifications.setAdapter((ListAdapter) this.notificationAdapters);
            } else {
                this.tvEmptyNotifications.setVisibility(0);
                this.lvNotifications.setVisibility(8);
            }
            this.popUpWindow.setContentView(this.popUpLayout);
            this.popUpWindow.setHeight(-2);
            this.popUpWindow.setWidth(-2);
            this.popUpWindow.setBackgroundDrawable(new ColorDrawable(0));
            this.popUpWindow.setFocusable(true);
            this.popUpWindow.setAnimationStyle(R.style.PopUpAnimation);
            this.popUpWindow.setOutsideTouchable(true);
            this.popUpWindow.showAsDropDown(this.mBtnShowPopup, -250, 0);
        } catch (Exception e) {
            Log.e("EXCEPTION", " " + e.getMessage());
        }
    }

    @Override // com.danfe.restaurantapp1.Interface.PopupDelete
    public void refreshData() {
        this.notificationsDBList = this.restroDb.getNotifications(this.mContext);
        this.notificationAdapters = new NotificationsAdapters(this.mContext, this.notificationsDBList, this);
        this.lvNotifications.setAdapter((ListAdapter) this.notificationAdapters);
        this.lvNotifications.setEmptyView(this.popUpLayout.findViewById(R.id.tv_notifications_null));
        EventBus.getDefault().post(new MessageEvents("item deleted"));
    }
}
