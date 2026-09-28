###### Class com.danfe.restaurantapp1.model.CostCenterDb (com.danfe.restaurantapp1.model.CostCenterDb)
.class public Lcom/danfe/restaurantapp1/model/CostCenterDb;
.super Ljava/lang/Object;
.source "CostCenterDb.java"


# instance fields
.field private CoDiscout:Ljava/lang/Integer;

.field private CostCenterId:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

.field private Id:Ljava/lang/Long;

.field private tableList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "Id"    # Ljava/lang/Long;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->Id:Ljava/lang/Long;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 6
    .param p1, "Id"    # Ljava/lang/Long;
    .param p2, "CostCenterId"    # Ljava/lang/Integer;
    .param p3, "CostCenterName"    # Ljava/lang/String;
    .param p4, "CoDiscout"    # Ljava/lang/Integer;
    .param p5, "tableList"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->Id:Ljava/lang/Long;

    .line 24
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterId:Ljava/lang/Integer;

    .line 25
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CoDiscout:Ljava/lang/Integer;

    .line 27
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->tableList:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCoDiscout()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CoDiscout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->Id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableList()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->tableList:Ljava/lang/String;

    return-object v0
.end method

.method public setCoDiscout(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CoDiscout"    # Ljava/lang/Integer;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CoDiscout:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CostCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterId:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenterName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->CostCenterName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "Id"    # Ljava/lang/Long;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->Id:Ljava/lang/Long;

    .line 36
    return-void
.end method

.method public setTableList(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableList"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CostCenterDb;->tableList:Ljava/lang/String;

    .line 68
    return-void
.end method
