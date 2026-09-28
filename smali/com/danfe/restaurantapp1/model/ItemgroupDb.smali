###### Class com.danfe.restaurantapp1.model.ItemgroupDb (com.danfe.restaurantapp1.model.ItemgroupDb)
.class public Lcom/danfe/restaurantapp1/model/ItemgroupDb;
.super Ljava/lang/Object;
.source "ItemgroupDb.java"


# instance fields
.field private CostCenterName:Ljava/lang/String;

.field private CostcenterID:Ljava/lang/Integer;

.field private Currency:Ljava/lang/String;

.field private Details:Ljava/lang/String;

.field private Id:Ljava/lang/Long;

.field private ImagePath:Ljava/lang/String;

.field private IsCategory:Ljava/lang/Boolean;

.field private IsCombo:Ljava/lang/Boolean;

.field private IsOutOfStock:Ljava/lang/Boolean;

.field private ItemCode:Ljava/lang/String;

.field private ItemId:Ljava/lang/Integer;

.field private ItemName:Ljava/lang/String;

.field private Level:Ljava/lang/Integer;

.field private PId:Ljava/lang/Integer;

.field private SRate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Id:Ljava/lang/Long;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 16
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "ItemId"    # Ljava/lang/Integer;
    .param p3, "ItemName"    # Ljava/lang/String;
    .param p4, "PId"    # Ljava/lang/Integer;
    .param p5, "ImagePath"    # Ljava/lang/String;
    .param p6, "CostcenterID"    # Ljava/lang/Integer;
    .param p7, "Level"    # Ljava/lang/Integer;
    .param p8, "Details"    # Ljava/lang/String;
    .param p9, "SRate"    # Ljava/lang/String;
    .param p10, "Currency"    # Ljava/lang/String;
    .param p11, "IsCategory"    # Ljava/lang/Boolean;
    .param p12, "IsCombo"    # Ljava/lang/Boolean;
    .param p13, "ItemCode"    # Ljava/lang/String;
    .param p14, "IsOutOfStock"    # Ljava/lang/Boolean;
    .param p15, "CostCenterName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Id:Ljava/lang/Long;

    .line 34
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemId:Ljava/lang/Integer;

    .line 35
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->PId:Ljava/lang/Integer;

    .line 37
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ImagePath:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostcenterID:Ljava/lang/Integer;

    .line 39
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Level:Ljava/lang/Integer;

    .line 40
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Details:Ljava/lang/String;

    .line 41
    iput-object p9, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->SRate:Ljava/lang/String;

    .line 42
    iput-object p10, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Currency:Ljava/lang/String;

    .line 43
    iput-object p11, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCategory:Ljava/lang/Boolean;

    .line 44
    iput-object p12, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCombo:Ljava/lang/Boolean;

    .line 45
    iput-object p13, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemCode:Ljava/lang/String;

    .line 46
    iput-object p14, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsOutOfStock:Ljava/lang/Boolean;

    .line 47
    iput-object p15, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostCenterName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getCostcenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostcenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Details:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCategory()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCategory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutOfStock()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsOutOfStock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->PId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->SRate:Ljava/lang/String;

    return-object v0
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostCenterName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setCostcenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CostcenterID"    # Ljava/lang/Integer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->CostcenterID:Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "Currency"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Currency:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .registers 2
    .param p1, "Details"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Details:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Id:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "ImagePath"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ImagePath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setIsCategory(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCategory"    # Ljava/lang/Boolean;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCategory:Ljava/lang/Boolean;

    .line 136
    return-void
.end method

.method public setIsCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "IsCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsCombo:Ljava/lang/Boolean;

    .line 144
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "ItemCode"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemCode:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "ItemId"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemId:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ItemName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->ItemName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "Level"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->Level:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setOutOfStock(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "outOfStock"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->IsOutOfStock:Ljava/lang/Boolean;

    .line 160
    return-void
.end method

.method public setPId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "PId"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->PId:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setSRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "SRate"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->SRate:Ljava/lang/String;

    .line 120
    return-void
.end method
