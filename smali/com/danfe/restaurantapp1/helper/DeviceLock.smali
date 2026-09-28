###### Class com.danfe.restaurantapp1.helper.DeviceLock (com.danfe.restaurantapp1.helper.DeviceLock)
.class public Lcom/danfe/restaurantapp1/helper/DeviceLock;
.super Ljava/lang/Object;
.source "DeviceLock.java"


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field componentName:Landroid/content/ComponentName;

.field context:Landroid/content/Context;

.field devicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->context:Landroid/content/Context;

    .line 16
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 17
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->activityManager:Landroid/app/ActivityManager;

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/danfe/restaurantapp1/helper/MyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->componentName:Landroid/content/ComponentName;

    .line 20
    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->activityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/DeviceLock;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method
