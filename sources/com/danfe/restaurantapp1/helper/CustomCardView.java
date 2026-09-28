package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import com.danfe.restaurantapp1.R;

/* JADX INFO: loaded from: classes.dex */
public class CustomCardView extends CardView {
    public CustomCardView(Context context) {
        super(context);
    }

    public CustomCardView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CustomCardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (isPressed() || isSelected() || isActivated() || isFocused()) {
            setCardBackgroundColor(getContext().getResources().getColor(R.color.bg_card_pressed));
        } else {
            setCardBackgroundColor(getContext().getResources().getColor(android.R.color.transparent));
        }
    }
}
