package com.danfe.restaurantapp1;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.database.RestaurantDatabase;
import com.danfe.restaurantapp1.gcm.ApplicationConstants;
import com.danfe.restaurantapp1.helper.Authorization;
import com.danfe.restaurantapp1.helper.Constants;
import com.danfe.restaurantapp1.helper.DeviceLock;
import com.danfe.restaurantapp1.helper.Preferences;
import com.danfe.restaurantapp1.helper.RestroWebServer;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.model.ItemgroupDb;
import com.danfe.restaurantapp1.response.LoginPinResponse;
import com.danfe.restaurantapp1.response.LoginResponse;
import com.danfe.restaurantapp1.response.MenuItemGroup;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.danfe.restaurantapp1.service.TableService;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity implements View.OnClickListener {
    private static final String APP_VERSION = "appVersion";
    private static final float GESTURE_THRESHOLD_DP = 16.0f;
    public static final String REG_ID = "regId";
    static final String TAG = "Register Activity";
    private String DeviceID;
    private ImageView app_info;
    private Authorization auth;
    private Button btLogin;
    private Button btPinLogin;
    private TextView btSiginOptions;
    private Button btUser;
    DeviceLock deviceLock;
    private EditText editPassword;
    private EditText editPinNo;
    private EditText editUsername;
    private Animation fadein;
    String flag;
    private GoogleCloudMessaging gcm;
    private GridView gridView;
    private List<ItemgroupDb> itemgroupDbs;
    List<MenuItemGroup.Itemgroup> itemgroupList;
    private LinearLayout layoutPin;
    private LinearLayout layoutPinLogin;
    private LinearLayout layoutUserLogin;
    private LoginPinResponse.Data loginData;
    int mGestureThreshold;
    private RestaurantWebService.ItemGroupWebService menuwebService;
    private String[] numpadDigits;
    private String password;
    private String pinNo;
    private Preferences preference;
    private SharedPreferences preferences;
    private ProgressDialog progress;
    public String regId;
    private RestAdapter restAdapter;
    private RestaurantDatabase restaurantDatabase;
    private RestroWebServer restroWebServer;
    private ImageView settings;
    FrameLayout settingsContainer;
    private ArrayAdapter simpleAdapter;
    private Animation slidedown;
    private StringBuilder stringBuilder;
    private ImageButton tvReset;
    private TextView tvUserSigninOptions;
    private TextView tv_invalidcode;
    private String username;
    private RestaurantWebService.LoginRequest webService;
    private Animation zoomAnimation;
    private String BaseURL = "";
    private Boolean lockdevice = true;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityGingerbread, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setContentView(R.layout.activity_login);
        this.deviceLock = new DeviceLock(this);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        if (!prefs.getBoolean("firstTime", false)) {
            LockDevice();
            SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("firstTime", true);
            editor.commit();
        }
        this.slidedown = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slidedown_login);
        this.fadein = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fadein);
        this.editUsername = (EditText) findViewById(R.id.et_username);
        this.editPassword = (EditText) findViewById(R.id.et_password);
        this.btLogin = (Button) findViewById(R.id.bt_login);
        this.btUser = (Button) findViewById(R.id.bt_user);
        this.btPinLogin = (Button) findViewById(R.id.bt_pin_login);
        this.btSiginOptions = (TextView) findViewById(R.id.bt_signin_options);
        this.gridView = (GridView) findViewById(R.id.gv_pin_login);
        this.layoutPinLogin = (LinearLayout) findViewById(R.id.layout_pin_login);
        this.layoutUserLogin = (LinearLayout) findViewById(R.id.layout_user_login);
        this.layoutPin = (LinearLayout) findViewById(R.id.layout_pin);
        this.tvUserSigninOptions = (TextView) findViewById(R.id.login_user_signin_options);
        this.editPinNo = (EditText) findViewById(R.id.et_pin);
        this.tv_invalidcode = (TextView) findViewById(R.id.tv_invalid);
        this.settings = (ImageView) findViewById(R.id.settings_icon);
        this.preference = new Preferences(this);
        this.tvReset = (ImageButton) findViewById(R.id.ib_reset);
        this.app_info = (ImageView) findViewById(R.id.ic_app_version);
        this.settingsContainer = (FrameLayout) findViewById(R.id.setting_container);
        this.restaurantDatabase = new RestaurantDatabase();
        this.itemgroupDbs = new ArrayList();
        this.btLogin.setOnClickListener(this);
        this.btUser.setOnClickListener(this);
        this.btPinLogin.setOnClickListener(this);
        this.btSiginOptions.setOnClickListener(this);
        this.tvUserSigninOptions.setOnClickListener(this);
        this.stringBuilder = new StringBuilder();
        this.numpadDigits = new String[]{"1", "2", "3", "4", "5", "6", "7", "8", "9", "C", "0", "D"};
        this.simpleAdapter = new ArrayAdapter(getApplicationContext(), R.layout.item_login_pin, this.numpadDigits);
        this.zoomAnimation = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.zoomin);
        this.gridView.setNumColumns(3);
        this.gridView.setAdapter((ListAdapter) this.simpleAdapter);
        this.gridView.setColumnWidth(1);
        this.lockdevice = true;
        this.tvReset.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Util.SetIP(LoginActivity.this);
            }
        });
        this.app_info.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                String currentVersion = LoginActivity.getAppVersion(LoginActivity.this);
                AlertDialog.Builder alertbox = new AlertDialog.Builder(LoginActivity.this);
                alertbox.setTitle(Html.fromHtml("<font color='black'>Restro Order</font>"));
                alertbox.setMessage("App Version " + String.valueOf(currentVersion));
                alertbox.setIcon(R.drawable.ic_info);
                alertbox.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                    }
                });
                AlertDialog alertDialog = alertbox.create();
                alertDialog.show();
            }
        });
        this.app_info.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                LoginActivity.this.flag = LoginActivity.this.preference.getDevicePswd();
                if (!LoginActivity.this.flag.isEmpty()) {
                    LoginActivity.this.getpasswordDialog(1);
                    return false;
                }
                LoginActivity.this.LockDevice();
                return false;
            }
        });
        this.settings.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LoginActivity.this.settingsContainer.getVisibility() == 0) {
                    LoginActivity.this.settingsContainer.setVisibility(8);
                    return;
                }
                LoginActivity.this.settingsContainer.setVisibility(0);
                SettingsFragment settingsFragment = new SettingsFragment();
                LoginActivity.this.getSupportFragmentManager().beginTransaction().addToBackStack(null).replace(R.id.setting_container, settingsFragment).commit();
            }
        });
        this.restroWebServer = new RestroWebServer(8000, this);
        this.DeviceID = Util.getIpAccess(getApplicationContext()) + "8000";
        Log.e("IPADDRESS", this.DeviceID);
        this.preference.setDeviceId(this.DeviceID);
        try {
            this.restroWebServer.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.preference.getBaseUrl().equals("")) {
            Util.SetIP(this);
        }
        if (this.preference.getPreferencesString(Constants.PREF_LOGIN) != null) {
            loginSuccess(this.preference.getPreferencesString(Constants.PREF_LOGIN));
            return;
        }
        this.gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch (position) {
                    case 0:
                        LoginActivity.this.stringBuilder.append(1);
                        break;
                    case 1:
                        LoginActivity.this.stringBuilder.append(2);
                        break;
                    case 2:
                        LoginActivity.this.stringBuilder.append(3);
                        break;
                    case 3:
                        LoginActivity.this.stringBuilder.append(4);
                        break;
                    case 4:
                        LoginActivity.this.stringBuilder.append(5);
                        break;
                    case 5:
                        LoginActivity.this.stringBuilder.append(6);
                        break;
                    case 6:
                        LoginActivity.this.stringBuilder.append(7);
                        break;
                    case 7:
                        LoginActivity.this.stringBuilder.append(8);
                        break;
                    case 8:
                        LoginActivity.this.stringBuilder.append(9);
                        break;
                    case 9:
                        LoginActivity.this.stringBuilder.delete(0, LoginActivity.this.stringBuilder.length());
                        break;
                    case 10:
                        LoginActivity.this.stringBuilder.append(0);
                        break;
                    case 11:
                        if (LoginActivity.this.stringBuilder.length() > 0) {
                            LoginActivity.this.stringBuilder.deleteCharAt(LoginActivity.this.stringBuilder.length() - 1);
                        }
                        break;
                }
                LoginActivity.this.editPinNo.setText(LoginActivity.this.stringBuilder.toString());
            }
        });
        this.editPinNo.setFocusable(false);
        this.editPinNo.addTextChangedListener(new TextWatcher() { // from class: com.danfe.restaurantapp1.LoginActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                LoginActivity.this.editPinNo.setVisibility(0);
                LoginActivity.this.tv_invalidcode.setVisibility(8);
                int length = LoginActivity.this.editPinNo.getText().toString().trim().length();
                if (length == 4) {
                    LoginActivity.this.pinNo = LoginActivity.this.editPinNo.getText().toString().trim();
                    LoginActivity.this.btPinLogin.callOnClick();
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }
        });
        this.progress = new ProgressDialog(this);
        this.progress.setCanceledOnTouchOutside(false);
        this.progress.setTitle("Loading");
        this.progress.setMessage("Please wait while we sign you in...");
    }

    public void LockDevice() {
        AlertDialog.Builder alertbox = new AlertDialog.Builder(this);
        alertbox.setTitle(Html.fromHtml("<font color='black'>Restro Order</font>"));
        alertbox.setMessage("Do you want to LOCK the App ");
        alertbox.setIcon(R.drawable.ic_info);
        alertbox.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                LoginActivity.this.initializeLock();
                LoginActivity.this.getpasswordDialog(0);
            }
        });
        alertbox.setNegativeButton("CANCEL", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        });
        AlertDialog alertDialog = alertbox.create();
        alertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getpasswordDialog(final int i) {
        final AlertDialog alertDialog = new AlertDialog.Builder(this).create();
        View view = LayoutInflater.from(this).inflate(R.layout.password_dialog, (ViewGroup) null);
        final EditText password = (EditText) view.findViewById(R.id.et_pswd);
        final EditText confPassword = (EditText) view.findViewById(R.id.et_confpswd);
        if (i == 1) {
            confPassword.setVisibility(8);
        }
        Button done = (Button) view.findViewById(R.id.bt_pswdDone);
        Button btPasswordCancel = (Button) view.findViewById(R.id.bt_pswdCancel);
        btPasswordCancel.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LoginActivity.this.preference.setDeviceLock(false);
                alertDialog.dismiss();
            }
        });
        done.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.LoginActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (i == 0) {
                    if (password.getText().toString().length() < 4) {
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Password Must be at least four characters long", 0).show();
                        return;
                    }
                    if (password.getText().toString().equals(confPassword.getText().toString())) {
                        LoginActivity.this.preference.setDevicePswd(password.getText().toString());
                        alertDialog.dismiss();
                        LoginActivity.this.preference.setDeviceLock(true);
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Password Set", 0).show();
                        return;
                    }
                    Toast.makeText(LoginActivity.this.getApplicationContext(), "Password Do Not Match", 0).show();
                    return;
                }
                if (i == 1 && password.getText().toString().equals(LoginActivity.this.preference.getDevicePswd())) {
                    if (Boolean.TRUE.equals(LoginActivity.this.preference.getDeviceLock())) {
                        LoginActivity.this.preference.setDeviceLock(false);
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Device Lock Deactivated", 0).show();
                    } else if (Boolean.FALSE.equals(LoginActivity.this.preference.getDeviceLock())) {
                        LoginActivity.this.preference.setDeviceLock(true);
                        Toast.makeText(LoginActivity.this.getApplicationContext(), "Device Lock Activated", 0).show();
                    }
                    alertDialog.dismiss();
                }
            }
        });
        alertDialog.setView(view);
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    public void loginSuccess(String username) {
        if (!username.equalsIgnoreCase("Dear Customer")) {
            String userRole = this.preference.getPreferencesString(Constants.PREF_USERROLE).toLowerCase();
            String[] userRoleArray = userRole.split(",");
            List<String> userRoles = Arrays.asList(userRoleArray);
            for (int m = 0; m < userRoles.size(); m++) {
                if (userRoles.get(m).contains("kitchenorder") || userRoles.get(m).contains("barorder") || userRoles.get(m).contains("bakeryorder")) {
                    Intent x = new Intent(this, (Class<?>) OrderItemDetailsActivity.class);
                    x.putExtra("USER_ROLE", userRoles.get(m));
                    this.lockdevice = false;
                    startActivity(x);
                    finish();
                    return;
                }
                Intent i = new Intent(this, (Class<?>) TableActivity.class);
                i.putExtra("username", username);
                this.lockdevice = false;
                startActivity(i);
                finish();
            }
            return;
        }
        Intent i2 = new Intent(this, (Class<?>) MainActivity.class);
        i2.putExtra("username", username);
        i2.putExtra("roomno", 4);
        i2.putExtra("roomid", 1);
        i2.putExtra("tableno", 2);
        i2.putExtra("size", 0);
        i2.putExtra("tableId", 74);
        i2.putExtra("isTable", true);
        startActivity(i2);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    class MenuAsync extends AsyncTask<Void, Void, Void> {
        MenuAsync() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... params) {
            try {
                Log.e("main activity", "async");
                new TableService(LoginActivity.this.getApplicationContext());
                return null;
            } catch (Exception e) {
                Log.e("table error", e.getMessage());
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void result) {
            super.onPostExecute(result);
            Log.e("completed async", String.valueOf(result));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuAsync menuAsync = new MenuAsync();
        menuAsync.execute(new Void[0]);
        switch (view.getId()) {
            case R.id.bt_signin_options /* 2131689630 */:
                this.layoutUserLogin.setVisibility(0);
                this.layoutUserLogin.startAnimation(this.slidedown);
                this.slidedown.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.LoginActivity.12
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        LoginActivity.this.layoutPinLogin.setVisibility(8);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }
                });
                break;
            case R.id.bt_pin_login /* 2131689639 */:
                PinLogin(this.pinNo);
                break;
            case R.id.bt_login /* 2131689644 */:
                this.progress.show();
                this.BaseURL = Util.getBaseUrl(this);
                this.username = this.editUsername.getText().toString();
                this.password = this.editPassword.getText().toString();
                if (this.username.equals("") && this.password.equals("")) {
                    Util.showErrorMessage("username and password empty", this);
                } else {
                    JsonObject obj = new JsonObject();
                    try {
                        obj.addProperty("username", this.username);
                        obj.addProperty("password", this.password);
                        obj.addProperty("WaiterIP", this.DeviceID);
                        Log.e("json", obj.toString());
                    } catch (Exception je) {
                        Log.e("json exception", je.getMessage());
                    }
                    this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
                    this.webService = (RestaurantWebService.LoginRequest) this.restAdapter.create(RestaurantWebService.LoginRequest.class);
                    this.webService.loginRequest(obj, new Callback<LoginResponse>() { // from class: com.danfe.restaurantapp1.LoginActivity.11
                        @Override // retrofit.Callback
                        public void success(LoginResponse loginResponse, Response response) {
                            LoginActivity.this.loadMenus();
                            LoginActivity.this.progress.dismiss();
                            if (loginResponse != null) {
                                Util.showLog("LOGINRESPONSE", loginResponse.getUsername() + ",Roles" + loginResponse.getRoleNames());
                                try {
                                    if (loginResponse.getStatus().equals("Success")) {
                                        Log.e("success", "true");
                                        LoginActivity.this.preference.setPreferencesString(Constants.PREF_LOGIN, loginResponse.getUsername());
                                        Boolean userFound = false;
                                        String userRole = loginResponse.getRoleNames().toString().toLowerCase();
                                        String[] userRoleArray = userRole.split(",");
                                        List<String> userRoles = Arrays.asList(userRoleArray);
                                        LoginActivity.this.preference.setPreferencesString(Constants.PREF_USERROLE, loginResponse.getRoleNames());
                                        for (int m = 0; m < userRoles.size(); m++) {
                                            if (userRoles.get(m).contains("kitchenorder") || userRoles.get(m).contains("barorder") || userRoles.get(m).contains("bakeryorder") || userRoles.get(m).contains("pizza maker")) {
                                                Boolean.valueOf(true);
                                                Intent x = new Intent(LoginActivity.this, (Class<?>) OrderItemDetailsActivity.class);
                                                x.putExtra("USER_ROLE", userRoles.get(m));
                                                LoginActivity.this.startActivity(x);
                                                LoginActivity.this.finish();
                                                return;
                                            }
                                            userFound = false;
                                        }
                                        if (!userFound.booleanValue()) {
                                            LoginActivity.this.loginSuccess(loginResponse.getUsername());
                                        }
                                    } else if (loginResponse.getStatus().equalsIgnoreCase("LoggedIn")) {
                                        Util.showErrorMessage("Please log out from previous device", LoginActivity.this);
                                    } else {
                                        Util.showErrorMessage("Login fail. Invalid credentials", LoginActivity.this);
                                    }
                                } catch (Exception e) {
                                    Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", LoginActivity.this);
                                }
                            }
                            LoginActivity.this.progress.dismiss();
                        }

                        @Override // retrofit.Callback
                        public void failure(RetrofitError error) {
                            LoginActivity.this.progress.dismiss();
                            try {
                                Util.showLog("data", String.valueOf(error));
                                Util.showErrorMessage("RetrofitError OOPS!!! Something went wrong! please try again.", LoginActivity.this);
                            } catch (Exception e) {
                            }
                        }
                    });
                }
                break;
            case R.id.bt_user /* 2131689645 */:
                loginSuccess("Dear Customer");
                break;
            case R.id.login_user_signin_options /* 2131689646 */:
                this.layoutPinLogin.setVisibility(0);
                this.layoutPinLogin.startAnimation(this.slidedown);
                this.slidedown.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.LoginActivity.13
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                        LoginActivity.this.layoutUserLogin.setVisibility(8);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }
                });
                break;
        }
    }

    private void PinLogin(String pin) {
        this.progress.show();
        RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(Util.getBaseUrl(getApplicationContext())).build();
        JsonObject object = new JsonObject();
        try {
            object.addProperty("pin", pin);
            object.addProperty("WaiterIP", this.DeviceID);
            Log.e("json", object.toString());
        } catch (Exception je) {
            Log.e("json exception", je.getMessage());
        }
        RestaurantWebService.LoginPin loginPinDetails = (RestaurantWebService.LoginPin) restAdapter.create(RestaurantWebService.LoginPin.class);
        Log.e("pin", String.valueOf(pin));
        loginPinDetails.LoginPin(object, new Callback<LoginPinResponse>() { // from class: com.danfe.restaurantapp1.LoginActivity.14
            @Override // retrofit.Callback
            public void success(LoginPinResponse loginPinResponse, Response response) {
                if (loginPinResponse != null) {
                    String message = loginPinResponse.getMessage();
                    loginPinResponse.getStatusCode().intValue();
                    LoginActivity.this.loginData = loginPinResponse.getData();
                    LoginActivity.this.loadMenus();
                    try {
                        if (message.equals("Success")) {
                            Log.e("success", "true");
                            LoginActivity.this.preference.setPreferencesString(Constants.PREF_LOGIN, LoginActivity.this.loginData.getUserName());
                            LoginActivity.this.preference.setEnableMenuImage(Boolean.parseBoolean(LoginActivity.this.loginData.getOrderMenuImageshow()));
                            LoginActivity.this.preference.setEnableOrderGrid(Boolean.parseBoolean(LoginActivity.this.loginData.getOrderMenuListType()));
                            Boolean userFound = false;
                            String userRole = LoginActivity.this.loginData.getRoles().toString().toLowerCase();
                            String[] userRoleArray = userRole.split(",");
                            List<String> userRoles = Arrays.asList(userRoleArray);
                            LoginActivity.this.preference.setPreferencesString(Constants.PREF_USERROLE, LoginActivity.this.loginData.getRoles());
                            for (int m = 0; m < userRoles.size(); m++) {
                                if (userRoles.get(m).contains("kitchenorder") || userRoles.get(m).contains("barorder") || userRoles.get(m).contains("bakeryorder") || userRoles.get(m).contains("pizza maker")) {
                                    Boolean.valueOf(true);
                                    Intent x = new Intent(LoginActivity.this, (Class<?>) OrderItemDetailsActivity.class);
                                    x.putExtra("USER_ROLE", userRoles.get(m));
                                    LoginActivity.this.startActivity(x);
                                    LoginActivity.this.finish();
                                    return;
                                }
                                userFound = false;
                            }
                            if (!userFound.booleanValue()) {
                                LoginActivity.this.loginSuccess(LoginActivity.this.loginData.getUserName());
                            }
                        } else if (message.equalsIgnoreCase("LoggedIn")) {
                            Util.showErrorMessage("Please log out from previous device", LoginActivity.this);
                        } else {
                            Animation shake = AnimationUtils.loadAnimation(LoginActivity.this.getApplicationContext(), R.anim.shake);
                            LoginActivity.this.stringBuilder.delete(0, LoginActivity.this.stringBuilder.length());
                            LoginActivity.this.editPinNo.setText("");
                            LoginActivity.this.editPinNo.startAnimation(shake);
                            Util.showErrorMessageWithTitle(message, "Login fail,Invalid credentials ", LoginActivity.this);
                        }
                    } catch (Exception e) {
                        Util.showRetrofitErrorMessage("OOPS!!! Something went wrong! please try again.", LoginActivity.this);
                    }
                } else {
                    Log.e(LoginActivity.TAG, "Error: coccured");
                }
                LoginActivity.this.progress.dismiss();
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    LoginActivity.this.progress.dismiss();
                    Util.showRetrofitErrorMessage("RetrofitError Couldn't login with your pin: " + Util.Api.getErrorMessage(error), LoginActivity.this.getApplicationContext());
                } catch (Exception e) {
                }
            }
        });
    }

    public String registerGCM() {
        Log.e("RegisterActivity", "starts");
        this.gcm = GoogleCloudMessaging.getInstance(this);
        this.regId = getRegistrationId(getApplicationContext());
        if (TextUtils.isEmpty(this.regId)) {
            Log.e("regid gen", String.valueOf(this.regId));
            RegisterInBackground registerInBackground = new RegisterInBackground();
            registerInBackground.execute(new Void[0]);
            Log.d("RegisterActivity", "registerGCM - successfully registered with GCM server - regId: " + this.regId);
        } else {
            Toast.makeText(getApplicationContext(), "RegId already available. RegId: " + this.regId, 1).show();
        }
        return this.regId;
    }

    private String getRegistrationId(Context context) {
        SharedPreferences prefs = getSharedPreferences(MainActivity.class.getSimpleName(), 0);
        String registrationId = prefs.getString(REG_ID, "");
        if (registrationId.isEmpty()) {
            Log.i(TAG, "Registration not found.");
            return "";
        }
        String registeredVersion = prefs.getString(APP_VERSION, String.valueOf(Integer.MIN_VALUE));
        String currentVersion = getAppVersion(context);
        if (registeredVersion != currentVersion) {
            Log.i(TAG, "App version changed.");
            return "";
        }
        return registrationId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getAppVersion(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("RegisterActivity", "I never expected this! Going down, going down!" + e);
            throw new RuntimeException(e);
        }
    }

    private class RegisterInBackground extends AsyncTask<Void, String, String> {
        private RegisterInBackground() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... params) {
            String msg;
            try {
                if (LoginActivity.this.gcm == null) {
                    LoginActivity.this.gcm = GoogleCloudMessaging.getInstance(LoginActivity.this.getApplicationContext());
                }
                LoginActivity.this.regId = LoginActivity.this.gcm.register(ApplicationConstants.GOOGLE_PROJ_ID);
                Log.d("RegisterActivity", "registerInBackground - regId: " + LoginActivity.this.regId);
                msg = "Device registered, registration ID=" + LoginActivity.this.regId;
            } catch (IOException ex) {
                msg = "Error :" + ex.getMessage();
                Log.d("RegisterActivity", "Error: " + msg);
            }
            Log.d("RegisterActivity", "AsyncTask completed: " + msg);
            return msg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String msg) {
            Toast.makeText(LoginActivity.this.getApplicationContext(), "Registered with GCM Server." + msg, 1).show();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Util.showExitConfirmationDialog(this);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.progress != null && this.progress.isShowing()) {
            this.progress.dismiss();
        }
        this.lockdevice = false;
    }

    private void storeRegistrationId(Context context, String regId) {
        String appVersion = getAppVersion(context);
        Log.i(TAG, "Saving regId on app version " + appVersion);
        SharedPreferences.Editor editor = this.preferences.edit();
        editor.putString(REG_ID, regId);
        editor.putString(APP_VERSION, appVersion);
        editor.commit();
    }

    public void initializeLock() {
        Intent intent = new Intent("android.app.action.ADD_DEVICE_ADMIN");
        intent.putExtra("android.app.extra.DEVICE_ADMIN", this.deviceLock.getComponentName());
        intent.putExtra("android.app.extra.ADD_EXPLANATION", "To give permission for locking device");
        startActivityForResult(intent, 10);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != 10) {
            initializeLock();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    @RequiresApi(api = 16)
    protected void onStop() {
        super.onStop();
        if (Boolean.TRUE.equals(this.lockdevice) && Boolean.TRUE.equals(this.preference.getDeviceLock())) {
            finishAffinity();
            this.deviceLock.getDevicePolicyManager().lockNow();
        }
    }

    public void loadMenus() {
        this.BaseURL = Util.getBaseUrl(getApplicationContext());
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).build();
        this.menuwebService = (RestaurantWebService.ItemGroupWebService) this.restAdapter.create(RestaurantWebService.ItemGroupWebService.class);
        this.menuwebService.getItemGroups(new Callback<MenuItemGroup>() { // from class: com.danfe.restaurantapp1.LoginActivity.15
            @Override // retrofit.Callback
            public void success(MenuItemGroup itemgroupResult, Response response) {
                if (itemgroupResult.getStatusCode().intValue() == 200) {
                    LoginActivity.this.itemgroupList = itemgroupResult.getItemgroup();
                    LoginActivity.this.restaurantDatabase.insertItemgroup(LoginActivity.this, LoginActivity.this.itemgroupList);
                    LoginActivity.this.itemgroupDbs = LoginActivity.this.restaurantDatabase.loadAllItems(LoginActivity.this, 0, 1);
                    return;
                }
                String message = itemgroupResult.getMessage();
                Util.showRetrofitErrorMessage("Error Menu Reload Items: " + message, LoginActivity.this);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                try {
                    Util.showRetrofitErrorMessage("RetrofitError Load Menu Items: " + Util.Api.getErrorMessage(error), LoginActivity.this.getApplicationContext());
                } catch (Exception e) {
                }
            }
        });
    }
}
