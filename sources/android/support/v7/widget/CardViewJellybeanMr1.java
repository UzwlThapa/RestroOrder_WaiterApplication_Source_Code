package android.support.v7.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.annotation.RequiresApi;
import android.support.v7.widget.RoundRectDrawableWithShadow;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(17)
@TargetApi(17)
class CardViewJellybeanMr1 extends CardViewGingerbread {
    CardViewJellybeanMr1() {
    }

    @Override // android.support.v7.widget.CardViewGingerbread, android.support.v7.widget.CardViewImpl
    public void initStatic() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: android.support.v7.widget.CardViewJellybeanMr1.1
            @Override // android.support.v7.widget.RoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF bounds, float cornerRadius, Paint paint) {
                canvas.drawRoundRect(bounds, cornerRadius, cornerRadius, paint);
            }
        };
    }
}
