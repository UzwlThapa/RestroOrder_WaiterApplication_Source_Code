###### Class android.support.v4.widget.ImageViewCompat (android.support.v4.widget.ImageViewCompat)
.class public Landroid/support/v4/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;,
        Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;,
        Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 85
    new-instance v0, Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    .line 89
    :goto_d
    return-void

    .line 87
    :cond_e
    new-instance v0, Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 95
    sget-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 109
    sget-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 102
    sget-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 103
    return-void
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 118
    sget-object v0, Landroid/support/v4/widget/ImageViewCompat;->IMPL:Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 119
    return-void
.end method

###### Class android.support.v4.widget.ImageViewCompat.BaseViewCompatImpl (android.support.v4.widget.ImageViewCompat$BaseViewCompatImpl)
.class Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 41
    invoke-static {p1}, Landroid/support/v4/widget/ImageViewCompatBase;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/support/v4/widget/ImageViewCompatBase;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 46
    invoke-static {p1, p2}, Landroid/support/v4/widget/ImageViewCompatBase;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 47
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 51
    invoke-static {p1, p2}, Landroid/support/v4/widget/ImageViewCompatBase;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 52
    return-void
.end method

###### Class android.support.v4.widget.ImageViewCompat.ImageViewCompatImpl (android.support.v4.widget.ImageViewCompat$ImageViewCompatImpl)
.class interface abstract Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ImageViewCompatImpl"
.end annotation


# virtual methods
.method public abstract getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
.end method

.method public abstract getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
.end method

###### Class android.support.v4.widget.ImageViewCompat.LollipopViewCompatImpl (android.support.v4.widget.ImageViewCompat$LollipopViewCompatImpl)
.class Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.source "ImageViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/support/v4/widget/ImageViewCompatLollipop;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/support/v4/widget/ImageViewCompatLollipop;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 68
    invoke-static {p1, p2}, Landroid/support/v4/widget/ImageViewCompatLollipop;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 69
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 73
    invoke-static {p1, p2}, Landroid/support/v4/widget/ImageViewCompatLollipop;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    return-void
.end method
