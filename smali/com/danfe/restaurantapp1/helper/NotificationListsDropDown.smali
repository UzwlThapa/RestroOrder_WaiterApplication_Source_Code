###### Class com.danfe.restaurantapp1.helper.NotificationListsDropDown (com.danfe.restaurantapp1.helper.NotificationListsDropDown)
.class public Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;
.super Ljava/lang/Object;
.source "NotificationListsDropDown.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/Interface/PopupDelete;


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private lvNotifications:Landroid/widget/ListView;

.field private mBtnShowPopup:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private notificationAdapters:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

.field private notificationsDBList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/NotificationsDB;",
            ">;"
        }
    .end annotation
.end field

.field private popUpLayout:Landroid/view/View;

.field private popUpWindow:Landroid/widget/PopupWindow;

.field private popupDeleteButton:Lcom/danfe/restaurantapp1/Interface/PopupDelete;

.field private restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private tvEmptyNotifications:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageButton;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btnShowPopup"    # Landroid/widget/ImageButton;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mBtnShowPopup:Landroid/widget/ImageButton;

    .line 48
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/PopupDelete;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationAdapters:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .line 52
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->showDropDownPopup()V

    .line 54
    return-void
.end method


# virtual methods
.method public refreshData()V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotifications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/PopupDelete;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationAdapters:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    .line 96
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationAdapters:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpLayout:Landroid/view/View;

    const v2, 0x7f0f01cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/danfe/restaurantapp1/helper/MessageEvents;

    const-string v2, "item deleted"

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/helper/MessageEvents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public showDropDownPopup()V
    .registers 6

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030065

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpLayout:Landroid/view/View;

    .line 60
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    .line 61
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpLayout:Landroid/view/View;

    const v2, 0x7f0f01cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    .line 62
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpLayout:Landroid/view/View;

    const v2, 0x7f0f01cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->tvEmptyNotifications:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 64
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationsDBList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_99

    .line 65
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->tvEmptyNotifications:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->notificationAdapters:Lcom/danfe/restaurantapp1/adapter/NotificationsAdapters;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    :goto_5c
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 74
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 75
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 77
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f0a00dd

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 78
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 81
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->popUpWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->mBtnShowPopup:Landroid/widget/ImageButton;

    const/16 v3, -0xfa

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 89
    :goto_98
    return-void

    .line 69
    :cond_99
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->tvEmptyNotifications:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;->lvNotifications:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a6} :catch_a7

    goto :goto_5c

    .line 84
    :catch_a7
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EXCEPTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method
