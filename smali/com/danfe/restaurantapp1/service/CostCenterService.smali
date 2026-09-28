###### Class com.danfe.restaurantapp1.service.CostCenterService (com.danfe.restaurantapp1.service.CostCenterService)
.class public Lcom/danfe/restaurantapp1/service/CostCenterService;
.super Ljava/lang/Object;
.source "CostCenterService.java"


# instance fields
.field private costCenterModelResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->costCenterModelResponseList:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/service/CostCenterService;->getCostCenterDetails()V

    .line 34
    const-string v0, "costcenter"

    const-string v1, "costcenter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/service/CostCenterService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/CostCenterService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/service/CostCenterService;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/service/CostCenterService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->restroDb:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method private getCostCenterDetails()V
    .registers 4

    .prologue
    .line 38
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->restAdapter:Lretrofit/RestAdapter;

    .line 39
    iget-object v1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService;->restAdapter:Lretrofit/RestAdapter;

    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;

    .line 40
    .local v0, "restaurantWebService":Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;
    sget-object v1, Lcom/danfe/restaurantapp1/helper/Constants;->CONTENT_TYPE:Ljava/lang/String;

    new-instance v2, Lcom/danfe/restaurantapp1/service/CostCenterService$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/service/CostCenterService$1;-><init>(Lcom/danfe/restaurantapp1/service/CostCenterService;)V

    invoke-interface {v0, v1, v2}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CostCenterDetails;->getCostcenterDetails(Ljava/lang/String;Lretrofit/Callback;)V

    .line 64
    return-void
.end method

###### Class com.danfe.restaurantapp1.service.CostCenterService.AnonymousClass1 (com.danfe.restaurantapp1.service.CostCenterService$1)
.class Lcom/danfe/restaurantapp1/service/CostCenterService$1;
.super Ljava/lang/Object;
.source "CostCenterService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/service/CostCenterService;->getCostCenterDetails()V
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
        "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/service/CostCenterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/service/CostCenterService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 62
    return-void
.end method

.method public success(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;Lretrofit/client/Response;)V
    .registers 7
    .param p1, "costCenterModelResponse"    # Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 44
    if-eqz p1, :cond_4c

    .line 45
    :try_start_2
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->getD()Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->getBillingTerm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 46
    iget-object v1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/service/CostCenterService;->access$100(Lcom/danfe/restaurantapp1/service/CostCenterService;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/CostCenterService;->access$000(Lcom/danfe/restaurantapp1/service/CostCenterService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->getD()Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->getBillingTerm()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertBillingTerms(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    :cond_27
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->getD()Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->getCostCenter()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4c

    .line 50
    iget-object v1, p0, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/service/CostCenterService;->access$100(Lcom/danfe/restaurantapp1/service/CostCenterService;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->this$0:Lcom/danfe/restaurantapp1/service/CostCenterService;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/service/CostCenterService;->access$000(Lcom/danfe/restaurantapp1/service/CostCenterService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->getD()Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->getCostCenter()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertCostCenter(Landroid/content/Context;Ljava/util/List;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    .line 56
    :cond_4c
    :goto_4c
    return-void

    .line 53
    :catch_4d
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DATABASE EXCEPTION"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 40
    check-cast p1, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/service/CostCenterService$1;->success(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;Lretrofit/client/Response;)V

    return-void
.end method
