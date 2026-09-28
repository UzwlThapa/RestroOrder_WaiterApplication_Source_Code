###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity (com.danfe.restaurantapp1.OrderItemDetailsActivity)
.class public Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;
.implements Lcom/danfe/restaurantapp1/Interface/LogoutInterface;
.implements Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;
.implements Lcom/danfe/restaurantapp1/Interface/UpdateData;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private OrderedOptions:Landroid/widget/LinearLayout;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cancelled:Landroid/widget/TextView;

.field caseValue:Ljava/lang/String;

.field private cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

.field private completed:Landroid/widget/TextView;

.field private costCenterType:Ljava/lang/String;

.field currentlyActive:Z

.field gv_itemByName:Landroid/widget/GridView;

.field private headerOptions:Landroid/widget/LinearLayout;

.field isBound:Z

.field private itemFragment:Lcom/danfe/restaurantapp1/MenuItemFragment;

.field private itemListByNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemListByName;",
            ">;"
        }
    .end annotation
.end field

.field private itemgroupDbsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field private ivRefreshOrderLists:Landroid/widget/ImageView;

.field private layoutHome:Landroid/widget/LinearLayout;

.field private layoutLogout:Landroid/widget/LinearLayout;

.field private layoutOutOfStock:Landroid/widget/LinearLayout;

.field private li_outofstock:Landroid/widget/LinearLayout;

.field logoutService:Lcom/danfe/restaurantapp1/LogoutService;

.field private logoutString:Ljava/lang/String;

.field private lvOrderDetailList:Landroid/widget/ListView;

.field private noOrders:Landroid/widget/TextView;

.field private orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

.field private orderHandler:Landroid/os/Handler;

.field private orderItemsLayout:Landroid/widget/LinearLayout;

.field private orderListByItemAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

.field private orderLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field private ordered:Landroid/widget/TextView;

.field private outofStock:Landroid/widget/ImageView;

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private prefs:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private progress:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private restaurantWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;

.field private runThread:Z

.field screenState:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field stockListAdapter:Lcom/danfe/restaurantapp1/adapter/StockListAdapter;

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private tableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private tvNootes:Landroid/widget/TextView;

.field private tvNotes:Landroid/widget/TextView;

.field private tvOrderStatus:Landroid/widget/TextView;

.field private tvOrderType:Landroid/widget/TextView;

.field private tv_listofOutofStock:Landroid/widget/TextView;

.field private userRole:Ljava/lang/String;

.field private viewByItem:Landroid/support/v7/widget/AppCompatCheckBox;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    .line 96
    const-string v0, "com.danfe.restaurantapp1.ACTION_LOGOUT"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutString:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    .line 99
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isBound:Z

    .line 100
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->currentlyActive:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    .line 103
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    .line 799
    new-instance v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "showProgress"    # Ljava/lang/Boolean;
    .param p2, "RunningPriority"    # Ljava/lang/Boolean;

    .prologue
    .line 499
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    .line 500
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 502
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;

    .line 503
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;

    new-instance v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetOrderRequest;->getOrderDetailList(Lretrofit/Callback;)V

    .line 588
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->li_outofstock:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/MenuItemFragment;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemFragment:Lcom/danfe/restaurantapp1/MenuItemFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->outofStock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->OrderedOptions:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderLists:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->costCenterType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->headerOptions:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderItemsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    return v0
.end method

