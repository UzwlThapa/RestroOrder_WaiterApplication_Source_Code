###### Class com.danfe.restaurantapp1.helper.CostCenterResponse (com.danfe.restaurantapp1.helper.CostCenterResponse)
.class public Lcom/danfe/restaurantapp1/helper/CostCenterResponse;
.super Ljava/lang/Object;
.source "CostCenterResponse.java"


# instance fields
.field private CostCenterAddedBy:Ljava/lang/String;

.field private CostCenterAddedDate:Ljava/lang/String;

.field private CostCenterId:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

.field private DefaultPrinter:Ljava/lang/String;

.field private Username:Ljava/lang/Object;

.field private additionalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAdditionalProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCostCenterAddedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterAddedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCostCenterAddedDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterAddedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPrinter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->DefaultPrinter:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->Username:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public setCostCenterAddedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenterAddedBy"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterAddedBy:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCostCenterAddedDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenterAddedDate"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterAddedDate:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CostCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterId:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenterName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->CostCenterName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setDefaultPrinter(Ljava/lang/String;)V
    .registers 2
    .param p1, "DefaultPrinter"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->DefaultPrinter:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setUsername(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Username"    # Ljava/lang/Object;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CostCenterResponse;->Username:Ljava/lang/Object;

    .line 86
    return-void
.end method
