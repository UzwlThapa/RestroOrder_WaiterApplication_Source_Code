###### Class com.danfe.restaurantapp1.helper.Notification (com.danfe.restaurantapp1.helper.Notification)
.class public Lcom/danfe/restaurantapp1/helper/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private DialogView:Landroid/view/View;

.field private alertDialog:Landroid/support/v7/app/AlertDialog;

.field private btnDismissDialog:Landroid/widget/Button;

.field private btnForward:Landroid/widget/Button;

.field private callFromCounter:Ljava/lang/Boolean;

.field private context:Landroid/content/Context;

.field private department:Ljava/lang/String;

.field private destinationIp:Ljava/lang/String;

.field private inflator:Landroid/view/LayoutInflater;

.field private item:Ljava/lang/String;

.field private ivRefresh:Landroid/widget/ImageView;

.field private layoutForward:Landroid/widget/LinearLayout;

.field private layoutParentForwarding:Landroid/widget/LinearLayout;

.field private m:Landroid/media/MediaPlayer;

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private progressBar:Landroid/widget/ProgressBar;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private sound:Ljava/lang/Boolean;

.field private spWaiterLists:Landroid/widget/Spinner;

.field private tableno:Ljava/lang/String;

.field private tvDepartment:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;

.field private tvItem:Landroid/widget/TextView;

.field private tvMessage:Landroid/widget/TextView;

.field private tvTable:Landroid/widget/TextView;

.field private v:Landroid/os/Vibrator;

.field private vibrate:Ljava/lang/Boolean;

.field private waiterListResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/WaiterListResponse;",
            ">;"
        }
    .end annotation
.end field

.field private waiterListsDBLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/WaiterListsDB;",
            ">;"
        }
    .end annotation
.end field

.field private waiterRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;

.field private waitersLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 11
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_department"    # Ljava/lang/String;
    .param p3, "_item"    # Ljava/lang/String;
    .param p4, "_tableno"    # Ljava/lang/String;
    .param p5, "_vibrate"    # Ljava/lang/Boolean;
    .param p6, "_sound"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waiterListsDBLists:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waitersLists:Ljava/util/List;

    .line 64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->callFromCounter:Ljava/lang/Boolean;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->BaseURL:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Notification;->department:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tableno:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/Notification;->item:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    .line 77
    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/Notification;->sound:Ljava/lang/Boolean;

    .line 78
    iput-object p5, p0, Lcom/danfe/restaurantapp1/helper/Notification;->vibrate:Ljava/lang/Boolean;

    .line 79
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 80
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    const/high16 v1, 0x7f070000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->m:Landroid/media/MediaPlayer;

    .line 81
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->v:Landroid/os/Vibrator;

    .line 82
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->BaseURL:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->inflator:Landroid/view/LayoutInflater;

    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->inflator:Landroid/view/LayoutInflater;

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    .line 88
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 89
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvDepartment:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvItem:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvTable:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvError:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvMessage:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->ivRefresh:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->progressBar:Landroid/widget/ProgressBar;

    .line 98
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->btnDismissDialog:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->btnForward:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutForward:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutParentForwarding:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    const v1, 0x7f0f0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->spWaiterLists:Landroid/widget/Spinner;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->callFromCounter:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/danfe/restaurantapp1/helper/Notification;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waitersLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/helper/Notification;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/danfe/restaurantapp1/helper/Notification;)V
    .registers 1
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/helper/Notification;->manageWaiterList()V

    return-void
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->spWaiterLists:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->btnForward:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waiterListResponse:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waiterListResponse:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->destinationIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->destinationIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->department:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->item:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tableno:Ljava/lang/String;

    return-object v0
.end method

.method private manageWaiterList()V
    .registers 5

    .prologue
    .line 221
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waitersLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_28

    .line 222
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvMessage:Landroid/widget/TextView;

    const-string v2, "Send To Other Waiter"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutForward:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    const v2, 0x7f03004f

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waitersLists:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 225
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->spWaiterLists:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 230
    .end local v0    # "arrayAdapter":Landroid/widget/ArrayAdapter;
    :goto_27
    return-void

    .line 227
    :cond_28
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvMessage:Landroid/widget/TextView;

    const-string v2, "No Users Found. Please Refresh."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutForward:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_27