.method static synthetic access$402(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    return p1
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ivRefreshOrderLists:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->userRole:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
    .param p1, "x1"    # Lretrofit/RestAdapter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    return-object v0
.end method

.method private getListofItems(Ljava/lang/String;)V
    .registers 15
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v12, "orderResponseList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 355
    const-string v1, "Cancelled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4ed

    .line 356
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getRequiredList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 361
    :goto_16
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 362
    const/4 v10, 0x1

    .line 364
    .local v10, "isadded":Z
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_169

    .line 365
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ordered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 366
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 367
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 368
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 369
    .local v0, "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_8f
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 372
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    .line 373
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 374
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 375
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_fc
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 378
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 379
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 380
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 381
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_169
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_16a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4fa

    .line 385
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_171
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3b5

    .line 386
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemId()I

    move-result v2

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_4f5

    .line 387
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ordered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 388
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 389
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getTotalqty()F

    move-result v3

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getProgressQuantity()F

    move-result v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getCompletedQuantity()F

    move-result v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 390
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getOrderedQuantity()F

    move-result v6

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getImagePath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 391
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemId()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 392
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_24a
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 395
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 396
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getTotalqty()F

    move-result v3

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getProgressQuantity()F

    move-result v4

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getCompletedQuantity()F

    move-result v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getOrderedQuantity()F

    move-result v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 397
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getImagePath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 398
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemId()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 399
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_2ff
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b4

    .line 402
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 403
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getTotalqty()F

    move-result v3

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getProgressQuantity()F

    move-result v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getCompletedQuantity()F

    move-result v5

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 404
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getOrderedQuantity()F

    move-result v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 405
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getImagePath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 406
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemId()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 407
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_3b4
    const/4 v10, 0x0

    .line 416
    :cond_3b5
    if-eqz v10, :cond_4e9

    .line 417
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ordered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41d

    .line 418
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 419
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    .line 420
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 421
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_41d
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_483

    .line 424
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 425
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 427
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_483
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e9

    .line 430
    new-instance v0, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    .line 431
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getROIItemId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/model/ItemListByName;-><init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V

    .line 433
    .restart local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v0    # "itemListByName":Lcom/danfe/restaurantapp1/model/ItemListByName;
    :cond_4e9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_16a

    .line 358
    .end local v9    # "i":I
    .end local v10    # "isadded":Z
    .end local v11    # "j":I
    :cond_4ed
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getCancelledList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    goto/16 :goto_16

    .line 413
    .restart local v9    # "i":I
    .restart local v10    # "isadded":Z
    .restart local v11    # "j":I
    :cond_4f5
    const/4 v10, 0x1

    .line 385
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_171

    .line 438
    .end local v11    # "j":I
    :cond_4fa
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderListByItemAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    .line 439
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->gv_itemByName:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderListByItemAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderListByItemAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/adapter/OrderListByItemAdapter;->notifyDataSetChanged()V

    .line 443
    const/4 v9, 0x0

    :goto_514
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_5ac

    .line 444
    const-string v2, "Items"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getItemname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 445
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getTotalqty()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 446
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getCompletedQuantity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 447
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getOrderedQuantity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 448
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/ItemListByName;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/ItemListByName;->getProgressQuantity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_514

    .line 450
    :cond_5ac
    return-void
.end method


# virtual methods
.method public automaticallyUpdateOrder()V
    .registers 3

    .prologue
    .line 454
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->timer:Ljava/util/Timer;

    .line 455
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 470
    return-void
.end method

.method public getCancelledList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v1, "mycancelledLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    if-eqz p1, :cond_3d

    .line 756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 757
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 758
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 761
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3e

    .line 762
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    const-string v3, "No Cancelled Orders Found"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    .end local v0    # "i":I
    :cond_3d
    :goto_3d
    return-object v1

    .line 765
    .restart local v0    # "i":I
    :cond_3e
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d
.end method

.method public getListofStockItem()V
    .registers 7

    .prologue
    .line 1032
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemByOutOfStock(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v1

    .line 1033
    .local v1, "itemgroupDbsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    const-string v2, ""

    .line 1034
    .local v2, "stockItems":Ljava/lang/String;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 1036
    if-lez v0, :cond_34

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1041
    :cond_52
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 1042
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    :goto_61
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    return-void

    .line 1044
    :cond_67
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_61
.end method

.method public getRequiredList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    .local p2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, "myorderLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    if-eqz p2, :cond_52

    .line 730
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 731
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 732
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 730
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 734
    :cond_3a
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getItemStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 735
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 742
    .end local v0    # "i":I
    :cond_52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7d

    .line 743
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Orders Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    :goto_7c
    return-object v1

    .line 747
    :cond_7d
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7c
.end method

.method public loadOrderDetailsList()V
    .registers 3

    .prologue
    .line 779
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 781
    return-void
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 854
    new-instance v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$8;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$8;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 861
    return-void
.end method

.method public logoutFunction()V
    .registers 7

    .prologue
    .line 877
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 879
    .local v2, "obj":Lcom/google/gson/JsonObject;
    :try_start_5
    const-string v3, "logout username"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v5, "login_preference"

    invoke-virtual {v4, v5}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v3, "username"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v5, "login_preference"

    invoke-virtual {v4, v5}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v3, "json"

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_4c

    .line 887
    :goto_28
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    .line 888
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 889
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 890
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 891
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 892
    .local v1, "logoutRequest":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;
    new-instance v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;->logoutRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 925
    return-void

    .line 884
    .end local v1    # "logoutRequest":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;
    :catch_4c
    move-exception v0

    .line 885
    .local v0, "je":Ljava/lang/Exception;
    const-string v3, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 849
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->showExitConfirmationDialog(Landroid/content/Context;)V

    .line 850
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 776
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v1, 0x7f020062

    const/4 v6, 0x4

    const/16 v5, 0x8

    const v4, 0x7f0d0014

    const v3, 0x7f020060

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2a8

    .line 725
    :cond_13
    :goto_13
    return-void

    .line 604
    :sswitch_14
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2c6

    :cond_1e
    :goto_1e
    packed-switch v0, :pswitch_data_2d8

    .line 620
    :goto_21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_13

    .line 604
    :sswitch_34
    const-string v2, "InProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_3e
    const-string v2, "Ordered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :sswitch_48
    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x2

    goto :goto_1e

    :sswitch_52
    const-string v2, "Cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x3

    goto :goto_1e

    .line 606
    :pswitch_5c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_21

    .line 609
    :pswitch_62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_21

    .line 612
    :pswitch_68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_21

    .line 615
    :pswitch_6e
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_21

    .line 626
    :sswitch_74
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutFunction()V

    goto :goto_13

    .line 632
    :sswitch_78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 633
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 635
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 636
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 637
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 639
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Ordered"

    const-string v3, "Ordered"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getRequiredList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 643
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 644
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->notifyDataSetChanged()V

    .line 645
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNotes:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    const-string v0, "Ordered"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    .line 649
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    if-nez v0, :cond_13

    .line 650
    const-string v0, "Ordered"

    invoke-direct {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofItems(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 655
    :sswitch_103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 656
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 658
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 659
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 660
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 662
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNotes:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Complete"

    const-string v3, "Complete"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getRequiredList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 668
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 669
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->notifyDataSetChanged()V

    .line 670
    const-string v0, "Complete"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    .line 671
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    if-nez v0, :cond_13

    .line 672
    const-string v0, "Complete"

    invoke-direct {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofItems(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 677
    :sswitch_18d
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 678
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 680
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 682
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 684
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "InProgress"

    const-string v3, "InProgress"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getRequiredList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 686
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 687
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->notifyDataSetChanged()V

    .line 688
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNotes:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    const-string v0, "InProgress"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    .line 692
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    if-nez v0, :cond_13

    .line 693
    const-string v0, "InProgress"

    invoke-direct {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofItems(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 698
    :sswitch_218
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 699
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 700
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 701
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 703
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 704
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 705
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNotes:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cancelled"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tableList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getCancelledList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 711
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 712
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderDetailListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->notifyDataSetChanged()V

    .line 713
    const-string v0, "Cancelled"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    .line 714
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runThread:Z

    if-nez v0, :cond_13

    .line 715
    const-string v0, "Cancelled"

    invoke-direct {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofItems(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 721
    :sswitch_2a0
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto/16 :goto_13

    .line 602
    nop

    :sswitch_data_2a8
    .sparse-switch
        0x7f0f00ce -> :sswitch_78
        0x7f0f00cf -> :sswitch_18d
        0x7f0f00d0 -> :sswitch_103
        0x7f0f00dd -> :sswitch_2a0
        0x7f0f00e2 -> :sswitch_14
        0x7f0f00e5 -> :sswitch_74
        0x7f0f00ed -> :sswitch_218
    .end sparse-switch

    .line 604
    :sswitch_data_2c6
    .sparse-switch
        -0x6c25b6cf -> :sswitch_52
        -0x1fe06aa7 -> :sswitch_48
        0x1b45904d -> :sswitch_3e
        0x26881a92 -> :sswitch_34
    .end sparse-switch

    :pswitch_data_2d8
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->setContentView(I)V

    .line 119
    const v1, 0x7f0f00f6

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->lvOrderDetailList:Landroid/widget/ListView;

    .line 120
    new-instance v1, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->prefs:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 121
    const v1, 0x7f0f00e2

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ivRefreshOrderLists:Landroid/widget/ImageView;

    .line 122
    const v1, 0x7f0f00f8

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->noOrders:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f0f00e6

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 124
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    const v1, 0x7f0f00e5

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutLogout:Landroid/widget/LinearLayout;

    .line 126
    const v1, 0x7f0f00df

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderType:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f0f00d0

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0f00ce

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0f00cf

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f0f00ed

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0f00f3

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderStatus:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0f00f1

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNotes:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0f00f2

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvNootes:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0f00dd

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutHome:Landroid/widget/LinearLayout;

    .line 135
    const v1, 0x7f0f00e3

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->outofStock:Landroid/widget/ImageView;

    .line 136
    const v1, 0x7f0f00f9

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->li_outofstock:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f0f00cd

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->OrderedOptions:Landroid/widget/LinearLayout;

    .line 138
    const v1, 0x7f0f00e0

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->viewByItem:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 139
    const v1, 0x7f0f00e1

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutOutOfStock:Landroid/widget/LinearLayout;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemListByNames:Ljava/util/List;

    .line 141
    const v1, 0x7f0f00ef

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->headerOptions:Landroid/widget/LinearLayout;

    .line 142
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->outofStock:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 143
    new-instance v1, Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemFragment:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 144
    new-instance v1, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "value":Landroid/os/Bundle;
    const-string v1, "cond"

    const-string v2, "Stock"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemFragment:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1, v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0f00fa

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemFragment:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    const v1, 0x7f0f00e4

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    const v1, 0x7f0f00f7

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->gv_itemByName:Landroid/widget/GridView;

    .line 152
    const v1, 0x7f0f00f4

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderItemsLayout:Landroid/widget/LinearLayout;

    .line 153
    const v1, 0x7f0f00f5

    invoke-virtual {p0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 154
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofStockItem()V

    .line 157
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->viewByItem:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tv_listofOutofStock:Landroid/widget/TextView;

    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->completed:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progress:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cancelled:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutHome:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->itemgroupDbsList:Ljava/util/List;

    .line 293
    new-instance v1, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 294
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 295
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 296
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Fetching Orders.."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Please Wait...."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderHandler:Landroid/os/Handler;

    .line 300
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutLogout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ivRefreshOrderLists:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "USER_ROLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_232

    .line 306
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "USER_ROLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->userRole:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->userRole:Ljava/lang/String;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Util;->getCostCenterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->costCenterType:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->tvOrderType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->costCenterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const-string v1, "costCenter"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->costCenterType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->orderLists:Ljava/util/List;

    .line 313
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 318
    :cond_232
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getOutofStock()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_251

    .line 320
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutOutOfStock:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_276

    .line 321
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutOutOfStock:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    :goto_24c
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->outofStock:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 327
    :cond_251
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->outofStock:Landroid/widget/ImageView;

    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInActivity()V

    .line 345
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v1, p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->registerSessionListener(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 347
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->callOnClick()Z

    .line 348
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->automaticallyUpdateOrder()V

    .line 349
    return-void

    .line 323
    :cond_276
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->layoutOutOfStock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_24c
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 818
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 819
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 822
    :cond_11
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 825
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isBound:Z

    if-eqz v0, :cond_26

    .line 826
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 827
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isBound:Z

    .line 832
    :cond_26
    return-void
.end method

.method public onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
    .registers 17
    .param p1, "orderList"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .param p2, "costCenter"    # I
    .param p3, "itemRate"    # Ljava/lang/String;
    .param p4, "isOutOfStock"    # Ljava/lang/Boolean;

    .prologue
    .line 929
    iget-object v9, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "costCenterName":Ljava/lang/String;
    iget-object v9, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->userRole:Ljava/lang/String;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/helper/Util;->getCostCenterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 931
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Does not belong to your cost center!!"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1029
    :goto_2c
    return-void

    .line 939
    :cond_2d
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 940
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030063

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 942
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f0f01c3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 943
    .local v4, "info":Landroid/widget/TextView;
    const v9, 0x7f0f01c4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 944
    .local v8, "yes":Landroid/widget/Button;
    const v9, 0x7f0f01c5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 945
    .local v6, "no":Landroid/widget/Button;
    const v9, 0x7f0f01c0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 946
    .local v1, "close":Landroid/widget/ImageView;
    const v9, 0x7f0f01c2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 948
    .local v5, "itemImage":Landroid/widget/ImageView;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10c

    .line 949
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now Available ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :goto_99
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->BaseURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ROI_Item/ImageItem/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, "imagePath":Ljava/lang/String;
    const-string v9, " "

    const-string v10, "%20"

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 956
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v9

    .line 957
    invoke-virtual {v9, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    const v10, 0x7f0200b6

    .line 958
    invoke-virtual {v9, v10}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    const v10, 0x7f0200b6

    .line 959
    invoke-virtual {v9, v10}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    .line 960
    invoke-virtual {v9}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    const/16 v10, 0x96

    const/16 v11, 0x96

    .line 961
    invoke-virtual {v9, v10, v11}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    .line 962
    invoke-virtual {v9, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 964
    const-string v9, "Image Path"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v9, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;

    invoke-direct {v9, p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    new-instance v9, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;

    invoke-direct {v9, p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    new-instance v9, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    invoke-direct {v9, p0, p1, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Lcom/danfe/restaurantapp1/model/OrderDetailDb;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1025
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1026
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2c

    .line 951
    .end local v3    # "imagePath":Ljava/lang/String;
    :cond_10c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 872
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    .line 874
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->ivRefreshOrderLists:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 1067
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1068
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 593
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 594
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->cbRunningOrderPriority:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 597
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    .line 598
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 786
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 788
    iput-boolean v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    .line 789
    iget-boolean v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    if-eqz v1, :cond_21

    .line 790
    const-string v1, "screenState: "

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/danfe/restaurantapp1/LogoutService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 793
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 797
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_20
    return-void

    .line 795
    :cond_21
    const-string v1, "screenState: "

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 865
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 866
    const-string v0, "onStop: "

    const-string v1, "activity is no longer visible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->screenState:Z

    .line 868
    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 836
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserInteraction()V

    .line 837
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->currentlyActive:Z

    if-eqz v0, :cond_10

    .line 839
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInteracted()V

    .line 845
    :cond_10
    return-void
.end method

.method public ringtone()V
    .registers 5

    .prologue
    .line 1056
    const/4 v3, 0x2

    :try_start_1
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1057
    .local v1, "notification":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 1058
    .local v2, "r":Landroid/media/Ringtone;
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 1062
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :goto_10
    return-void

    .line 1059
    :catch_11
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public runOrder()V
    .registers 2

    .prologue
    .line 474
    new-instance v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    return-void
.end method

.method public updateOutOfStockData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    .local p1, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getListofStockItem()V

    .line 1052
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass1 (com.danfe.restaurantapp1.OrderItemDetailsActivity$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "ischecked"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 161
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0, v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$402(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Z)Z

    .line 174
    :goto_32
    return-void

    .line 167
    :cond_33
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$402(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Z)Z

    .line 171
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$1;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$500(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_32
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass10 (com.danfe.restaurantapp1.OrderItemDetailsActivity$10)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 971
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass11 (com.danfe.restaurantapp1.OrderItemDetailsActivity$11)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 973
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$11;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 977
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass12 (com.danfe.restaurantapp1.OrderItemDetailsActivity$12)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$orderList:Lcom/danfe/restaurantapp1/model/OrderDetailDb;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Lcom/danfe/restaurantapp1/model/OrderDetailDb;Landroid/app/AlertDialog;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 979
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->val$orderList:Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 982
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 983
    .local v1, "object":Lcom/google/gson/JsonObject;
    const-string v2, "ItemId"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->val$orderList:Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 985
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .line 986
    invoke-static {v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$900(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 987
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 985
    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$802(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;

    .line 988
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .line 989
    invoke-static {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$800(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lretrofit/RestAdapter;

    move-result-object v2

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;

    .line 991
    .local v0, "isOutOfStock":Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;
    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;)V

    invoke-interface {v0, v1, v2}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;->postisOutOfStock(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 1022
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass12.AnonymousClass1 (com.danfe.restaurantapp1.OrderItemDetailsActivity$12$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1017
    const-string v0, "Error"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 10
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v6, 0x1

    .line 994
    invoke-virtual {p2}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "status":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "message":Ljava/lang/String;
    const-string v3, "statusCode"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 997
    .local v2, "statusCode":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_77

    .line 998
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 999
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1000
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1002
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->refreshMenu()V

    .line 1004
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Added to list of Items Out of Stock"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1013
    :goto_76
    return-void

    .line 1008
    :cond_77
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1009
    const-string v3, "Item out of  Stock"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_76
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 991
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$12$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 182
    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemByOutOfStock(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030063

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 185
    .local v6, "stockView":Landroid/view/View;
    const v7, 0x7f0f01c6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 186
    .local v5, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    const v7, 0x7f0f01c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 188
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v7, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;

    invoke-direct {v7, p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v11, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 196
    .local v4, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 198
    const v7, 0x7f0f01c1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 199
    .local v3, "layoutDialog":Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v8, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;

    iget-object v9, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/danfe/restaurantapp1/adapter/StockListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v8, v7, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->stockListAdapter:Lcom/danfe/restaurantapp1/adapter/StockListAdapter;

    .line 200
    iget-object v7, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->stockListAdapter:Lcom/danfe/restaurantapp1/adapter/StockListAdapter;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 202
    new-instance v7, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    invoke-direct {v9, p0, v2, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Ljava/util/List;Landroid/app/AlertDialog;)V

    invoke-direct {v7, v8, v9}, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 265
    new-instance v7, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;

    invoke-direct {v7, p0, v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 276
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v5, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 278
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x190

    const/16 v9, 0x1ae

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 282
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.AnonymousClass1 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.C00022 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$itemgroupDbs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Ljava/util/List;Landroid/app/AlertDialog;)V
    .registers 4
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$itemgroupDbs:Ljava/util/List;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v3

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getCostCenterName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "costCenterName":Ljava/lang/String;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$700(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Util;->getCostCenterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 208
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Does not belong to your cost center!!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 261
    :goto_48
    return-void

    .line 212
    :cond_49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$itemgroupDbs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Available ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 216
    const-string v2, "Yes"

    new-instance v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    invoke-direct {v3, p0, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    const-string v2, "No"

    new-instance v3, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$2;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$2;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$3;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$3;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_48
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.C00022.AnonymousClass1 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;I)V
    .registers 3
    .param p1, "this$2"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iput p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 219
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 220
    .local v1, "object":Lcom/google/gson/JsonObject;
    const-string v3, "ItemId"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$itemgroupDbs:Ljava/util/List;

    iget v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->val$position:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 222
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .line 223
    invoke-static {v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$900(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$802(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;

    .line 225
    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .line 226
    invoke-static {v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$800(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lretrofit/RestAdapter;

    move-result-object v2

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;

    .line 228
    .local v0, "isOutOfStock":Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;
    new-instance v2, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;)V

    invoke-interface {v0, v1, v2}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$setIsOutOfStock;->postisOutOfStock(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 246
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.C00022.AnonymousClass1.C00031 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2$1$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;)V
    .registers 2
    .param p1, "this$3"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 242
    const-string v0, "Error"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 7
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 231
    invoke-virtual {p2}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Item has been added to available in stock"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 236
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->this$3:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->refreshMenu()V

    .line 238
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 228
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$1$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.C00022.DialogInterfaceOnClickListenerC00042 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2$2)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$2;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;)V
    .registers 2
    .param p1, "this$2"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$2;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$2;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 252
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.C00022.AnonymousClass3 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$2$3)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$3;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;)V
    .registers 2
    .param p1, "this$2"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2$3;->this$2:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 258
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass2.AnonymousClass3 (com.danfe.restaurantapp1.OrderItemDetailsActivity$2$3)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$2$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 271
    :cond_8
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass3 (com.danfe.restaurantapp1.OrderItemDetailsActivity$3)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_38

    .line 333
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 342
    :goto_37
    return-void

    .line 337
    :cond_38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$3;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_37
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass4 (com.danfe.restaurantapp1.OrderItemDetailsActivity$4)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->automaticallyUpdateOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 458
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;-><init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 467
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass4.AnonymousClass1 (com.danfe.restaurantapp1.OrderItemDetailsActivity$4$1)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;
.super Ljava/util/TimerTask;
.source "OrderItemDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 463
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4$1;->this$1:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$4;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runOrder()V

    .line 465
    :cond_11
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass5 (com.danfe.restaurantapp1.OrderItemDetailsActivity$5)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->runOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 480
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$500(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->callOnClick()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_18

    .line 488
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$5;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->automaticallyUpdateOrder()V

    .line 490
    return-void

    .line 484
    :catch_18
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass6 (com.danfe.restaurantapp1.OrderItemDetailsActivity$6)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->GetOrderLists(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
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
        "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

.field final synthetic val$RunningPriority:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->val$RunningPriority:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 574
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 582
    :cond_15
    const-string v0, "RETROFITDATA"

    const-string v1, "Retrofitrror"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;Lretrofit/client/Response;)V
    .registers 13
    .param p1, "kitchenOrderApiData"    # Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 507
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->getStatusCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 508
    .local v3, "statusCode":I
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "message":Ljava/lang/String;
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1a4

    .line 510
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;->getOrderResponseData()Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1402(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/util/List;)Ljava/util/List;

    .line 512
    const-string v5, "OrderListResponse"

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10c

    .line 514
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_37
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10c

    .line 515
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->getCostCenterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1500(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 517
    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$OrderResponse;->getTableList()Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1602(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;Ljava/util/List;)Ljava/util/List;

    .line 518
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1400(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_98

    .line 519
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1700(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :cond_95
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 521
    :cond_98
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 522
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1700(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v8, v5, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->caseValue:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1c2

    :cond_b8
    :goto_b8
    packed-switch v5, :pswitch_data_1d4

    goto :goto_95

    .line 525
    :pswitch_bc
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1800(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_95

    .line 523
    :sswitch_c6
    const-string v9, "InProgress"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    move v5, v6

    goto :goto_b8

    :sswitch_d0
    const-string v9, "Ordered"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    move v5, v7

    goto :goto_b8

    :sswitch_da
    const-string v9, "Complete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v5, 0x2

    goto :goto_b8

    :sswitch_e4
    const-string v9, "Canceled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v5, 0x3

    goto :goto_b8

    .line 528
    :pswitch_ee
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1900(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_95

    .line 531
    :pswitch_f8
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2000(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_95

    .line 534
    :pswitch_102
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2100(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_95

    .line 541
    .end local v4    # "x":I
    :cond_10c
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_129

    .line 542
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 543
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2200(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 547
    :cond_129
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->val$RunningPriority:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1c0

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_133
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1c0

    .line 550
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getIsRunningOrder()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_18b

    .line 551
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getIsRunningOrder()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_18e

    .line 552
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 557
    :goto_180
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v8, v1, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 549
    :cond_18b
    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    .line 554
    :cond_18e
    iget-object v5, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v8, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v8}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$1600(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_180

    .line 564
    .end local v0    # "index":I
    .end local v1    # "j":I
    :cond_1a4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OrderDetails InProgress Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .line 565
    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 564
    invoke-static {v5, v6}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 569
    :cond_1c0
    return-void

    .line 523
    nop

    :sswitch_data_1c2
    .sparse-switch
        -0x1fe06aa7 -> :sswitch_da
        -0x37d1747 -> :sswitch_e4
        0x1b45904d -> :sswitch_d0
        0x26881a92 -> :sswitch_c6
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_ee
        :pswitch_f8
        :pswitch_102
    .end packed-switch
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 503
    check-cast p1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$6;->success(Lcom/danfe/restaurantapp1/response/KitchenOrderApiData;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass7 (com.danfe.restaurantapp1.OrderItemDetailsActivity$7)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 803
    move-object v0, p2

    check-cast v0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;

    .line 804
    .local v0, "localBinder":Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;->getService()Lcom/danfe/restaurantapp1/LogoutService;

    move-result-object v2

    iput-object v2, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    .line 805
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 806
    iget-object v1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isBound:Z

    .line 807
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$7;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->isBound:Z

    .line 812
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass8 (com.danfe.restaurantapp1.OrderItemDetailsActivity$8)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$8;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$8;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$8;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutFunction()V

    .line 859
    return-void
.end method

###### Class com.danfe.restaurantapp1.OrderItemDetailsActivity.AnonymousClass9 (com.danfe.restaurantapp1.OrderItemDetailsActivity$9)
.class Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;
.super Ljava/lang/Object;
.source "OrderItemDetailsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->logoutFunction()V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 917
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout Request Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 922
    :goto_18
    return-void

    .line 919
    :catch_19
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 9
    .param p1, "logoutRespo"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 896
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    const-class v4, Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 897
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 898
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 899
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->access$2300(Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v3

    const-string v4, "login_preference"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v3, v1}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 901
    iget-object v3, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->finish()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 911
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_29
    return-void

    .line 903
    :catch_2a
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logout Request Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->this$0:Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_44

    goto :goto_29

    .line 907
    :catch_44
    move-exception v2

    .line 908
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "costcenterexc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 892
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity$9;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method
