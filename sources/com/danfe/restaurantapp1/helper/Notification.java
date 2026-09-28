package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.model.NotificationsDB;
import com.danfe.restaurantapp1.model.WaiterListsDB;
import com.danfe.restaurantapp1.response.WaiterListResponse;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class Notification {
    private String BaseURL;
    private View DialogView;
    private AlertDialog alertDialog;
    private Button btnDismissDialog;
    private Button btnForward;
    private Context context;
    private String department;
    private String destinationIp;
    private LayoutInflater inflator;
    private String item;
    private ImageView ivRefresh;
    private LinearLayout layoutForward;
    private LinearLayout layoutParentForwarding;
    private MediaPlayer m;
    private Preferences preferences;
    private ProgressBar progressBar;
    private RestAdapter restAdapter;
    private Boolean sound;
    private Spinner spWaiterLists;
    private String tableno;
    private TextView tvDepartment;
    private TextView tvError;
    private TextView tvItem;
    private TextView tvMessage;
    private TextView tvTable;
    private Vibrator v;
    private Boolean vibrate;
    private List<WaiterListResponse> waiterListResponse;
    private RestaurantWebService.WaiterListsRequest waiterRequest;
    private List<WaiterListsDB> waiterListsDBLists = new ArrayList();
    private List<String> waitersLists = new ArrayList();
    private Boolean callFromCounter = false;
    private RestaurantDatabase restroDb = new RestaurantDatabase();

    public Notification(Context _context, String _department, String _item, String _tableno, Boolean _vibrate, Boolean _sound) {
        this.BaseURL = "";
        this.department = _department;
        this.tableno = _tableno;
        this.item = _item;
        this.context = _context;
        this.sound = _sound;
        this.vibrate = _vibrate;
        this.m = MediaPlayer.create(this.context, R.raw.bell);
        this.v = (Vibrator) this.context.getApplicationContext().getSystemService("vibrator");
        this.preferences = new Preferences(this.context);
        this.BaseURL = Util.getBaseUrl(this.context);
        this.inflator = LayoutInflater.from(this.context);
        this.DialogView = this.inflator.inflate(R.layout.dialog_waitercall_pushnotification, (ViewGroup) null);
        this.alertDialog = new AlertDialog.Builder(this.context).create();
        this.alertDialog.setCancelable(false);
        this.tvDepartment = (TextView) this.DialogView.findViewById(R.id.tv_dialog_callwaiter_department);
        this.tvItem = (TextView) this.DialogView.findViewById(R.id.tv_dialog_callwaiter_item);
        this.tvTable = (TextView) this.DialogView.findViewById(R.id.tv_dialog_callwaiter_tableno);
        this.tvError = (TextView) this.DialogView.findViewById(R.id.tv_push_dialog_error);
        this.tvMessage = (TextView) this.DialogView.findViewById(R.id.tv_push_dialog_message);
        this.ivRefresh = (ImageView) this.DialogView.findViewById(R.id.refresh_waiters);
        this.progressBar = (ProgressBar) this.DialogView.findViewById(R.id.pb_pushnotification);
        this.btnDismissDialog = (Button) this.DialogView.findViewById(R.id.btn_dialog_callwaiter_dismiss);
        this.btnForward = (Button) this.DialogView.findViewById(R.id.btn_dialog_callwaiter_forward);
        this.layoutForward = (LinearLayout) this.DialogView.findViewById(R.id.layout_dialog_callwaiter_forward);
        this.layoutParentForwarding = (LinearLayout) this.DialogView.findViewById(R.id.layout_forwarding);
        this.spWaiterLists = (Spinner) this.DialogView.findViewById(R.id.sp_dialog_callwaiter_waiterlists);
    }

    public void showPushNotificationDialog() {
        if (!this.department.equalsIgnoreCase("") && !this.item.equalsIgnoreCase("") && !this.tableno.equalsIgnoreCase("")) {
            if (this.sound.booleanValue()) {
                this.m.start();
            }
            if (this.vibrate.booleanValue()) {
                this.v.vibrate(600L);
            }
            manageWaiterList();
            if (this.department.toLowerCase().equals("web")) {
                this.tvDepartment.setText("Please Report In to Counter.");
                this.layoutForward.setVisibility(8);
                this.callFromCounter = true;
                this.layoutParentForwarding.setVisibility(8);
                this.tvTable.setVisibility(8);
                this.tvItem.setVisibility(8);
            } else {
                this.tvDepartment.setText("Please Report In to " + this.department);
                this.tvItem.setText("Item: " + this.item);
                this.tvTable.setText("Table No: " + this.tableno);
            }
            this.spWaiterLists.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.danfe.restaurantapp1.helper.Notification.1
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                    ((TextView) parent.getChildAt(0)).setTextColor(-1);
                    Notification.this.tvError.setAnimation(AnimationUtils.loadAnimation(Notification.this.context, R.anim.slide_up));
                    Notification.this.tvError.setVisibility(8);
                    if (Notification.this.spWaiterLists.getSelectedItem().toString().equals("Send To")) {
                        Notification.this.btnForward.setVisibility(8);
                    } else {
                        Notification.this.btnForward.setVisibility(0);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> parent) {
                }
            });
            this.btnForward.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Notification.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    Notification.this.progressBar.setVisibility(0);
                    for (int x = 0; x < Notification.this.waiterListResponse.size(); x++) {
                        if (((WaiterListResponse) Notification.this.waiterListResponse.get(x)).getWaiterName().equals(Notification.this.spWaiterLists.getSelectedItem().toString())) {
                            Notification.this.destinationIp = ((WaiterListResponse) Notification.this.waiterListResponse.get(x)).getWaiterIP().toString();
                        }
                    }
                    Log.e("DESTINATIONIP", Notification.this.destinationIp);
                    RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(Notification.this.destinationIp).build();
                    RestaurantWebService.CallWaiter callWaiterService = (RestaurantWebService.CallWaiter) restAdapter.create(RestaurantWebService.CallWaiter.class);
                    callWaiterService.callWaiter(Notification.this.department, Notification.this.item, Notification.this.tableno, new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.helper.Notification.2.1
                        @Override // retrofit.Callback
                        public void success(JsonObject jsonElements, Response response) {
                            Log.e("CALLWAITER", "SUCCESS");
                            Notification.this.progressBar.setVisibility(8);
                            Toast.makeText(Notification.this.context, "Notice Successfully Sent to " + Notification.this.spWaiterLists.getSelectedItem().toString(), 1).show();
                            Notification.this.alertDialog.dismiss();
                        }

                        @Override // retrofit.Callback
                        public void failure(RetrofitError error) {
                            Log.e("CALLWAITER", error.getLocalizedMessage());
                            Notification.this.progressBar.setVisibility(8);
                            Animation shakeAnimation = AnimationUtils.loadAnimation(Notification.this.context, R.anim.shake);
                            Notification.this.tvError.startAnimation(shakeAnimation);
                            Notification.this.tvError.setVisibility(0);
                            Notification.this.tvError.setText("Could not connect to user. Is the user available or using the software?");
                        }
                    });
                }
            });
            this.btnDismissDialog.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Notification.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (Notification.this.alertDialog != null) {
                        if (!Notification.this.callFromCounter.booleanValue()) {
                            NotificationsDB notificationsDB = new NotificationsDB(null, Util.getDateTime(), Notification.this.department + "," + Notification.this.item + "," + Notification.this.tableno);
                            Notification.this.restroDb.insertNotifications(Notification.this.context, notificationsDB);
                            Notification.this.alertDialog.dismiss();
                        } else {
                            NotificationsDB notificationsDB2 = new NotificationsDB(null, Util.getDateTime(), "Please Report in to Counter");
                            Notification.this.restroDb.insertNotifications(Notification.this.context, notificationsDB2);
                            Notification.this.alertDialog.dismiss();
                        }
                        EventBus.getDefault().post(new MessageEvents("NotificationReceived"));
                    }
                }
            });
            this.ivRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Notification.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    Notification.this.getWaiterLists(false);
                }
            });
            this.alertDialog.setView(this.DialogView);
            this.alertDialog.getWindow().setWindowAnimations(R.style.DialogTheme);
            this.alertDialog.getWindow().setBackgroundDrawable(this.context.getResources().getDrawable(R.drawable.dialog_drawable));
            this.alertDialog.getWindow().setType(2003);
            this.alertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void manageWaiterList() {
        if (this.waitersLists.size() > 1) {
            this.tvMessage.setText("Send To Other Waiter");
            this.layoutForward.setVisibility(0);
            ArrayAdapter arrayAdapter = new ArrayAdapter(this.context, R.layout.layout_spinner, this.waitersLists);
            this.spWaiterLists.setAdapter((SpinnerAdapter) arrayAdapter);
            return;
        }
        this.tvMessage.setText("No Users Found. Please Refresh.");
        this.layoutForward.setVisibility(8);
    }

    public void getWaiterLists(final Boolean displayNotification) {
        this.waitersLists = new ArrayList();
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.waiterRequest = (RestaurantWebService.WaiterListsRequest) this.restAdapter.create(RestaurantWebService.WaiterListsRequest.class);
        this.progressBar.setVisibility(0);
        this.waiterRequest.getWaitersLists(new Callback<List<WaiterListResponse>>() { // from class: com.danfe.restaurantapp1.helper.Notification.5
            @Override // retrofit.Callback
            public void success(List<WaiterListResponse> waiterListResponses, Response response) {
                Notification.this.progressBar.setVisibility(8);
                if (waiterListResponses != null) {
                    Notification.this.waiterListResponse = waiterListResponses;
                    try {
                        if (waiterListResponses.size() > 0) {
                            Notification.this.waitersLists.add(0, "Send To");
                            for (int x = 0; x < waiterListResponses.size(); x++) {
                                if (!waiterListResponses.get(x).getWaiterName().equals(Notification.this.preferences.getPreferencesString(Constants.PREF_LOGIN))) {
                                    Notification.this.waitersLists.add(waiterListResponses.get(x).getWaiterName());
                                }
                            }
                            if (!displayNotification.booleanValue()) {
                                Notification.this.manageWaiterList();
                            } else {
                                Notification.this.showPushNotificationDialog();
                            }
                        }
                    } catch (Exception e) {
                        Log.e("WAITERDB", e.getMessage());
                    }
                }
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                Notification.this.progressBar.setVisibility(8);
                if (!displayNotification.booleanValue()) {
                    Notification.this.manageWaiterList();
                } else {
                    Notification.this.showPushNotificationDialog();
                }
                Log.e("RETROFIT ERROR", error.getMessage());
            }
        });
    }
}
