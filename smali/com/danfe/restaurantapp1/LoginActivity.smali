###### Class com.danfe.restaurantapp1.LoginActivity (com.danfe.restaurantapp1.LoginActivity)
.class public Lcom/danfe/restaurantapp1/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;,
        Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;
    }
.end annotation


# static fields
.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final GESTURE_THRESHOLD_DP:F = 16.0f

.field public static final REG_ID:Ljava/lang/String; = "regId"

.field static final TAG:Ljava/lang/String; = "Register Activity"


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private DeviceID:Ljava/lang/String;

.field private app_info:Landroid/widget/ImageView;

.field private auth:Lcom/danfe/restaurantapp1/helper/Authorization;

.field private btLogin:Landroid/widget/Button;

.field private btPinLogin:Landroid/widget/Button;

.field private btSiginOptions:Landroid/widget/TextView;

.field private btUser:Landroid/widget/Button;

.field deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

.field private editPassword:Landroid/widget/EditText;

.field private editPinNo:Landroid/widget/EditText;

.field private editUsername:Landroid/widget/EditText;

.field private fadein:Landroid/view/animation/Animation;

.field flag:Ljava/lang/String;

.field private gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private gridView:Landroid/widget/GridView;

.field private itemgroupDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field itemgroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
            ">;"
        }
    .end annotation
.end field

.field private layoutPin:Landroid/widget/LinearLayout;

.field private layoutPinLogin:Landroid/widget/LinearLayout;

.field private layoutUserLogin:Landroid/widget/LinearLayout;

.field private lockdevice:Ljava/lang/Boolean;

.field private loginData:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

.field mGestureThreshold:I

.field private menuwebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

