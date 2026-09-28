###### Class com.danfe.restaurantapp1.MainActivity (com.danfe.restaurantapp1.MainActivity)
.class public Lcom/danfe/restaurantapp1/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;
.implements Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;
.implements Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;
.implements Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;
.implements Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;
.implements Lcom/danfe/restaurantapp1/Interface/LogoutInterface;


# static fields
.field public static final LOGIN_PREF_NAME:Ljava/lang/String; = "loginPreferences"

.field public static final PREF_LAST_FETCHED:Ljava/lang/String; = "lastFetchedDate"

.field public static final PREF_TOKEN:Ljava/lang/String; = "TOKEN"

.field private static billEntered:I

.field private static checkStatus:Ljava/lang/Boolean;

.field static currentlyActive:Z

.field private static isSplit:Z

.field public static menuBill:I

.field public static menuItemId:I

.field public static menuposition:I

.field private static orderItem:Lcom/danfe/restaurantapp1/helper/OrderItem;

.field static screenState:Z

.field public static selectedBill:I


# instance fields
.field private AdvancePayment:D

.field private BaseURL:Ljava/lang/String;

.field private DeviceId:Ljava/lang/String;

.field private GuestNumber:I

.field private RoomBookedDays:I

.field private RoomTotalCharge:D

.field private TvItemHeader:Landroid/widget/TextView;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private advancePayment:Landroid/widget/TextView;

.field private alertDialog:Landroid/app/AlertDialog;

.field private alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private alertDialogpin:Landroid/app/AlertDialog;

.field private auftragSpinnerAdapter:Lcom/danfe/restaurantapp1/helper/searchableSpinner;

.field private billArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billSpinnerNo:I

.field private billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

.field private billingLayout:Landroid/widget/LinearLayout;

.field private billingTermDbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/BillingTermDb;",
            ">;"
        }
    .end annotation
.end field

.field private billingTermDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/BillingTermDb;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field private bottomSheetBody:Landroid/widget/LinearLayout;

.field private bottomSheetHeader:Landroid/widget/RelativeLayout;

.field private bottomSheetSecondHeader:Landroid/widget/LinearLayout;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private btnAddGuest:Landroid/widget/ImageButton;

.field private btnCallWaiter:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private btnNotification:Landroid/widget/ImageButton;

.field private btnRefresh:Landroid/widget/ImageButton;

.field private btnSend:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_ok:Landroid/widget/Button;

.field private btpay:Landroid/widget/Button;

.field private cal:Ljava/util/Calendar;

.field private cancelOrder:Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

.field private cancelledLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation
.end field

.field private cbSplit:Landroid/widget/CheckBox;

.field private changedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field private clickedValue:Ljava/lang/String;

.field private combinedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private completed:Landroid/widget/TextView;

.field private completedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

.field private costcenterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private costcenterhashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private dialogView:Landroid/view/View;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private dte:Ljava/lang/String;

.field private editText1:Landroid/widget/EditText;

.field private etExtra:Landroid/widget/EditText;

.field private etGuest:Landroid/widget/EditText;

.field private etNotes:Landroid/widget/EditText;

.field private extraInfoAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

.field private extraItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private extraItemsLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private extrajsonArray:Lorg/json/JSONArray;

.field private flag:I

.field private flag1:I

.field private getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field private inflater:Landroid/view/LayoutInflater;

.field private inprogress:Landroid/widget/TextView;

.field private isBound:Z

.field private isDelivered:Z

.field private isTable:Ljava/lang/String;

.field private itemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ivOpenBottomSheet:Landroid/widget/ImageView;

.field private ivSetupTable:Landroid/widget/ImageView;

.field private jsonArray:Lorg/json/JSONArray;

.field private jsonParser:Lcom/google/gson/JsonParser;

.field private layoutAdvAmount:Landroid/widget/LinearLayout;

.field private layoutBill:Landroid/widget/LinearLayout;

.field private layoutCallWaiter:Landroid/widget/LinearLayout;

.field private layoutCallWaiter1:Landroid/widget/LinearLayout;

.field private layoutLogout:Landroid/widget/LinearLayout;

.field private layoutNotification:Landroid/widget/LinearLayout;

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private layoutRemainAmount:Landroid/widget/LinearLayout;

.field private layoutRoomCharges:Landroid/widget/LinearLayout;

.field private logoutDialog:Landroid/app/ProgressDialog;

.field private logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

.field private logoutService:Lcom/danfe/restaurantapp1/LogoutService;

.field private logoutString:Ljava/lang/String;

.field private lvDiscountSheet:Landroid/widget/ListView;

.field private lvOrder:Landroid/widget/ListView;

.field private menuItemLayout:Landroid/widget/LinearLayout;

.field private menuItemLayoutWidth:I

.field private myHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field newBillArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noItems:Landroid/widget/TextView;

.field private notificationCount:I

.field private obj:Lorg/json/JSONObject;

.field private orderFinalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private orderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

.field private orderListPerSeatNo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field public orderMasterId:J

.field private orderService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

.field private orderType:Ljava/lang/String;

.field private ordered:Landroid/widget/TextView;

.field private orderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private orderedOptions:Landroid/widget/LinearLayout;

.field private orderingUser:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field private prePrice:Ljava/lang/Double;

.field private preValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private preorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private progressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private remainingAmount:Landroid/widget/TextView;

.field private removedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation
.end field

.field private restAdapter:Lretrofit/RestAdapter;

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private room:Ljava/lang/String;

.field private roomId:J

.field private rvExtraItems:Landroid/support/v7/widget/RecyclerView;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private seatNoSelected:I

.field selectedStringBill:Ljava/lang/String;

.field private sendPaymentDetails:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private spAddedValue:I

.field private spBill:Landroid/widget/Spinner;

.field private spNewlyAddedValue:I

.field private spinnerQty:Ljava/lang/Double;

.field splitBillAdapter:Landroid/widget/ArrayAdapter;

.field private status:Ljava/lang/String;

.field private svExtraItems:Landroid/widget/LinearLayout;

.field private table:Ljava/lang/String;

