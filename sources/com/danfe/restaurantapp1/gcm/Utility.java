package com.danfe.restaurantapp1.gcm;

import android.content.Context;
import android.widget.EditText;
import com.danfe.restaurantapp1.helper.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class Utility {
    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private static Matcher matcher;
    private static Pattern pattern;

    public static boolean validate(String email) {
        pattern = Pattern.compile(EMAIL_PATTERN);
        matcher = pattern.matcher(email);
        return matcher.matches();
    }

    public static boolean validateDoubleValue(Context context, EditText et) {
        Pattern Quantity_Value_PATTERN = Pattern.compile("[0-9]([0-9])?\\.[0-9]");
        if (et.getText().toString().equals("")) {
            Util.showErrorMessage("Please give double value.", context);
            return false;
        }
        if (Quantity_Value_PATTERN.matcher(et.getText().toString()).matches()) {
            return true;
        }
        Util.showErrorMessage("Invalid format,Please give double value only.", context);
        return false;
    }

    public static boolean validatReason(Context context, EditText editText) {
        Pattern reasonPattern = Pattern.compile("[a-zA-Z](\\d+)");
        String reason = editText.getText().toString();
        Matcher matcher2 = reasonPattern.matcher(reason);
        if (matcher2.find()) {
            return true;
        }
        Util.showErrorMessage("Please give a valid final reason.", context);
        return false;
    }
}