.field private numpadDigits:[Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pinNo:Ljava/lang/String;

.field private preference:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private preferences:Landroid/content/SharedPreferences;

.field private progress:Landroid/app/ProgressDialog;

.field public regId:Ljava/lang/String;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private restroWebServer:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

.field private settings:Landroid/widget/ImageView;

.field settingsContainer:Landroid/widget/FrameLayout;

.field private simpleAdapter:Landroid/widget/ArrayAdapter;

.field private slidedown:Landroid/view/animation/Animation;

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private tvReset:Landroid/widget/ImageButton;

.field private tvUserSigninOptions:Landroid/widget/TextView;

.field private tv_invalidcode:Landroid/widget/TextView;

.field private username:Ljava/lang/String;

.field private webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

.field private zoomAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->BaseURL:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    return-void
.end method

.method private PinLogin(Ljava/lang/String;)V
    .registers 8
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 673
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 674
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    .line 675
    invoke-virtual {v4}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 677
    .local v3, "restAdapter":Lretrofit/RestAdapter;
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 679
    .local v2, "object":Lcom/google/gson/JsonObject;
    :try_start_1f
    const-string v4, "pin"

    invoke-virtual {v2, v4, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v4, "WaiterIP"

    iget-object v5, p0, Lcom/danfe/restaurantapp1/LoginActivity;->DeviceID:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v4, "json"

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_4e

    .line 686
    :goto_34
    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;

    .line 687
    .local v1, "loginPinDetails":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;
    const-string v4, "pin"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$14;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$14;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-interface {v1, v2, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;->LoginPin(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 762
    return-void

    .line 682
    .end local v1    # "loginPinDetails":Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginPin;
    :catch_4e
    move-exception v0

    .line 683
    .local v0, "je":Ljava/lang/Exception;
    const-string v4, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutUserLogin:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->loginData:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->loginData:Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p1, "x1"    # Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/danfe/restaurantapp1/LoginActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->itemgroupDbs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/LoginActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity;->getpasswordDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->stringBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPinNo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tv_invalidcode:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/danfe/restaurantapp1/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->pinNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btPinLogin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutPinLogin:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 805
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 807
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v2

    .line 808
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_10
    move-exception v0

    .line 809
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I never expected this! Going down, going down!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 787
    const-class v4, Lcom/danfe/restaurantapp1/MainActivity;

    .line 788
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 787
    invoke-virtual {p0, v4, v5}, Lcom/danfe/restaurantapp1/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 789
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "registrationId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 791
    const-string v4, "Register Activity"

    const-string v5, "Registration not found."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v3, ""

    .line 800
    .end local v3    # "registrationId":Ljava/lang/String;
    :cond_22
    :goto_22
    return-object v3

    .line 794
    .restart local v3    # "registrationId":Ljava/lang/String;
    :cond_23
    const-string v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, "registeredVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/LoginActivity;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "currentVersion":Ljava/lang/String;
    if-eq v2, v0, :cond_22

    .line 797
    const-string v4, "Register Activity"

    const-string v5, "App version changed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v3, ""

    goto :goto_22
.end method

.method private getpasswordDialog(I)V
    .registers 11
    .param p1, "i"    # I

    .prologue
    .line 376
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 377
    .local v5, "alertDialog":Landroid/app/AlertDialog;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 378
    .local v8, "view":Landroid/view/View;
    const v0, 0x7f0f01c7

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 379
    .local v3, "password":Landroid/widget/EditText;
    const v0, 0x7f0f01c8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 380
    .local v4, "confPassword":Landroid/widget/EditText;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2f

    .line 382
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 384
    :cond_2f
    const v0, 0x7f0f01ca

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 385
    .local v7, "done":Landroid/widget/Button;
    const v0, 0x7f0f01c9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 387
    .local v6, "btPasswordCancel":Landroid/widget/Button;
    new-instance v0, Lcom/danfe/restaurantapp1/LoginActivity$9;

    invoke-direct {v0, p0, v5}, Lcom/danfe/restaurantapp1/LoginActivity$9;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    new-instance v0, Lcom/danfe/restaurantapp1/LoginActivity$10;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/danfe/restaurantapp1/LoginActivity$10;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 433
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 434
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 435
    return-void
.end method

.method private storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {p1}, Lcom/danfe/restaurantapp1/LoginActivity;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "appVersion":Ljava/lang/String;
    const-string v2, "Register Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving regId on app version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 876
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "regId"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string v2, "appVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 878
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 879
    return-void
.end method


# virtual methods
.method public LockDevice()V
    .registers 5

    .prologue
    .line 351
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, "alertbox":Landroid/app/AlertDialog$Builder;
    const-string v2, "<font color=\'black\'>Restro Order</font>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 353
    const-string v2, "Do you want to LOCK the App "

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    const v2, 0x7f0200ac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 355
    const-string v2, "OK"

    new-instance v3, Lcom/danfe/restaurantapp1/LoginActivity$7;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/LoginActivity$7;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    const-string v2, "CANCEL"

    new-instance v3, Lcom/danfe/restaurantapp1/LoginActivity$8;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/LoginActivity$8;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 370
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 371
    return-void
.end method

.method public initializeLock()V
    .registers 4

    .prologue
    .line 882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity;->deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/helper/DeviceLock;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 885
    const-string v1, "android.app.extra.ADD_EXPLANATION"

    const-string v2, "To give permission for locking device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 887
    return-void
.end method

.method public loadMenus()V
    .registers 3

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->BaseURL:Ljava/lang/String;

    .line 914
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->BaseURL:Ljava/lang/String;

    .line 915
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 917
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->menuwebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    .line 919
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->menuwebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    new-instance v1, Lcom/danfe/restaurantapp1/LoginActivity$15;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/LoginActivity$15;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-interface {v0, v1}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;->getItemGroups(Lretrofit/Callback;)V

    .line 947
    return-void
.end method

.method public loginSuccess(Ljava/lang/String;)V
    .registers 12
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 438
    const-string v6, "Dear Customer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 439
    iget-object v6, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v7, "user_role"

    invoke-virtual {v6, v7}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "userRole":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "userRoleArray":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 442
    .local v4, "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6f

    .line 443
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "kitchenorder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 444
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "barorder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 445
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "bakeryorder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 446
    :cond_51
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v5, "x":Landroid/content/Intent;
    const-string v7, "USER_ROLE"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    .line 449
    invoke-virtual {p0, v5}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->finish()V

    .line 476
    .end local v1    # "m":I
    .end local v2    # "userRole":Ljava/lang/String;
    .end local v3    # "userRoleArray":[Ljava/lang/String;
    .end local v4    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "x":Landroid/content/Intent;
    :cond_6f
    :goto_6f
    return-void

    .line 453
    .restart local v1    # "m":I
    .restart local v2    # "userRole":Ljava/lang/String;
    .restart local v3    # "userRoleArray":[Ljava/lang/String;
    .restart local v4    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/danfe/restaurantapp1/TableActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, "i":Landroid/content/Intent;
    const-string v6, "username"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    .line 458
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->finish()V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 466
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "m":I
    .end local v2    # "userRole":Ljava/lang/String;
    .end local v3    # "userRoleArray":[Ljava/lang/String;
    .end local v4    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8b
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v6, "username"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v6, "roomno"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    const-string v6, "roomid"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v6, "tableno"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v6, "size"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    const-string v6, "tableId"

    const/16 v7, 0x4a

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v6, "isTable"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 891
    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    .line 893
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->initializeLock()V

    .line 895
    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 856
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->showExitConfirmationDialog(Landroid/content/Context;)V

    .line 858
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 523
    new-instance v1, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    .line 524
    .local v1, "menuAsync":Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;
    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_e6

    .line 669
    :goto_12
    return-void

    .line 527
    :sswitch_13
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 528
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->BaseURL:Ljava/lang/String;

    .line 530
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->username:Ljava/lang/String;

    .line 531
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->password:Ljava/lang/String;

    .line 533
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->username:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->password:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 534
    const-string v3, "username and password empty"

    invoke-static {v3, p0}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_12

    .line 536
    :cond_50
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 538
    .local v2, "obj":Lcom/google/gson/JsonObject;
    :try_start_55
    const-string v3, "username"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v3, "password"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "WaiterIP"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->DeviceID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "json"

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_73} :catch_9c

    .line 545
    :goto_73
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->BaseURL:Ljava/lang/String;

    .line 546
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restAdapter:Lretrofit/RestAdapter;

    .line 548
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restAdapter:Lretrofit/RestAdapter;

    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    .line 549
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    .line 550
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$11;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$11;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-interface {v3, v2, v4}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$LoginRequest;->loginRequest(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    goto/16 :goto_12

    .line 542
    :catch_9c
    move-exception v0

    .line 543
    .local v0, "je":Ljava/lang/Exception;
    const-string v3, "json exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 618
    .end local v0    # "je":Ljava/lang/Exception;
    .end local v2    # "obj":Lcom/google/gson/JsonObject;
    :sswitch_a7
    const-string v3, "Dear Customer"

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->loginSuccess(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 622
    :sswitch_ae
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutUserLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutUserLogin:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->slidedown:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 624
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->slidedown:Landroid/view/animation/Animation;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$12;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$12;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_12

    .line 644
    :sswitch_c6
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->pinNo:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->PinLogin(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 648
    :sswitch_cd
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutPinLogin:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutPinLogin:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->slidedown:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 651
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->slidedown:Landroid/view/animation/Animation;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$13;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$13;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_12

    .line 525
    nop

    :sswitch_data_e6
    .sparse-switch
        0x7f0f009e -> :sswitch_ae
        0x7f0f00a7 -> :sswitch_c6
        0x7f0f00ac -> :sswitch_13
        0x7f0f00ad -> :sswitch_a7
        0x7f0f00ae -> :sswitch_cd
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 125
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->setContentView(I)V

    .line 126
    new-instance v3, Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/DeviceLock;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

    .line 127
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 129
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "firstTime"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_37

    .line 131
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->LockDevice()V

    .line 134
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "firstTime"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_37
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040019

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->slidedown:Landroid/view/animation/Animation;

    .line 154
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040012

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->fadein:Landroid/view/animation/Animation;

    .line 156
    const v3, 0x7f0f00aa

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editUsername:Landroid/widget/EditText;

    .line 157
    const v3, 0x7f0f00ab

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPassword:Landroid/widget/EditText;

    .line 158
    const v3, 0x7f0f00ac

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btLogin:Landroid/widget/Button;

    .line 159
    const v3, 0x7f0f00ad

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btUser:Landroid/widget/Button;

    .line 160
    const v3, 0x7f0f00a7

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btPinLogin:Landroid/widget/Button;

    .line 161
    const v3, 0x7f0f009e

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btSiginOptions:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f0f00a6

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gridView:Landroid/widget/GridView;

    .line 163
    const v3, 0x7f0f00a0

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutPinLogin:Landroid/widget/LinearLayout;

    .line 164
    const v3, 0x7f0f00a8

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutUserLogin:Landroid/widget/LinearLayout;

    .line 165
    const v3, 0x7f0f00a2

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->layoutPin:Landroid/widget/LinearLayout;

    .line 166
    const v3, 0x7f0f00ae

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tvUserSigninOptions:Landroid/widget/TextView;

    .line 167
    const v3, 0x7f0f00a5

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPinNo:Landroid/widget/EditText;

    .line 168
    const v3, 0x7f0f00a4

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tv_invalidcode:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f0f00b1

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->settings:Landroid/widget/ImageView;

    .line 171
    new-instance v3, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 172
    const v3, 0x7f0f009c

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tvReset:Landroid/widget/ImageButton;

    .line 173
    const v3, 0x7f0f009d

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->app_info:Landroid/widget/ImageView;

    .line 174
    const v3, 0x7f0f00b0

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->settingsContainer:Landroid/widget/FrameLayout;

    .line 176
    new-instance v3, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->itemgroupDbs:Ljava/util/List;

    .line 179
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btLogin:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btUser:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btPinLogin:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->btSiginOptions:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tvUserSigninOptions:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->stringBuilder:Ljava/lang/StringBuilder;

    .line 186
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v7

    const-string v4, "2"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string v5, "3"

    aput-object v5, v3, v4

    const-string v4, "4"

    aput-object v4, v3, v9

    const/4 v4, 0x4

    const-string v5, "5"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "6"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "7"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "8"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "9"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "C"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "0"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "D"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->numpadDigits:[Ljava/lang/String;

    .line 187
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030045

    iget-object v6, p0, Lcom/danfe/restaurantapp1/LoginActivity;->numpadDigits:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->simpleAdapter:Landroid/widget/ArrayAdapter;

    .line 188
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04001b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->zoomAnimation:Landroid/view/animation/Animation;

    .line 189
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 190
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->simpleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 192
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    .line 194
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->tvReset:Landroid/widget/ImageButton;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$1;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->app_info:Landroid/widget/ImageView;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$2;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$2;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->app_info:Landroid/widget/ImageView;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$3;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$3;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->settings:Landroid/widget/ImageView;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$4;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$4;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v3, Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    const/16 v4, 0x1f40

    invoke-direct {v3, v4, p0}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;-><init>(ILandroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restroWebServer:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/Util;->getIpAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "8000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->DeviceID:Ljava/lang/String;

    .line 250
    const-string v3, "IPADDRESS"

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->DeviceID:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity;->DeviceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDeviceId(Ljava/lang/String;)V

    .line 253
    :try_start_214
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->restroWebServer:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->start()V
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_219} :catch_240

    .line 259
    :goto_219
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/helper/Preferences;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 260
    invoke-static {p0}, Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V

    .line 263
    :cond_22a
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_245

    .line 264
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    const-string v4, "login_preference"

    invoke-virtual {v3, v4}, Lcom/danfe/restaurantapp1/helper/Preferences;->getPreferencesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->loginSuccess(Ljava/lang/String;)V

    .line 348
    :goto_23f
    return-void

    .line 254
    :catch_240
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_219

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :cond_245
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gridView:Landroid/widget/GridView;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$5;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$5;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 317
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPinNo:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 318
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->editPinNo:Landroid/widget/EditText;

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$6;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$6;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    .line 344
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 345
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    const-string v4, "Loading"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    const-string v4, "Please wait while we sign you in..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_23f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 862
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 863
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    .line 864
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 865
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 869
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    .line 870
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 490
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 492
    .local v0, "id":I
    const v1, 0x7f0f024d

    if-ne v0, v1, :cond_b

    .line 493
    const/4 v1, 0x1

    .line 496
    :goto_a
    return v1

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_a
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 849
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 850
    return-void
.end method

.method protected onStop()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 900
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 901
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->lockdevice:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 902
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->preference:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDeviceLock()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 904
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->finishAffinity()V

    .line 905
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity;->deviceLock:Lcom/danfe/restaurantapp1/helper/DeviceLock;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/DeviceLock;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 908
    :cond_27
    return-void
.end method

.method public registerGCM()Ljava/lang/String;
    .registers 5

    .prologue
    .line 767
    const-string v1, "RegisterActivity"

    const-string v2, "starts"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 769
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/danfe/restaurantapp1/LoginActivity;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    .line 770
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 771
    const-string v1, "regid gen"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/danfe/restaurantapp1/LoginActivity$1;)V

    .line 773
    .local v0, "registerInBackground":Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 775
    const-string v1, "RegisterActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerGCM - successfully registered with GCM server - regId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    .end local v0    # "registerInBackground":Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;
    :goto_50
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    return-object v1

    .line 779
    :cond_53
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegId already available. RegId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 781
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_50
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass1 (com.danfe.restaurantapp1.LoginActivity$1)
.class Lcom/danfe/restaurantapp1/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$1;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$1;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->SetIP(Landroid/content/Context;)V

    .line 198
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass10 (com.danfe.restaurantapp1.LoginActivity$10)
.class Lcom/danfe/restaurantapp1/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->getpasswordDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$confPassword:Landroid/widget/EditText;

.field final synthetic val$i:I

.field final synthetic val$password:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .registers 6
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iput p2, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$i:I

    iput-object p3, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$password:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$confPassword:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    iget v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$i:I

    if-nez v0, :cond_86

    .line 399
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_27

    .line 400
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Password Must be at least four characters long"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    :cond_26
    :goto_26
    return-void

    .line 402
    :cond_27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$confPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 403
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDevicePswd(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 405
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDeviceLock(Ljava/lang/Boolean;)V

    .line 406
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Password Set"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 409
    :cond_76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Password Do Not Match"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 413
    :cond_86
    iget v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$i:I

    if-ne v0, v3, :cond_26

    .line 415
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDevicePswd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 417
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDeviceLock()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 419
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDeviceLock(Ljava/lang/Boolean;)V

    .line 420
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Device Lock Deactivated"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 427
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_26

    .line 422
    :cond_d9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDeviceLock()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 424
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDeviceLock(Ljava/lang/Boolean;)V

    .line 425
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$10;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Device Lock Activated"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d2
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass11 (com.danfe.restaurantapp1.LoginActivity$11)
.class Lcom/danfe/restaurantapp1/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 606
    :try_start_9
    const-string v0, "data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "RetrofitError OOPS!!! Something went wrong! please try again."

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    .line 612
    :goto_19
    return-void

    .line 609
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public success(Lcom/danfe/restaurantapp1/response/LoginResponse;Lretrofit/client/Response;)V
    .registers 13
    .param p1, "loginResponse"    # Lcom/danfe/restaurantapp1/response/LoginResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 553
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->loadMenus()V

    .line 554
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    if-eqz p1, :cond_fa

    .line 556
    const-string v7, "LOGINRESPONSE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Roles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getRoleNames()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/danfe/restaurantapp1/helper/Util;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :try_start_34
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Success"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 559
    const-string v7, "success"

    const-string v8, "true"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v7

    const-string v8, "login_preference"

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 562
    .local v2, "userFound":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getRoleNames()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "userRole":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "userRoleArray":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 565
    .local v5, "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v7

    const-string v8, "user_role"

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getRoleNames()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_81
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_eb

    .line 567
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "kitchenorder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 568
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "barorder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 569
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "bakeryorder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 570
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "pizza maker"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 571
    :cond_bf
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 572
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    const-class v8, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v6, "x":Landroid/content/Intent;
    const-string v8, "USER_ROLE"

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v7, v6}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 575
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->finish()V

    .line 600
    .end local v1    # "m":I
    .end local v2    # "userFound":Ljava/lang/Boolean;
    .end local v3    # "userRole":Ljava/lang/String;
    .end local v4    # "userRoleArray":[Ljava/lang/String;
    .end local v5    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "x":Landroid/content/Intent;
    :goto_e2
    return-void

    .line 578
    .restart local v1    # "m":I
    .restart local v2    # "userFound":Ljava/lang/Boolean;
    .restart local v3    # "userRole":Ljava/lang/String;
    .restart local v4    # "userRoleArray":[Ljava/lang/String;
    .restart local v5    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e3
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 581
    :cond_eb
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_fa

    .line 582
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/danfe/restaurantapp1/LoginActivity;->loginSuccess(Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_fa} :catch_118

    .line 599
    .end local v1    # "m":I
    .end local v2    # "userFound":Ljava/lang/Boolean;
    .end local v3    # "userRole":Ljava/lang/String;
    .end local v4    # "userRoleArray":[Ljava/lang/String;
    .end local v5    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fa
    :goto_fa
    iget-object v7, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/LoginActivity;->access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_e2

    .line 585
    :cond_104
    :try_start_104
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginResponse;->getStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LoggedIn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 587
    const-string v7, "Please log out from previous device"

    iget-object v8, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7, v8}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_117} :catch_118

    goto :goto_fa

    .line 594
    :catch_118
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "OOPS!!! Something went wrong! please try again."

    iget-object v8, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7, v8}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_fa

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_121
    :try_start_121
    const-string v7, "Login fail. Invalid credentials"

    iget-object v8, p0, Lcom/danfe/restaurantapp1/LoginActivity$11;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v7, v8}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_128} :catch_118

    goto :goto_fa
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 550
    check-cast p1, Lcom/danfe/restaurantapp1/response/LoginResponse;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/LoginActivity$11;->success(Lcom/danfe/restaurantapp1/response/LoginResponse;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass12 (com.danfe.restaurantapp1.LoginActivity$12)
.class Lcom/danfe/restaurantapp1/LoginActivity$12;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$12;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 633
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 638
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$12;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$900(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass13 (com.danfe.restaurantapp1.LoginActivity$13)
.class Lcom/danfe/restaurantapp1/LoginActivity$13;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$13;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 660
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 665
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$13;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1000(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 655
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass14 (com.danfe.restaurantapp1.LoginActivity$14)
.class Lcom/danfe/restaurantapp1/LoginActivity$14;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->PinLogin(Ljava/lang/String;)V
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
        "Lcom/danfe/restaurantapp1/response/LoginPinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrofitError Couldn\'t login with your pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 760
    :goto_29
    return-void

    .line 758
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method public success(Lcom/danfe/restaurantapp1/response/LoginPinResponse;Lretrofit/client/Response;)V
    .registers 16
    .param p1, "loginPinResponse"    # Lcom/danfe/restaurantapp1/response/LoginPinResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 691
    if-eqz p1, :cond_184

    .line 692
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->getStatusCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 694
    .local v4, "statusCode":I
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/LoginPinResponse;->getData()Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1102(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    .line 695
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->loadMenus()V

    .line 698
    :try_start_1c
    const-string v10, "Success"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12e

    .line 699
    const-string v10, "success"

    const-string v11, "true"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v10

    const-string v11, "login_preference"

    iget-object v12, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v12}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v12

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getUserName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v10

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v11}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v11

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getOrderMenuImageshow()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableMenuImage(Z)V

    .line 702
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v10

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v11}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v11

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getOrderMenuListType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/danfe/restaurantapp1/helper/Preferences;->setEnableOrderGrid(Z)V

    .line 704
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 705
    .local v5, "userFound":Ljava/lang/Boolean;
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v10

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getRoles()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 706
    .local v6, "userRole":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "userRoleArray":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 708
    .local v8, "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v10

    const-string v11, "user_role"

    iget-object v12, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v12}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v12

    invoke-virtual {v12}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getRoles()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/danfe/restaurantapp1/helper/Preferences;->setPreferencesString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_a5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_10f

    .line 710
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "kitchenorder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e3

    .line 711
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "barorder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e3

    .line 712
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "bakeryorder"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e3

    .line 713
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "pizza maker"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_107

    .line 714
    :cond_e3
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 715
    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    const-class v11, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .local v9, "x":Landroid/content/Intent;
    const-string v11, "USER_ROLE"

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v10, v9}, Lcom/danfe/restaurantapp1/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 718
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->finish()V

    .line 750
    .end local v1    # "m":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "userFound":Ljava/lang/Boolean;
    .end local v6    # "userRole":Ljava/lang/String;
    .end local v7    # "userRoleArray":[Ljava/lang/String;
    .end local v8    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "x":Landroid/content/Intent;
    :goto_106
    return-void

    .line 721
    .restart local v1    # "m":I
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    .restart local v5    # "userFound":Ljava/lang/Boolean;
    .restart local v6    # "userRole":Ljava/lang/String;
    .restart local v7    # "userRoleArray":[Ljava/lang/String;
    .restart local v8    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_107
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    .line 724
    :cond_10f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_124

    .line 725
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v11}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;

    move-result-object v11

    invoke-virtual {v11}, Lcom/danfe/restaurantapp1/response/LoginPinResponse$Data;->getUserName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/danfe/restaurantapp1/LoginActivity;->loginSuccess(Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_124} :catch_13e

    .line 749
    .end local v1    # "m":I
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "userFound":Ljava/lang/Boolean;
    .end local v6    # "userRole":Ljava/lang/String;
    .end local v7    # "userRoleArray":[Ljava/lang/String;
    .end local v8    # "userRoles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_124
    :goto_124
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$800(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_106

    .line 728
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    :cond_12e
    :try_start_12e
    const-string v10, "LoggedIn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_147

    .line 730
    const-string v10, "Please log out from previous device"

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10, v11}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13d} :catch_13e

    goto :goto_124

    .line 742
    :catch_13e
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "OOPS!!! Something went wrong! please try again."

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10, v11}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_124

    .line 734
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_147
    :try_start_147
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f040014

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 735
    .local v3, "shake":Landroid/view/animation/Animation;
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v12}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 736
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v10, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v10}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 738
    const-string v10, "Login fail,Invalid credentials "

    iget-object v11, p0, Lcom/danfe/restaurantapp1/LoginActivity$14;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v2, v10, v11}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_183} :catch_13e

    goto :goto_124

    .line 747
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "shake":Landroid/view/animation/Animation;
    .end local v4    # "statusCode":I
    :cond_184
    const-string v10, "Register Activity"

    const-string v11, "Error: coccured"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 688
    check-cast p1, Lcom/danfe/restaurantapp1/response/LoginPinResponse;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/LoginActivity$14;->success(Lcom/danfe/restaurantapp1/response/LoginPinResponse;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass15 (com.danfe.restaurantapp1.LoginActivity$15)
.class Lcom/danfe/restaurantapp1/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->loadMenus()V
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
        "Lcom/danfe/restaurantapp1/response/MenuItemGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 939
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrofitError Load Menu Items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    .line 940
    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 939
    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 945
    :goto_20
    return-void

    .line 941
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method public success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V
    .registers 9
    .param p1, "itemgroupResult"    # Lcom/danfe/restaurantapp1/response/MenuItemGroup;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 922
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_37

    .line 924
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getItemgroup()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/danfe/restaurantapp1/LoginActivity;->itemgroupList:Ljava/util/List;

    .line 925
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1400(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/LoginActivity;->itemgroupList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertItemgroup(Landroid/content/Context;Ljava/util/List;)V

    .line 926
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1400(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1502(Lcom/danfe/restaurantapp1/LoginActivity;Ljava/util/List;)Ljava/util/List;

    .line 934
    :goto_36
    return-void

    .line 931
    :cond_37
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Menu Reload Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$15;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_36
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 919
    check-cast p1, Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/LoginActivity$15;->success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass2 (com.danfe.restaurantapp1.LoginActivity$2)
.class Lcom/danfe/restaurantapp1/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$2;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$2;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/LoginActivity;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "currentVersion":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$2;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, "alertbox":Landroid/app/AlertDialog$Builder;
    const-string v3, "<font color=\'black\'>Restro Order</font>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    const v3, 0x7f0200ac

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const-string v3, "OK"

    new-instance v4, Lcom/danfe/restaurantapp1/LoginActivity$2$1;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/LoginActivity$2$1;-><init>(Lcom/danfe/restaurantapp1/LoginActivity$2;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 215
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 216
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass2.AnonymousClass1 (com.danfe.restaurantapp1.LoginActivity$2$1)
.class Lcom/danfe/restaurantapp1/LoginActivity$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/LoginActivity$2;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/LoginActivity$2;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$2$1;->this$1:Lcom/danfe/restaurantapp1/LoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass3 (com.danfe.restaurantapp1.LoginActivity$3)
.class Lcom/danfe/restaurantapp1/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->getDevicePswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/danfe/restaurantapp1/LoginActivity;->flag:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/LoginActivity;->flag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 223
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->LockDevice()V

    .line 228
    :goto_1d
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_1f
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$3;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$200(Lcom/danfe/restaurantapp1/LoginActivity;I)V

    goto :goto_1d
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass4 (com.danfe.restaurantapp1.LoginActivity$4)
.class Lcom/danfe/restaurantapp1/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$4;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$4;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/LoginActivity;->settingsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    .line 236
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$4;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/LoginActivity;->settingsContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    :goto_13
    return-void

    .line 239
    :cond_14
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$4;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/LoginActivity;->settingsContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    new-instance v0, Lcom/danfe/restaurantapp1/SettingsFragment;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/SettingsFragment;-><init>()V

    .line 241
    .local v0, "settingsFragment":Lcom/danfe/restaurantapp1/SettingsFragment;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$4;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0f00b0

    .line 242
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_13
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass5 (com.danfe.restaurantapp1.LoginActivity$5)
.class Lcom/danfe/restaurantapp1/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 274
    packed-switch p3, :pswitch_data_c0

    .line 313
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 276
    :pswitch_18
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 279
    :pswitch_23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 282
    :pswitch_2e
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 285
    :pswitch_39
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 288
    :pswitch_44
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 291
    :pswitch_4f
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 294
    :pswitch_5a
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 297
    :pswitch_65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 300
    :pswitch_71
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 303
    :pswitch_7d
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 306
    :pswitch_92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 309
    :pswitch_9d
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$5;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$300(Lcom/danfe/restaurantapp1/LoginActivity;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 274
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_23
        :pswitch_2e
        :pswitch_39
        :pswitch_44
        :pswitch_4f
        :pswitch_5a
        :pswitch_65
        :pswitch_71
        :pswitch_7d
        :pswitch_92
        :pswitch_9d
    .end packed-switch
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass6 (com.danfe.restaurantapp1.LoginActivity$6)
.class Lcom/danfe/restaurantapp1/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 340
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 322
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$500(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    .local v0, "length":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4e

    .line 330
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/LoginActivity;->access$400(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/LoginActivity;->access$602(Lcom/danfe/restaurantapp1/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/danfe/restaurantapp1/LoginActivity$6;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$700(Lcom/danfe/restaurantapp1/LoginActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    .line 335
    :cond_4e
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass7 (com.danfe.restaurantapp1.LoginActivity$7)
.class Lcom/danfe/restaurantapp1/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->LockDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$7;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$7;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->initializeLock()V

    .line 359
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$7;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/LoginActivity;->access$200(Lcom/danfe/restaurantapp1/LoginActivity;I)V

    .line 360
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass8 (com.danfe.restaurantapp1.LoginActivity$8)
.class Lcom/danfe/restaurantapp1/LoginActivity$8;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->LockDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$8;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 366
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.AnonymousClass9 (com.danfe.restaurantapp1.LoginActivity$9)
.class Lcom/danfe/restaurantapp1/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/LoginActivity;->getpasswordDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$9;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/LoginActivity$9;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$9;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->access$100(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/danfe/restaurantapp1/helper/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;->setDeviceLock(Ljava/lang/Boolean;)V

    .line 391
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$9;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 392
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.MenuAsync (com.danfe.restaurantapp1.LoginActivity$MenuAsync)
.class Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/LoginActivity;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 499
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 503
    :try_start_0
    const-string v1, "main activity"

    const-string v2, "async"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Lcom/danfe/restaurantapp1/service/TableService;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    .line 510
    :goto_12
    const/4 v1, 0x0

    return-object v1

    .line 506
    :catch_14
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "table error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 499
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity$MenuAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 516
    const-string v0, "completed async"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

###### Class com.danfe.restaurantapp1.LoginActivity.RegisterInBackground (com.danfe.restaurantapp1.LoginActivity$RegisterInBackground)
.class Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterInBackground"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;)V
    .registers 2

    .prologue
    .line 815
    iput-object p1, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/danfe/restaurantapp1/LoginActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/danfe/restaurantapp1/LoginActivity;
    .param p2, "x1"    # Lcom/danfe/restaurantapp1/LoginActivity$1;

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;-><init>(Lcom/danfe/restaurantapp1/LoginActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 815
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 819
    const-string v1, ""

    .line 821
    .local v1, "msg":Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1300(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    if-nez v2, :cond_19

    .line 822
    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1302(Lcom/danfe/restaurantapp1/LoginActivity;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 824
    :cond_19
    iget-object v2, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/LoginActivity;->access$1300(Lcom/danfe/restaurantapp1/LoginActivity;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "451330511946"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    .line 825
    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerInBackground - regId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v4, v4, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device registered, registration ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/LoginActivity;->regId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_61} :catch_7b

    move-result-object v1

    .line 834
    :goto_62
    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncTask completed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-object v1

    .line 830
    :catch_7b
    move-exception v0

    .line 831
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    const-string v2, "RegisterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 815
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/danfe/restaurantapp1/LoginActivity$RegisterInBackground;->this$0:Lcom/danfe/restaurantapp1/LoginActivity;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered with GCM Server."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 843
    return-void
.end method
