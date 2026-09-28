###### Class android.support.v4.app.ServiceCompat (android.support.v4.app.ServiceCompat)
.class public final Landroid/support/v4/app/ServiceCompat;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;,
        Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

.field public static final START_STICKY:I = 0x1

.field public static final STOP_FOREGROUND_DETACH:I = 0x2

.field public static final STOP_FOREGROUND_REMOVE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 108
    new-instance v0, Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    .line 112
    :goto_d
    return-void

    .line 110
    :cond_e
    new-instance v0, Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static stopForeground(Landroid/app/Service;I)V
    .registers 3
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "flags"    # I

    .prologue
    .line 123
    sget-object v0, Landroid/support/v4/app/ServiceCompat;->IMPL:Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;->stopForeground(Landroid/app/Service;I)V

    .line 124
    return-void
.end method

###### Class android.support.v4.app.ServiceCompat.Api24ServiceCompatImpl (android.support.v4.app.ServiceCompat$Api24ServiceCompatImpl)
.class Landroid/support/v4/app/ServiceCompat$Api24ServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

# interfaces
.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ServiceCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForeground(Landroid/app/Service;I)V
    .registers 3
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "flags"    # I

    .prologue
    .line 101
    invoke-static {p1, p2}, Landroid/support/v4/app/ServiceCompatApi24;->stopForeground(Landroid/app/Service;I)V

    .line 102
    return-void
.end method

###### Class android.support.v4.app.ServiceCompat.BaseServiceCompatImpl (android.support.v4.app.ServiceCompat$BaseServiceCompatImpl)
.class Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

# interfaces
.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseServiceCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForeground(Landroid/app/Service;I)V
    .registers 4
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "flags"    # I

    .prologue
    .line 95
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 96
    return-void

    .line 95
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

###### Class android.support.v4.app.ServiceCompat.ServiceCompatImpl (android.support.v4.app.ServiceCompat$ServiceCompatImpl)
.class interface abstract Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceCompatImpl"
.end annotation


# virtual methods
.method public abstract stopForeground(Landroid/app/Service;I)V
.end method

###### Class android.support.v4.app.ServiceCompat.StopForegroundFlags (android.support.v4.app.ServiceCompat$StopForegroundFlags)
.class public interface abstract annotation Landroid/support/v4/app/ServiceCompat$StopForegroundFlags;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "StopForegroundFlags"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
