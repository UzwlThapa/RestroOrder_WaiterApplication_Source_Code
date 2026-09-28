package com.danfe.restaurantapp1.helper;

import android.app.AlertDialog;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.danfe.restaurantapp1.Interface.CheckPinDetailsInterface;
import com.danfe.restaurantapp1.ItemShiftActivity;
import com.danfe.restaurantapp1.MainActivity;
import com.danfe.restaurantapp1.R;
import com.danfe.restaurantapp1.TableActivity;
import com.danfe.restaurantapp1.TableSelectionActivity;
import com.danfe.restaurantapp1.helper.Util;
import com.danfe.restaurantapp1.service.RestaurantWebService;
import com.google.gson.JsonObject;
import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CheckPinCode {
    private AlertDialog alertDialog;
    private Button btn_ok;
    private RestaurantWebService.CheckPinDetails checkPinDetails;
    private CheckPinDetailsInterface checkPinDetailsInterface;
    private Context context;
    private View dialogView;
    private EditText editText;
    private GridView gvNumbers;
    private LayoutInflater inflater;
    private TextView iv_cancel;
    private String[] numpadDigits;
    private Preferences preference;
    private RestAdapter restAdapter;
    private ArrayAdapter simpleAdapter;
    private StringBuilder stringBuilder;
    private TextView tv_invalidcode;
    private Animation zoomAnimation;

    public void checkPinCodemethod(final Context context, final String orderType) {
        new Preferences(context);
        final String[] pin = {""};
        final String[] usernamepin = {""};
        final String[] userRole = {""};
        this.stringBuilder = new StringBuilder();
        this.numpadDigits = new String[]{"1", "2", "3", "4", "5", "6", "7", "8", "9", "Del", "0", "Ok"};
        this.simpleAdapter = new ArrayAdapter(context, R.layout.item_login_pin, R.id.tv_numbers, this.numpadDigits);
        this.zoomAnimation = AnimationUtils.loadAnimation(context, R.anim.zoomin);
        AlertDialog.Builder pinbuilder = new AlertDialog.Builder(context);
        LayoutInflater inflater = LayoutInflater.from(context);
        View dialogView = inflater.inflate(R.layout.dialog_pin, (ViewGroup) null);
        final EditText editText = (EditText) dialogView.findViewById(R.id.et_pin);
        final TextView tv_invalidcode = (TextView) dialogView.findViewById(R.id.tv_invalid);
        final Button btn_ok = (Button) dialogView.findViewById(R.id.btn_dialog_ok);
        this.iv_cancel = (TextView) dialogView.findViewById(R.id.iv_dialog_cancel);
        this.gvNumbers = (GridView) dialogView.findViewById(R.id.gv_pincode);
        this.gvNumbers.setCacheColorHint(0);
        this.gvNumbers.setScrollingCacheEnabled(false);
        this.gvNumbers.setNumColumns(3);
        this.gvNumbers.setAdapter((ListAdapter) this.simpleAdapter);
        this.gvNumbers.setColumnWidth(2);
        this.gvNumbers.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.danfe.restaurantapp1.helper.CheckPinCode.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch (position) {
                    case 0:
                        CheckPinCode.this.stringBuilder.append(1);
                        break;
                    case 1:
                        CheckPinCode.this.stringBuilder.append(2);
                        break;
                    case 2:
                        CheckPinCode.this.stringBuilder.append(3);
                        break;
                    case 3:
                        CheckPinCode.this.stringBuilder.append(4);
                        break;
                    case 4:
                        CheckPinCode.this.stringBuilder.append(5);
                        break;
                    case 5:
                        CheckPinCode.this.stringBuilder.append(6);
                        break;
                    case 6:
                        CheckPinCode.this.stringBuilder.append(7);
                        break;
                    case 7:
                        CheckPinCode.this.stringBuilder.append(8);
                        break;
                    case 8:
                        CheckPinCode.this.stringBuilder.append(9);
                        break;
                    case 9:
                        if (CheckPinCode.this.stringBuilder.length() > 0) {
                            CheckPinCode.this.stringBuilder.deleteCharAt(CheckPinCode.this.stringBuilder.length() - 1);
                        }
                        break;
                    case 10:
                        CheckPinCode.this.stringBuilder.append(0);
                        break;
                    case 11:
                        btn_ok.callOnClick();
                        break;
                }
                editText.setText(CheckPinCode.this.stringBuilder.toString());
            }
        });
        pinbuilder.setView(dialogView);
        pinbuilder.setCancelable(false);
        final AlertDialog dialogpin = pinbuilder.create();
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
        lp.copyFrom(dialogpin.getWindow().getAttributes());
        lp.width = 350;
        lp.height = -2;
        dialogpin.getWindow().setBackgroundDrawable(context.getResources().getDrawable(R.drawable.dialog_pincode));
        dialogpin.show();
        dialogpin.getWindow().setLayout(350, -2);
        editText.setFocusable(true);
        editText.addTextChangedListener(new TextWatcher() { // from class: com.danfe.restaurantapp1.helper.CheckPinCode.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                tv_invalidcode.setVisibility(8);
                editText.setVisibility(0);
                int length = editText.getText().toString().trim().length();
                if (length == 4) {
                    btn_ok.callOnClick();
                    btn_ok.setEnabled(false);
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }
        });
        Log.e("orderType", orderType);
        btn_ok.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.CheckPinCode.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                pin[0] = editText.getText().toString().trim();
                RestAdapter restAdapter = new RestAdapter.Builder().setEndpoint(Util.getBaseUrl(context)).build();
                RestaurantWebService.CheckPinDetails checkPinDetails = (RestaurantWebService.CheckPinDetails) restAdapter.create(RestaurantWebService.CheckPinDetails.class);
                Log.e("pin", String.valueOf(pin[0]));
                checkPinDetails.checkPinDetails(pin[0], new Callback<JsonObject>() { // from class: com.danfe.restaurantapp1.helper.CheckPinCode.3.1
                    @Override // retrofit.Callback
                    public void success(JsonObject jsonObject, Response response) {
                        try {
                            String message = jsonObject.get("message").toString();
                            String code = jsonObject.get("statusCode").toString();
                            int statusCode = Integer.parseInt(code);
                            if (statusCode == 200) {
                                usernamepin[0] = jsonObject.getAsJsonObject("data").get("UserName").toString();
                                userRole[0] = jsonObject.getAsJsonObject("data").get("Roles").toString();
                                String userRoleName = userRole[0];
                                String usernameData = usernamepin[0];
                                if (orderType.matches("sendOrder")) {
                                    ((MainActivity) context).SendOrder(usernameData, userRoleName);
                                } else if (orderType.matches("cancelOrder")) {
                                    if (userRole[0].contains("Void Bill")) {
                                        Log.e("userRole success: ", userRole[0]);
                                        ((MainActivity) context).CancelOrder(usernameData);
                                    } else {
                                        Util.showErrorMessageWithTitle("You don't have require permission to cancel order", "Cancel Order Failed ", context);
                                    }
                                } else if (orderType.matches(Constants.SHIFT_TABLE)) {
                                    ((TableSelectionActivity) context).ShiftTable(usernameData);
                                } else if (orderType.matches("mergeTable")) {
                                    ((TableActivity) context).MergeTable();
                                } else if (orderType.matches("mergeCancel")) {
                                    ((TableActivity) context).MergeCancel();
                                } else if (orderType.matches("payOrder")) {
                                    ((MainActivity) context).PayOrder();
                                } else if (orderType.matches(Constants.SHIFT_ITEM)) {
                                    ((ItemShiftActivity) context).ShiftItem(usernameData);
                                }
                                dialogpin.dismiss();
                                return;
                            }
                            Animation shake = AnimationUtils.loadAnimation(context, R.anim.shake);
                            CheckPinCode.this.stringBuilder.delete(0, CheckPinCode.this.stringBuilder.length());
                            editText.startAnimation(shake);
                            editText.setText("");
                            editText.setVisibility(4);
                            Util.showErrorMessageWithTitle(message, orderType + " fail,Invalid credentials ", context);
                        } catch (Exception e) {
                            Log.e("exc", e.getMessage().toString());
                        }
                    }

                    @Override // retrofit.Callback
                    public void failure(RetrofitError error) {
                        try {
                            Util.showRetrofitErrorMessage("Couldn't check your pin: " + Util.Api.getErrorMessage(error), context);
                        } catch (Exception e) {
                        }
                    }
                });
            }
        });
        this.iv_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.helper.CheckPinCode.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Toast.makeText(context, "Order Status was not changed.", 0).show();
                dialogpin.dismiss();
            }
        });
    }
}
