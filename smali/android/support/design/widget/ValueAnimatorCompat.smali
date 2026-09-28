###### Class android.support.design.widget.ValueAnimatorCompat (android.support.design.widget.ValueAnimatorCompat)
.class Landroid/support/design/widget/ValueAnimatorCompat;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ValueAnimatorCompat$Impl;,
        Landroid/support/design/widget/ValueAnimatorCompat$Creator;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;,
        Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat$Impl;)V
    .registers 2
    .param p1, "impl"    # Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    .line 116
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    .prologue
    .line 144
    if-eqz p1, :cond_d

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v1, Landroid/support/design/widget/ValueAnimatorCompat$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ValueAnimatorCompat$2;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    .line 164
    :goto_c
    return-void

    .line 162
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V

    goto :goto_c
.end method

.method public addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .registers 4
    .param p1, "updateListener"    # Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    .prologue
    .line 131
    if-eqz p1, :cond_d

    .line 132
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    new-instance v1, Landroid/support/design/widget/ValueAnimatorCompat$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/ValueAnimatorCompat$1;-><init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    .line 141
    :goto_c
    return-void

    .line 139
    :cond_d
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    goto :goto_c
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->cancel()V

    .line 188
    return-void
.end method

.method public end()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->end()V

    .line 196
    return-void
.end method

.method public getAnimatedFloatValue()F
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFloatValue()F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedFraction()F

    move-result v0

    return v0
.end method

.method public getAnimatedIntValue()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getAnimatedIntValue()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setDuration(J)V

    .line 184
    return-void
.end method

.method public setFloatValues(FF)V
    .registers 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setFloatValues(FF)V

    .line 176
    return-void
.end method

.method public setIntValues(II)V
    .registers 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setIntValues(II)V

    .line 168
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat;->mImpl:Landroid/support/design/widget/ValueAnimatorCompat$Impl;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl;->start()V

    .line 120
    return-void
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.AnonymousClass1 (android.support.design.widget.ValueAnimatorCompat$1)
.class Landroid/support/design/widget/ValueAnimatorCompat$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 132
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompat$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/design/widget/ValueAnimatorCompat$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;->onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 136
    return-void
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.AnonymousClass2 (android.support.design.widget.ValueAnimatorCompat$2)
.class Landroid/support/design/widget/ValueAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompat;

.field final synthetic val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompat;Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 145
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    iput-object p2, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 159
    return-void
.end method

.method public onAnimationEnd()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 154
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->val$listener:Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;

    iget-object v1, p0, Landroid/support/design/widget/ValueAnimatorCompat$2;->this$0:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;->onAnimationStart(Landroid/support/design/widget/ValueAnimatorCompat;)V

    .line 149
    return-void
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.AnimatorListener (android.support.design.widget.ValueAnimatorCompat$AnimatorListener)
.class interface abstract Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorListener"
.end annotation


# virtual methods
.method public abstract onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V
.end method

.method public abstract onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
.end method

.method public abstract onAnimationStart(Landroid/support/design/widget/ValueAnimatorCompat;)V
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.AnimatorListenerAdapter (android.support.design.widget.ValueAnimatorCompat$AnimatorListenerAdapter)
.class Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatorListenerAdapter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 73
    return-void
.end method

.method public onAnimationStart(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .registers 2
    .param p1, "animator"    # Landroid/support/design/widget/ValueAnimatorCompat;

    .prologue
    .line 69
    return-void
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.AnimatorUpdateListener (android.support.design.widget.ValueAnimatorCompat$AnimatorUpdateListener)
.class interface abstract Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorUpdateListener"
.end annotation


# virtual methods
.method public abstract onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.Creator (android.support.design.widget.ValueAnimatorCompat$Creator)
.class interface abstract Landroid/support/design/widget/ValueAnimatorCompat$Creator;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Creator"
.end annotation


# virtual methods
.method public abstract createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.Impl (android.support.design.widget.ValueAnimatorCompat$Impl)
.class abstract Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;,
        Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method abstract addListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;)V
.end method

.method abstract addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
.end method

.method abstract cancel()V
.end method

.method abstract end()V
.end method

.method abstract getAnimatedFloatValue()F
.end method

.method abstract getAnimatedFraction()F
.end method

.method abstract getAnimatedIntValue()I
.end method

.method abstract getDuration()J
.end method

.method abstract isRunning()Z
.end method

.method abstract setDuration(J)V
.end method

.method abstract setFloatValues(FF)V
.end method

.method abstract setIntValues(II)V
.end method

.method abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method abstract start()V
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.Impl.AnimatorListenerProxy (android.support.design.widget.ValueAnimatorCompat$Impl$AnimatorListenerProxy)
.class interface abstract Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorListenerProxy;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorListenerProxy"
.end annotation


# virtual methods
.method public abstract onAnimationCancel()V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart()V
.end method

###### Class android.support.design.widget.ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy (android.support.design.widget.ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy)
.class interface abstract Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ValueAnimatorCompat$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimatorUpdateListenerProxy"
.end annotation


# virtual methods
.method public abstract onAnimationUpdate()V
.end method