.field private tableArray:[Ljava/lang/String;

.field private tableId:I

.field private tableSize:I

.field private tempFinalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryExtraListPerSeatNo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field temporaryextralist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private temporderListStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private temporderlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private totalBottomSheet:Landroid/view/View;

.field private tvBsNetAmt:Landroid/widget/TextView;

.field private tvBsTotal:Landroid/widget/TextView;

.field private tvBsTotalDisc:Landroid/widget/TextView;

.field private tvBsVat:Landroid/widget/TextView;

.field private tvDateTime:Landroid/widget/TextView;

.field private tvExtraItems:Landroid/widget/TextView;

.field private tvExtraTotal:Landroid/widget/TextView;

.field private tvLogout:Landroid/widget/ImageButton;

.field private tvNotificationCount:Landroid/widget/TextView;

.field private tvQuantityHeader:Landroid/widget/TextView;

.field private tvRoom:Landroid/widget/TextView;

.field private tvRoomCharge:Landroid/widget/TextView;

.field private tvSeatHeader:Landroid/widget/TextView;

.field private tvSubAmount:Landroid/widget/TextView;

.field private tvTable:Landroid/widget/TextView;

.field private tvTotalAmount:Landroid/widget/TextView;

.field private tvWaiter:Landroid/widget/TextView;

.field private tv_invalidcode:Landroid/widget/TextView;

.field private tv_totalWithExtra:Landroid/widget/TextView;

.field private tv_total_amount_bottomsheet:Landroid/widget/TextView;

.field private updatedPreValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field private usernamepin:Ljava/lang/String;

.field private viewExt:Landroid/view/View;

.field private windowWidth:I

.field private zoominAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 159
    sput v0, Lcom/danfe/restaurantapp1/MainActivity;->billEntered:I

    .line 160
    sput-boolean v1, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    .line 175
    sput v0, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    .line 228
    sput-boolean v1, Lcom/danfe/restaurantapp1/MainActivity;->screenState:Z

    .line 229
    sput-boolean v0, Lcom/danfe/restaurantapp1/MainActivity;->currentlyActive:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 176
    iput v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->GuestNumber:I

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->notificationCount:I

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->usernamepin:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderType:Ljava/lang/String;

    .line 209
    const-string v0, "Ordered"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    .line 215
    iput v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    .line 221
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->prePrice:Ljava/lang/Double;

    .line 224
    const-string v0, "com.danfe.restaurantapp1.ACTION_LOGOUT"

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutString:Ljava/lang/String;

    .line 227
    iput-boolean v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->isBound:Z

    .line 232
    iput v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag1:I

    .line 233
    iput v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->seatNoSelected:I

    iput v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->clickedValue:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryextralist:Ljava/util/List;

    .line 2255
    new-instance v0, Lcom/danfe/restaurantapp1/MainActivity$24;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/MainActivity$24;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private ExtrasRecycler(Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "extraItemsLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;>;"
    .local p2, "orderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 663
    .local v0, "extraAmt":Ljava/lang/Double;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6a

    .line 664
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4d

    .line 665
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 666
    .local v1, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4a

    .line 667
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 666
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 664
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 672
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v4    # "k":I
    :cond_4d
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6a

    .line 673
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_56
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6a

    .line 674
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 678
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_6a
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraTotal:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 680
    .local v5, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->rvExtraItems:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 681
    new-instance v6, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraInfoAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

    .line 682
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->rvExtraItems:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraInfoAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraInfoAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 684
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 685
    return-void
.end method

.method private FilterBillData(Ljava/lang/String;)V
    .registers 6
    .param p1, "selectedStringBill"    # Ljava/lang/String;

    .prologue
    .line 774
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->callOnClick()Z

    .line 776
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 777
    sget-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    if-eqz v2, :cond_73

    if-eqz p1, :cond_73

    .line 779
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 781
    :cond_28
    const/4 v2, 0x1

    sput v2, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    .line 782
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2c
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 783
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 786
    .end local v1    # "j":I
    :cond_42
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    .line 787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_49
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8d

    .line 789
    sget v3, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_70

    .line 790
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 797
    .end local v0    # "i":I
    :cond_73
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_74
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 798
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 803
    .end local v1    # "j":I
    :cond_8d
    const-string v2, "Ordered"

    invoke-direct {p0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->getItemList(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateTotalPriceAmount()V

    .line 806
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 807
    return-void
.end method

.method private ValidateUser()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 810
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->username:Ljava/lang/String;

    const-string v1, "Dear Customer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 811
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoom:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getRoomTypeId()I

    move-result v0

    if-eq v0, v2, :cond_2c

    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getRoomId()I

    move-result v0

    if-eq v0, v2, :cond_2c

    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getTableId()I

    move-result v0

    if-ne v0, v2, :cond_49

    .line 813
    :cond_2c
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No table has been set."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 814
    invoke-direct {p0, v4}, Lcom/danfe/restaurantapp1/MainActivity;->authenticateUser(I)V

    .line 824
    :goto_3c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutLogout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutCallWaiter:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    :goto_48
    return-void

    .line 818
    :cond_49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getTableId()I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    .line 819
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getRoomId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->roomId:J

    .line 820
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvTable:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/Preferences;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoom:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/Preferences;->getRoomName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateOrder()V

    goto :goto_3c

    .line 828
    :cond_a0
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoom:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Room :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->room:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvTable:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tableId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    .line 832
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roomid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->roomId:J

    .line 833
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableSize:I

    .line 834
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoom:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Room:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->room:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvTable:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateOrder()V

    goto/16 :goto_48
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/MainActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->menuItemLayoutWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/danfe/restaurantapp1/MainActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->menuItemLayoutWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->menuItemLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->svExtraItems:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->ivOpenBottomSheet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    return-void
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->zoominAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->btnCallWaiter:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/MainActivity;->FilterBillData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->clickedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderingUser:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/danfe/restaurantapp1/MainActivity;D)D
    .registers 4
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # D

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/danfe/restaurantapp1/MainActivity;D)D
    .registers 4
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # D

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->AdvancePayment:D

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/danfe/restaurantapp1/MainActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->RoomBookedDays:I

    return p1
.end method

.method static synthetic access$2500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tempFinalList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preorderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->spinnerQty:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/lang/Double;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->spinnerQty:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/danfe/restaurantapp1/MainActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->billSpinnerNo:I

    return v0
.end method

.method static synthetic access$3002(Lcom/danfe/restaurantapp1/MainActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->billSpinnerNo:I

    return p1
.end method

.method static synthetic access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/danfe/restaurantapp1/MainActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    return v0
.end method

.method static synthetic access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/danfe/restaurantapp1/MainActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    return v0
.end method

.method static synthetic access$3702(Lcom/danfe/restaurantapp1/MainActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    return p1
.end method

.method static synthetic access$3704(Lcom/danfe/restaurantapp1/MainActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    return v0
.end method

.method static synthetic access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/danfe/restaurantapp1/MainActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryExtraListPerSeatNo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/danfe/restaurantapp1/MainActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/danfe/restaurantapp1/MainActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvWaiter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonParser;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/danfe/restaurantapp1/MainActivity;Lcom/google/gson/JsonParser;)Lcom/google/gson/JsonParser;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lcom/google/gson/JsonParser;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelOrder:Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/danfe/restaurantapp1/MainActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelOrder:Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/danfe/restaurantapp1/MainActivity;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->btnCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutBill:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 117
    sput-boolean p0, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    return p0
.end method

.method static synthetic access$5200()I
    .registers 1

    .prologue
    .line 117
    sget v0, Lcom/danfe/restaurantapp1/MainActivity;->billEntered:I

    return v0
.end method

.method static synthetic access$5202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 117
    sput p0, Lcom/danfe/restaurantapp1/MainActivity;->billEntered:I

    return p0
.end method

.method static synthetic access$5300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->isTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->btpay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Landroid/widget/ArrayAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/LogoutService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/danfe/restaurantapp1/MainActivity;Lcom/danfe/restaurantapp1/LogoutService;)Lcom/danfe/restaurantapp1/LogoutService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/LogoutService;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/danfe/restaurantapp1/MainActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/danfe/restaurantapp1/MainActivity;->isBound:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MainActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity;->ExtrasRecycler(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method private authenticateUser(I)V
    .registers 16
    .param p1, "i"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x5

    const/16 v9, 0xa

    .line 1800
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1801
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v8, "<font color=\'black\'>Please Login</font>"

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1802
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1804
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1805
    .local v6, "tvUsername":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1807
    .local v5, "tvPassword":Landroid/widget/TextView;
    const-string v7, "Username"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1808
    const-string v7, "sans-serif-condensed"

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1809
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1810
    invoke-virtual {v6, v9, v10, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1811
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1813
    const-string v7, "Password"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1814
    invoke-virtual {v5, v9, v10, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1815
    const-string v7, "sans-serif-condensed"

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1816
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090072

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    invoke-virtual {v5, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1817
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1819
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1820
    .local v2, "etLoginUsername":Landroid/widget/EditText;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1822
    .local v1, "etLoginPassword":Landroid/widget/EditText;
    const-string v7, "UserName"

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1823
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1824
    const-string v7, "sans-serif-condensed"

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1825
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    invoke-virtual {v2, v12, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1826
    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1827
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1828
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1830
    const-string v7, "Password"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1831
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1832
    const-string v7, "sans-serif-condensed"

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1833
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    invoke-virtual {v1, v12, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1834
    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1835
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1836
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1837
    const/16 v7, 0x81

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 1839
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1840
    .local v0, "dialogLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1841
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1842
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1843
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1844
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1845
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1847
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1848
    .local v4, "loginUsername":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1849
    .local v3, "loginPassword":Ljava/lang/String;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1850
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v8, "Login"

    new-instance v9, Lcom/danfe/restaurantapp1/MainActivity$19;

    invoke-direct {v9, p0, v2, v1}, Lcom/danfe/restaurantapp1/MainActivity$19;-><init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1860
    if-nez p1, :cond_17e

    .line 1861
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v8, "Cancel"

    new-instance v9, Lcom/danfe/restaurantapp1/MainActivity$20;

    invoke-direct {v9, p0}, Lcom/danfe/restaurantapp1/MainActivity$20;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1869
    :cond_17e
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1870
    return-void
.end method

.method private calculateGrandTotal()Ljava/lang/Double;
    .registers 11

    .prologue
    .line 1371
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1372
    .local v0, "extraAmt":Ljava/lang/Double;
    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_53

    .line 1373
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_f
    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_53

    .line 1374
    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1375
    .local v1, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 1376
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1375
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1373
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1381
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_53
    return-object v0
.end method

.method private displayChangedDialog(Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V
    .registers 4
    .param p2, "successInterface"    # Lcom/danfe/restaurantapp1/Interface/SuccessInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/SuccessInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1662
    .local p1, "changedInfo":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    new-instance v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V

    .line 1663
    .local v0, "cancelledOrderDialog":Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;
    return-void
.end method

.method private getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;
    .registers 14
    .param p1, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .prologue
    .line 2417
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2419
    .local v3, "price":Ljava/lang/Double;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7b

    .line 2420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_f0

    .line 2421
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2423
    .local v0, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_78

    .line 2424
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2425
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2423
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2420
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2429
    .end local v0    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_7b
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryExtraListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_f0

    .line 2430
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_84
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryExtraListPerSeatNo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_f0

    .line 2431
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryExtraListPerSeatNo:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2432
    .local v4, "tempExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_95
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_ed

    .line 2433
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 2434
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2432
    :cond_ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 2430
    :cond_ed
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 2440
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "tempExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    :cond_f0
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    return-object v5
.end method

.method private getChangedInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .registers 15
    .param p1, "cancelledBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1667
    .local p2, "orderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .local v11, "mycancelledLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_c9

    .line 1669
    const-string v2, "FullRestroRoomData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreorderValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " PostorderValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_c5

    .line 1671
    new-instance v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    .line 1672
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderingUser:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    .line 1673
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1674
    .local v0, "itemCancelledListModel":Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    .end local v0    # "itemCancelledListModel":Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;
    :cond_c5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1680
    :cond_c9
    return-object v11
.end method

.method private getItemList(Ljava/lang/String;)V
    .registers 11
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1387
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    .line 1388
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1391
    return-void
.end method

.method private getPredefinedValue()V
    .registers 5

    .prologue
    .line 690
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    .line 691
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    .line 693
    :try_start_e
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v2, "TableId"

    iget v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 697
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 699
    const-string v1, "json"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_39} :catch_66

    .line 703
    :goto_39
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 704
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 705
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 707
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 708
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 709
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$8;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/MainActivity$8;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 769
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 770
    return-void

    .line 700
    :catch_66
    move-exception v0

    .line 701
    .local v0, "je":Lorg/json/JSONException;
    const-string v1, "json exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private getRemovedItems(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1650
    .local p1, "cancelledLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    .local p2, "orderItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    .local p3, "removedItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 1651
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1652
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1653
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1651
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1650
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1658
    .end local v1    # "j":I
    :cond_35
    return-object p1
.end method

.method private loginUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "loginUsername"    # Ljava/lang/String;
    .param p2, "loginPassword"    # Ljava/lang/String;

    .prologue
    .line 1873
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1875
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_5
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v3, "password"

    invoke-virtual {v1, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v3, "WaiterIP"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->DeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const-string v3, "json"

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_43

    .line 1882
    :goto_1f
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 1883
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 1884
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1885
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    .line 1886
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    .line 1887
    .local v2, "webService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;
    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$21;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/MainActivity$21;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-interface {v2, v1, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;->loginRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 1929
    return-void

    .line 1879
    .end local v2    # "webService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;
    :catch_43
    move-exception v0

    .line 1880
    .local v0, "je":Ljava/lang/Exception;
    const-string v3, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private showGuestBox()V
    .registers 9

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x0

    .line 2146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2147
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v4, "<font color=\'black\'>Enter Guest No.</font>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2148
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2150
    .local v1, "etGuest":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x4b

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2151
    .local v3, "lpe":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v7, v6, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2153
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2154
    const/4 v4, 0x5

    invoke-virtual {v1, v7, v4, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2156
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2157
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2158
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2160
    const-string v4, "Number"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2161
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 2163
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 2165
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2167
    const v4, 0x7f020058

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2169
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2170
    const v4, 0x7f0200ae

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2171
    const-string v4, "Ok"

    new-instance v5, Lcom/danfe/restaurantapp1/MainActivity$23;

    invoke-direct {v5, p0, v1}, Lcom/danfe/restaurantapp1/MainActivity$23;-><init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2194
    return-void
.end method

.method private updateCostCenter()V
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x8

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 2326
    iget-wide v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    cmpl-double v6, v6, v12

    if-nez v6, :cond_37

    .line 2327
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRoomCharges:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2328
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRemainAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2329
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutAdvAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2337
    :cond_1c
    :goto_1c
    iget v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag1:I

    if-nez v6, :cond_9e

    .line 2338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4d

    .line 2339
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2331
    .end local v1    # "i":I
    :cond_37
    iget-wide v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_1c

    .line 2332
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRoomCharges:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2333
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRemainAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2334
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutAdvAmount:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1c

    .line 2343
    .restart local v1    # "i":I
    :cond_4d
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 2344
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    .line 2345
    const/4 v1, 0x0

    :goto_62
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_9c

    .line 2346
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 2347
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2345
    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 2351
    :cond_90
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2352
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->callOnClick()Z

    .line 2354
    :cond_9c
    iput v9, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag1:I

    .line 2358
    .end local v1    # "i":I
    :cond_9e
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvDiscountSheet:Landroid/widget/ListView;

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2359
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_23b

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_23b

    .line 2360
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1f0

    .line 2361
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2362
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v9, :cond_14d

    .line 2363
    const-string v7, "tempItemID"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2366
    .local v0, "costcenterid":I
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v6}, Lcom/danfe/restaurantapp1/MainActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    .end local v0    # "costcenterid":I
    :cond_127
    new-instance v6, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-direct {v6, p0, v7, p0}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;)V

    iput-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    .line 2390
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvDiscountSheet:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2391
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->updateTotalAmount()V

    .line 2410
    :goto_13c
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2411
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2412
    iput v10, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag1:I

    .line 2413
    return-void

    .line 2368
    :cond_14d
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_14e
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_127

    .line 2369
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2370
    .local v3, "rate":Ljava/lang/Double;
    const-string v7, "itemid"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2372
    .restart local v0    # "costcenterid":I
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_180
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1ec

    .line 2373
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2374
    .local v2, "newcostcenterid":I
    if-ne v2, v0, :cond_1d3

    .line 2375
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d6

    .line 2376
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v6}, Lcom/danfe/restaurantapp1/MainActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2377
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    :cond_1d3
    :goto_1d3
    add-int/lit8 v5, v5, 0x1

    goto :goto_180

    .line 2380
    :cond_1d6
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {p0, v6}, Lcom/danfe/restaurantapp1/MainActivity;->getActualPrice(Lcom/danfe/restaurantapp1/model/OrderDetailDb;)Ljava/lang/Double;

    move-result-object v3

    .line 2381
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d3

    .line 2368
    .end local v2    # "newcostcenterid":I
    :cond_1ec
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14e

    .line 2394
    .end local v0    # "costcenterid":I
    .end local v3    # "rate":Ljava/lang/Double;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1f0
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvDiscountSheet:Landroid/widget/ListView;

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2395
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 2396
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvTotalAmount:Landroid/widget/TextView;

    const-string v7, "Total Amount: 0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotal:Landroid/widget/TextView;

    const-string v7, "0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2398
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotalDisc:Landroid/widget/TextView;

    const-string v7, "0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2399
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvSubAmount:Landroid/widget/TextView;

    const-string v7, "0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2400
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoomCharge:Landroid/widget/TextView;

    const-string v7, "0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2401
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->advancePayment:Landroid/widget/TextView;

    const-string v7, "0.00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2402
    new-instance v6, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-direct {v6, p0, v7, p0}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lcom/danfe/restaurantapp1/Interface/UpdateTotalPrice;)V

    iput-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    .line 2403
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->lvDiscountSheet:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2404
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->billingAdapter:Lcom/danfe/restaurantapp1/adapter/BillingAdapter;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/adapter/BillingAdapter;->updateTotalAmount()V

    goto/16 :goto_13c

    .line 2407
    :cond_23b
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    .line 2408
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    goto/16 :goto_13c
.end method

.method private validateNotificationCounter()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2197
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {v0, p0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getNotificationsCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->notificationCount:I

    .line 2198
    iget v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->notificationCount:I

    if-lez v0, :cond_25

    .line 2199
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutNotification:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2200
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2201
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvNotificationCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->notificationCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2206
    :goto_24
    return-void

    .line 2203
    :cond_25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvNotificationCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->layoutNotification:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_24
.end method


# virtual methods
.method public CancelOrder(Ljava/lang/String;)V
    .registers 12
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1686
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v5, v9

    .line 1687
    .local v5, "remarks":[Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy hh:mm:ss a"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    .local v1, "currentDateandTime":Ljava/lang/String;
    const-string v7, "date"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1692
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "Cancel Remarks"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1693
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1694
    .local v3, "editText":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/16 v8, 0xc8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1695
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const-string v7, "remarks"

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1696
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1697
    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 1700
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1701
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1702
    const-string v7, "Cancel"

    new-instance v8, Lcom/danfe/restaurantapp1/MainActivity$17;

    invoke-direct {v8, p0}, Lcom/danfe/restaurantapp1/MainActivity$17;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1709
    const-string v7, "OK"

    new-instance v8, Lcom/danfe/restaurantapp1/MainActivity$18;

    invoke-direct {v8, p0, v3, v5, p1}, Lcom/danfe/restaurantapp1/MainActivity$18;-><init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1795
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1796
    .local v2, "dialog2":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1797
    return-void
.end method

.method public LogoutFunction()V
    .registers 6

    .prologue
    .line 2629
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2631
    .local v1, "obj":Lcom/google/gson/JsonObject;
    :try_start_5
    const-string v2, "username"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    const-string v2, "json"

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_43

    .line 2637
    :goto_1b
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 2638
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    .line 2639
    invoke-virtual {v2}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 2640
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 2641
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    .line 2642
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$25;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/MainActivity$25;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-interface {v2, v1, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LogoutRequest;->logoutRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 2675
    return-void

    .line 2634
    :catch_43
    move-exception v0

    .line 2635
    .local v0, "je":Ljava/lang/Exception;
    const-string v2, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public PayOrder()V
    .registers 5

    .prologue
    .line 1394
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1395
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string v1, "Please wait. Sending Pay Information"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1396
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1397
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 1398
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 1399
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1400
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->sendPaymentDetails:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;

    .line 1401
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->sendPaymentDetails:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;

    iget v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$14;

    invoke-direct {v3, p0, v0}, Lcom/danfe/restaurantapp1/MainActivity$14;-><init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/app/ProgressDialog;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendPaymentDetails;->sendPaydetails(ILretrofit/Callback;)V

    .line 1427
    return-void
.end method

.method public SendOrder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "userRole"    # Ljava/lang/String;

    .prologue
    .line 1431
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1433
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    .line 1434
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    .line 1435
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extrajsonArray:Lorg/json/JSONArray;

    .line 1437
    :try_start_1b
    iget-wide v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_9e

    .line 1438
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "OrderStatus"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1439
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "GuestNo"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1442
    :goto_33
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "OrderMasterId"

    iget-wide v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1443
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "TableId"

    iget v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1444
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "RoomId"

    iget-wide v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->roomId:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1445
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "Remarks"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1446
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "IsSplit"

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1449
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_10b

    .line 1450
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1451
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "GuestNo"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1452
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "SeatNo"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1458
    :goto_82
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_88
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_11c

    .line 1460
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 1441
    .end local v1    # "i":I
    :cond_9e
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "OrderStatus"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_a6} :catch_a7

    goto :goto_33

    .line 1489
    :catch_a7
    move-exception v2

    .line 1490
    .local v2, "je":Lorg/json/JSONException;
    const-string v5, "json exception"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .end local v2    # "je":Lorg/json/JSONException;
    :goto_b1
    new-instance v4, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 1494
    .local v4, "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    const-wide/16 v6, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 1495
    const-wide/16 v6, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 1496
    const-wide/16 v6, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 1498
    new-instance v5, Lretrofit/RestAdapter$Builder;

    invoke-direct {v5}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 1499
    invoke-virtual {v5, v6}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v5

    .line 1500
    invoke-virtual {v5}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1502
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v6, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    invoke-virtual {v5, v6}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    .line 1504
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1e8

    .line 1505
    const-string v5, "Void Bill"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 1506
    const-string v5, "Send Order userRole "

    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v5, 0x1

    iput v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    .line 1508
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    new-instance v6, Lcom/danfe/restaurantapp1/MainActivity$15;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/MainActivity$15;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-direct {p0, v5, v6}, Lcom/danfe/restaurantapp1/MainActivity;->displayChangedDialog(Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V

    .line 1646
    :cond_10a
    :goto_10a
    return-void

    .line 1454
    .end local v4    # "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :cond_10b
    :try_start_10b
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1455
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "GuestNo"

    iget v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_82

    .line 1462
    .restart local v1    # "i":I
    :cond_11c
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "IsCancelled"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1463
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "UserName"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    const/4 v1, 0x0

    :goto_12c
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_148

    .line 1466
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1465
    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    .line 1469
    :cond_148
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "orderDetailsList"

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1471
    const/4 v1, 0x0

    :goto_152
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_17e

    .line 1472
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1473
    .local v0, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_17b

    .line 1474
    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->extrajsonArray:Lorg/json/JSONArray;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->toExtraJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1473
    add-int/lit8 v3, v3, 0x1

    goto :goto_163

    .line 1471
    :cond_17b
    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    .line 1477
    .end local v0    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v3    # "k":I
    :cond_17e
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "orderExtraItem"

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->extrajsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1478
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v6, "OrderTypeID"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1480
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 1481
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 1482
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5}, Lcom/danfe/restaurantapp1/MainActivity;->getChangedInfo(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->tempList:Ljava/util/List;

    .line 1484
    const/4 v1, 0x0

    :goto_1af
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->tempList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1c5

    .line 1485
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->tempList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    .line 1488
    :cond_1c5
    const-string v5, "sendOrderResponse"

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d0
    .catch Lorg/json/JSONException; {:try_start_10b .. :try_end_1d0} :catch_a7

    goto/16 :goto_b1

    .line 1577
    .end local v1    # "i":I
    .restart local v4    # "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    :cond_1d2
    const-string v5, "You don\'t have require permission to cancel order"

    const-string v6, "Cancel Order Failed "

    invoke-static {v5, v6, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1579
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 1580
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_10a

    .line 1586
    :cond_1e8
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v7, Lcom/danfe/restaurantapp1/MainActivity$16;

    invoke-direct {v7, p0}, Lcom/danfe/restaurantapp1/MainActivity$16;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-interface {v5, v6, v7}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;->postOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    goto/16 :goto_10a
.end method

.method public beginFragmentTransaction(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f00be

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 842
    return-void
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 2680
    new-instance v0, Lcom/danfe/restaurantapp1/MainActivity$26;

    invoke-direct {v0, p0}, Lcom/danfe/restaurantapp1/MainActivity$26;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2687
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 2303
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 2304
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 21
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_57e

    .line 1367
    :cond_7
    :goto_7
    return-void

    .line 1078
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 1081
    const-string v2, "send_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderType:Ljava/lang/String;

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    const-string v3, "sendOrder"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 1084
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_71

    .line 1085
    const-string v2, "send_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderType:Ljava/lang/String;

    .line 1086
    new-instance v2, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    const-string v4, "cancelOrder"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    sget v7, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_7

    .line 1089
    :cond_71
    const-string v2, "No items ordered, Please order atleast one item."

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1095
    :sswitch_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    const-string v2, "Ordered"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->clickedValue:Ljava/lang/String;

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1103
    const-string v2, "Ordered"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1105
    sget-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    if-eqz v2, :cond_12f

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 1107
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_14c

    .line 1108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_12c
    add-int/lit8 v14, v14, 0x1

    goto :goto_f7

    .line 1114
    .end local v14    # "i":I
    :cond_12f
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_14c

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v14, v14, 0x1

    goto :goto_130

    .line 1120
    .end local v14    # "i":I
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v15

    .line 1122
    .local v15, "index":I
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v16

    .line 1126
    .local v16, "index1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1127
    .local v18, "v1":Landroid/view/View;
    if-nez v18, :cond_1a1

    const/16 v17, 0x0

    .line 1128
    .local v17, "top1":I
    :goto_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$10;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_7

    .line 1127
    .end local v17    # "top1":I
    :cond_1a1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int v17, v2, v3

    goto :goto_186

    .line 1144
    .end local v15    # "index":I
    .end local v16    # "index1":I
    .end local v18    # "v1":Landroid/view/View;
    :sswitch_1b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1151
    const-string v2, "Complete"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->clickedValue:Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1153
    const-string v2, "Complete"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1155
    sget-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    if-eqz v2, :cond_262

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_27f

    .line 1157
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_22a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_27f

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25f

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_25f
    add-int/lit8 v14, v14, 0x1

    goto :goto_22a

    .line 1165
    .end local v14    # "i":I
    :cond_262
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_27f

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    add-int/lit8 v14, v14, 0x1

    goto :goto_263

    .line 1171
    .end local v14    # "i":I
    :cond_27f
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_7

    .line 1179
    :sswitch_2a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    const v3, 0x7f020062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    const-string v2, "InProgress"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->clickedValue:Ljava/lang/String;

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1188
    const-string v2, "InProgress"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1191
    sget-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    if-eqz v2, :cond_35b

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_378

    .line 1193
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_378

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_358

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_358
    add-int/lit8 v14, v14, 0x1

    goto :goto_323

    .line 1201
    .end local v14    # "i":I
    :cond_35b
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_35c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_378

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    add-int/lit8 v14, v14, 0x1

    goto :goto_35c

    .line 1207
    .end local v14    # "i":I
    :cond_378
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->status:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_7

    .line 1217
    :sswitch_3a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCancel:Landroid/widget/Button;

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCancel:Landroid/widget/Button;

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1219
    const-string v2, "cancel_order"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderType:Ljava/lang/String;

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_403

    .line 1221
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3d8

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    goto/16 :goto_7

    .line 1224
    :cond_3d8
    new-instance v13, Lcom/danfe/restaurantapp1/MainActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/danfe/restaurantapp1/MainActivity$11;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    .line 1246
    .local v13, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1247
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Do you want to cancel the order?"

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    .line 1248
    invoke-virtual {v2, v3, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    .line 1249
    invoke-virtual {v2, v3, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Send Order"

    .line 1250
    invoke-virtual {v2, v3, v13}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1251
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1254
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_403
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    goto/16 :goto_7

    .line 1259
    :sswitch_408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->logoutDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvLogout:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->zoominAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->LogoutFunction()V

    goto/16 :goto_7

    .line 1272
    :sswitch_41f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_44f

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutBill:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1276
    const/4 v2, 0x1

    sput-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->showGuestBox()V

    .line 1284
    :goto_447
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateTotalPriceAmount()V

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    goto/16 :goto_7

    .line 1279
    :cond_44f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutBill:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1282
    const/4 v2, 0x0

    sput-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    goto :goto_447

    .line 1290
    :sswitch_46d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->newBillArray:Ljava/util/List;

    .line 1291
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "<font color=\'#FF7F27\'> <b> No. of Split Information! </b> </font"

    .line 1292
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0200aa

    .line 1293
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/danfe/restaurantapp1/MainActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/danfe/restaurantapp1/MainActivity$13;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    .line 1294
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/danfe/restaurantapp1/MainActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/danfe/restaurantapp1/MainActivity$12;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    .line 1308
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nNew Split Added. Split No: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1322
    .local v11, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->FilterBillData(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1330
    .end local v11    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :sswitch_4d9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->authenticateUser(I)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ivSetupTable:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->zoominAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    .line 1336
    :sswitch_4ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_51d

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->svExtraItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraItems:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->callOnClick()Z

    goto/16 :goto_7

    .line 1342
    :cond_51d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    goto/16 :goto_7

    .line 1349
    :sswitch_532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_55c

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->svExtraItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    goto/16 :goto_7

    .line 1355
    :cond_55c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v2}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    goto/16 :goto_7

    .line 1364
    :sswitch_571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    const-string v3, "payOrder"

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1076
    :sswitch_data_57e
    .sparse-switch
        0x7f0f00b8 -> :sswitch_408
        0x7f0f00bd -> :sswitch_4d9
        0x7f0f00c4 -> :sswitch_41f
        0x7f0f00c9 -> :sswitch_46d
        0x7f0f00ce -> :sswitch_7e
        0x7f0f00cf -> :sswitch_2a9
        0x7f0f00d0 -> :sswitch_1b0
        0x7f0f00d8 -> :sswitch_3a2
        0x7f0f00d9 -> :sswitch_8
        0x7f0f016f -> :sswitch_532
        0x7f0f0170 -> :sswitch_4ec
        0x7f0f0174 -> :sswitch_571
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 245
    const v2, 0x7f03001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->setContentView(I)V

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->myHashmap:Ljava/util/HashMap;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInActivity()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/database/MyApplication;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/danfe/restaurantapp1/database/MyApplication;->registerSessionListener(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 252
    .local v11, "display":Landroid/view/Display;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v14, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v11, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 254
    const-string v2, "Display "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const v2, 0x7f0f00d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    .line 257
    const v2, 0x7f0f00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    .line 258
    const v2, 0x7f0f00d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCancel:Landroid/widget/Button;

    .line 259
    const v2, 0x7f0f00c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    .line 260
    const v2, 0x7f0f00c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnRefresh:Landroid/widget/ImageButton;

    .line 261
    const v2, 0x7f0f00bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCallWaiter:Landroid/widget/Button;

    .line 262
    const v2, 0x7f0f00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvWaiter:Landroid/widget/TextView;

    .line 263
    const v2, 0x7f0f00b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvLogout:Landroid/widget/ImageButton;

    .line 264
    const v2, 0x7f0f00cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoom:Landroid/widget/TextView;

    .line 265
    const v2, 0x7f0f00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvTable:Landroid/widget/TextView;

    .line 266
    const v2, 0x7f0f00c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutBill:Landroid/widget/LinearLayout;

    .line 267
    const v2, 0x7f0f00c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    .line 268
    const v2, 0x7f0f00c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    .line 269
    const v2, 0x7f0f00d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvQuantityHeader:Landroid/widget/TextView;

    .line 270
    const v2, 0x7f0f017a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvSubAmount:Landroid/widget/TextView;

    .line 272
    const v2, 0x7f0f017c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoomCharge:Landroid/widget/TextView;

    .line 273
    const v2, 0x7f0f0183

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->advancePayment:Landroid/widget/TextView;

    .line 274
    const v2, 0x7f0f017b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRoomCharges:Landroid/widget/LinearLayout;

    .line 275
    const v2, 0x7f0f0184

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutRemainAmount:Landroid/widget/LinearLayout;

    .line 276
    const v2, 0x7f0f0182

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutAdvAmount:Landroid/widget/LinearLayout;

    .line 277
    const v2, 0x7f0f0185

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->remainingAmount:Landroid/widget/TextView;

    .line 279
    const v2, 0x7f0f00ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    .line 280
    const v2, 0x7f0f00cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    .line 281
    const v2, 0x7f0f00d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    .line 282
    const v2, 0x7f0f00cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedOptions:Landroid/widget/LinearLayout;

    .line 284
    const v2, 0x7f0f00d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->TvItemHeader:Landroid/widget/TextView;

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 286
    const v2, 0x7f0f0170

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ivOpenBottomSheet:Landroid/widget/ImageView;

    .line 287
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->logoutDialog:Landroid/app/ProgressDialog;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->logoutDialog:Landroid/app/ProgressDialog;

    const-string v3, "Logging-Out Please Wait...."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->logoutDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 291
    const v2, 0x7f0f0176

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvDiscountSheet:Landroid/widget/ListView;

    .line 293
    const v2, 0x7f0f017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotal:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f0f017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotalDisc:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f0f0181

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tv_total_amount_bottomsheet:Landroid/widget/TextView;

    .line 296
    const v2, 0x7f0f0174

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btpay:Landroid/widget/Button;

    .line 297
    const v2, 0x7f0f0175

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->noItems:Landroid/widget/TextView;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    .line 302
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderlist:Ljava/util/ArrayList;

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterList:Ljava/util/ArrayList;

    .line 304
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->costcenterhashmap:Ljava/util/HashMap;

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->progressList:Ljava/util/ArrayList;

    .line 306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->updatedPreValue:Ljava/util/ArrayList;

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completedList:Ljava/util/ArrayList;

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->preorderList:Ljava/util/ArrayList;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->combinedList:Ljava/util/ArrayList;

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListPerSeatNo:Ljava/util/ArrayList;

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporderListStatus:Ljava/util/ArrayList;

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemList:Ljava/util/ArrayList;

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->changedList:Ljava/util/ArrayList;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tempList:Ljava/util/List;

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tempFinalList:Ljava/util/List;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->removedItems:Ljava/util/List;

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->temporaryExtraListPerSeatNo:Ljava/util/List;

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->inprogress:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->completed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v2, 0x7f0f016f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetHeader:Landroid/widget/RelativeLayout;

    .line 331
    const v2, 0x7f0f0172

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBody:Landroid/widget/LinearLayout;

    .line 332
    const v2, 0x7f0f00bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->menuItemLayout:Landroid/widget/LinearLayout;

    .line 333
    const v2, 0x7f0f0180

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingLayout:Landroid/widget/LinearLayout;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->menuItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v16

    .line 335
    .local v16, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/danfe/restaurantapp1/MainActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/danfe/restaurantapp1/MainActivity$1;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 346
    const v2, 0x7f0f00b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v17

    .line 349
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$2;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v2, 0x7f0f0171

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvTotalAmount:Landroid/widget/TextView;

    .line 357
    const v2, 0x7f0f0173

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraItems:Landroid/widget/TextView;

    .line 358
    const v2, 0x7f0f0178

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->rvExtraItems:Landroid/support/v7/widget/RecyclerView;

    .line 359
    const v2, 0x7f0f0177

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->svExtraItems:Landroid/widget/LinearLayout;

    .line 360
    const v2, 0x7f0f0179

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraTotal:Landroid/widget/TextView;

    .line 361
    const v2, 0x7f0f017f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tv_totalWithExtra:Landroid/widget/TextView;

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraItems:Landroid/widget/TextView;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$3;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v2, 0x7f0f00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->totalBottomSheet:Landroid/view/View;

    .line 404
    new-instance v2, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->totalBottomSheet:Landroid/view/View;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$4;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    .line 445
    new-instance v2, Lcom/danfe/restaurantapp1/service/TableService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V

    .line 446
    new-instance v2, Lcom/danfe/restaurantapp1/service/CostCenterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/danfe/restaurantapp1/service/CostCenterService;-><init>(Landroid/content/Context;)V

    .line 448
    new-instance v2, Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->checkPinCode:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .line 457
    const v2, 0x7f0f00bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ivSetupTable:Landroid/widget/ImageView;

    .line 461
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    const-string v3, "Order is being sent.Please wait.."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->pDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04001b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->zoominAnim:Landroid/view/animation/Animation;

    .line 469
    const v2, 0x7f0f00b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutLogout:Landroid/widget/LinearLayout;

    .line 471
    const v2, 0x7f0f00b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutCallWaiter:Landroid/widget/LinearLayout;

    .line 473
    const v2, 0x7f0f00ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutCallWaiter1:Landroid/widget/LinearLayout;

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCallWaiter:Landroid/widget/Button;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$5;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cal:Ljava/util/Calendar;

    .line 490
    new-instance v2, Lcom/danfe/restaurantapp1/helper/Preferences;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/Preferences;->getSplitBill()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_52f

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 496
    :cond_52f
    new-instance v2, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->username:Ljava/lang/String;

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "roomno"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->room:Ljava/lang/String;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tableno"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->table:Ljava/lang/String;

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tableId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "roomid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->roomId:J

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableSize:I

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isTable"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->isTable:Ljava/lang/String;

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->isTable:Ljava/lang/String;

    if-eqz v2, :cond_694

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->isTable:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b9

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btpay:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    :cond_5b9
    :goto_5b9
    const-string v2, "TABLESIZE"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableSize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->sdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->cal:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->dte:Ljava/lang/String;

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvWaiter:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    new-instance v13, Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;-><init>()V

    .line 533
    .local v13, "menuItemFragment":Lcom/danfe/restaurantapp1/MenuItemFragment;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 534
    .local v15, "value":Landroid/os/Bundle;
    const-string v2, "cond"

    const-string v3, "Main"

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v13, v15}, Lcom/danfe/restaurantapp1/MenuItemFragment;->setArguments(Landroid/os/Bundle;)V

    .line 536
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/danfe/restaurantapp1/MainActivity;->beginFragmentTransaction(Landroid/support/v4/app/Fragment;)V

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getPredefinedValue()V

    .line 549
    new-instance v2, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemList;Lcom/danfe/restaurantapp1/helper/SendItem$SendItemSingle;Lcom/danfe/restaurantapp1/helper/SendItem$RemoveOrderItem;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/Interface/ExtraClickedInterface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->lvOrder:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 590
    move-object/from16 v0, p0

    iget v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableSize:I

    if-eqz v2, :cond_6b3

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->layoutBill:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 597
    const/4 v2, 0x1

    sput-boolean v2, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    .line 599
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_67e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tableSize:I

    if-ge v12, v2, :cond_69c

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    add-int/lit8 v3, v12, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    add-int/lit8 v12, v12, 0x1

    goto :goto_67e

    .line 517
    .end local v12    # "i":I
    .end local v13    # "menuItemFragment":Lcom/danfe/restaurantapp1/MenuItemFragment;
    .end local v15    # "value":Landroid/os/Bundle;
    :cond_694
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->isTable:Ljava/lang/String;

    goto/16 :goto_5b9

    .line 603
    .restart local v12    # "i":I
    .restart local v13    # "menuItemFragment":Lcom/danfe/restaurantapp1/MenuItemFragment;
    .restart local v15    # "value":Landroid/os/Bundle;
    :cond_69c
    new-instance v10, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030071

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    invoke-direct {v10, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 604
    .local v10, "arrayAdapter":Landroid/widget/ArrayAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 607
    .end local v10    # "arrayAdapter":Landroid/widget/ArrayAdapter;
    .end local v12    # "i":I
    :cond_6b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ivSetupTable:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvLogout:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnSend:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnAddGuest:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->bottomSheetHeader:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->ivOpenBottomSheet:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btnRefresh:Landroid/widget/ImageButton;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$6;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->btpay:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/danfe/restaurantapp1/MainActivity$7;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 659
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1053
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 2291
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 2292
    const-string v0, "ACTIVITYSTATE"

    const-string v1, "DESTROYED"

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    iget-boolean v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->isBound:Z

    if-eqz v0, :cond_1c

    .line 2294
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutService:Lcom/danfe/restaurantapp1/LogoutService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 2295
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->isBound:Z

    .line 2299
    :cond_1c
    return-void
.end method

.method public onExtraClicked(Lcom/danfe/restaurantapp1/model/OrderDetailDb;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;)V
    .registers 22
    .param p1, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .param p2, "extraItemsInterface"    # Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;

    .prologue
    .line 2589
    new-instance v18, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct/range {v18 .. v18}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    .line 2590
    .local v18, "restaurantDatabase":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    const-string v4, "Extra id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  SeatNo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadItemsWith(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v11

    .line 2592
    .local v11, "extraItemDb":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ExtraItemDb;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2594
    .local v14, "extraPopulatedValue":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_47
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_91

    .line 2595
    new-instance v3, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getItemID()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraItem()Ljava/lang/String;

    move-result-object v6

    .line 2596
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/ExtraItemDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->getExtraPrice()Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/danfe/restaurantapp1/model/orderExtraItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    .local v3, "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2594
    add-int/lit8 v15, v15, 0x1

    goto :goto_47

    .line 2601
    .end local v3    # "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    :cond_91
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_157

    .line 2602
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_9d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_157

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 2605
    .local v13, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-ne v5, v4, :cond_153

    .line 2606
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_cc
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_153

    .line 2608
    const/4 v15, 0x0

    :goto_d5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_14f

    .line 2610
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2611
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v4

    if-ne v5, v4, :cond_14c

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v5

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v4

    if-ne v5, v4, :cond_14c

    .line 2612
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2613
    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2608
    :cond_14c
    add-int/lit8 v15, v15, 0x1

    goto :goto_d5

    .line 2606
    :cond_14f
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_cc

    .line 2602
    .end local v17    # "k":I
    :cond_153
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9d

    .line 2622
    .end local v13    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v16    # "j":I
    :cond_157
    new-instance v12, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v14, v1, v2}, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V

    .line 2625
    .local v12, "extraItemDialog":Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 32
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 846
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v25

    packed-switch v25, :pswitch_data_45c

    .line 1045
    :goto_7
    const/16 v25, 0x0

    :goto_9
    return v25

    .line 849
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Complete"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_40

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-string v26, "Delivered"

    invoke-virtual/range {v25 .. v26}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setStatus(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;->notifyDataSetChanged()V

    .line 853
    :cond_40
    const/16 v25, 0x1

    goto :goto_9

    .line 857
    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_e1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7f

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;->notifyDataSetChanged()V

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 864
    :cond_7f
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_e1

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->menuItemId:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->menuBill:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13b

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderListAdapter:Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;->notifyDataSetChanged()V

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 874
    .end local v15    # "i":I
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_13f

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 876
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_13f

    .line 877
    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_138

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_138
    add-int/lit8 v15, v15, 0x1

    goto :goto_f7

    .line 864
    :cond_13b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_80

    .line 882
    .end local v15    # "i":I
    :cond_13f
    const-string v25, "Ordered"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->getItemList(Ljava/lang/String;)V

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 884
    const/16 v25, 0x1

    goto/16 :goto_9

    .line 889
    :pswitch_14f
    sget-boolean v25, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    if-eqz v25, :cond_44c

    .line 891
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 892
    .local v8, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v25, "Move Item to Table"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 893
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 894
    .local v19, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v25, 0xf

    const/16 v26, 0xa

    const/16 v27, 0xf

    const/16 v28, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 895
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 896
    .local v14, "dialogMainLayout":Landroid/widget/LinearLayout;
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 898
    .local v13, "dialogLayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 899
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 900
    const/16 v25, 0x11

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 902
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 903
    const/16 v25, 0x11

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 905
    new-instance v21, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 906
    .local v21, "spinnerQtyLayout":Landroid/widget/LinearLayout;
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 907
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 909
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 910
    .local v10, "billSpinnerLayout":Landroid/widget/LinearLayout;
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 911
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 913
    new-instance v6, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 914
    .local v6, "BillSpinner":Landroid/widget/Spinner;
    new-instance v7, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 915
    .local v7, "QtySpinner":Landroid/widget/Spinner;
    new-instance v12, Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 916
    .local v12, "btnShiftItem":Landroid/widget/Button;
    const/high16 v25, 0x41c80000    # 25.0f

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 917
    const-string v25, "Shift Item"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0065

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 920
    new-instance v23, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 921
    .local v23, "tvItemName":Landroid/widget/TextView;
    const/high16 v25, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 922
    const/high16 v25, 0x41d00000    # 26.0f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 923
    const/16 v25, 0xa

    const/16 v26, 0xa

    const/16 v27, 0xa

    const/16 v28, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 924
    const-string v25, "Item Name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    new-instance v24, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 927
    .local v24, "tvQty":Landroid/widget/TextView;
    const/high16 v25, 0x41c80000    # 25.0f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextSize(F)V

    .line 928
    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 930
    .local v22, "tvBillNo":Landroid/widget/TextView;
    const/high16 v25, 0x41c80000    # 25.0f

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 931
    const/high16 v25, -0x1000000

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    const-string v25, "Bill No:"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    const-string v25, "Qty"

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 944
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 948
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 949
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v9, "billArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/MainActivity;->billArray:Ljava/util/List;

    .line 954
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2f5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->spNewlyAddedValue:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_32d

    .line 955
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "All"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_327

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "select"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_32a

    .line 956
    :cond_327
    invoke-interface {v9, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 954
    :cond_32a
    add-int/lit8 v15, v15, 0x1

    goto :goto_2f5

    .line 960
    :cond_32d
    const/16 v25, 0x0

    const-string v26, "Select"

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v9, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 961
    new-instance v11, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f030051

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 962
    .local v11, "billnoAdapter":Landroid/widget/ArrayAdapter;
    invoke-virtual {v6, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v26, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v17

    .line 965
    .local v17, "noOfItems":Ljava/lang/Double;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Bill No:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v27, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v27, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget v27, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v25 .. v25}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v18, "noOfItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3e6
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    cmpg-double v25, v26, v28

    if-gez v25, :cond_403

    .line 968
    add-int/lit8 v25, v16, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    add-int/lit8 v16, v16, 0x1

    goto :goto_3e6

    .line 970
    :cond_403
    const/16 v25, 0x0

    const-string v26, "Select"

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 971
    new-instance v20, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x7f030051

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 972
    .local v20, "qtyAdapter":Landroid/widget/ArrayAdapter;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 974
    new-instance v25, Lcom/danfe/restaurantapp1/MainActivity$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7}, Lcom/danfe/restaurantapp1/MainActivity$9;-><init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1034
    invoke-virtual {v8, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1035
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1039
    .end local v6    # "BillSpinner":Landroid/widget/Spinner;
    .end local v7    # "QtySpinner":Landroid/widget/Spinner;
    .end local v8    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "billArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "billSpinnerLayout":Landroid/widget/LinearLayout;
    .end local v11    # "billnoAdapter":Landroid/widget/ArrayAdapter;
    .end local v12    # "btnShiftItem":Landroid/widget/Button;
    .end local v13    # "dialogLayout":Landroid/widget/LinearLayout;
    .end local v14    # "dialogMainLayout":Landroid/widget/LinearLayout;
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v17    # "noOfItems":Ljava/lang/Double;
    .end local v18    # "noOfItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "qtyAdapter":Landroid/widget/ArrayAdapter;
    .end local v21    # "spinnerQtyLayout":Landroid/widget/LinearLayout;
    .end local v22    # "tvBillNo":Landroid/widget/TextView;
    .end local v23    # "tvItemName":Landroid/widget/TextView;
    .end local v24    # "tvQty":Landroid/widget/TextView;
    :cond_44c
    const-string v25, "Split Bill is not selected."

    const-string v26, "Split Bill"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_7

    .line 846
    nop

    :pswitch_data_45c
    .packed-switch 0x7f0f024e
        :pswitch_a
        :pswitch_43
        :pswitch_14f
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1061
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1062
    .local v0, "id":I
    const v1, 0x7f0f024d

    if-ne v0, v1, :cond_b

    .line 1063
    const/4 v1, 0x1

    .line 1065
    :goto_a
    return v1

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_a
.end method

.method public onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V
    .registers 17
    .param p1, "orderList"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .param p2, "costCenter"    # I
    .param p3, "itemRate"    # Ljava/lang/String;
    .param p4, "isOutOfStock"    # Ljava/lang/Boolean;

    .prologue
    .line 2696
    new-instance v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>()V

    .line 2697
    .local v4, "orderDetailDb":Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->ordered:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->callOnClick()Z

    .line 2699
    const-string v7, "Ordered"

    invoke-virtual {p1, v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setStatus(Ljava/lang/String;)V

    .line 2700
    const/4 v1, 0x0

    .line 2702
    .local v1, "isAdded":Z
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->cbSplit:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_115

    .line 2703
    const/4 v7, 0x1

    sput-boolean v7, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    .line 2704
    sget v6, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    .line 2712
    .local v6, "seatNo":I
    :goto_1d
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2713
    .local v3, "itemId":I
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v2

    .line 2715
    .local v2, "isCombo":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d1

    .line 2716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_d1

    .line 2717
    const-string v8, "onOrderArrival"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    .line 2718
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " SeatNo "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2717
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_122

    .line 2720
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_122

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    .line 2721
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v7

    if-ne v7, v2, :cond_122

    .line 2722
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v5

    .line 2724
    .local v5, "presentQty":Ljava/lang/Double;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setQuantity(Ljava/lang/Double;)V

    .line 2725
    const/4 v1, 0x1

    .line 2730
    .end local v0    # "i":I
    .end local v5    # "presentQty":Ljava/lang/Double;
    :cond_d1
    if-nez v1, :cond_dd

    .line 2731
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    :cond_dd
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_126

    .line 2736
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2737
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_eb
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_126

    .line 2738
    sget v8, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v8, v7, :cond_112

    .line 2739
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    :cond_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 2707
    .end local v0    # "i":I
    .end local v2    # "isCombo":Ljava/lang/Boolean;
    .end local v3    # "itemId":I
    .end local v6    # "seatNo":I
    :cond_115
    const/4 v7, 0x0

    sput-boolean v7, Lcom/danfe/restaurantapp1/MainActivity;->isSplit:Z

    .line 2708
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .restart local v6    # "seatNo":I
    goto/16 :goto_1d

    .line 2716
    .restart local v0    # "i":I
    .restart local v2    # "isCombo":Ljava/lang/Boolean;
    .restart local v3    # "itemId":I
    :cond_122
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_32

    .line 2743
    .end local v0    # "i":I
    :cond_126
    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/danfe/restaurantapp1/MainActivity;->FilterBillData(Ljava/lang/String;)V

    .line 2744
    const-string v7, "Ordered"

    invoke-direct {p0, v7}, Lcom/danfe/restaurantapp1/MainActivity;->getItemList(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateTotalPriceAmount()V

    .line 2747
    return-void
.end method

.method public onOrderArrivalList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2103
    .local p1, "orderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateTotalPriceAmount()V

    .line 2104
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 2105
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 2281
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 2282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/danfe/restaurantapp1/MainActivity;->screenState:Z

    .line 2285
    const-string v0, "onPause: "

    const-string v1, "called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    return-void
.end method

.method public onPriceUpdate(DD)V
    .registers 34
    .param p1, "totaldiscount"    # D
    .param p3, "totalamount"    # D

    .prologue
    .line 2446
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 2447
    .local v14, "totalamountresult":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    move-wide/from16 v20, v0

    add-double v20, v20, p3

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 2448
    .local v12, "totalAmountWithRoomCharge":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tv_totalWithExtra:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v12, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2450
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllBillingTerminAsc(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotalDisc:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2453
    const-wide/16 v20, 0x0

    cmpl-double v19, p1, v20

    if-lez v19, :cond_29f

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotalDisc:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2458
    :goto_7a
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v19, v20, v22

    if-lez v19, :cond_43f

    .line 2459
    const-wide/16 v10, 0x0

    .local v10, "servicecharge":D
    const-wide/16 v16, 0x0

    .local v16, "vat":D
    const-wide/16 v4, 0x0

    .line 2460
    .local v4, "lastamount":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotal:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    move-wide/from16 v24, v0

    add-double v24, v24, p3

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvSubAmount:Landroid/widget/TextView;

    move-object/from16 v19, v0

    add-double v20, p3, p1

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvRoomCharge:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->advancePayment:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->AdvancePayment:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2464
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2465
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2466
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2468
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2469
    const v19, 0x800005

    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2472
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_3bf

    .line 2473
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2474
    .local v15, "tvBillInfo":Landroid/widget/TextView;
    const-string v19, "sans-serif-condensed"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2475
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d0077

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2476
    const/16 v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090095

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2477
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2ac

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 2482
    .local v8, "rate":D
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    mul-double v20, v20, v8

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2483
    .local v2, "disamount":Ljava/lang/Double;
    if-nez v3, :cond_1cb

    .line 2484
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 2486
    :cond_1cb
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_1ed

    .line 2488
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    mul-double v20, v20, v8

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2489
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 2493
    :cond_1ed
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<b>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " (+"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "%) :</b> "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2509
    .end local v2    # "disamount":Ljava/lang/Double;
    .end local v8    # "rate":D
    :cond_278
    :goto_278
    new-instance v18, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2510
    .local v18, "view":Landroid/view/View;
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2511
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x5

    const/16 v22, 0x5

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->setPadding(IIII)V

    .line 2513
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2472
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11c

    .line 2456
    .end local v3    # "i":I
    .end local v4    # "lastamount":D
    .end local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "servicecharge":D
    .end local v15    # "tvBillInfo":Landroid/widget/TextView;
    .end local v16    # "vat":D
    .end local v18    # "view":Landroid/view/View;
    :cond_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvBsTotalDisc:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "0.00"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 2494
    .restart local v3    # "i":I
    .restart local v4    # "lastamount":D
    .restart local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "servicecharge":D
    .restart local v15    # "tvBillInfo":Landroid/widget/TextView;
    .restart local v16    # "vat":D
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getIsAdded()Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_278

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 2496
    .restart local v8    # "rate":D
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    mul-double v20, v20, v8

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2498
    .restart local v2    # "disamount":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->RoomTotalCharge:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    div-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 2500
    .local v13, "totalServiceChargeAmount":Ljava/lang/Double;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_324

    .line 2502
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    mul-double v20, v20, v8

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2503
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 2505
    :cond_324
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 2506
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<b>"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " (-"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingTermDbs:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/danfe/restaurantapp1/model/BillingTermDb;

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/BillingTermDb;->getRate()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "%) :</b> "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_278

    .line 2515
    .end local v2    # "disamount":Ljava/lang/Double;
    .end local v8    # "rate":D
    .end local v13    # "totalServiceChargeAmount":Ljava/lang/Double;
    .end local v15    # "tvBillInfo":Landroid/widget/TextView;
    :cond_3bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvTotalAmount:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Total Amount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%.2f"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tv_total_amount_bottomsheet:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->remainingAmount:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->AdvancePayment:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2527
    .end local v3    # "i":I
    .end local v4    # "lastamount":D
    .end local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "servicecharge":D
    .end local v16    # "vat":D
    :goto_43e
    return-void

    .line 2522
    :cond_43f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tvTotalAmount:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "Total Amount: 0.00"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->tv_total_amount_bottomsheet:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "0.00"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->remainingAmount:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "0.00"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity;->billingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_43e
.end method

.method public onRemoveOrderItem(II)V
    .registers 15
    .param p1, "itemId"    # I
    .param p2, "seatNo"    # I

    .prologue
    .line 2109
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_b3

    .line 2110
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_c7

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_c7

    .line 2112
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2e
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_a9

    .line 2113
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 2115
    new-instance v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    .line 2116
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderingUser:Ljava/lang/String;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->username:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    .line 2117
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2118
    .local v0, "itemCancelledListModel":Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->cancelledLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->removedItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->preValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2112
    .end local v0    # "itemCancelledListModel":Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;
    :cond_a6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 2124
    :cond_a9
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2125
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2129
    .end local v11    # "j":I
    :cond_b3
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 2130
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2131
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->FilterBillData(Ljava/lang/String;)V

    .line 2132
    return-void

    .line 2109
    :cond_c7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 2210
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 2212
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->logoutString:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/danfe/restaurantapp1/MainActivity;->screenState:Z

    .line 2215
    return-void
.end method

.method protected onResumeFragments()V
    .registers 1

    .prologue
    .line 2275
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 2276
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->ValidateUser()V

    .line 2277
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 2692
    return-void
.end method

.method public sendExtraItems(Ljava/util/List;Ljava/lang/String;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 13
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2531
    const/4 v0, 0x0

    .line 2533
    .local v0, "costcenter":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_54

    .line 2534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_54

    .line 2535
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    if-ne v5, v6, :cond_51

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    .line 2536
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_51

    .line 2537
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2538
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2534
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2542
    .end local v2    # "i":I
    :cond_54
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    .line 2543
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_af

    .line 2544
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v6

    if-ne v5, v6, :cond_ac

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v6

    if-ne v5, v6, :cond_ac

    .line 2545
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5, p2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setNote(Ljava/lang/String;)V

    .line 2546
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2547
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2543
    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 2553
    .end local v2    # "i":I
    :cond_af
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1ba

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1ba

    .line 2554
    iput v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    .line 2555
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c0
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_119

    .line 2556
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    if-ne v6, v5, :cond_116

    .line 2557
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v5

    if-ne v6, v5, :cond_116

    .line 2558
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2559
    iput v8, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    .line 2560
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2555
    :goto_113
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 2562
    :cond_116
    iput v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    goto :goto_113

    .line 2565
    :cond_119
    iget v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->flag:I

    if-nez v5, :cond_122

    .line 2566
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2575
    .end local v2    # "i":I
    :cond_122
    :goto_122
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_123
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1cb

    .line 2576
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2577
    .local v1, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c7

    .line 2578
    const-string v6, "Extra"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  Rs. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2579
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " SeatNo "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/danfe/restaurantapp1/MainActivity;->spBill:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2578
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_134

    .line 2570
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_1ba
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_122

    .line 2571
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_122

    .line 2575
    .restart local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    :cond_1c7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_123

    .line 2582
    .end local v1    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v4    # "k":I
    :cond_1cb
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->tvExtraItems:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->callOnClick()Z

    .line 2583
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MainActivity;->updateCostCenter()V

    .line 2585
    return-void
.end method

.method public updateOrder()V
    .registers 7

    .prologue
    .line 1934
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    .line 1935
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonArray:Lorg/json/JSONArray;

    .line 1937
    :try_start_e
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v2, "TableId"

    iget v3, p0, Lcom/danfe/restaurantapp1/MainActivity;->tableId:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1938
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    const-string v2, "RoomId"

    iget-wide v4, p0, Lcom/danfe/restaurantapp1/MainActivity;->roomId:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1940
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    .line 1941
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->jsonParser:Lcom/google/gson/JsonParser;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->obj:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    .line 1943
    const-string v1, "json"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_42} :catch_6c

    .line 1947
    :goto_42
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->BaseURL:Ljava/lang/String;

    .line 1948
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 1949
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 1951
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 1952
    invoke-virtual {v1, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    .line 1954
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity;->getEditService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity;->gsonObject:Lcom/google/gson/JsonObject;

    new-instance v3, Lcom/danfe/restaurantapp1/MainActivity$22;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/MainActivity$22;-><init>(Lcom/danfe/restaurantapp1/MainActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$GetEdit;->getEdit(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 2094
    return-void

    .line 1944
    :catch_6c
    move-exception v0

    .line 1945
    .local v0, "je":Lorg/json/JSONException;
    const-string v1, "json exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public updateTotalPriceAmount()V
    .registers 13

    .prologue
    .line 2307
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2308
    .local v3, "sum":Ljava/lang/Double;
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_44

    .line 2310
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_f
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 2311
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->orderFinalList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2310
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2314
    .end local v4    # "x":I
    :cond_44
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_91

    .line 2315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_91

    .line 2316
    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity;->extraItemsLists:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2317
    .local v0, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8e

    .line 2318
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2317
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 2315
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 2322
    .end local v0    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_91
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass1 (com.danfe.restaurantapp1.MainActivity$1)
.class Lcom/danfe/restaurantapp1/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 339
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$100(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$002(Lcom/danfe/restaurantapp1/MainActivity;I)I

    .line 340
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$000(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$202(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$1;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 343
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass10 (com.danfe.restaurantapp1.MainActivity$10)
.class Lcom/danfe/restaurantapp1/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$10;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$10;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3400(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$10;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$3300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1132
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass11 (com.danfe.restaurantapp1.MainActivity$11)
.class Lcom/danfe/restaurantapp1/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1227
    packed-switch p2, :pswitch_data_36

    .line 1243
    :goto_3
    return-void

    .line 1229
    :pswitch_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1231
    new-instance v0, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v2, "cancelOrder"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-wide v4, v3, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$3500(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v4

    sget v5, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    invoke-direct/range {v0 .. v5}, Lcom/danfe/restaurantapp1/service/CheckOrderStatus;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_3

    .line 1236
    :pswitch_25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    goto :goto_3

    .line 1240
    :pswitch_2b
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$11;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_3

    .line 1227
    nop

    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_2b
        :pswitch_25
        :pswitch_4
    .end packed-switch
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass12 (com.danfe.restaurantapp1.MainActivity$12)
.class Lcom/danfe/restaurantapp1/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$3700(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1312
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MainActivity;->newBillArray:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1315
    :cond_19
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/MainActivity;->newBillArray:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v1, Lcom/danfe/restaurantapp1/MainActivity;->splitBillAdapter:Landroid/widget/ArrayAdapter;

    .line 1316
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$12;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity;->splitBillAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1318
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass13 (com.danfe.restaurantapp1.MainActivity$13)
.class Lcom/danfe/restaurantapp1/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$3704(Lcom/danfe/restaurantapp1/MainActivity;)I

    .line 1298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$3700(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1299
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MainActivity;->newBillArray:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1302
    :cond_1e
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/MainActivity;->newBillArray:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v1, Lcom/danfe/restaurantapp1/MainActivity;->splitBillAdapter:Landroid/widget/ArrayAdapter;

    .line 1303
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$13;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity;->splitBillAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1304
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass14 (com.danfe.restaurantapp1.MainActivity$14)
.class Lcom/danfe/restaurantapp1/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->PayOrder()V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1421
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1423
    :cond_d
    const-string v0, "Bill Error"

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1424
    const-string v0, "payfailure"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 1405
    :try_start_0
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1406
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1408
    :cond_d
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1409
    .local v1, "status":Ljava/lang/String;
    const-string v2, "\"Success\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1410
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v3, "Payment Sent. Please collect bill on the counter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1411
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$14;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 1416
    .end local v1    # "status":Ljava/lang/String;
    :cond_30
    :goto_30
    return-void

    .line 1413
    :catch_31
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PayExc"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1401
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$14;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass15 (com.danfe.restaurantapp1.MainActivity$15)
.class Lcom/danfe/restaurantapp1/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/Interface/SuccessInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->SendOrder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1508
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 4

    .prologue
    .line 1570
    const-string v0, "No changes in order"

    const-string v1, "!!!"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1571
    return-void
.end method

.method public onSuccess()V
    .registers 4

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1513
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$4000(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$3900(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonObject;

    move-result-object v1

    new-instance v2, Lcom/danfe/restaurantapp1/MainActivity$15$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MainActivity$15$1;-><init>(Lcom/danfe/restaurantapp1/MainActivity$15;)V

    invoke-interface {v0, v1, v2}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostOrder;->postOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 1566
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass15.AnonymousClass1 (com.danfe.restaurantapp1.MainActivity$15$1)
.class Lcom/danfe/restaurantapp1/MainActivity$15$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity$15;->onSuccess()V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/MainActivity$15;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity$15;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/MainActivity$15;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1555
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

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1558
    const-string v0, "Retrofit"

    const-string v1, "failure: "

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    const-string v0, "failure: "

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 1564
    :goto_3e
    return-void

    .line 1561
    :catch_3f
    move-exception v0

    goto :goto_3e
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 10
    .param p1, "orderResponse"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v6, 0x1

    .line 1518
    const-string v3, "statusCode"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "status":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1520
    .local v2, "statusCode":I
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "message":Ljava/lang/String;
    const-string v3, "message"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string v3, "statusCode"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_6b

    .line 1526
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1527
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1529
    :cond_40
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v4, "Thank you, Order has been placed successfully."

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1530
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    .line 1531
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1532
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1548
    :goto_6a
    return-void

    .line 1534
    :cond_6b
    const-string v3, "\"Printing Failed\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1535
    const-string v3, "Order have been send but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience."

    const-string v4, "Printer not found"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v5, v5, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3, v4, v5}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1539
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6a

    .line 1542
    :cond_8a
    const-string v3, "Order send: OOPS!! server is not connected at the moment. Please try again later."

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1546
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$15$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$15;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$15;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6a
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1513
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$15$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass16 (com.danfe.restaurantapp1.MainActivity$16)
.class Lcom/danfe/restaurantapp1/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->SendOrder(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1630
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

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1632
    const-string v0, "Retrofit"

    const-string v1, "failure: "

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    const-string v0, "failure: "

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1635
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1637
    :cond_45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 1641
    :goto_4f
    return-void

    .line 1638
    :catch_50
    move-exception v0

    goto :goto_4f
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 10
    .param p1, "orderResponse"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v6, 0x1

    .line 1591
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 1592
    const-string v3, "statusCode"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, "status":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, "message":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1595
    .local v2, "statusCode":I
    const-string v3, "message"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const-string v3, "status"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_68

    .line 1600
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1601
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1604
    :cond_45
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v4, "Thank you, Order has been placed successfully."

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1605
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    .line 1606
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1607
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1623
    :goto_67
    return-void

    .line 1609
    :cond_68
    const-string v3, "\"Printing Failed\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1610
    const-string v3, "Order have been send but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience."

    const-string v4, "Printer not found"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3, v4, v5}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1614
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_67

    .line 1617
    :cond_83
    const-string v3, "Order send: OOPS!! server is not connected at the moment. Please try again later."

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1621
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$16;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_67
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1586
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$16;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass17 (com.danfe.restaurantapp1.MainActivity$17)
.class Lcom/danfe/restaurantapp1/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->CancelOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$17;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1705
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1706
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass18 (com.danfe.restaurantapp1.MainActivity$18)
.class Lcom/danfe/restaurantapp1/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->CancelOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$remarks:[Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$remarks:[Ljava/lang/String;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog1"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 1712
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, "reason":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_26

    .line 1714
    :cond_1e
    const-string v2, "Please give a valid reason!"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1792
    :goto_25
    return-void

    .line 1717
    :cond_26
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$remarks:[Ljava/lang/String;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1719
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$4102(Lcom/danfe/restaurantapp1/MainActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1720
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$4202(Lcom/danfe/restaurantapp1/MainActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1723
    :try_start_4c
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "OrderMasterID"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-wide v4, v4, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1724
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "TableId"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$3500(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1725
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "IsCancelled"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1726
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CancelReason"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$remarks:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1727
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_12f

    .line 1728
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "GuestNo"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1729
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "SeatNo"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1734
    :goto_ac
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CancelBy"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->val$username:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1735
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "UserName"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$4300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1736
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$4402(Lcom/danfe/restaurantapp1/MainActivity;Lcom/google/gson/JsonParser;)Lcom/google/gson/JsonParser;

    .line 1737
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4400(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonParser;

    move-result-object v2

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    invoke-static {v3, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3902(Lcom/danfe/restaurantapp1/MainActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    :try_end_f7
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_f7} :catch_150

    .line 1742
    :goto_f7
    const-string v2, "json"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3900(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1744
    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4600(Lcom/danfe/restaurantapp1/MainActivity;)Lretrofit/RestAdapter;

    move-result-object v2

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    invoke-virtual {v2, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    .line 1743
    invoke-static {v3, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4502(Lcom/danfe/restaurantapp1/MainActivity;Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    .line 1746
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4500(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3900(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/google/gson/JsonObject;

    move-result-object v3

    new-instance v4, Lcom/danfe/restaurantapp1/MainActivity$18$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/MainActivity$18$1;-><init>(Lcom/danfe/restaurantapp1/MainActivity$18;)V

    invoke-interface {v2, v3, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CancelOrder;->cancelOrder(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    goto/16 :goto_25

    .line 1731
    :cond_12f
    :try_start_12f
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1732
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4100(Lcom/danfe/restaurantapp1/MainActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "GuestNo"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_12f .. :try_end_14e} :catch_150

    goto/16 :goto_ac

    .line 1739
    :catch_150
    move-exception v0

    .line 1740
    .local v0, "je":Lorg/json/JSONException;
    const-string v2, "json exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass18.AnonymousClass1 (com.danfe.restaurantapp1.MainActivity$18$1)
.class Lcom/danfe/restaurantapp1/MainActivity$18$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity$18;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity$18;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/MainActivity$18;

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1777
    :try_start_0
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    if-eqz v0, :cond_42

    .line 1778
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$3200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1779
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order Cancel Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1782
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$4700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    .line 1787
    :cond_42
    :goto_42
    return-void

    .line 1784
    :catch_43
    move-exception v0

    goto :goto_42
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 9
    .param p1, "orderResponse"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v5, 0x1

    .line 1749
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 1750
    .local v1, "statusCode":I
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1751
    .local v0, "status":Ljava/lang/String;
    const-string v2, "order"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v2, "\"Success\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1755
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v3, "Order has been cancelled successfully, Thank you"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1756
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->onBackPressed()V

    .line 1757
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1772
    :goto_41
    return-void

    .line 1760
    :cond_42
    const-string v2, "\"Print Failed.\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1761
    const-string v2, "Order have been Cancelled but due to some printing issue KOT/BOT have not been notified.\nPlease inform kitchen/bar/counter manually until the printing issue is fixed by the admin.\nSorry for inconvenience."

    const-string v3, "Printer not found"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1765
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_41

    .line 1768
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Order Cancel Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1770
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$18$1;->this$1:Lcom/danfe/restaurantapp1/MainActivity$18;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MainActivity$18;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_41
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1746
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$18$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass19 (com.danfe.restaurantapp1.MainActivity$19)
.class Lcom/danfe/restaurantapp1/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->authenticateUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;

.field final synthetic val$etLoginPassword:Landroid/widget/EditText;

.field final synthetic val$etLoginUsername:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginUsername:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1854
    const-string v0, "username and password empty"

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 1858
    :goto_2b
    return-void

    .line 1856
    :cond_2c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$19;->val$etLoginPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4800(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass2 (com.danfe.restaurantapp1.MainActivity$2)
.class Lcom/danfe/restaurantapp1/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$2;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$2;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 353
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass20 (com.danfe.restaurantapp1.MainActivity$20)
.class Lcom/danfe/restaurantapp1/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->authenticateUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$20;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1864
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1865
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass21 (com.danfe.restaurantapp1.MainActivity$21)
.class Lcom/danfe/restaurantapp1/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->loginUser(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/danfe/restaurantapp1/response/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 1921
    :try_start_0
    const-string v1, "data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const-string v1, "OOPS!!! Something went wrong! please try again."

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 1927
    :goto_10
    return-void

    .line 1924
    :catch_11
    move-exception v0

    .line 1925
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public success(Lcom/danfe/restaurantapp1/response/LoginResponse;Lretrofit/client/Response;)V
    .registers 7
    .param p1, "loginResponse"    # Lcom/danfe/restaurantapp1/response/LoginResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 1890
    if-eqz p1, :cond_2c

    .line 1892
    :try_start_2
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1894
    const-string v2, "userlogin"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-class v3, Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1897
    .local v1, "j":Landroid/content/Intent;
    const-string v2, "shiftTable"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1898
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1916
    .end local v1    # "j":Landroid/content/Intent;
    :cond_2c
    :goto_2c
    return-void

    .line 1899
    :cond_2d
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoggedIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1900
    const-string v2, "success"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const-string v2, "Please log out from previous device"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_48

    goto :goto_2c

    .line 1910
    :catch_48
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OOPS!!! Something went wrong! please try again."

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2c

    .line 1904
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    :try_start_51
    const-string v2, "success"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const-string v2, "Login failed! Invalid credentials"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$21;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5f} :catch_48

    goto :goto_2c
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1887
    check-cast p1, Lcom/danfe/restaurantapp1/response/LoginResponse;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$21;->success(Lcom/danfe/restaurantapp1/response/LoginResponse;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass22 (com.danfe.restaurantapp1.MainActivity$22)
.class Lcom/danfe/restaurantapp1/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->updateOrder()V
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
        "Lcom/danfe/restaurantapp1/response/EditOrderRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 2085
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 2087
    const-string v1, "Update Order Error"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 2091
    :goto_25
    return-void

    .line 2088
    :catch_26
    move-exception v0

    .line 2089
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 24
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 1958
    if-eqz p1, :cond_3c7

    .line 1959
    const-string v2, "order"

    const-string v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v19

    .line 1962
    .local v19, "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1963
    .local v20, "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_14
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_13a

    .line 1964
    const-string v3, "order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1965
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1966
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1964
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .line 1969
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1970
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v4

    .line 1971
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v5

    .line 1972
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v6

    .line 1973
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v7

    .line 1974
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 1975
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v9

    .line 1976
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v10

    .line 1977
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v11

    .line 1978
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getExtraCharge()Ljava/lang/Double;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 1979
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getStatus()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1980
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v15

    .line 1981
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 1968
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_14

    .line 1986
    :cond_13a
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getIsSplit()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_295

    .line 1987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1991
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5102(Z)Z

    .line 1992
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getGuestNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1bf

    .line 1993
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5202(I)I

    .line 1994
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5102(Z)Z

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3702(Lcom/danfe/restaurantapp1/MainActivity;I)I

    .line 2005
    :goto_195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$5302(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;)Ljava/util/List;

    .line 2006
    const/16 v17, 0x0

    :goto_1a3
    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1da

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v17, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2006
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a3

    .line 1997
    :cond_1bf
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getGuestNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5202(I)I

    .line 1998
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5102(Z)Z

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3702(Lcom/danfe/restaurantapp1/MainActivity;I)I

    goto :goto_195

    .line 2012
    :cond_1da
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030071

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$5300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2013
    .local v18, "myAdapter":Landroid/widget/ArrayAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2023
    .end local v18    # "myAdapter":Landroid/widget/ArrayAdapter;
    :goto_201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_21a

    .line 2024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2026
    :cond_21a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_233

    .line 2027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2029
    :cond_233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_24c

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2033
    :cond_24c
    const/16 v17, 0x0

    :goto_24e
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_316

    .line 2034
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ordered"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    :cond_292
    :goto_292
    add-int/lit8 v17, v17, 0x1

    goto :goto_24e

    .line 2016
    :cond_295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$4900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2019
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5102(Z)Z

    goto/16 :goto_201

    .line 2037
    :cond_2c1
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2eb

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_292

    .line 2041
    :cond_2eb
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Complete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_292

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_292

    .line 2047
    :cond_316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    .line 2048
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_36c

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2050
    const/16 v17, 0x0

    :goto_338
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_36c

    .line 2051
    sget v3, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_369

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    :cond_369
    add-int/lit8 v17, v17, 0x1

    goto :goto_338

    .line 2058
    :cond_36c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3400(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$5700(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/adapter/OrderListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b9

    .line 2067
    :cond_39d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2077
    .end local v17    # "i":I
    .end local v19    # "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    .end local v20    # "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    :goto_3aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->updateTotalPriceAmount()V

    .line 2078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$1300(Lcom/danfe/restaurantapp1/MainActivity;)V

    .line 2079
    return-void

    .line 2069
    .restart local v17    # "i":I
    .restart local v19    # "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    .restart local v20    # "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3aa

    .line 2073
    .end local v17    # "i":I
    .end local v19    # "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    .end local v20    # "orderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/model/OrderDetailDb;>;"
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$22;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3aa
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 1954
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$22;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass23 (com.danfe.restaurantapp1.MainActivity$23)
.class Lcom/danfe/restaurantapp1/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->showGuestBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;

.field final synthetic val$etGuest:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->val$etGuest:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2174
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->val$etGuest:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2175
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$5202(I)I

    .line 2176
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3702(Lcom/danfe/restaurantapp1/MainActivity;I)I

    .line 2182
    :goto_1f
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$5302(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;)Ljava/util/List;

    .line 2184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 2186
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$5300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2184
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 2178
    .end local v0    # "i":I
    :cond_42
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->val$etGuest:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$5202(I)I

    .line 2179
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {}, Lcom/danfe/restaurantapp1/MainActivity;->access$5200()I

    move-result v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3702(Lcom/danfe/restaurantapp1/MainActivity;I)I

    goto :goto_1f

    .line 2188
    .restart local v0    # "i":I
    :cond_5d
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const v4, 0x7f030071

    iget-object v5, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/MainActivity;->access$5300(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6002(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    .line 2189
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$23;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2190
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass24 (com.danfe.restaurantapp1.MainActivity$24)
.class Lcom/danfe/restaurantapp1/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2259
    move-object v0, p2

    check-cast v0, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;

    .line 2260
    .local v0, "binder":Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LogoutService$LocalBinder;->getService()Lcom/danfe/restaurantapp1/LogoutService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6102(Lcom/danfe/restaurantapp1/MainActivity;Lcom/danfe/restaurantapp1/LogoutService;)Lcom/danfe/restaurantapp1/LogoutService;

    .line 2261
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6202(Lcom/danfe/restaurantapp1/MainActivity;Z)Z

    .line 2262
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$6100(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/LogoutService;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/LogoutService;->setCallbacks(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V

    .line 2264
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$24;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$6202(Lcom/danfe/restaurantapp1/MainActivity;Z)Z

    .line 2269
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass25 (com.danfe.restaurantapp1.MainActivity$25)
.class Lcom/danfe/restaurantapp1/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->LogoutFunction()V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 2667
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$6300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2669
    :try_start_9
    const-string v1, "Logout Request: OOPS!! Something went wrong!"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 2673
    :goto_10
    return-void

    .line 2670
    :catch_11
    move-exception v0

    .line 2671
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "logoutRespo"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 2645
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2647
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-class v3, Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2648
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2649
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2650
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6400(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v2

    const-string v3, "login_preference"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$6500(Lcom/danfe/restaurantapp1/MainActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->deleteAllNotifications(Landroid/content/Context;)V

    .line 2652
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2, v1}, Lcom/danfe/restaurantapp1/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2653
    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->finish()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3d} :catch_3e

    .line 2662
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_3d
    return-void

    .line 2655
    :catch_3e
    move-exception v0

    .line 2657
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3f
    const-string v2, "Logout Request: OOPS!! Something went wrong!"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$25;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_47

    goto :goto_3d

    .line 2658
    :catch_47
    move-exception v2

    goto :goto_3d
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 2642
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$25;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass26 (com.danfe.restaurantapp1.MainActivity$26)
.class Lcom/danfe/restaurantapp1/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$26;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$26;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/MainActivity;->LogoutFunction()V

    .line 2685
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass3 (com.danfe.restaurantapp1.MainActivity$3)
.class Lcom/danfe/restaurantapp1/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 367
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 368
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_f1

    .line 369
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$600(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6e

    .line 371
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6b

    .line 372
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 375
    :cond_6e
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ab

    .line 377
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$400(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$900(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 378
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a1

    .line 379
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    .end local v0    # "i":I
    :goto_a0
    return-void

    .line 381
    .restart local v0    # "i":I
    :cond_a1
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a0

    .line 384
    :cond_ab
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    const-string v2, "No Extra items added"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a0

    .line 389
    .end local v0    # "i":I
    :cond_c0
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$900(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 390
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e7

    .line 391
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a0

    .line 393
    :cond_e7
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a0

    .line 397
    :cond_f1
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$3;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Extra Items"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a0
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass4 (com.danfe.restaurantapp1.MainActivity$4)
.class Lcom/danfe/restaurantapp1/MainActivity$4;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 8
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slideOffset"    # F

    .prologue
    const/4 v4, -0x2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 433
    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_37

    .line 434
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$000(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$202(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 435
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    :cond_36
    :goto_36
    return-void

    .line 437
    :cond_37
    float-to-double v0, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_36

    .line 438
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1300(Lcom/danfe/restaurantapp1/MainActivity;)V

    .line 439
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$202(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 440
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$300(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_36
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "bottomSheet"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .prologue
    const/16 v1, 0x10

    .line 416
    const/4 v0, 0x4

    if-ne p2, v0, :cond_20

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1f

    .line 419
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1100(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_1f
    :goto_1f
    return-void

    .line 421
    :cond_20
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1f

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1f

    .line 424
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1100(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$4;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass5 (com.danfe.restaurantapp1.MainActivity$5)
.class Lcom/danfe/restaurantapp1/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$5;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$5;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1500(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$5;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1400(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 481
    const-string v0, "Please have patience. Waiter will be at your service at any moment.\nThank You!!"

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$5;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 483
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass6 (com.danfe.restaurantapp1.MainActivity$6)
.class Lcom/danfe/restaurantapp1/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$6;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$6;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/MainActivity;->updateOrder()V

    .line 622
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass7 (com.danfe.restaurantapp1.MainActivity$7)
.class Lcom/danfe/restaurantapp1/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
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
    .line 633
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "SELECTEDBILLNO"

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MainActivity;->selectedStringBill:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MainActivity;->access$1600(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1700(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7c

    :cond_3c
    :goto_3c
    packed-switch v0, :pswitch_data_8a

    .line 650
    :goto_3f
    return-void

    .line 637
    :sswitch_40
    const-string v2, "Ordered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x0

    goto :goto_3c

    :sswitch_4a
    const-string v2, "Complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    goto :goto_3c

    :sswitch_54
    const-string v2, "InProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x2

    goto :goto_3c

    .line 639
    :pswitch_5e
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1800(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_3f

    .line 642
    :pswitch_68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$1900(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_3f

    .line 645
    :pswitch_72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MainActivity$7;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MainActivity;->access$2000(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_3f

    .line 637
    :sswitch_data_7c
    .sparse-switch
        -0x1fe06aa7 -> :sswitch_4a
        0x1b45904d -> :sswitch_40
        0x26881a92 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_68
        :pswitch_72
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass8 (com.danfe.restaurantapp1.MainActivity$8)
.class Lcom/danfe/restaurantapp1/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->getPredefinedValue()V
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
        "Lcom/danfe/restaurantapp1/response/EditOrderRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 767
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V
    .registers 28
    .param p1, "editOrderRequest"    # Lcom/danfe/restaurantapp1/response/EditOrderRequest;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 712
    if-eqz p1, :cond_26d

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$2102(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v22, "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderDetailsList()Ljava/util/List;

    move-result-object v22

    .line 716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getRoomTotal()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/danfe/restaurantapp1/MainActivity;->access$2202(Lcom/danfe/restaurantapp1/MainActivity;D)D

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getAdvancePaid()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/danfe/restaurantapp1/MainActivity;->access$2302(Lcom/danfe/restaurantapp1/MainActivity;D)D

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getRoomBookedDays()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$2402(Lcom/danfe/restaurantapp1/MainActivity;I)I

    .line 720
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_45
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_fe

    .line 721
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_fa

    .line 722
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderExtraItems()Ljava/util/List;

    move-result-object v23

    .line 723
    .local v23, "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v18, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/16 v21, 0x0

    .local v21, "n":I
    :goto_76
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_ed

    .line 725
    new-instance v2, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v4

    .line 726
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/danfe/restaurantapp1/model/orderExtraItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .local v2, "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v21, v21, 0x1

    goto :goto_76

    .line 730
    .end local v2    # "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    :cond_ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v18    # "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    .end local v21    # "n":I
    .end local v23    # "orderExtraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList$orderExtraItem;>;"
    :cond_fa
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_45

    .line 733
    :cond_fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11b

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$2500(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$502(Lcom/danfe/restaurantapp1/MainActivity;Ljava/util/List;)Ljava/util/List;

    .line 737
    :cond_11b
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_11d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_209

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v24

    new-instance v3, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .line 739
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/danfe/restaurantapp1/response/EditOrderRequest;->getOrderMasterID()Ljava/lang/Integer;

    move-result-object v5

    .line 741
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemId()Ljava/lang/Integer;

    move-result-object v6

    .line 742
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getROI_ItemName()Ljava/lang/String;

    move-result-object v7

    .line 743
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getQuantity()Ljava/lang/Double;

    move-result-object v8

    .line 744
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getRate()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 745
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v10

    .line 746
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v11

    .line 747
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getNote()Ljava/lang/String;

    move-result-object v12

    .line 748
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getExtraCharge()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 749
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual {v14}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getStatus()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 750
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCombo()Ljava/lang/Boolean;

    move-result-object v16

    .line 751
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v3 .. v17}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 738
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_11d

    .line 754
    :cond_209
    const/16 v19, 0x0

    :goto_20b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_26d

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ordered"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_253

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2700(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :goto_250
    add-int/lit8 v19, v19, 0x1

    goto :goto_20b

    .line 758
    :cond_253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity$8;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$2600(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_250

    .line 762
    .end local v19    # "i":I
    .end local v20    # "k":I
    .end local v22    # "orderDetailsLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/EditOrderRequest$OrderDetailsList;>;"
    :cond_26d
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 709
    check-cast p1, Lcom/danfe/restaurantapp1/response/EditOrderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MainActivity$8;->success(Lcom/danfe/restaurantapp1/response/EditOrderRequest;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MainActivity.AnonymousClass9 (com.danfe.restaurantapp1.MainActivity$9)
.class Lcom/danfe/restaurantapp1/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MainActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MainActivity;

.field final synthetic val$BillSpinner:Landroid/widget/Spinner;

.field final synthetic val$QtySpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MainActivity;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MainActivity;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$BillSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$QtySpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 23
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$BillSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_372

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$QtySpinner:Landroid/widget/Spinner;

    .line 978
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_372

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$QtySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2902(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/Double;)Ljava/lang/Double;

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->val$BillSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3002(Lcom/danfe/restaurantapp1/MainActivity;I)I

    .line 981
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 984
    .local v17, "isItemShifted":Ljava/lang/Boolean;
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_211

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3000(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_128

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget v4, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2900(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setQuantity(Ljava/lang/Double;)V

    .line 989
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 993
    :cond_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget v4, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getSeatNo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sget v4, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$2900(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->setQuantity(Ljava/lang/Double;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 984
    :cond_20d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_69

    .line 1004
    :cond_211
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_333

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$800(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v19

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    sget v4, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1006
    invoke-static {v4}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    sget v5, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getOrderMasterId()Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1007
    invoke-static {v5}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v5

    sget v6, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1008
    invoke-static {v6}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v6

    sget v7, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1009
    invoke-static {v7}, Lcom/danfe/restaurantapp1/MainActivity;->access$2900(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1010
    invoke-static {v8}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v8

    sget v9, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getPrice()Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1011
    invoke-static {v9}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v9

    sget v10, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCanceled()Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1012
    invoke-static {v10}, Lcom/danfe/restaurantapp1/MainActivity;->access$3000(Lcom/danfe/restaurantapp1/MainActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1013
    invoke-static {v11}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v11

    sget v12, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1014
    invoke-static {v12}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v12

    sget v13, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getExtra()Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1015
    invoke-static {v13}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    sget v14, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1016
    invoke-static {v14}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v14

    sget v15, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v14}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getHomePackQty()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    .line 1017
    invoke-static {v15}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v15

    sget v16, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    move-object/from16 v16, v0

    .line 1018
    invoke-static/range {v16 .. v16}, Lcom/danfe/restaurantapp1/MainActivity;->access$3100(Lcom/danfe/restaurantapp1/MainActivity;)Ljava/util/ArrayList;

    move-result-object v16

    sget v20, Lcom/danfe/restaurantapp1/MainActivity;->menuposition:I

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getCostCenterId()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 1005
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_348

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MainActivity;->access$3200(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1023
    :cond_348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Item Moved Successfully"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$700(Lcom/danfe/restaurantapp1/MainActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/MainActivity;->access$1600(Lcom/danfe/restaurantapp1/MainActivity;Ljava/lang/String;)V

    .line 1029
    .end local v17    # "isItemShifted":Ljava/lang/Boolean;
    .end local v18    # "x":I
    :goto_371
    return-void

    .line 1027
    :cond_372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MainActivity$9;->this$0:Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Please select any qty and bill number to proceed. "

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_371
.end method
