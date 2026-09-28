package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes.dex */
public class DebugExpandableListView extends ExpandableListView {
    private static final String LOG_TAG = "DebugExpandableListView";
    private static final int ROW_HEAD_HEIGHT = 35;
    private static final int ROW_ITEM_HEIGHT = 219;
    private int rowHead;
    private int rowItems;

    public DebugExpandableListView(Context context) {
        super(context);
    }

    public void setRows(int[] rows) {
        this.rowHead = rows[0];
        this.rowItems = rows[1];
        Log.d(LOG_TAG, "rows set: " + String.valueOf(this.rowHead) + String.valueOf(this.rowItems));
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        Log.d(LOG_TAG, "rows set: " + String.valueOf(this.rowHead * 35) + "," + String.valueOf(this.rowItems * ROW_ITEM_HEIGHT) + "," + String.valueOf((this.rowHead * 35) + (this.rowItems * ROW_ITEM_HEIGHT)));
        setMeasuredDimension(getMeasuredWidth(), (this.rowHead * 35) + (this.rowItems * ROW_ITEM_HEIGHT));
        Log.d(LOG_TAG, "onMeasure " + this + ": width: " + decodeMeasureSpec(widthMeasureSpec) + "; height: " + decodeMeasureSpec(heightMeasureSpec) + "; measuredHeight: " + getMeasuredHeight() + "; measuredWidth: " + getMeasuredWidth());
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        Log.d(LOG_TAG, "onLayout " + this + ": changed: " + changed + "; left: " + left + "; top: " + top + "; right: " + right + "; bottom: " + bottom);
    }

    private String decodeMeasureSpec(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        Log.e("ex view mode", String.valueOf(mode));
        String modeString = "<> ";
        switch (mode) {
            case Integer.MIN_VALUE:
                modeString = "AT_MOST ";
                break;
            case 0:
                modeString = "UNSPECIFIED ";
                break;
            case 1073741824:
                modeString = "EXACTLY ";
                break;
        }
        return modeString + Integer.toString(View.MeasureSpec.getSize(measureSpec));
    }
}
