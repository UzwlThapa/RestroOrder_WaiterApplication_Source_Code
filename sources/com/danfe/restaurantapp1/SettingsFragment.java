package com.danfe.restaurantapp1;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.SwitchCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import com.danfe.restaurantapp1.helper.Preferences;

/* JADX INFO: loaded from: classes.dex */
public class SettingsFragment extends Fragment {
    Button done;
    SwitchCompat itemshift;
    Boolean merge;
    SwitchCompat mergeTable;
    SwitchCompat outofStock;
    Preferences preferences;
    Boolean shift;
    SwitchCompat showBill;
    Boolean show_bill;
    Boolean split;
    SwitchCompat splitbill;
    Boolean stock;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View settingsView = inflater.inflate(R.layout.setting_layout, container, false);
        this.splitbill = (SwitchCompat) settingsView.findViewById(R.id.sc_splitBill);
        this.outofStock = (SwitchCompat) settingsView.findViewById(R.id.sc_outofStock);
        this.itemshift = (SwitchCompat) settingsView.findViewById(R.id.sc_itemshift);
        this.mergeTable = (SwitchCompat) settingsView.findViewById(R.id.sc_mergeTable);
        this.showBill = (SwitchCompat) settingsView.findViewById(R.id.sc_show_bill);
        this.done = (Button) settingsView.findViewById(R.id.bt_done);
        this.preferences = new Preferences(getContext());
        this.split = this.preferences.getSplitBill();
        this.stock = this.preferences.getOutofStock();
        this.shift = this.preferences.getShiftItem();
        this.merge = this.preferences.getMergeTable();
        this.show_bill = this.preferences.getShowBill();
        this.mergeTable.setChecked(this.merge.booleanValue());
        this.splitbill.setChecked(this.split.booleanValue());
        this.itemshift.setChecked(this.shift.booleanValue());
        this.outofStock.setChecked(this.stock.booleanValue());
        this.showBill.setChecked(this.show_bill.booleanValue());
        this.showBill.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if (SettingsFragment.this.showBill.isChecked()) {
                    SettingsFragment.this.show_bill = true;
                } else {
                    SettingsFragment.this.show_bill = false;
                }
            }
        });
        this.splitbill.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if (SettingsFragment.this.splitbill.isChecked()) {
                    SettingsFragment.this.split = true;
                } else {
                    SettingsFragment.this.split = false;
                }
            }
        });
        this.outofStock.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if (SettingsFragment.this.outofStock.isChecked()) {
                    SettingsFragment.this.stock = true;
                } else {
                    SettingsFragment.this.stock = false;
                }
            }
        });
        this.itemshift.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if (SettingsFragment.this.itemshift.isChecked()) {
                    SettingsFragment.this.shift = true;
                } else {
                    SettingsFragment.this.shift = false;
                }
            }
        });
        this.mergeTable.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (SettingsFragment.this.mergeTable.isChecked()) {
                    SettingsFragment.this.merge = true;
                } else {
                    SettingsFragment.this.merge = false;
                }
            }
        });
        this.done.setOnClickListener(new View.OnClickListener() { // from class: com.danfe.restaurantapp1.SettingsFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SettingsFragment.this.preferences.setEnableOutstock(SettingsFragment.this.stock.booleanValue());
                SettingsFragment.this.preferences.setEnableSplitbill(SettingsFragment.this.split.booleanValue());
                SettingsFragment.this.preferences.setEnableShiftitem(SettingsFragment.this.shift.booleanValue());
                SettingsFragment.this.preferences.setEnableMergeTable(SettingsFragment.this.merge.booleanValue());
                SettingsFragment.this.preferences.setEnableShowBill(SettingsFragment.this.show_bill.booleanValue());
                SettingsFragment.this.getActivity().getSupportFragmentManager().popBackStack();
            }
        });
        return settingsView;
    }
}
