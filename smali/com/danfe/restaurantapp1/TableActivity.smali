###### Class com.danfe.restaurantapp1.TableActivity (com.danfe.restaurantapp1.TableActivity)
.class public Lcom/danfe/restaurantapp1/TableActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TableActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/danfe/restaurantapp1/Interface/LogoutInterface;


# static fields
.field private static roomId:J

.field private static roomTypeId:J


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private btMergeDone:Landroid/widget/Button;

.field private btnGetNotifications:Landroid/widget/ImageButton;

.field private btnGoBacktoRoomType:Landroid/widget/Button;

.field private btnLayoutRoomOnly:Landroid/widget/ImageButton;

.field private btnLayoutRoomTable:Landroid/widget/ImageButton;

.field private btnRefreshTables:Landroid/widget/Button;

.field private cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

.field private checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field private gvRoom:Landroid/widget/GridView;

.field private gvTable:Landroid/widget/GridView;

.field private isBound:Z

.field private jsonArray:Lorg/json/JSONArray;

.field private jsonParser:Lcom/google/gson/JsonParser;

.field private layoutMergeTable:Landroid/widget/LinearLayout;

.field private layoutNoTables:Landroid/widget/LinearLayout;

.field private layoutNotificationCounter:Landroid/widget/LinearLayout;

.field private layoutRoomTable:Landroid/widget/LinearLayout;

.field private layoutViewRoomOnly:Landroid/widget/LinearLayout;

.field private logOutDialog:Landroid/app/ProgressDialog;

.field private logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

.field private logoutService:Lcom/danfe/restaurantapp1/LogoutService;

.field mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

.field menu:Landroid/view/Menu;

.field private mergeCancelService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;

.field public mergeTableCapacity:I

.field private mergeTableName:Ljava/lang/String;

.field public mergetableId:I

.field private notificationCount:I

.field private obj:Lorg/json/JSONObject;

.field private oldTableId:I

.field orderDetailLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderItemDetailLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field orderItemsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private orderMasterId:I

.field private orderType:Ljava/lang/String;

.field orderedItemListPerSeatNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private pausedActivity:Ljava/lang/Boolean;

.field popup:Landroid/widget/PopupMenu;

.field private positionShift:I

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private roomByRoomTypeIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

.field private roomDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomDb;",
            ">;"
        }
    .end annotation
.end field

.field private roomTypeDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/RoomTypeDb;",
            ">;"
        }
    .end annotation
.end field

.field private roomWithStatusData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private roomno:Ljava/lang/String;

.field private rooms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Room;",
            ">;"
        }
    .end annotation
.end field

.field private rvRoom:Landroid/support/v7/widget/RecyclerView;

.field private rvRoomOnly:Landroid/support/v7/widget/RecyclerView;

.field private rvRoomType:Landroid/support/v7/widget/RecyclerView;

.field screenState:Z

.field private selectedBill:I

.field private sendTableListService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private statusCode:I

.field private tableAdapter:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

.field private tableByRoomIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

.field tableDate:Ljava/lang/String;

.field private tableDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field private tableId:Ljava/lang/Long;

.field private tableListForShift:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field tableName:Ljava/lang/String;

.field tableRoom:Ljava/lang/String;

.field tableTime:Ljava/lang/String;

.field tablename:Ljava/lang/String;

.field private temptableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field private tvLogout:Landroid/widget/ImageButton;

.field private tvLogoutRoomOnly:Landroid/widget/ImageButton;

.field private tvName:Landroid/widget/TextView;

.field private tvNameRoomOnly:Landroid/widget/TextView;

.field private tvNotificationCount:Landroid/widget/TextView;

.field private tvhallInfo1:Landroid/widget/TextView;

.field private tvhallInfo2:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private zoomInAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 139
    iput v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->notificationCount:I

    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->pausedActivity:Ljava/lang/Boolean;

    .line 146
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->screenState:Z

    .line 148
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->isBound:Z

    .line 914
    new-instance v0, Lcom/danfe/restaurantapp1/TableActivity$14;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/TableActivity$14;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private LogoutFunction()V
    .registers 6

    .prologue
    .line 583
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->logOutDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 584
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvLogout:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->zoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 585
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 587
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_11
    const-string v2, "username"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_46

    .line 593
    :goto_1e
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 594
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 596
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 597
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 598
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    new-instance v3, Lcom/danfe/restaurantapp1/TableActivity$10;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/TableActivity$10;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v2, v1, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;->logoutRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 632
    return-void

    .line 590
    :catch_46
    move-exception v0

    .line 591
    .local v0, "je":Ljava/lang/Exception;
    const-string v2, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGetNotifications:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomOnly:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/AppCompatCheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomno:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()J
    .registers 2

    .prologue
    .line 93
    sget-wide v0, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->logOutDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/TableActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    return-object p1
.end method

