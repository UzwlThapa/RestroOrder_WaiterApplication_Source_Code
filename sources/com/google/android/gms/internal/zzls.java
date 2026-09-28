package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class zzls extends Drawable implements Drawable.Callback {
    private int mFrom;
    private long zzNY;
    private boolean zzaea;
    private int zzaeh;
    private int zzaei;
    private int zzaej;
    private int zzaek;
    private int zzael;
    private boolean zzaem;
    private zzb zzaen;
    private Drawable zzaeo;
    private Drawable zzaep;
    private boolean zzaeq;
    private boolean zzaer;
    private boolean zzaes;
    private int zzaet;

    private static final class zza extends Drawable {
        private static final zza zzaeu = new zza();
        private static final C0036zza zzaev = new C0036zza();

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzls$zza$zza, reason: collision with other inner class name */
        private static final class C0036zza extends Drawable.ConstantState {
            private C0036zza() {
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.zzaeu;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return zzaev;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int alpha) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter cf) {
        }
    }

    static final class zzb extends Drawable.ConstantState {
        int zzaew;
        int zzaex;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.zzaew = zzbVar.zzaew;
                this.zzaex = zzbVar.zzaex;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.zzaew;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzls(this);
        }
    }

    public zzls(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.zzaeu : drawable;
        this.zzaeo = drawable;
        drawable.setCallback(this);
        this.zzaen.zzaex |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.zzaeu : drawable2;
        this.zzaep = drawable2;
        drawable2.setCallback(this);
        this.zzaen.zzaex |= drawable2.getChangingConfigurations();
    }

    zzls(zzb zzbVar) {
        this.zzaeh = 0;
        this.zzaej = 255;
        this.zzael = 0;
        this.zzaea = true;
        this.zzaen = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.zzaeq) {
            this.zzaer = (this.zzaeo.getConstantState() == null || this.zzaep.getConstantState() == null) ? false : true;
            this.zzaeq = true;
        }
        return this.zzaer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = false;
        switch (this.zzaeh) {
            case 1:
                this.zzNY = SystemClock.uptimeMillis();
                this.zzaeh = 2;
                break;
            case 2:
                if (this.zzNY >= 0) {
                    float fUptimeMillis = (SystemClock.uptimeMillis() - this.zzNY) / this.zzaek;
                    z = fUptimeMillis >= 1.0f;
                    if (z) {
                        this.zzaeh = 0;
                    }
                    this.zzael = (int) ((Math.min(fUptimeMillis, 1.0f) * (this.zzaei - this.mFrom)) + this.mFrom);
                    break;
                }
            default:
                z = z;
                break;
        }
        int i = this.zzael;
        boolean z2 = this.zzaea;
        Drawable drawable = this.zzaeo;
        Drawable drawable2 = this.zzaep;
        if (z) {
            if (!z2 || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.zzaej) {
                drawable2.setAlpha(this.zzaej);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.zzaej - i);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.zzaej);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zzaej);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.zzaen.zzaew | this.zzaen.zzaex;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.zzaen.zzaew = getChangingConfigurations();
        return this.zzaen;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.zzaeo.getIntrinsicHeight(), this.zzaep.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.zzaeo.getIntrinsicWidth(), this.zzaep.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.zzaes) {
            this.zzaet = Drawable.resolveOpacity(this.zzaeo.getOpacity(), this.zzaep.getOpacity());
            this.zzaes = true;
        }
        return this.zzaet;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        Drawable.Callback callback;
        if (!zzmx.zzqu() || (callback = getCallback()) == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.zzaem && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.zzaeo.mutate();
            this.zzaep.mutate();
            this.zzaem = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        this.zzaeo.setBounds(bounds);
        this.zzaep.setBounds(bounds);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        Drawable.Callback callback;
        if (!zzmx.zzqu() || (callback = getCallback()) == null) {
            return;
        }
        callback.scheduleDrawable(this, what, when);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.zzael == this.zzaej) {
            this.zzael = alpha;
        }
        this.zzaej = alpha;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.zzaeo.setColorFilter(cf);
        this.zzaep.setColorFilter(cf);
    }

    public void startTransition(int durationMillis) {
        this.mFrom = 0;
        this.zzaei = this.zzaej;
        this.zzael = 0;
        this.zzaek = durationMillis;
        this.zzaeh = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        Drawable.Callback callback;
        if (!zzmx.zzqu() || (callback = getCallback()) == null) {
            return;
        }
        callback.unscheduleDrawable(this, what);
    }

    public Drawable zzoF() {
        return this.zzaep;
    }
}
