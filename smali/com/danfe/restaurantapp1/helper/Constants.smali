###### Class com.danfe.restaurantapp1.helper.Constants (com.danfe.restaurantapp1.helper.Constants)
.class public Lcom/danfe/restaurantapp1/helper/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CANCEL_ORDER:Ljava/lang/String; = "cancel_order"

.field public static CONTENT_TYPE:Ljava/lang/String; = null

.field public static final DATE_FORMAT_NOW:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final DISABLE_NOTIFICATION:I = 0x0

.field public static final IS_COMBO:Ljava/lang/String; = "is_combo"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_COLORNAME:Ljava/lang/String; = "colorName"

.field public static final KEY_DESC:Ljava/lang/String; = "description"

.field public static final KEY_IMG_LNK:Ljava/lang/String; = "photopath"

.field public static final KEY_RGB:Ljava/lang/String; = "rgb"

.field public static final KEY_SHADENAME:Ljava/lang/String; = "shadeName"

.field public static final PREF_IP:Ljava/lang/String; = ""

.field public static final PREF_LOGIN:Ljava/lang/String; = "login_preference"

.field public static final PREF_MODE:I = 0x0

.field public static final PREF_NAME:Ljava/lang/String; = "nolight_preference"

.field public static final PREF_USERROLE:Ljava/lang/String; = "user_role"

.field public static final SEND_ODRDER:Ljava/lang/String; = "send_order"

.field public static final SHIFTTABLE:Ljava/lang/String; = "TableShift"

.field public static final SHIFT_ITEM:Ljava/lang/String; = "shiftItem"

.field public static final SHIFT_TABLE:Ljava/lang/String; = "shiftTable"

.field public static WEB_SERVICE_BASE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "http://192.168.1.127:8007/Modules"

    sput-object v0, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    .line 17
    const-string v0, "application/json"

    sput-object v0, Lcom/danfe/restaurantapp1/helper/Constants;->CONTENT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