.method static synthetic access$202(Lcom/danfe/restaurantapp1/TableActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->LogoutFunction()V

    return-void
.end method

.method static synthetic access$2200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btMergeDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableAdapter:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rooms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->rooms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableListForShift:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->temptableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/danfe/restaurantapp1/TableActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->statusCode:I

    return v0
.end method

.method static synthetic access$2702(Lcom/danfe/restaurantapp1/TableActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->statusCode:I

    return p1
.end method

.method static synthetic access$2800(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergeTableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/LogoutService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/LogoutService;)Lcom/danfe/restaurantapp1/LogoutService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/LogoutService;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/TableActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    return v0
.end method

.method static synthetic access$3002(Lcom/danfe/restaurantapp1/TableActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->isBound:Z

    return p1
.end method

.method static synthetic access$302(Lcom/danfe/restaurantapp1/TableActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    return p1
.end method

.method static synthetic access$3100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$500()J
    .registers 2

    .prologue
    .line 93
    sget-wide v0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/TableActivity;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/danfe/restaurantapp1/TableActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Lretrofit/RestAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomByRoomTypeIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomByRoomTypeIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomWithStatusData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/TableActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomWithStatusData:Ljava/util/List;

    return-object p1
.end method

.method private getRoomDetails()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 654
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllRoomType(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    .line 655
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 656
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNoTables:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    .line 658
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoom:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 659
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomOnly:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    invoke-direct {v1, p0, v2, p0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 669
    :goto_4c
    return-void

    .line 667
    :cond_4d
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNoTables:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4c
.end method

.method private validateNotificationCounter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 635
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {v0, p0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationsCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->notificationCount:I

    .line 636
    iget v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->notificationCount:I

    if-lez v0, :cond_23

    .line 637
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNotificationCounter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNotificationCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->notificationCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :goto_22
    return-void

    .line 642
    :cond_23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNotificationCounter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNotificationCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22
.end method


# virtual methods
.method public MergeCancel()V
    .registers 4

    .prologue
    .line 1011
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 1012
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1016
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;

    .line 1017
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergeCancelService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;

    .line 1019
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergeCancelService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;

    iget v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    new-instance v2, Lcom/danfe/restaurantapp1/TableActivity$15;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/TableActivity$15;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$MergeCancelRequest;->mergeCancel(ILretrofit/Callback;)V

    .line 1038
    return-void
.end method

.method public MergeTable()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 787
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v4, "removedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->obj:Lorg/json/JSONObject;

    .line 789
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonArray:Lorg/json/JSONArray;

    .line 790
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 792
    .local v3, "mergeTableIds":Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1a
    :try_start_1a
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9d

    .line 794
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_99

    .line 795
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_57

    .line 796
    const-string v5, "You cannot merge two reserved tables."

    const-string v6, "Cannot Merge Tables."

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 894
    :goto_56
    return-void

    .line 801
    :cond_57
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 802
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    .line 803
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 802
    invoke-virtual {v8, v9, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v7, v5}, Lcom/danfe/restaurantapp1/TableActivity;->setMergeInit(IILjava/lang/String;)V

    .line 792
    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1a

    .line 808
    :cond_9d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9e
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_16b

    .line 810
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 811
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_163

    .line 812
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_114

    .line 813
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 814
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    .line 815
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 814
    invoke-virtual {v8, v9, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v7, v5}, Lcom/danfe/restaurantapp1/TableActivity;->setMergeInit(IILjava/lang/String;)V

    .line 817
    :cond_114
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_132

    .line 818
    const-string v5, "Bill Payment is pending of either table."

    const-string v6, "Cannot Merge Tables."

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 808
    :cond_12e
    :goto_12e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9e

    .line 821
    :cond_132
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/danfe/restaurantapp1/model/TableDb;->setMergeTableId(Ljava/lang/Integer;)V

    .line 822
    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonArray:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_156
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_156} :catch_157

    goto :goto_12e

    .line 890
    .end local v0    # "i":I
    :catch_157
    move-exception v2

    .line 891
    .local v2, "je":Lorg/json/JSONException;
    const-string v5, "json exception"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 826
    .end local v2    # "je":Lorg/json/JSONException;
    .restart local v0    # "i":I
    :cond_163
    :try_start_163
    const-string v5, "You cannot merge two rooms."

    const-string v6, "Cannot Merge Rooms."

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12e

    .line 832
    :cond_16b
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_17d

    .line 833
    const-string v5, "Please Select atleast two to merge."

    const-string v6, "No tables Selected"

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_56

    .line 836
    :cond_17d
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "MergeTableInfo"

    iget-object v7, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 839
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->obj:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 841
    const-string v5, "gsonobjectmerge"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v5, Lretrofit/RestAdapter$Builder;

    invoke-direct {v5}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 844
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v5

    .line 845
    invoke-virtual {v5}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 847
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v6, Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;

    .line 848
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->sendTableListService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;

    .line 850
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->sendTableListService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v7, Lcom/danfe/restaurantapp1/TableActivity$13;

    invoke-direct {v7, p0}, Lcom/danfe/restaurantapp1/TableActivity$13;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v5, v6, v7}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$sendTableList;->postTableList(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V
    :try_end_1d1
    .catch Lorg/json/JSONException; {:try_start_163 .. :try_end_1d1} :catch_157

    goto/16 :goto_56
.end method

.method public RefreshContents()V
    .registers 7

    .prologue
    .line 672
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 673
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 674
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 675
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 677
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    .line 679
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$11;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$11;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v3, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;->fetchTable(Lretrofit/Callback;)V

    .line 701
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->temptableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 703
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 705
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_33
    const-string v3, "restroRoomId"

    sget-wide v4, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 706
    const-string v3, "json"

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_6b

    .line 710
    :goto_47
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 711
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 712
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 713
    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    .line 714
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableByRoomIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    .line 715
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableByRoomIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$12;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$12;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v3, v1, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;->fetchTableByRoomId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 784
    return-void

    .line 707
    :catch_6b
    move-exception v0

    .line 708
    .local v0, "je":Ljava/lang/Exception;
    const-string v3, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 1316
    new-instance v0, Lcom/danfe/restaurantapp1/TableActivity$18;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/TableActivity$18;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/TableActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1322
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 1062
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->showExitConfirmationDialog(Landroid/content/Context;)V

    .line 1063
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 1277
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    if-ne p1, v0, :cond_2c

    .line 1278
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    invoke-direct {v1, v2, v3, p0}, Lcom/danfe/restaurantapp1/adapter/RoomTypeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1279
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 1286
    :cond_2b
    :goto_2b
    return-void

    .line 1283
    :cond_2c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnRefreshTables:Landroid/widget/Button;

    if-ne p1, v0, :cond_2b

    .line 1284
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getRoomDetails()V

    goto :goto_2b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v3, 0x7f030022

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 163
    const v3, 0x7f0f010e

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->gvTable:Landroid/widget/GridView;

    .line 166
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInActivity()V

    .line 167
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v3, p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->registerSessionListener(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 170
    const v3, 0x7f0f0113

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoom:Landroid/support/v7/widget/RecyclerView;

    .line 172
    const v3, 0x7f0f010b

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    .line 174
    const v3, 0x7f0f011d

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomOnly:Landroid/support/v7/widget/RecyclerView;

    .line 176
    const v3, 0x7f0f010d

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutRoomTable:Landroid/widget/LinearLayout;

    .line 177
    const v3, 0x7f0f0109

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNoTables:Landroid/widget/LinearLayout;

    .line 178
    const v3, 0x7f0f010a

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnRefreshTables:Landroid/widget/Button;

    .line 179
    const v3, 0x7f0f0115

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutViewRoomOnly:Landroid/widget/LinearLayout;

    .line 180
    const v3, 0x7f0f00b7

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvName:Landroid/widget/TextView;

    .line 181
    const v3, 0x7f0f011a

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNameRoomOnly:Landroid/widget/TextView;

    .line 182
    const v3, 0x7f0f00b8

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvLogout:Landroid/widget/ImageButton;

    .line 183
    const v3, 0x7f0f011c

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvLogoutRoomOnly:Landroid/widget/ImageButton;

    .line 184
    const v3, 0x7f0f0102

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    .line 185
    const v3, 0x7f0f0117

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomOnly:Landroid/widget/ImageButton;

    .line 186
    const v3, 0x7f0f010c

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    .line 187
    const v3, 0x7f0f010f

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutMergeTable:Landroid/widget/LinearLayout;

    .line 188
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v3, 0x7f0f0111

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 191
    const v3, 0x7f0f0110

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btMergeDone:Landroid/widget/Button;

    .line 192
    const v3, 0x7f0f0100

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutNotificationCounter:Landroid/widget/LinearLayout;

    .line 194
    const v3, 0x7f0f00ff

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGetNotifications:Landroid/widget/ImageButton;

    .line 195
    const v3, 0x7f0f0101

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNotificationCount:Landroid/widget/TextView;

    .line 200
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGetNotifications:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$1;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04001b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->zoomInAnimation:Landroid/view/animation/Animation;

    .line 208
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    .line 209
    const v3, 0x7f0f0107

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo1:Landroid/widget/TextView;

    .line 210
    const v3, 0x7f0f0108

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/TableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo2:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvNameRoomOnly:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->logOutDialog:Landroid/app/ProgressDialog;

    .line 214
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->logOutDialog:Landroid/app/ProgressDialog;

    const-string v4, "Logging-Out. Please Wait...."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->logOutDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 218
    new-instance v3, Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/service/CostCenterService;-><init>(Landroid/content/Context;)V

    .line 220
    new-instance v3, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 221
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 223
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 225
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 227
    .local v1, "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 230
    .local v2, "layoutManager2":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoom:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 231
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 232
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomOnly:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 234
    new-instance v3, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    .line 238
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getRoomDetails()V

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableListForShift:Ljava/util/List;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->temptableList:Ljava/util/List;

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->orderDetailLists:Ljava/util/List;

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->orderItemsLists:Ljava/util/List;

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->orderItemDetailLists:Ljava/util/List;

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->orderedItemListPerSeatNo:Ljava/util/List;

    .line 249
    new-instance v3, Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableAdapter:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    .line 250
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 252
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btMergeDone:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->gvTable:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableAdapter:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    new-instance v3, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v3}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .line 256
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->gvTable:Landroid/widget/GridView;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$2;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$2;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 349
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->validateNotificationCounter()V

    .line 350
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnRefreshTables:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomOnly:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$3;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$3;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$4;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$4;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->gvTable:Landroid/widget/GridView;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$5;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$5;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvLogoutRoomOnly:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$6;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$6;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvLogout:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$7;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$7;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/helper/Preferences;->getMergeTable()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_270

    .line 545
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$8;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$8;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 571
    :cond_265
    :goto_265
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->btMergeDone:Landroid/widget/Button;

    new-instance v4, Lcom/danfe/restaurantapp1/TableActivity$9;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/TableActivity$9;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    return-void

    .line 564
    :cond_270
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutMergeTable:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_265

    .line 565
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->layoutMergeTable:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_265
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1291
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1292
    const-string v0, "ACTIVITYSTATE"

    const-string v1, "DESTROYED"

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->isBound:Z

    if-eqz v0, :cond_1c

    .line 1295
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 1296
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/TableActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->isBound:Z

    .line 1301
    :cond_1c
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x7

    const/4 v8, 0x1

    .line 933
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_1cc

    .line 1000
    :goto_9
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    .line 1002
    :goto_e
    return v8

    .line 935
    :pswitch_f
    new-instance v3, Lcom/danfe/restaurantapp1/service/TableService;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V

    .line 936
    .local v3, "webservice":Lcom/danfe/restaurantapp1/service/TableService;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->orderMasterId:I

    .line 938
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4e

    .line 939
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Could not shiftTable merged Table"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 940
    :cond_4e
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_70

    .line 941
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Cannot Shift Room"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 942
    :cond_70
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_cb

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 943
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 944
    .local v2, "tableShiftIntent":Landroid/content/Intent;
    const-string v5, "tableDate"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    const-string v5, "tableroom"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableRoom:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string v5, "waiterName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v5, "tableName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v5, "oldTableId"

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    invoke-virtual {p0, v2}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 951
    .end local v2    # "tableShiftIntent":Landroid/content/Intent;
    :cond_cb
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Cannot shiftTable table with empty orders"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 957
    .end local v3    # "webservice":Lcom/danfe/restaurantapp1/service/TableService;
    :pswitch_db
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_f8

    .line 958
    const-string v5, "Cannot unmerge a single table."

    const-string v6, "Merge Failed"

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_e

    .line 962
    :cond_f8
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    const-string v6, "mergeCancel"

    invoke-virtual {v5, p0, v6}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 970
    :pswitch_101
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_129

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_156

    :cond_129
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    .line 971
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_156

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDbList:Ljava/util/List;

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->positionShift:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_156

    .line 972
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->showBillNotAvailable(Landroid/content/Context;)V

    goto/16 :goto_e

    .line 975
    :cond_156
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/danfe/restaurantapp1/ShowBillActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 976
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "oldTableId"

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 977
    const-string v5, "roomId"

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 978
    const-string v5, "tableDate"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    const-string v5, "tableName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string v5, "tableroom"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableRoom:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v5, "waiterName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 989
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_18c
    new-instance v4, Lcom/danfe/restaurantapp1/service/TableService;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V

    .line 990
    .local v4, "webservice1":Lcom/danfe/restaurantapp1/service/TableService;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 991
    .local v1, "itemShitIntent":Landroid/content/Intent;
    const-string v5, "oldTableId"

    iget v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->oldTableId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const-string v5, "roomId"

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 993
    const-string v5, "tableDate"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const-string v5, "tableName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 995
    const-string v5, "tableroom"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableRoom:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const-string v5, "waiterName"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 933
    nop

    :pswitch_data_1cc
    .packed-switch 0x7f0f0251
        :pswitch_f
        :pswitch_db
        :pswitch_101
        :pswitch_18c
    .end packed-switch
.end method

.method public onMessageEvent(Lcom/danfe/restaurantapp1/helper/MessageEvents;)V
    .registers 2
    .param p1, "event"    # Lcom/danfe/restaurantapp1/helper/MessageEvents;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->validateNotificationCounter()V

    .line 651
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1305
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1306
    const-string v0, "ACTIVITYSTATE"

    const-string v1, "[PUASED"

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->cbMerge:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 1308
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->pausedActivity:Ljava/lang/Boolean;

    .line 1309
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1311
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/TableActivity;->screenState:Z

    .line 1312
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 1042
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1043
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 1044
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getRoomDetails()V

    .line 1046
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 1048
    :try_start_10
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->pausedActivity:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1049
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/TableActivity;->validateNotificationCounter()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_26

    .line 1054
    :cond_1b
    :goto_1b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/TableActivity;->screenState:Z

    .line 1056
    return-void

    .line 1051
    :catch_26
    move-exception v0

    goto :goto_1b
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 899
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 901
    iput-boolean v3, p0, Lcom/danfe/restaurantapp1/TableActivity;->screenState:Z

    .line 902
    iget-boolean v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->screenState:Z

    if-eqz v1, :cond_21

    .line 903
    const-string v1, "screenState: "

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/danfe/restaurantapp1/LogoutService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/danfe/restaurantapp1/TableActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 906
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/TableActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 912
    .end local v0    # "i":Landroid/content/Intent;
    :goto_20
    return-void

    .line 909
    :cond_21
    const-string v1, "screenState"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public pop()V
    .registers 2

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/TableActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1007
    return-void
.end method

.method public recyclerLongClicked(Landroid/view/View;ILjava/lang/Boolean;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 1265
    return-void
.end method

.method public recyclerViewListClicked(Landroid/view/View;II)V
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1068
    const/4 v5, 0x1

    if-ne p2, v5, :cond_105

    .line 1069
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-ne v5, v9, :cond_94

    .line 1070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1071
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1072
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomno:Ljava/lang/String;

    .line 1073
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sput-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    .line 1074
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1075
    .local v4, "roomid":I
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1076
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "username"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->username:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string v5, "roomno"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomno:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    const-string v5, "roomid"

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1079
    const-string v5, "tableno"

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string v5, "seat"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    const-string v5, "tableId"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    const-string v5, "isTable"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    .line 1250
    .end local v1    # "i":Landroid/content/Intent;
    .end local v4    # "roomid":I
    :cond_93
    :goto_93
    return-void

    .line 1085
    :cond_94
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1087
    .local v3, "obj":Lcom/google/gson/JsonObject;
    :try_start_99
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomno:Ljava/lang/String;

    .line 1088
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sput-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    .line 1089
    const-string v5, "restroRoomId"

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1090
    const-string v5, "restroRoomId"

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_cd} :catch_fa

    .line 1094
    :goto_cd
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->temptableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1095
    new-instance v5, Lretrofit/RestAdapter$Builder;

    invoke-direct {v5}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 1096
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v5

    .line 1097
    invoke-virtual {v5}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1098
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v6, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    .line 1099
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableByRoomIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    .line 1100
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tableByRoomIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;

    new-instance v6, Lcom/danfe/restaurantapp1/TableActivity$16;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/TableActivity$16;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v5, v3, v6}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableByRoomIdWebService;->fetchTableByRoomId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    goto :goto_93

    .line 1091
    :catch_fa
    move-exception v2

    .line 1092
    .local v2, "je":Ljava/lang/Exception;
    const-string v5, "json exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 1166
    .end local v2    # "je":Ljava/lang/Exception;
    .end local v3    # "obj":Lcom/google/gson/JsonObject;
    :cond_105
    const/4 v5, 0x2

    if-ne p2, v5, :cond_93

    .line 1167
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getRestroRoom()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "clickedPos":Ljava/lang/String;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeDbList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/RoomTypeDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/RoomTypeDb;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sput-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeId:J

    .line 1170
    const-string v5, "Restaurant"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_175

    .line 1171
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, p0, v6}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    .line 1172
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->rvRoomType:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomDbList:Ljava/util/List;

    invoke-direct {v6, p0, v7, p0}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1173
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnGoBacktoRoomType:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1174
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo2:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo1:Landroid/widget/TextView;

    const-string v6, "Restaurant"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->tvhallInfo2:Landroid/widget/TextView;

    const-string v6, "Please select the room number."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomTable:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1179
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->btnLayoutRoomOnly:Landroid/widget/ImageButton;

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_93

    .line 1181
    :cond_175
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1183
    .restart local v3    # "obj":Lcom/google/gson/JsonObject;
    :try_start_17a
    const-string v5, "RoomTypeID"

    sget-wide v6, Lcom/danfe/restaurantapp1/TableActivity;->roomTypeId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1184
    const-string v5, "RoomTypeID"

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_18e} :catch_1b7

    .line 1188
    :goto_18e
    new-instance v5, Lretrofit/RestAdapter$Builder;

    invoke-direct {v5}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity;->BaseURL:Ljava/lang/String;

    .line 1189
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v5

    .line 1190
    invoke-virtual {v5}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1191
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v6, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    .line 1192
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomByRoomTypeIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    .line 1193
    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity;->roomByRoomTypeIdRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    new-instance v6, Lcom/danfe/restaurantapp1/TableActivity$17;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/TableActivity$17;-><init>(Lcom/danfe/restaurantapp1/TableActivity;)V

    invoke-interface {v5, v3, v6}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;->fetchRoomByRoomTypeId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    goto/16 :goto_93

    .line 1185
    :catch_1b7
    move-exception v2

    .line 1186
    .restart local v2    # "je":Ljava/lang/Exception;
    const-string v5, "json exception"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e
.end method

.method public recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;I)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "level"    # I
    .param p4, "position"    # I
    .param p5, "isCombo"    # Ljava/lang/Boolean;
    .param p6, "costcenterid"    # I

    .prologue
    .line 1255
    return-void
.end method

.method public recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;IZ)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "level"    # I
    .param p4, "position"    # I
    .param p5, "isCombo"    # Ljava/lang/Boolean;
    .param p6, "costcenterid"    # I
    .param p7, "isCategory"    # Z

    .prologue
    .line 1260
    return-void
.end method

.method public setMergeInit(IILjava/lang/String;)V
    .registers 4
    .param p1, "mergetableId"    # I
    .param p2, "mergeTableCapacity"    # I
    .param p3, "mergeTableName"    # Ljava/lang/String;

    .prologue
    .line 1268
    iput p1, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergetableId:I

    .line 1269
    iput p2, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergeTableCapacity:I

    .line 1270
    iput-object p3, p0, Lcom/danfe/restaurantapp1/TableActivity;->mergeTableName:Ljava/lang/String;

    .line 1273
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass1 (com.danfe.restaurantapp1.TableActivity$1)
.class Lcom/danfe/restaurantapp1/TableActivity$1;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    new-instance v0, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$1;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$000(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/NotificationListsDropDown;-><init>(Landroid/content/Context;Landroid/widget/ImageButton;)V

    .line 204
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass10 (com.danfe.restaurantapp1.TableActivity$10)
.class Lcom/danfe/restaurantapp1/TableActivity$10;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->LogoutFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 624
    :try_start_9
    const-string v0, "data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v0, "OOPS!!! Something went wrong! please try again."

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 630
    :goto_19
    return-void

    .line 627
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "logoutRespo"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 601
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 603
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-class v3, Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v2

    const-string v3, "login_preference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    .line 608
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/TableActivity;->finish()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_33

    .line 618
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_32
    return-void

    .line 609
    :catch_33
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "logout"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_41
    const-string v2, "OOPS!!! Something went wrong! please try again."

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$10;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_32

    .line 614
    :catch_49
    move-exception v2

    goto :goto_32
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 598
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$10;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass11 (com.danfe.restaurantapp1.TableActivity$11)
.class Lcom/danfe/restaurantapp1/TableActivity$11;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->RefreshContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/danfe/restaurantapp1/response/FullRestroRoomData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 697
    const-string v0, "table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "fullRestroRoomData"    # Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 683
    .local v1, "statusCode":I
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2b

    .line 685
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getData()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2402(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;

    .line 687
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$2400(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertTable(Landroid/content/Context;Ljava/util/List;)V

    .line 693
    :cond_2a
    :goto_2a
    return-void

    .line 689
    :cond_2b
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2a

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$11;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2a
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 679
    check-cast p1, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$11;->success(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass12 (com.danfe.restaurantapp1.TableActivity$12)
.class Lcom/danfe/restaurantapp1/TableActivity$12;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->RefreshContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/danfe/restaurantapp1/response/TableWithStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 776
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 781
    :goto_1c
    return-void

    .line 778
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 715
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$12;->success(Ljava/util/List;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Ljava/util/List;Lretrofit/client/Response;)V
    .registers 26
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/TableWithStatus;",
            ">;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "tableRespo":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/TableWithStatus;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 721
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_17a

    .line 722
    new-instance v2, Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 723
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotableTitle()Ljava/lang/String;

    move-result-object v4

    .line 724
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotablesStatusID()Ljava/lang/Integer;

    move-result-object v5

    .line 725
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getSeatcap()Ljava/lang/Integer;

    move-result-object v6

    .line 726
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getMergeTableList()Ljava/lang/Integer;

    move-result-object v7

    .line 727
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getMergeID()Ljava/lang/Integer;

    move-result-object v8

    .line 728
    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$1700()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 729
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getBillPaid()Ljava/lang/Integer;

    move-result-object v10

    .line 730
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getTableDate()Ljava/lang/String;

    move-result-object v11

    .line 731
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getTabletime()Ljava/lang/String;

    move-result-object v12

    .line 732
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getIsCancelled()Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    .line 733
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 734
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getIsTable()Ljava/lang/Boolean;

    move-result-object v15

    .line 735
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRate()Ljava/lang/Double;

    move-result-object v16

    .line 736
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v17

    .line 737
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getGuestNo()Ljava/lang/Integer;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 739
    .local v2, "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_156

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_156

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :goto_132
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotablesStatusID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_152

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_152
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_18

    .line 742
    :cond_156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_161} :catch_162

    goto :goto_132

    .line 765
    .end local v2    # "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    .end local v20    # "i":I
    :catch_162
    move-exception v19

    .line 766
    .local v19, "e":Ljava/lang/Exception;
    const-string v3, "table exception request"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v3, "table request: OOPS!!! Something went wrong! please try again."

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 770
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_179
    return-void

    .line 748
    .restart local v20    # "i":I
    :cond_17a
    const/16 v20, 0x0

    :goto_17c
    :try_start_17c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_264

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_260

    .line 750
    new-instance v22, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct/range {v22 .. v22}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    .line 751
    .local v22, "restaurantDatabase":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    .line 753
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_247

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    if-ne v4, v3, :cond_244

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    .line 753
    :cond_244
    add-int/lit8 v21, v21, 0x1

    goto :goto_1d3

    .line 759
    :cond_247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/model/TableDb;->setNumber(Ljava/lang/String;)V

    .line 748
    .end local v21    # "j":I
    .end local v22    # "restaurantDatabase":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    :cond_260
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_17c

    .line 764
    :cond_264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$12;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->notifyDataSetChanged()V
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_26f} :catch_162

    goto/16 :goto_179
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass13 (com.danfe.restaurantapp1.TableActivity$13)
.class Lcom/danfe/restaurantapp1/TableActivity$13;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->MergeTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 882
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 887
    :goto_1c
    return-void

    .line 884
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 7
    .param p1, "orderResponse"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v3, 0x0

    .line 854
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    sput-boolean v3, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_CASE:Z

    .line 855
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    sput v3, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_TABLE_ID:I

    .line 856
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->notifyDataSetChanged()V

    .line 857
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2702(Lcom/danfe/restaurantapp1/TableActivity;I)I

    .line 858
    const-string v1, "mergeorder"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2700(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 860
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$1400(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/AppCompatCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 861
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2700(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_a5

    .line 862
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-class v2, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "username"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    const-string v1, "roomno"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const-string v1, "roomid"

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$1700()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 866
    const-string v1, "tableno"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2800(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v1, "seat"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/TableActivity;->mergeTableCapacity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    const-string v1, "tableId"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget v2, v2, Lcom/danfe/restaurantapp1/TableActivity;->mergetableId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    const-string v1, "isTable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 870
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    .line 877
    .end local v0    # "i":Landroid/content/Intent;
    :goto_a4
    return-void

    .line 872
    :cond_a5
    const-string v1, "Order send: OOPS!! server is not connected at the moment. Please try again later."

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$13;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_a4
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 850
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$13;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass14 (com.danfe.restaurantapp1.TableActivity$14)
.class Lcom/danfe/restaurantapp1/TableActivity$14;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/TableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 918
    move-object v0, p2

    check-cast v0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;

    .line 919
    .local v0, "binder":Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;->getService()Lcom/danfe/restaurantapp1/LogoutService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2902(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/LogoutService;)Lcom/danfe/restaurantapp1/LogoutService;

    .line 920
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$3002(Lcom/danfe/restaurantapp1/TableActivity;Z)Z

    .line 921
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$2900(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/LogoutService;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 923
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 927
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$14;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$3002(Lcom/danfe/restaurantapp1/TableActivity;Z)Z

    .line 928
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass15 (com.danfe.restaurantapp1.TableActivity$15)
.class Lcom/danfe/restaurantapp1/TableActivity$15;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->MergeCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$15;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 6
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1030
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table unmerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$15;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1035
    :goto_1c
    return-void

    .line 1032
    :catch_1d
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "exc error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 6
    .param p1, "respo"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$15;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-string v1, "Table is unmerged successfully"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1024
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$15;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$1200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 1025
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1019
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$15;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass16 (com.danfe.restaurantapp1.TableActivity$16)
.class Lcom/danfe/restaurantapp1/TableActivity$16;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->recyclerViewListClicked(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/danfe/restaurantapp1/response/TableWithStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1155
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1160
    :goto_1c
    return-void

    .line 1157
    :catch_1d
    move-exception v0

    goto :goto_1c
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1100
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$16;->success(Ljava/util/List;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Ljava/util/List;Lretrofit/client/Response;)V
    .registers 26
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/TableWithStatus;",
            ">;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "tableRespo":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/TableWithStatus;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1106
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_16d

    .line 1107
    new-instance v2, Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1108
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotableTitle()Ljava/lang/String;

    move-result-object v4

    .line 1109
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotablesStatusID()Ljava/lang/Integer;

    move-result-object v5

    .line 1110
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getSeatcap()Ljava/lang/Integer;

    move-result-object v6

    .line 1111
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getMergeTableList()Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getMergeID()Ljava/lang/Integer;

    move-result-object v8

    .line 1112
    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$1700()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1113
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getBillPaid()Ljava/lang/Integer;

    move-result-object v10

    .line 1114
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getTableDate()Ljava/lang/String;

    move-result-object v11

    .line 1115
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getTabletime()Ljava/lang/String;

    move-result-object v12

    .line 1116
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getIsCancelled()Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    .line 1117
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1118
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getIsTable()Ljava/lang/Boolean;

    move-result-object v15

    .line 1119
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRate()Ljava/lang/Double;

    move-result-object v16

    .line 1120
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v17

    .line 1121
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getGuestNo()Ljava/lang/Integer;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1122
    .local v2, "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_156

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_156

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    :goto_132
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/TableWithStatus;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/TableWithStatus;->getRestrotablesStatusID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_152

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_152
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_18

    .line 1125
    :cond_156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_161} :catch_162

    goto :goto_132

    .line 1146
    .end local v2    # "tableDb":Lcom/danfe/restaurantapp1/model/TableDb;
    .end local v20    # "i":I
    :catch_162
    move-exception v19

    .line 1147
    .local v19, "e":Ljava/lang/Exception;
    const-string v3, "table request:OOPS!!! Something went wrong! please try again."

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1150
    .end local v19    # "e":Ljava/lang/Exception;
    :goto_16c
    return-void

    .line 1131
    .restart local v20    # "i":I
    :cond_16d
    const/16 v20, 0x0

    :goto_16f
    :try_start_16f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_257

    .line 1132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_253

    .line 1133
    new-instance v22, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct/range {v22 .. v22}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    .line 1134
    .local v22, "restaurantDatabase":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    iput-object v4, v3, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    .line 1136
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_23a

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v3

    if-ne v4, v3, :cond_237

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    .line 1136
    :cond_237
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c6

    .line 1141
    :cond_23a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity;->tablename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/model/TableDb;->setNumber(Ljava/lang/String;)V

    .line 1131
    .end local v21    # "j":I
    .end local v22    # "restaurantDatabase":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    :cond_253
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_16f

    .line 1145
    :cond_257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/TableActivity$16;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->notifyDataSetChanged()V
    :try_end_262
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_262} :catch_162

    goto/16 :goto_16c
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass17 (com.danfe.restaurantapp1.TableActivity$17)
.class Lcom/danfe/restaurantapp1/TableActivity$17;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->recyclerViewListClicked(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/danfe/restaurantapp1/response/RoomWithStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1240
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "room request Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1246
    :goto_1c
    return-void

    .line 1242
    :catch_1d
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "room request Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1c
.end method

.method public success(Lcom/danfe/restaurantapp1/response/RoomWithStatus;Lretrofit/client/Response;)V
    .registers 13
    .param p1, "roomRespo"    # Lcom/danfe/restaurantapp1/response/RoomWithStatus;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 1197
    :try_start_0
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getStatusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_13d

    .line 1200
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/TableActivity;->access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$500()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadRoomTypeRooms(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/danfe/restaurantapp1/TableActivity;->access$1002(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;

    .line 1201
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getRoomWithStatusData()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/danfe/restaurantapp1/TableActivity;->access$902(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;

    .line 1202
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_46

    .line 1203
    const-string v4, "Rooms are not available at the moment. Please try again Later"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4, v5}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1235
    :goto_45
    return-void

    .line 1206
    :cond_46
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 1207
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1208
    :cond_57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_58
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_be

    .line 1209
    new-instance v2, Lcom/danfe/restaurantapp1/model/RoomDb;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRestroRoomId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 1210
    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRestroRoom()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 1211
    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRoomStatusId()Ljava/lang/Integer;

    move-result-object v4

    .line 1212
    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$500()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v6, v4, v7}, Lcom/danfe/restaurantapp1/model/RoomDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1213
    .local v2, "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 1215
    .end local v2    # "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    :cond_be
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$3100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$3200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/TableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$500()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRoomTypeNameById(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1218
    .local v3, "roomTypname":Ljava/lang/String;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$3100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$3200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "Please select the room number."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$3300(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1221
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    new-instance v5, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v5, v6, v7, v8}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1222
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1223
    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$1300(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_131} :catch_133

    goto/16 :goto_45

    .line 1231
    .end local v1    # "i":I
    .end local v3    # "roomTypname":Ljava/lang/String;
    :catch_133
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "room request: OOPS!!! Something went wrong! please try again."

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4, v5}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_45

    .line 1226
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13d
    :try_start_13d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error room request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$17;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v4, v5}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_159} :catch_133

    goto/16 :goto_45
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1193
    check-cast p1, Lcom/danfe/restaurantapp1/response/RoomWithStatus;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$17;->success(Lcom/danfe/restaurantapp1/response/RoomWithStatus;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass18 (com.danfe.restaurantapp1.TableActivity$18)
.class Lcom/danfe/restaurantapp1/TableActivity$18;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$18;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$18;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2100(Lcom/danfe/restaurantapp1/TableActivity;)V

    .line 1320
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass2 (com.danfe.restaurantapp1.TableActivity$2)
.class Lcom/danfe/restaurantapp1/TableActivity$2;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v7, 0x7f0f0251

    const v6, 0x7f0f0254

    const v5, 0x7f0f0253

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 260
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    .line 262
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$202(Lcom/danfe/restaurantapp1/TableActivity;I)I

    .line 263
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getRoomId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableRoom:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableDate:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTabletime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableTime:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, p3}, Lcom/danfe/restaurantapp1/TableActivity;->access$302(Lcom/danfe/restaurantapp1/TableActivity;I)I

    .line 268
    const-string v0, "onItemLongClick: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$200(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableActivity;->menu:Landroid/view/Menu;

    .line 272
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 273
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$300(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_101

    .line 275
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0f0252

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :cond_101
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1ac

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1ac

    .line 280
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getShiftItem()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_18c

    .line 282
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    :goto_15c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getShowBill()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_19c

    .line 287
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    :goto_17b
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 343
    :goto_18b
    return v4

    .line 284
    :cond_18c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15c

    .line 289
    :cond_19c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_17b

    .line 293
    :cond_1ac
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 295
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_17b

    .line 304
    :cond_1da
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    .line 306
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$202(Lcom/danfe/restaurantapp1/TableActivity;I)I

    .line 307
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableName:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getRoomId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableRoom:Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableDate:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTabletime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/TableActivity;->tableTime:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, p3}, Lcom/danfe/restaurantapp1/TableActivity;->access$302(Lcom/danfe/restaurantapp1/TableActivity;I)I

    .line 313
    const-string v0, "onItemLongClick: "

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$200(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/TableActivity;->menu:Landroid/view/Menu;

    .line 317
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/TableActivity;->access$300(Lcom/danfe/restaurantapp1/TableActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c9

    .line 320
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0f0252

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    :cond_2c9
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_326

    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_326

    .line 325
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :goto_314
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_18b

    .line 334
    :cond_326
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 336
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 337
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$2;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0f0252

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_314
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass3 (com.danfe.restaurantapp1.TableActivity$3)
.class Lcom/danfe/restaurantapp1/TableActivity$3;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 357
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_5
    const-string v2, "RoomTypeID"

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$500()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_4c

    .line 362
    :goto_12
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 363
    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$700(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 364
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 362
    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$602(Lcom/danfe/restaurantapp1/TableActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;

    .line 365
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 366
    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$600(Lcom/danfe/restaurantapp1/TableActivity;)Lretrofit/RestAdapter;

    move-result-object v2

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    invoke-virtual {v2, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    .line 365
    invoke-static {v3, v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$802(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    .line 367
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;

    move-result-object v2

    new-instance v3, Lcom/danfe/restaurantapp1/TableActivity$3$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/TableActivity$3$1;-><init>(Lcom/danfe/restaurantapp1/TableActivity$3;)V

    invoke-interface {v2, v1, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$RoomByRoomTypeIdWebService;->fetchRoomByRoomTypeId(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 408
    return-void

    .line 359
    :catch_4c
    move-exception v0

    .line 360
    .local v0, "je":Ljava/lang/Exception;
    const-string v2, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass3.AnonymousClass1 (com.danfe.restaurantapp1.TableActivity$3$1)
.class Lcom/danfe/restaurantapp1/TableActivity$3$1;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/danfe/restaurantapp1/response/RoomWithStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/TableActivity$3;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/TableActivity$3;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 399
    :try_start_0
    const-string v0, "Errorrequest refresh:"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error Room request refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 405
    :goto_27
    return-void

    .line 402
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method public success(Lcom/danfe/restaurantapp1/response/RoomWithStatus;Lretrofit/client/Response;)V
    .registers 11
    .param p1, "roomRespo"    # Lcom/danfe/restaurantapp1/response/RoomWithStatus;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getStatusCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_cd

    .line 372
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getRoomWithStatusData()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$902(Lcom/danfe/restaurantapp1/TableActivity;Ljava/util/List;)Ljava/util/List;

    .line 373
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_93

    .line 375
    new-instance v2, Lcom/danfe/restaurantapp1/model/RoomDb;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRestroRoomId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 376
    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRestroRoom()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 377
    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$900(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/RoomWithStatus$RoomWithStatusData;->getRoomStatusId()Ljava/lang/Integer;

    move-result-object v3

    .line 378
    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$500()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/danfe/restaurantapp1/model/RoomDb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 379
    .local v2, "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 381
    .end local v2    # "roomDb":Lcom/danfe/restaurantapp1/model/RoomDb;
    :cond_93
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1100(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    new-instance v4, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v6, v6, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v6}, Lcom/danfe/restaurantapp1/TableActivity;->access$1000(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v4, v5, v6, v7}, Lcom/danfe/restaurantapp1/adapter/RoomAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 383
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1300(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 394
    .end local v1    # "i":I
    :goto_cc
    return-void

    .line 386
    :cond_cd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Room request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/RoomWithStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_eb} :catch_ec

    goto :goto_cc

    .line 389
    :catch_ec
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "roombyroomid request"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v3, "Error Room request: OOPS!!! Something went wrong! please try again."

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$3$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$3;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/TableActivity$3;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_cc
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 367
    check-cast p1, Lcom/danfe/restaurantapp1/response/RoomWithStatus;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$3$1;->success(Lcom/danfe/restaurantapp1/response/RoomWithStatus;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass4 (com.danfe.restaurantapp1.TableActivity$4)
.class Lcom/danfe/restaurantapp1/TableActivity$4;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$4;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/TableActivity;->RefreshContents()V

    .line 415
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass5 (com.danfe.restaurantapp1.TableActivity$5)
.class Lcom/danfe/restaurantapp1/TableActivity$5;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 421
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2f

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_87

    :cond_2f
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 422
    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getBillPaid()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_87

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_87

    .line 423
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_179

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_179

    .line 433
    :cond_87
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1400(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/support/v7/widget/AppCompatCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_25f

    .line 434
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d5

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 435
    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_252

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 436
    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_252

    .line 438
    :cond_d5
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_19b

    .line 441
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-class v3, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "username"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v2, "roomno"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "roomid"

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$1700()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 445
    const-string v3, "tableno"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v3, "seat"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 447
    const-string v3, "tableId"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v3, "isTable"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    .line 476
    .end local v1    # "i":Landroid/content/Intent;
    :cond_178
    :goto_178
    return-void

    .line 426
    :cond_179
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_195

    .line 427
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showBillNotCleared(Landroid/content/Context;Z)V

    goto :goto_178

    .line 429
    :cond_195
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showBillNotCleared(Landroid/content/Context;Z)V

    goto :goto_178

    .line 453
    :cond_19b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-class v3, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v2, "username"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1500(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "roomno"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$1600(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v2, "roomid"

    invoke-static {}, Lcom/danfe/restaurantapp1/TableActivity;->access$1700()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 457
    const-string v3, "tableno"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v3, "seat"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1800(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableCapacity(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v3, "tableId"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v3, "isTable"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$100(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_178

    .line 464
    .end local v1    # "i":Landroid/content/Intent;
    :cond_252
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$5;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-string v3, "This room is not booked at the moment for order."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_178

    .line 468
    :cond_25f
    const v2, 0x7f0f0246

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 469
    .local v0, "b":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_178

    .line 470
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_279

    .line 471
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_178

    .line 473
    :cond_279
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_178
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass6 (com.danfe.restaurantapp1.TableActivity$6)
.class Lcom/danfe/restaurantapp1/TableActivity$6;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 487
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 489
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_e
    const-string v2, "username"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v3

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_59

    .line 495
    :goto_1f
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 496
    invoke-static {v4}, Lcom/danfe/restaurantapp1/TableActivity;->access$700(Lcom/danfe/restaurantapp1/TableActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 497
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 495
    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/TableActivity;->access$602(Lcom/danfe/restaurantapp1/TableActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;

    .line 498
    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    .line 499
    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$600(Lcom/danfe/restaurantapp1/TableActivity;)Lretrofit/RestAdapter;

    move-result-object v2

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    invoke-virtual {v2, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 498
    invoke-static {v3, v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2002(Lcom/danfe/restaurantapp1/TableActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 500
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$2000(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    move-result-object v2

    new-instance v3, Lcom/danfe/restaurantapp1/TableActivity$6$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/TableActivity$6$1;-><init>(Lcom/danfe/restaurantapp1/TableActivity$6;)V

    invoke-interface {v2, v1, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;->logoutRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 530
    return-void

    .line 492
    :catch_59
    move-exception v0

    .line 493
    .local v0, "je":Ljava/lang/Exception;
    const-string v2, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass6.AnonymousClass1 (com.danfe.restaurantapp1.TableActivity$6$1)
.class Lcom/danfe/restaurantapp1/TableActivity$6$1;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/TableActivity$6;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/TableActivity$6;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 522
    :try_start_b
    const-string v0, "table data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v0, "OOPS!!! Something went wrong! please try again."

    iget-object v1, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1e

    .line 528
    :goto_1d
    return-void

    .line 525
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "logoutRespo"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 503
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$1900(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 505
    :try_start_b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    const-class v3, Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 507
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/TableActivity;->access$400(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v2

    const-string v3, "login_preference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/TableActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    iget-object v2, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/TableActivity;->finish()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3c} :catch_3d

    .line 516
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_3c
    return-void

    .line 511
    :catch_3d
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "table exc data"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v2, "OOPS!!! Something went wrong! please try again."

    iget-object v3, p0, Lcom/danfe/restaurantapp1/TableActivity$6$1;->this$1:Lcom/danfe/restaurantapp1/TableActivity$6;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/TableActivity$6;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3c
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 500
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/TableActivity$6$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass7 (com.danfe.restaurantapp1.TableActivity$7)
.class Lcom/danfe/restaurantapp1/TableActivity$7;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$7;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2100(Lcom/danfe/restaurantapp1/TableActivity;)V

    .line 538
    return-void
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass8 (com.danfe.restaurantapp1.TableActivity$8)
.class Lcom/danfe/restaurantapp1/TableActivity$8;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 550
    if-eqz p2, :cond_29

    .line 551
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    :goto_c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    sput-boolean p2, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_CASE:Z

    .line 556
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    sput v2, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_TABLE_ID:I

    .line 557
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2300(Lcom/danfe/restaurantapp1/TableActivity;)Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->notifyDataSetChanged()V

    .line 558
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/TableActivity;->RefreshContents()V

    .line 559
    return-void

    .line 553
    :cond_29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$8;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/TableActivity;->access$2200(Lcom/danfe/restaurantapp1/TableActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_c
.end method

###### Class com.danfe.restaurantapp1.TableActivity.AnonymousClass9 (com.danfe.restaurantapp1.TableActivity$9)
.class Lcom/danfe/restaurantapp1/TableActivity$9;
.super Ljava/lang/Object;
.source "TableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/TableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/TableActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/TableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/TableActivity;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/danfe/restaurantapp1/TableActivity$9;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/danfe/restaurantapp1/TableActivity$9;->this$0:Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/TableActivity;->MergeTable()V

    .line 576
    return-void
.end method
