###### Class android.support.v7.app.AppCompatDelegateImplV23 (android.support.v7.app.AppCompatDelegateImplV23)
.class Landroid/support/v7/app/AppCompatDelegateImplV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
    }
.end annotation


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 35
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    .line 36
    return-void
.end method


# virtual methods
.method mapNightMode(I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 48
    if-nez p1, :cond_c

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    .line 49
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_c

    .line 52
    const/4 v0, -0x1

    .line 54
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v0

    goto :goto_b
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 42
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    return-object v0
.end method

###### Class android.support.v7.app.AppCompatDelegateImplV23.AppCompatWindowCallbackV23 (android.support.v7.app.AppCompatDelegateImplV23$AppCompatWindowCallbackV23)
.class Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV23"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV23;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV23;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV23;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    packed-switch p2, :pswitch_data_16

    .line 72
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    :goto_f
    return-object v0

    .line 68
    :pswitch_10
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_f

    .line 65
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
