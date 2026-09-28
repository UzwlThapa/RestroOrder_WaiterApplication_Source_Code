###### Class com.danfe.restaurantapp1.SettingsFragment (com.danfe.restaurantapp1.SettingsFragment)
.class public Lcom/danfe/restaurantapp1/SettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsFragment.java"


# instance fields
.field done:Landroid/widget/Button;

.field itemshift:Landroid/support/v7/widget/SwitchCompat;

.field merge:Ljava/lang/Boolean;

.field mergeTable:Landroid/support/v7/widget/SwitchCompat;

.field outofStock:Landroid/support/v7/widget/SwitchCompat;

.field preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field shift:Ljava/lang/Boolean;

.field showBill:Landroid/support/v7/widget/SwitchCompat;

.field show_bill:Ljava/lang/Boolean;

.field split:Ljava/lang/Boolean;

.field splitbill:Landroid/support/v7/widget/SwitchCompat;

.field stock:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "settingsView":Landroid/view/View;
    const v1, 0x7f0f01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->splitbill:Landroid/support/v7/widget/SwitchCompat;

    .line 25
    const v1, 0x7f0f01ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->outofStock:Landroid/support/v7/widget/SwitchCompat;

    .line 26
    const v1, 0x7f0f01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->itemshift:Landroid/support/v7/widget/SwitchCompat;

    .line 27
    const v1, 0x7f0f01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->mergeTable:Landroid/support/v7/widget/SwitchCompat;

    .line 28
    const v1, 0x7f0f01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->showBill:Landroid/support/v7/widget/SwitchCompat;

    .line 30
    const v1, 0x7f0f01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->done:Landroid/widget/Button;

    .line 31
    new-instance v1, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 32
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getSplitBill()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->split:Ljava/lang/Boolean;

    .line 33
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getOutofStock()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->stock:Ljava/lang/Boolean;

    .line 34
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getShiftItem()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->shift:Ljava/lang/Boolean;

    .line 35
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getMergeTable()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->merge:Ljava/lang/Boolean;

    .line 36
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getShowBill()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->show_bill:Ljava/lang/Boolean;

    .line 38
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->mergeTable:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->merge:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 39
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->splitbill:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->split:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 40
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->itemshift:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->shift:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 41
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->outofStock:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->stock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 42
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->showBill:Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->show_bill:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->showBill:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$1;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->splitbill:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$2;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->outofStock:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$3;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->itemshift:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$4;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->mergeTable:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$5;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$5;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment;->done:Landroid/widget/Button;

    new-instance v2, Lcom/danfe/restaurantapp1/SettingsFragment$6;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/SettingsFragment$6;-><init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object v0
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass1 (com.danfe.restaurantapp1.SettingsFragment$1)
.class Lcom/danfe/restaurantapp1/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$1;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$1;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->showBill:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$1;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->show_bill:Ljava/lang/Boolean;

    .line 54
    :goto_13
    return-void

    .line 52
    :cond_14
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$1;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->show_bill:Ljava/lang/Boolean;

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass2 (com.danfe.restaurantapp1.SettingsFragment$2)
.class Lcom/danfe/restaurantapp1/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$2;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$2;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->splitbill:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$2;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->split:Ljava/lang/Boolean;

    .line 67
    :goto_13
    return-void

    .line 65
    :cond_14
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$2;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->split:Ljava/lang/Boolean;

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass3 (com.danfe.restaurantapp1.SettingsFragment$3)
.class Lcom/danfe/restaurantapp1/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$3;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$3;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->outofStock:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$3;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->stock:Ljava/lang/Boolean;

    .line 79
    :goto_13
    return-void

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$3;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->stock:Ljava/lang/Boolean;

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass4 (com.danfe.restaurantapp1.SettingsFragment$4)
.class Lcom/danfe/restaurantapp1/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$4;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$4;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->itemshift:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$4;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->shift:Ljava/lang/Boolean;

    .line 91
    :goto_13
    return-void

    .line 89
    :cond_14
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$4;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->shift:Ljava/lang/Boolean;

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass5 (com.danfe.restaurantapp1.SettingsFragment$5)
.class Lcom/danfe/restaurantapp1/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$5;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$5;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->mergeTable:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 98
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$5;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->merge:Ljava/lang/Boolean;

    .line 102
    :goto_13
    return-void

    .line 100
    :cond_14
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$5;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->merge:Ljava/lang/Boolean;

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.SettingsFragment.AnonymousClass6 (com.danfe.restaurantapp1.SettingsFragment$6)
.class Lcom/danfe/restaurantapp1/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/SettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/SettingsFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/SettingsFragment;->stock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableOutstock(Z)V

    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/SettingsFragment;->split:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableSplitbill(Z)V

    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/SettingsFragment;->shift:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableShiftitem(Z)V

    .line 111
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/SettingsFragment;->merge:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableMergeTable(Z)V

    .line 112
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/SettingsFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/SettingsFragment;->show_bill:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableShowBill(Z)V

    .line 114
    iget-object v0, p0, Lcom/danfe/restaurantapp1/SettingsFragment$6;->this$0:Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 115
    return-void
.end method
