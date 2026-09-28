package com.danfe.restaurantapp1.helper;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AlertDialog;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.danfe.restaurantapp1.BuildConfig;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import retrofit.RetrofitError;

/* JADX INFO: loaded from: classes.dex */
public class Util {

    public static class Api {
        public static String getErrorMessage(RetrofitError re) {
            switch (re.getKind()) {
                case CONVERSION:
                    return "Error on conversion, contact developer!";
                case HTTP:
                    return "Error while connecting to server, try again";
                case UNEXPECTED:
                    return "An internal error occurred while attempting to execute the request, try again";
                case NETWORK:
                    return "Connectivity issue, please check your network status";
                default:
                    return "Unexpected error, please try again";
            }
        }
    }

    public static void hideSoftKeyboard(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 0);
    }

    public static String getIpAccess(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
        String formatedIpAddress = String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255));
        return "http://" + formatedIpAddress + ":";
    }

    public static void showErrorMessage(String msg, Context context) {
        new AlertDialog.Builder(context).setTitle(" ").setMessage("\n" + msg).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Log.d("###", "notification finish");
            }
        }).setIcon(com.danfe.restaurantapp1.R.drawable.ic_dialog_alert).show();
    }

    public static void showSuccessDialog(String msg, Context context) {
        new AlertDialog.Builder(context).setTitle("Extra Quantity Error").setMessage("\n" + msg).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        }).setIcon(com.danfe.restaurantapp1.R.drawable.ic_dialog_alert).show();
    }

    public static void showGuestAddedDialog(String msg, Context context) {
        new AlertDialog.Builder(context).setTitle(Html.fromHtml("<font color='#FF7F27'> <b> No. of Split Information! </b> </font")).setMessage("\n" + msg).setIcon(com.danfe.restaurantapp1.R.drawable.ic_dialog_alert).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        }).show().setCancelable(false);
    }

    public static String getBaseUrl(Context context) {
        Preferences prefs = new Preferences(context);
        Log.e("baseUrl1", "");
        if (!prefs.getBaseUrl().equals("")) {
            Log.e("baseUrl2", "");
            String BaseUrl = "http://" + prefs.getBaseUrl() + "/Modules";
            return BaseUrl;
        }
        return "192.11.1.1";
    }

    public static void showRetrofitErrorMessage(String Message, final Context context) {
        String message;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        if (Message != null) {
            message = Message;
        } else {
            message = "Oops!! Something Went Wrong.Please Try Again Later.";
        }
        if (isConnection(context)) {
            builder.setTitle("Error").setMessage(message).setPositiveButton("Change Ip Settings", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Util.SetIP(context);
                }
            }).setNegativeButton("Okay", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            }).show();
        } else {
            builder.setTitle("Error").setMessage(message + "\n\n" + ((Object) Html.fromHtml("<font color='#01050C'> Note: Please Check Your Internet Connection.</font>"))).setPositiveButton("Change Ip Settings", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.8
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    Util.SetIP(context);
                }
            }).setNeutralButton("Open Wifi Setting", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    context.startActivity(new Intent("android.net.wifi.PICK_WIFI_NETWORK"));
                }
            }).setNegativeButton("Okay", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            }).show();
        }
    }

    public static void showErrorMessageWithTitle(String message, String title, Context context) {
        new AlertDialog.Builder(context).setTitle(Html.fromHtml("<font color=black>" + title + "</font>")).setMessage(message).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                Log.d("###", "notification finish");
            }
        }).setIcon(com.danfe.restaurantapp1.R.drawable.ic_dialog_alert).show();
    }

    public static void showError(String message, String title, final Context context) {
        new AlertDialog.Builder(context).setTitle(Html.fromHtml("<font color=black>" + title + "</font>")).setMessage(message).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                ((Activity) context).finish();
                Log.d("###", "notification finish");
            }
        }).setIcon(com.danfe.restaurantapp1.R.drawable.ic_dialog_alert).show();
    }

    public static boolean isConnection(Context context) {
        ConnectivityManager conMgr = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo netInfo = conMgr.getActiveNetworkInfo();
        return netInfo != null;
    }

    public static void SetIP(Context context) {
        final Preferences preference = new Preferences(context);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(Html.fromHtml("<font color='black'>IP Address</font>"));
        builder.setMessage("Enter IP Address(Current IP is " + String.valueOf(preference.getBaseUrl() + ")"));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(-1, -2);
        RelativeLayout.LayoutParams rlp1 = new RelativeLayout.LayoutParams(-2, -2);
        rlp1.addRule(11);
        rlp1.setMargins(0, 10, 10, 0);
        final EditText input = new EditText(context);
        ImageView clearbtn = new ImageView(context);
        clearbtn.setImageResource(com.danfe.restaurantapp1.R.drawable.ic_clear_black_24dp);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        input.setHint("Ip Address");
        relativeLayout.setLayoutParams(lp);
        clearbtn.setLayoutParams(rlp1);
        input.setLayoutParams(rlp);
        input.setSingleLine(true);
        input.setMaxLines(1);
        input.setText(String.valueOf(preference.getBaseUrl()));
        input.setOnTouchListener(new View.OnTouchListener() { // from class: com.danfe.restaurantapp1.helper.Util.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (input.hasFocus() && String.valueOf(preference.getBaseUrl()).equals("null")) {
                    input.setText("");
                    return false;
                }
                return false;
            }
        });
        if (input.getText().toString().equals("")) {
            clearbtn.setVisibility(8);
        } else {
            clearbtn.setVisibility(0);
        }
        clearbtn.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                input.setText("");
                preference.clearPreference();
            }
        });
        relativeLayout.addView(input);
        relativeLayout.addView(clearbtn);
        builder.setView(relativeLayout);
        builder.setIcon(com.danfe.restaurantapp1.R.drawable.ic_logo);
        builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.13
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                String password = input.getText().toString();
                Log.e("before ip", Constants.WEB_SERVICE_BASE_URL);
                Constants.WEB_SERVICE_BASE_URL = "http://" + password + "/Modules";
                preference.setBaseUrl(password);
                Log.e("after ip", Constants.WEB_SERVICE_BASE_URL);
            }
        });
        builder.show();
    }

    public static String getCostCenterType(String userRole) {
        if (userRole.toLowerCase().toLowerCase().equals("kitchenorder")) {
            return "Kot";
        }
        if (userRole.toLowerCase().equals("barorder")) {
            return "Bar";
        }
        if (userRole.toLowerCase().equals("bakeryorder")) {
            return "Bakery";
        }
        if (userRole.toLowerCase().equals("pizza maker")) {
            return "Pizza";
        }
        return "Default";
    }

    public static boolean isAppIsInBackground(Context context) {
        boolean isInBackground = true;
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        if (Build.VERSION.SDK_INT > 20) {
            List<ActivityManager.RunningAppProcessInfo> runningProcesses = am.getRunningAppProcesses();
            for (ActivityManager.RunningAppProcessInfo processInfo : runningProcesses) {
                if (processInfo.importance == 100) {
                    for (String activeProcess : processInfo.pkgList) {
                        if (activeProcess.equals(context.getPackageName())) {
                            isInBackground = false;
                        }
                    }
                }
            }
            return isInBackground;
        }
        List<ActivityManager.RunningTaskInfo> taskInfo = am.getRunningTasks(1);
        ComponentName componentInfo = taskInfo.get(0).topActivity;
        if (!componentInfo.getPackageName().equals(context.getPackageName())) {
            return true;
        }
        return false;
    }

    public static void showBillNotAvailable(Context context) {
        LayoutInflater layoutInflater = LayoutInflater.from(context);
        View DialogView = layoutInflater.inflate(com.danfe.restaurantapp1.R.layout.dialog_bill_not_available, (ViewGroup) null);
        final Animation animation = AnimationUtils.loadAnimation(context, com.danfe.restaurantapp1.R.anim.zoomin);
        final android.support.v7.app.AlertDialog alertDialog = new AlertDialog.Builder(context).create();
        alertDialog.setView(DialogView);
        final Button btnOK = (Button) DialogView.findViewById(com.danfe.restaurantapp1.R.id.btn_dialog_ok_dismiss);
        btnOK.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.14
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                btnOK.startAnimation(animation);
                animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.helper.Util.14.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        alertDialog.dismiss();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }
                });
            }
        });
        alertDialog.getWindow().setBackgroundDrawable(context.getResources().getDrawable(com.danfe.restaurantapp1.R.drawable.dialog_drawable));
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    public static void showBillNotCleared(Context context, boolean merge) {
        LayoutInflater layoutInflater = LayoutInflater.from(context);
        View DialogView = layoutInflater.inflate(com.danfe.restaurantapp1.R.layout.dialog_bill_not_cleared, (ViewGroup) null);
        final Animation animation = AnimationUtils.loadAnimation(context, com.danfe.restaurantapp1.R.anim.zoomin);
        final android.support.v7.app.AlertDialog alertDialog = new AlertDialog.Builder(context).create();
        alertDialog.setView(DialogView);
        final Button btnRemoveMerge = (Button) DialogView.findViewById(com.danfe.restaurantapp1.R.id.btn_dialog_remove_merge);
        final Button btnOK = (Button) DialogView.findViewById(com.danfe.restaurantapp1.R.id.btn_dialog_ok_dismiss);
        if (!merge) {
            btnRemoveMerge.setVisibility(8);
        }
        btnRemoveMerge.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.15
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                btnRemoveMerge.startAnimation(animation);
                animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.helper.Util.15.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        alertDialog.dismiss();
                        CheckPinCode checkPinCode = new CheckPinCode();
                        checkPinCode.checkPinCodemethod(alertDialog.getContext(), "mergeCancel");
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }
                });
            }
        });
        btnOK.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.16
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                btnOK.startAnimation(animation);
                animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.helper.Util.16.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        alertDialog.dismiss();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }
                });
            }
        });
        alertDialog.getWindow().setBackgroundDrawable(context.getResources().getDrawable(com.danfe.restaurantapp1.R.drawable.dialog_drawable));
        alertDialog.setCancelable(false);
        alertDialog.show();
    }

    public static String getDateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        return dateFormat.format(date);
    }

    public static String nullValidator(String validationString) {
        if (validationString == null || validationString.equals("")) {
            return "-";
        }
        return validationString;
    }

    public static void showLog(String TAG, String message) {
        if (BuildConfig.DEBUG) {
            Log.e(TAG, message);
        }
    }

    public static void showExitConfirmationDialog(final Context context) {
        LayoutInflater layoutInflater = LayoutInflater.from(context);
        View DialogView = layoutInflater.inflate(com.danfe.restaurantapp1.R.layout.dialog_exit, (ViewGroup) null);
        final Animation animation = AnimationUtils.loadAnimation(context, com.danfe.restaurantapp1.R.anim.zoomin);
        final DeviceLock deviceLock = new DeviceLock(context);
        final android.support.v7.app.AlertDialog alertDialog = new AlertDialog.Builder(context).create();
        alertDialog.setView(DialogView);
        final Button btnCancel = (Button) DialogView.findViewById(com.danfe.restaurantapp1.R.id.btn_dialog_exit_cancel);
        final Button btnConfirm = (Button) DialogView.findViewById(com.danfe.restaurantapp1.R.id.btn_dialog_exit_confirm);
        final Preferences preference = new Preferences(context);
        btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.17
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                btnCancel.startAnimation(animation);
                animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.helper.Util.17.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        alertDialog.dismiss();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }
                });
            }
        });
        btnConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.Util.18
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                btnConfirm.startAnimation(animation);
                animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.danfe.restaurantapp1.helper.Util.18.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    @RequiresApi(api = 16)
                    public void onAnimationEnd(Animation animation2) {
                        ((Activity) context).finish();
                        alertDialog.dismiss();
                        if (Boolean.TRUE.equals(preference.getDeviceLock())) {
                            ((Activity) context).finishAffinity();
                            deviceLock.getDevicePolicyManager().lockNow();
                        }
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }
                });
            }
        });
        alertDialog.getWindow().setBackgroundDrawable(context.getResources().getDrawable(com.danfe.restaurantapp1.R.drawable.dialog_drawable));
        alertDialog.setCancelable(false);
        alertDialog.show();
    }
}
