###### Class com.danfe.restaurantapp1.model.DishDb (com.danfe.restaurantapp1.model.DishDb)
.class public Lcom/danfe/restaurantapp1/model/DishDb;
.super Ljava/lang/Object;
.source "DishDb.java"


# instance fields
.field private categoryid:Ljava/lang/Integer;

.field private costCenterId:Ljava/lang/Integer;

.field private costCenterName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private imageLink:Ljava/lang/String;

.field private itemcode:Ljava/lang/String;

.field private itemid:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/Double;

.field private priceWithCurr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->id:Ljava/lang/Long;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "categoryid"    # Ljava/lang/Integer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "itemid"    # Ljava/lang/Integer;
    .param p5, "itemcode"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "costCenterId"    # Ljava/lang/Integer;
    .param p8, "costCenterName"    # Ljava/lang/String;
    .param p9, "price"    # Ljava/lang/Double;
    .param p10, "priceWithCurr"    # Ljava/lang/String;
    .param p11, "imageLink"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->id:Ljava/lang/Long;

    .line 30
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/DishDb;->categoryid:Ljava/lang/Integer;

    .line 31
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/DishDb;->name:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemid:Ljava/lang/Integer;

    .line 33
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemcode:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/DishDb;->description:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterId:Ljava/lang/Integer;

    .line 36
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterName:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcom/danfe/restaurantapp1/model/DishDb;->price:Ljava/lang/Double;

    .line 38
    iput-object p10, p0, Lcom/danfe/restaurantapp1/model/DishDb;->priceWithCurr:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcom/danfe/restaurantapp1/model/DishDb;->imageLink:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getCategoryid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->categoryid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->imageLink:Ljava/lang/String;

    return-object v0
.end method

.method public getItemcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemcode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getPriceWithCurr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/DishDb;->priceWithCurr:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "categoryid"    # Ljava/lang/Integer;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->categoryid:Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterId:Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->costCenterName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->id:Ljava/lang/Long;

    .line 48
    return-void
.end method

.method public setImageLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "imageLink"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->imageLink:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setItemcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemcode"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemcode:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setItemid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemid"    # Ljava/lang/Integer;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->itemid:Ljava/lang/Integer;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->name:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->price:Ljava/lang/Double;

    .line 112
    return-void
.end method

.method public setPriceWithCurr(Ljava/lang/String;)V
    .registers 2
    .param p1, "priceWithCurr"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/DishDb;->priceWithCurr:Ljava/lang/String;

    .line 120
    return-void
.end method
