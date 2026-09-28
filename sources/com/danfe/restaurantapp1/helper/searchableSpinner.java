package com.danfe.restaurantapp1.helper;

import android.app.ActionBar;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.danfe.restaurantapp1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class searchableSpinner extends ArrayAdapter<String> {
    private ActionBar ab;
    private boolean dropdown;
    private LayoutInflater inflater;
    private InputMethodManager keyboard;
    private View.OnClickListener onsearch;
    private final ArrayList<String> result;
    private boolean searching;

    public searchableSpinner(Context context, int resource, ArrayList<String> objects, LayoutInflater l, ActionBar a, InputMethodManager imm, String spinnerid) {
        super(context, resource, objects);
        this.dropdown = false;
        this.result = new ArrayList<>();
        this.searching = false;
        this.inflater = l;
        this.ab = a;
        this.keyboard = imm;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int position, View cnvtView, ViewGroup prnt) {
        this.dropdown = true;
        return getCustomView(position, cnvtView, prnt);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int pos, View cnvtView, ViewGroup prnt) {
        this.dropdown = false;
        return getCustomView(pos, cnvtView, prnt);
    }

    public View getCustomView(int position, View convertView, ViewGroup parent) {
        if (!this.dropdown) {
            View mySpinner = this.inflater.inflate(R.layout.spinner_ressource_search, parent, false);
            TextView main_text = (TextView) mySpinner.findViewById(R.id.text1);
            main_text.setText(getItem(position));
            return mySpinner;
        }
        View mySpinner2 = this.inflater.inflate(R.layout.auftragtextview, parent, false);
        TextView sub_text = (TextView) mySpinner2.findViewById(R.id.TextView01);
        sub_text.setText(getItem(position));
        return mySpinner2;
    }
}
