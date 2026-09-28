###### Class com.danfe.restaurantapp1.LogoutReceiver (com.danfe.restaurantapp1.LogoutReceiver)
.class public Lcom/danfe/restaurantapp1/LogoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogoutReceiver.java"


# static fields
.field public static screenState:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 19
    if-eqz p2, :cond_11

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 22
    sput-boolean v3, Lcom/danfe/restaurantapp1/LogoutReceiver;->screenState:Z

    .line 30
    .end local v0    # "action":Ljava/lang/String;
    :cond_11
    :goto_11
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/danfe/restaurantapp1/LogoutService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "screen_state"

    sget-boolean v3, Lcom/danfe/restaurantapp1/LogoutReceiver;->screenState:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void

    .line 23
    .end local v1    # "i":Landroid/content/Intent;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_23
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 24
    const/4 v2, 0x1

    sput-boolean v2, Lcom/danfe/restaurantapp1/LogoutReceiver;->screenState:Z

    goto :goto_11

    .line 25
    :cond_2f
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 26
    sput-boolean v3, Lcom/danfe/restaurantapp1/LogoutReceiver;->screenState:Z

    goto :goto_11
.end method