.end method


# virtual methods
.method public getWaiterLists(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "displayNotification"    # Ljava/lang/Boolean;

    .prologue
    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waitersLists:Ljava/util/List;

    .line 236
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->BaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->restAdapter:Lretrofit/RestAdapter;

    .line 237
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->restAdapter:Lretrofit/RestAdapter;

    const-class v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waiterRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;

    .line 238
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->waiterRequest:Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Notification$5;

    invoke-direct {v1, p0, p1}, Lcom/danfe/restaurantapp1/helper/Notification$5;-><init>(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$WaiterListsRequest;->getWaitersLists(Lretrofit/Callback;)V

    .line 277
    return-void
.end method

.method public showPushNotificationDialog()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->department:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->item:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tableno:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->sound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->m:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 112
    :cond_2d
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->vibrate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 113
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->v:Landroid/os/Vibrator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 115
    :cond_3c
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/helper/Notification;->manageWaiterList()V

    .line 116
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->department:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 117
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvDepartment:Landroid/widget/TextView;

    const-string v1, "Please Report In to Counter."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutForward:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->callFromCounter:Ljava/lang/Boolean;

    .line 120
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->layoutParentForwarding:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvTable:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_6f
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->spWaiterLists:Landroid/widget/Spinner;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Notification$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Notification$1;-><init>(Lcom/danfe/restaurantapp1/helper/Notification;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->btnForward:Landroid/widget/Button;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Notification$2;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Notification$2;-><init>(Lcom/danfe/restaurantapp1/helper/Notification;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->btnDismissDialog:Landroid/widget/Button;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Notification$3;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Notification$3;-><init>(Lcom/danfe/restaurantapp1/helper/Notification;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->ivRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/danfe/restaurantapp1/helper/Notification$4;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/helper/Notification$4;-><init>(Lcom/danfe/restaurantapp1/helper/Notification;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->DialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a00db

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 215
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 218
    :cond_d0
    return-void

    .line 125
    :cond_d1
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvDepartment:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please Report In to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification;->department:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvItem:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification;->item:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tvTable:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table No: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification;->tableno:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6f
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass1 (com.danfe.restaurantapp1.helper.Notification$1)
.class Lcom/danfe/restaurantapp1/helper/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Notification;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$200(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Send To"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 138
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$300(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    :goto_4b
    return-void

    .line 140
    :cond_4c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$1;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$300(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4b
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
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass2 (com.danfe.restaurantapp1.helper.Notification$2)
.class Lcom/danfe/restaurantapp1/helper/Notification$2;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Notification;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_b
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$500(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 154
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$500(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/Notification;->access$200(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 155
    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$500(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$602(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 158
    :cond_57
    const-string v3, "DESTINATIONIP"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/Notification;->access$600(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/Notification;->access$600(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    .line 160
    .local v1, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;

    invoke-virtual {v1, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;

    .line 161
    .local v0, "callWaiterService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;
    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$700(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/Notification;->access$800(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v5}, Lcom/danfe/restaurantapp1/helper/Notification;->access$900(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/danfe/restaurantapp1/helper/Notification$2$1;

    invoke-direct {v6, p0}, Lcom/danfe/restaurantapp1/helper/Notification$2$1;-><init>(Lcom/danfe/restaurantapp1/helper/Notification$2;)V

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CallWaiter;->callWaiter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 183
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass2.AnonymousClass1 (com.danfe.restaurantapp1.helper.Notification$2$1)
.class Lcom/danfe/restaurantapp1/helper/Notification$2$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/helper/Notification$2;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 174
    const-string v1, "CALLWAITER"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 177
    .local v0, "shakeAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$100(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Could not connect to user. Is the user available or using the software?"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 6
    .param p1, "jsonElements"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 164
    const-string v0, "CALLWAITER"

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notice Successfully Sent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    .line 167
    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$200(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 166
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->this$1:Lcom/danfe/restaurantapp1/helper/Notification$2;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/Notification$2;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 170
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 161
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/helper/Notification$2$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass3 (com.danfe.restaurantapp1.helper.Notification$3)
.class Lcom/danfe/restaurantapp1/helper/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Notification;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 191
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1100(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_78

    .line 192
    new-instance v0, Lcom/danfe/restaurantapp1/model/NotificationsDB;

    invoke-static {}, Lcom/danfe/restaurantapp1/helper/Util;->getDateTime()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$700(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$800(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$900(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lcom/danfe/restaurantapp1/model/NotificationsDB;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v0, "notificationsDB":Lcom/danfe/restaurantapp1/model/NotificationsDB;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1200(Lcom/danfe/restaurantapp1/helper/Notification;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertNotifications(Landroid/content/Context;Lcom/danfe/restaurantapp1/model/NotificationsDB;)V

    .line 194
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 200
    :goto_69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/danfe/restaurantapp1/helper/MessageEvents;

    const-string v3, "NotificationReceived"

    invoke-direct {v2, v3}, Lcom/danfe/restaurantapp1/helper/MessageEvents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    .end local v0    # "notificationsDB":Lcom/danfe/restaurantapp1/model/NotificationsDB;
    :cond_77
    return-void

    .line 196
    :cond_78
    new-instance v0, Lcom/danfe/restaurantapp1/model/NotificationsDB;

    invoke-static {}, Lcom/danfe/restaurantapp1/helper/Util;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please Report in to Counter"

    invoke-direct {v0, v4, v1, v2}, Lcom/danfe/restaurantapp1/model/NotificationsDB;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .restart local v0    # "notificationsDB":Lcom/danfe/restaurantapp1/model/NotificationsDB;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1200(Lcom/danfe/restaurantapp1/helper/Notification;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertNotifications(Landroid/content/Context;Lcom/danfe/restaurantapp1/model/NotificationsDB;)V

    .line 198
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/Notification$3;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1000(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_69
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass4 (com.danfe.restaurantapp1.helper.Notification$4)
.class Lcom/danfe/restaurantapp1/helper/Notification$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Notification;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$4;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$4;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Notification;->getWaiterLists(Ljava/lang/Boolean;)V

    .line 209
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Notification.AnonymousClass5 (com.danfe.restaurantapp1.helper.Notification$5)
.class Lcom/danfe/restaurantapp1/helper/Notification$5;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/Notification;->getWaiterLists(Ljava/lang/Boolean;)V
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
        "Lcom/danfe/restaurantapp1/response/WaiterListResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Notification;

.field final synthetic val$displayNotification:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Notification;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->val$displayNotification:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->val$displayNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 270
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V

    .line 274
    :goto_18
    const-string v0, "RETROFIT ERROR"

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 272
    :cond_22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1500(Lcom/danfe/restaurantapp1/helper/Notification;)V

    goto :goto_18
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 239
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/helper/Notification$5;->success(Ljava/util/List;Lretrofit/client/Response;)V

    return-void
.end method

.method public success(Ljava/util/List;Lretrofit/client/Response;)V
    .registers 8
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/WaiterListResponse;",
            ">;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "waiterListResponses":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/WaiterListResponse;>;"
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$400(Lcom/danfe/restaurantapp1/helper/Notification;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    if-eqz p1, :cond_6a

    .line 245
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2, p1}, Lcom/danfe/restaurantapp1/helper/Notification;->access$502(Lcom/danfe/restaurantapp1/helper/Notification;Ljava/util/List;)Ljava/util/List;

    .line 247
    :try_start_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6a

    .line 248
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1300(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Send To"

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1400(Lcom/danfe/restaurantapp1/helper/Notification;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v3

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 251
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1300(Lcom/danfe/restaurantapp1/helper/Notification;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/response/WaiterListResponse;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/response/WaiterListResponse;->getWaiterName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 254
    :cond_5d
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->val$displayNotification:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 255
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->showPushNotificationDialog()V

    .line 264
    .end local v1    # "x":I
    :cond_6a
    :goto_6a
    return-void

    .line 257
    .restart local v1    # "x":I
    :cond_6b
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/Notification$5;->this$0:Lcom/danfe/restaurantapp1/helper/Notification;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Notification;->access$1500(Lcom/danfe/restaurantapp1/helper/Notification;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_70} :catch_71

    goto :goto_6a

    .line 260
    .end local v1    # "x":I
    :catch_71
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WAITERDB"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method
