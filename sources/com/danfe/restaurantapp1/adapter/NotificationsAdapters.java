package com.danfe.restaurantapp1.adapter;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.danfe.restaurantapp1.Interface.PopupDelete;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.model.NotificationsDB;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NotificationsAdapters extends ArrayAdapter {
    private Context context;
    private View convertView;
    private NotificationsDB notificationsDB;
    private List<NotificationsDB> notificationsDBList;
    private PopupDelete popupDelete;
    private RestaurantDatabase restroDb;
    private Animation slidingAnimation;
    private ViewHolder vh;

    public NotificationsAdapters(Context context, List<NotificationsDB> notificationsDBs, PopupDelete popupDelete) {
        super(context, R.layout.popup_notifications);
        this.context = context;
        this.notificationsDBList = notificationsDBs;
        this.restroDb = new RestaurantDatabase();
        this.popupDelete = popupDelete;
        this.slidingAnimation = AnimationUtils.loadAnimation(context, R.anim.slide_right_to_left);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.notificationsDBList.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public Object getItem(int position) {
        return super.getItem(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int position) {
        return super.getItemId(position);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    public View getView(int position, View cv, ViewGroup parent) {
        this.convertView = cv;
        this.vh = new ViewHolder();
        if (this.convertView == null) {
            this.convertView = LayoutInflater.from(getContext()).inflate(R.layout.layout_notifications, parent, false);
            this.vh.tvDateTime = (TextView) this.convertView.findViewById(R.id.layout_tv_notification_date);
            this.vh.tvNotification = (TextView) this.convertView.findViewById(R.id.layout_tv_notification_message);
            this.vh.ivDeleteNotification = (ImageView) this.convertView.findViewById(R.id.layout_btn_notification_delete);
            this.vh.mainLayout = (RelativeLayout) this.convertView.findViewById(R.id.layout_mainlayout_notification);
            this.convertView.setTag(this.vh);
        } else {
            this.vh = (ViewHolder) this.convertView.getTag();
        }
        this.notificationsDB = this.notificationsDBList.get(position);
        this.vh.tvDateTime.setText(this.notificationsDB.getNotificationdate());
        this.vh.tvNotification.setText(this.notificationsDB.getNotification());
        this.vh.ivDeleteNotification.setOnClickListener(new AnonymousClass1(position));
        return this.convertView;
    }

    /* JADX INFO: renamed from: com.danfe.restaurantapp1.adapter.NotificationsAdapters$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnClickListener {
        final /* synthetic */ int val$position;

        AnonymousClass1(int i) {
            this.val$position = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            View clickedView = (View) v.getParent();
            RelativeLayout layout = (RelativeLayout) clickedView.findViewById(R.id.layout_mainlayout_notification);
            layout.startAnimation(NotificationsAdapters.this.slidingAnimation);
            NotificationsAdapters.this.slidingAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.adapter.NotificationsAdapters.1.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    long id = ((NotificationsDB) NotificationsAdapters.this.notificationsDBList.get(AnonymousClass1.this.val$position)).getId().longValue();
                    NotificationsAdapters.this.restroDb.deleteNotification(NotificationsAdapters.this.getContext(), (int) id);
                    Handler handler = new Handler();
                    handler.post(new Runnable() { // from class: com.danfe.restaurantapp1.adapter.NotificationsAdapters.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NotificationsAdapters.this.popupDelete.refreshData();
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
        }
    }

    public class ViewHolder {
        ImageView ivDeleteNotification;
        RelativeLayout mainLayout;
        TextView tvDateTime;
        TextView tvNotification;

        public ViewHolder() {
        }
    }
}
