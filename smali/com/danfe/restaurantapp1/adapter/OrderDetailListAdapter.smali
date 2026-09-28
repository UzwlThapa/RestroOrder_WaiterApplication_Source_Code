###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OrderDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _orderResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;"
        }
    .end annotation
.end field

.field private anim:Landroid/view/animation/Animation;

.field private checkOrderDetails:Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field private jsonParser:Lcom/google/gson/JsonParser;

.field private myConvertView:Landroid/view/View;

.field private obj:Lorg/json/JSONObject;

.field private ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

.field private restAdapter:Lretrofit/RestAdapter;

.field private sendOrderStatus:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

.field private status:Ljava/lang/String;

.field private vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Ljava/lang/String;
    .param p4, "checkOrderDetails"    # Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "orderResponses":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;>;"
    const v0, 0x7f03004e

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->BaseURL:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->status:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_orderResponseList:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->status:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 69
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 72
    iput-object p4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->checkOrderDetails:Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_orderResponseList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->obj:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$202(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->obj:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonParser;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->jsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method static synthetic access$302(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonParser;)Lcom/google/gson/JsonParser;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
    .param p1, "x1"    # Lcom/google/gson/JsonParser;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->jsonParser:Lcom/google/gson/JsonParser;

    return-object p1
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->gsonObject:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method static synthetic access$402(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
    .param p1, "x1"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->gsonObject:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->sendOrderStatus:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    return-object v0
.end method

.method static synthetic access$502(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->sendOrderStatus:Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->checkOrderDetails:Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_orderResponseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v8, 0x7f0200b6

    const/16 v7, 0x96

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 92
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    .line 93
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    if-nez v2, :cond_22e

    .line 94
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03004e

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    .line 95
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)V

    .line 96
    .local v1, "vh":Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->ivItemImage:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvItemName:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f0199

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNotes:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvTableNo:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRoomNo:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRunningOrder:Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f01a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    .line 105
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f01a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    .line 106
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->myStatusList:Landroid/widget/LinearLayout;

    .line 107
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f00f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNootes:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f00f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvnootes:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    const v3, 0x7f0f019e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvSeatNo:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_e0
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_orderResponseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    .line 117
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->BaseURL:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->BaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROI_Item/ImageItem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "imagePath":Ljava/lang/String;
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v8}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 126
    invoke-virtual {v2, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->ivItemImage:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 129
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getIsRunningOrder()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_238

    .line 130
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRunningOrder:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRunningOrder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    :goto_155
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->status:Ljava/lang/String;

    const-string v3, "Ordered"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_244

    .line 152
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->myStatusList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvnootes:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_178
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getQuantity()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getBilltime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNotes:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvTableNo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getRestrotableTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRoomNo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Room:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getRestroRoom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvSeatNo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bill No:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->ordersLists:Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getSeatNo()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->BaseURL:Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v3}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->restAdapter:Lretrofit/RestAdapter;

    .line 186
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    return-object v2

    .line 112
    .end local v0    # "imagePath":Ljava/lang/String;
    .end local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;
    :cond_22e
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->myConvertView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    .restart local v1    # "vh":Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;
    goto/16 :goto_e0

    .line 133
    .restart local v0    # "imagePath":Ljava/lang/String;
    :cond_238
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRunningOrder:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 134
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvRunningOrder:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_155

    .line 158
    :cond_244
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->status:Ljava/lang/String;

    const-string v3, "InProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26e

    .line 160
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->myStatusList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvnootes:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_178

    .line 168
    :cond_26e
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvnootes:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->tvNootes:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v2, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->myStatusList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_178
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.AnonymousClass1 (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter$1)
.class Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;
.super Ljava/lang/Object;
.source "OrderDetailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

.field final synthetic val$position:I

.field final synthetic val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iput p3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 190
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$002(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    .line 191
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$202(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 193
    :try_start_25
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "OrderDetailsID"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ItemStatus"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$302(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonParser;)Lcom/google/gson/JsonParser;

    .line 196
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonParser;

    move-result-object v1

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$402(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 197
    const-string v1, "jsonSent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_95} :catch_bd

    .line 202
    :goto_95
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$600(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lretrofit/RestAdapter;

    move-result-object v1

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    invoke-virtual {v1, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$502(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    .line 203
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$500(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;->sendOrderStatus(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 232
    return-void

    .line 199
    :catch_bd
    move-exception v0

    .line 200
    .local v0, "je":Lorg/json/JSONException;
    const-string v1, "jsonexceptionInpr"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.AnonymousClass1.C00071 (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter$1$1)
.class Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;
.super Ljava/lang/Object;
.source "OrderDetailListAdapter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 229
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 206
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "message":Ljava/lang/String;
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_57

    .line 211
    :try_start_18
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$700(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;->loadOrderDetailsList()V

    .line 212
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutInProgress:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    .line 225
    :goto_2d
    return-void

    .line 216
    :catch_2e
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$800(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error.Please try again later "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2d

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const-string v2, "OrderDetails InProgress Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InProgress Order Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 223
    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 221
    invoke-static {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2d
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 203
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$1$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.AnonymousClass2 (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter$2)
.class Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;
.super Ljava/lang/Object;
.source "OrderDetailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

.field final synthetic val$position:I

.field final synthetic val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iput p3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 239
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$002(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    .line 240
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$202(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 242
    :try_start_25
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "OrderDetailsID"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getOrderDetailsID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ItemStatus"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$302(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonParser;)Lcom/google/gson/JsonParser;

    .line 245
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$300(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonParser;

    move-result-object v1

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$402(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 246
    const-string v1, "OrderComplete Sent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/KitchenOrderApiData$TableList;->getITName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_95} :catch_bd

    .line 251
    :goto_95
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$600(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lretrofit/RestAdapter;

    move-result-object v1

    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    invoke-virtual {v1, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    invoke-static {v2, v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$502(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    .line 252
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$500(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$400(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;-><init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;)V

    invoke-interface {v1, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$SendOrderStatus;->sendOrderStatus(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 280
    return-void

    .line 248
    :catch_bd
    move-exception v0

    .line 249
    .local v0, "je":Lorg/json/JSONException;
    const-string v1, "Order Complete exc "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.AnonymousClass2.AnonymousClass1 (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter$2$1)
.class Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;
.super Ljava/lang/Object;
.source "OrderDetailListAdapter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 277
    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 255
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "message":Ljava/lang/String;
    const-string v2, "statusCode"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_57

    .line 260
    :try_start_18
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$700(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/danfe/restaurantapp1/Interface/CheckOrderDetails;->loadOrderDetailsList()V

    .line 261
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->val$vh:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->layoutComplete:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    .line 273
    :goto_2d
    return-void

    .line 264
    :catch_2e
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->access$800(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error.Please try again later "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2d

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const-string v2, "OrderDetails Complete Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete Order Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->this$1:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .line 271
    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 269
    invoke-static {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2d
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 252
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$2$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.adapter.OrderDetailListAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.OrderDetailListAdapter$ViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OrderDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivItemImage:Landroid/widget/ImageView;

.field layoutComplete:Landroid/widget/LinearLayout;

.field layoutInProgress:Landroid/widget/LinearLayout;

.field myStatusList:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

.field tvItemName:Landroid/widget/TextView;

.field tvNootes:Landroid/widget/TextView;

.field tvNotes:Landroid/widget/TextView;

.field tvQty:Landroid/widget/TextView;

.field tvRoomNo:Landroid/widget/TextView;

.field tvRunningOrder:Landroid/widget/TextView;

.field tvSeatNo:Landroid/widget/TextView;

.field tvTableNo:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;

.field tvnootes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/OrderDetailListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
