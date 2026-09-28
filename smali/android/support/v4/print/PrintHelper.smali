###### Class android.support.v4.print.PrintHelper (android.support.v4.print.PrintHelper)
.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;,
        Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-static {}, Landroid/support/v4/print/PrintHelper;->systemSupportsPrint()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_17

    .line 272
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    .line 283
    :goto_16
    return-void

    .line 273
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_25

    .line 274
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_16

    .line 275
    :cond_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_33

    .line 276
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_16

    .line 278
    :cond_33
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_16

    .line 281
    :cond_3b
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>(Landroid/support/v4/print/PrintHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    goto :goto_16
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 360
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 371
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 384
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 5
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 399
    return-void
.end method

.method public setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setColorMode(I)V

    .line 318
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setOrientation(I)V

    .line 339
    return-void
.end method

.method public setScaleMode(I)V
    .registers 3
    .param p1, "scaleMode"    # I

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setScaleMode(I)V

    .line 296
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.AnonymousClass1 (android.support.v4.print.PrintHelper$1)
.class synthetic Landroid/support/v4/print/PrintHelper$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.v4.print.PrintHelper.OnPrintFinishCallback (android.support.v4.print.PrintHelper$OnPrintFinishCallback)
.class public interface abstract Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPrintFinishCallback"
.end annotation


# virtual methods
.method public abstract onFinish()V
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperApi20Impl (android.support.v4.print.PrintHelper$PrintHelperApi20Impl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperApi20Impl;
.super Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperApi20Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroid/support/v4/print/PrintHelperApi20;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    new-instance v0, Landroid/support/v4/print/PrintHelperApi20;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperApi20;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 241
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperApi23Impl (android.support.v4.print.PrintHelper$PrintHelperApi23Impl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperApi23Impl;
.super Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperApi23Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroid/support/v4/print/PrintHelperApi23;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    new-instance v0, Landroid/support/v4/print/PrintHelperApi23;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 250
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperApi24Impl (android.support.v4.print.PrintHelper$PrintHelperApi24Impl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperApi24Impl;
.super Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperApi24Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroid/support/v4/print/PrintHelperApi24;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    new-instance v0, Landroid/support/v4/print/PrintHelperApi24;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperApi24;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 260
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperImpl (android.support.v4.print.PrintHelper$PrintHelperImpl)
.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroid/support/v4/print/PrintHelperKitkat;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;"
    }
.end annotation


# instance fields
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    .local p1, "helper":Landroid/support/v4/print/PrintHelperKitkat;, "TRealHelper;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    .line 163
    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 182
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 192
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 172
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_8

    .line 200
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 207
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 208
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    if-eqz p3, :cond_8

    .line 215
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;

    .end local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 222
    .restart local v0    # "delegateCallback":Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    :cond_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 223
    return-void
.end method

.method public setColorMode(I)V
    .registers 3
    .param p1, "colorMode"    # I

    .prologue
    .line 177
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    .line 178
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 187
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    .line 188
    return-void
.end method

.method public setScaleMode(I)V
    .registers 3
    .param p1, "scaleMode"    # I

    .prologue
    .line 167
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    .line 168
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperImpl.AnonymousClass1 (android.support.v4.print.PrintHelper$PrintHelperImpl$1)
.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

    .prologue
    .line 200
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;"
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 203
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 204
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperImpl.AnonymousClass2 (android.support.v4.print.PrintHelper$PrintHelperImpl$2)
.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

    .prologue
    .line 215
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;"
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 218
    .local p0, "this":Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;"
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 219
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperKitkatImpl (android.support.v4.print.PrintHelper$PrintHelperKitkatImpl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;
.super Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperKitkatImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroid/support/v4/print/PrintHelperKitkat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 232
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperStubImpl (android.support.v4.print.PrintHelper$PrintHelperStubImpl)
.class final Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperStubImpl"
.end annotation


# instance fields
.field mColorMode:I

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    .line 117
    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/print/PrintHelper$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/print/PrintHelper$1;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 147
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 4
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    .prologue
    .line 151
    return-void
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I

    .line 132
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 135
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .prologue
    .line 121
    iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I

    .line 122
    return-void
.end method

###### Class android.support.v4.print.PrintHelper.PrintHelperVersionImpl (android.support.v4.print.PrintHelper$PrintHelperVersionImpl)
.class interface abstract Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PrintHelperVersionImpl"
.end annotation


# virtual methods
.method public abstract getColorMode()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getScaleMode()I
.end method

.method public abstract printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end method

.method public abstract printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract setColorMode(I)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setScaleMode(I)V
.end method
