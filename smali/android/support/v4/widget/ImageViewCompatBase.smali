###### Class android.support.v4.widget.ImageViewCompatBase (android.support.v4.widget.ImageViewCompatBase)
.class Landroid/support/v4/widget/ImageViewCompatBase;
.super Ljava/lang/Object;
.source "ImageViewCompatBase.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 25
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 26
    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 37
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .line 38
    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p0    # "view":Landroid/widget/ImageView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 31
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 32
    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    :cond_9
    return-void
.end method

.method static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 43
    instance-of v0, p0, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 44
    check-cast p0, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p0    # "view":Landroid/widget/ImageView;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 46
    :cond_9
    return-void
.end method
