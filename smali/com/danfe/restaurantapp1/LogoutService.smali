###### Class com.danfe.restaurantapp1.LogoutService (com.danfe.restaurantapp1.LogoutService)
.class public Lcom/danfe/restaurantapp1/LogoutService;
.super Landroid/app/Service;
.source "LogoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;
    }
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private lastInteractionTime:I

.field private logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

.field screenState:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;-><init>(Lcom/danfe/restaurantapp1/LogoutService;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->binder:Landroid/os/IBinder;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->screenState:Z

    return-void
.end method


# virtual methods
.method public getLastInteractionTime()J
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->lastInteractionTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/danfe/restaurantapp1/LogoutReceiver;

    invoke-direct {v1}, Lcom/danfe/restaurantapp1/LogoutReceiver;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/LogoutService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LogoutService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/danfe/restaurantapp1/LogoutService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/LogoutService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 102
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 59
    if-eqz p1, :cond_1f

    .line 61
    const-string v0, "screen_state"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->screenState:Z

    .line 62
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->screenState:Z

    if-nez v0, :cond_20

    .line 63
    const-string v0, " screenState OFF"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    if-eqz v0, :cond_1f

    .line 66
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    invoke-interface {v0}, Lcom/danfe/restaurantapp1/Interface/LogoutInterface;->logout()V

    .line 73
    :cond_1f
    :goto_1f
    return v2

    .line 70
    :cond_20
    const-string v0, "screenState ON"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V
    .registers 2
    .param p1, "logoutInterface"    # Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LogoutService;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    .line 106
    return-void
.end method

.method public setLastInteractionTime(I)V
    .registers 2
    .param p1, "lastInteractionTime"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/danfe/restaurantapp1/LogoutService;->lastInteractionTime:I

    .line 115
    return-void
.end method

###### Class com.danfe.restaurantapp1.LogoutService.LocalBinder (com.danfe.restaurantapp1.LogoutService$LocalBinder)
.class public Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;
.super Landroid/os/Binder;
.source "LogoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/LogoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LogoutService;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/LogoutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LogoutService;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;->this$0:Lcom/danfe/restaurantapp1/LogoutService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/danfe/restaurantapp1/LogoutService;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;->this$0:Lcom/danfe/restaurantapp1/LogoutService;

    return-object v0
.end method
