###### Class com.danfe.restaurantapp1.model.BillingTermDb (com.danfe.restaurantapp1.model.BillingTermDb)
.class public Lcom/danfe/restaurantapp1/model/BillingTermDb;
.super Ljava/lang/Object;
.source "BillingTermDb.java"


# instance fields
.field private CostCenter:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private Id:Ljava/lang/Long;

.field private IsAdded:Ljava/lang/Boolean;

.field private Name:Ljava/lang/String;

.field private SequenceOrder:Ljava/lang/Integer;

.field private billingId:Ljava/lang/Integer;

.field private rate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "Id"    # Ljava/lang/Long;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Id:Ljava/lang/Long;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 9
    .param p1, "Id"    # Ljava/lang/Long;
    .param p2, "billingId"    # Ljava/lang/Integer;
    .param p3, "Name"    # Ljava/lang/String;
    .param p4, "IsAdded"    # Ljava/lang/Boolean;
    .param p5, "rate"    # Ljava/lang/String;
    .param p6, "Description"    # Ljava/lang/String;
    .param p7, "SequenceOrder"    # Ljava/lang/Integer;
    .param p8, "CostCenter"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Id:Ljava/lang/Long;

    .line 27
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->billingId:Ljava/lang/Integer;

    .line 28
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Name:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->IsAdded:Ljava/lang/Boolean;

    .line 30
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->rate:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Description:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->SequenceOrder:Ljava/lang/Integer;

    .line 33
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->CostCenter:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getBillingId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->billingId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->CostCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsAdded()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->IsAdded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceOrder()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->SequenceOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBillingId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "billingId"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->billingId:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setCostCenter(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenter"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->CostCenter:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "Description"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Description:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "Id"    # Ljava/lang/Long;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Id:Ljava/lang/Long;

    .line 42
    return-void
.end method

.method public setIsAdded(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsAdded"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->IsAdded:Ljava/lang/Boolean;

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->Name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->rate:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSequenceOrder(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SequenceOrder"    # Ljava/lang/Integer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/BillingTermDb;->SequenceOrder:Ljava/lang/Integer;

    .line 90
    return-void
.end method
