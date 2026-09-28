###### Class com.danfe.restaurantapp1.service.TableService (com.danfe.restaurantapp1.service.TableService)
.class public Lcom/danfe/restaurantapp1/service/TableService;
.super Ljava/lang/Object;
.source "TableService.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private gsonObject:Lcom/google/gson/JsonObject;

.field private jsonParser:Lcom/google/gson/JsonParser;

.field private restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private roomlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$Roomlist;",
            ">;"
        }
    .end annotation
.end field

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

.field private tableLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/FullRestroRoomData$TableList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sput-object p1, Lcom/danfe/restaurantapp1/service/TableService;->context:Landroid/content/Context;

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService;->rooms:Ljava/util/List;

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService;->roomlists:Ljava/util/List;

    .line 45
    new-instance v4, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 46
    new-instance v4, Lcom/google/gson/JsonParser;

    invoke-direct {v4}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService;->jsonParser:Lcom/google/gson/JsonParser;

    .line 49
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 50
    .local v1, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-string v4, "M/d/yy hh:mm a"

    invoke-virtual {v1, v4}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    .line 51
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 53
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/danfe/restaurantapp1/service/TableService$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/service/TableService$1;-><init>(Lcom/danfe/restaurantapp1/service/TableService;)V

    .line 60
    .local v2, "requestInterceptor":Lretrofit/RequestInterceptor;
    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService;->BaseURL:Ljava/lang/String;

    .line 61
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/danfe/restaurantapp1/service/TableService;->BaseURL:Ljava/lang/String;

    .line 62
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v2}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 64
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 67
    .local v3, "restAdapter":Lretrofit/RestAdapter;
    const-class v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    sput-object v4, Lcom/danfe/restaurantapp1/service/TableService;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    .line 69
    sget-object v4, Lcom/danfe/restaurantapp1/service/TableService;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    new-instance v5, Lcom/danfe/restaurantapp1/service/TableService$2;

    invoke-direct {v5, p0, p1}, Lcom/danfe/restaurantapp1/service/TableService$2;-><init>(Lcom/danfe/restaurantapp1/service/TableService;Landroid/content/Context;)V

    invoke-interface {v4, v5}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;->fetchTable(Lretrofit/Callback;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/service/TableService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/TableService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/TableService;->rooms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/danfe/restaurantapp1/service/TableService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/TableService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/TableService;->rooms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/service/TableService;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/TableService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/TableService;->restaurantDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$200()Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/danfe/restaurantapp1/service/TableService;->mWebService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    return-object v0
.end method

###### Class com.danfe.restaurantapp1.service.TableService.AnonymousClass1 (com.danfe.restaurantapp1.service.TableService$1)
.class Lcom/danfe/restaurantapp1/service/TableService$1;
.super Ljava/lang/Object;
.source "TableService.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/service/TableService;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/service/TableService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/service/TableService;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/TableService$1;->this$0:Lcom/danfe/restaurantapp1/service/TableService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .registers 4
    .param p1, "request"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 56
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

###### Class com.danfe.restaurantapp1.service.TableService.AnonymousClass2 (com.danfe.restaurantapp1.service.TableService$2)
.class Lcom/danfe/restaurantapp1/service/TableService$2;
.super Ljava/lang/Object;
.source "TableService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/service/TableService;-><init>(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/danfe/restaurantapp1/service/TableService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/service/TableService;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/service/TableService;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->this$0:Lcom/danfe/restaurantapp1/service/TableService;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "retrofitError"    # Lretrofit/RetrofitError;

    .prologue
    .line 105
    const-string v0, "table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/danfe/restaurantapp1/service/TableService;->access$200()Lcom/danfe/restaurantapp1/service/RestaurantWebService$TableWebService;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;Lretrofit/client/Response;)V
    .registers 8
    .param p1, "fullRestroRoomData"    # Lcom/danfe/restaurantapp1/response/FullRestroRoomData;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    .local v1, "statusCode":I
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2b

    .line 75
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->this$0:Lcom/danfe/restaurantapp1/service/TableService;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;->getData()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/service/TableService;->access$002(Lcom/danfe/restaurantapp1/service/TableService;Ljava/util/List;)Ljava/util/List;

    .line 77
    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->this$0:Lcom/danfe/restaurantapp1/service/TableService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/TableService;->access$100(Lcom/danfe/restaurantapp1/service/TableService;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->this$0:Lcom/danfe/restaurantapp1/service/TableService;

    invoke-static {v4}, Lcom/danfe/restaurantapp1/service/TableService;->access$000(Lcom/danfe/restaurantapp1/service/TableService;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertTable(Landroid/content/Context;Ljava/util/List;)V

    .line 101
    :cond_2a
    :goto_2a
    return-void

    .line 79
    :cond_2b
    const/16 v2, 0x64

    if-ne v1, v2, :cond_2a

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/service/TableService$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2a
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 69
    check-cast p1, Lcom/danfe/restaurantapp1/response/FullRestroRoomData;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/service/TableService$2;->success(Lcom/danfe/restaurantapp1/response/FullRestroRoomData;Lretrofit/client/Response;)V

    return-void
.end method
