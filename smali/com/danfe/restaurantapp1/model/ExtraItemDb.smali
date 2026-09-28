###### Class com.danfe.restaurantapp1.model.ExtraItemDb (com.danfe.restaurantapp1.model.ExtraItemDb)
.class public Lcom/danfe/restaurantapp1/model/ExtraItemDb;
.super Ljava/lang/Object;
.source "ExtraItemDb.java"


# instance fields
.field private addedBy:Ljava/lang/String;

.field private extraItem:Ljava/lang/String;

.field private extraItemID:Ljava/lang/Integer;

.field private extraPrice:Ljava/lang/Double;

.field private id:Ljava/lang/Long;

.field private isActive:Ljava/lang/Boolean;

.field private isExtra:Ljava/lang/Boolean;

.field private itemID:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->id:Ljava/lang/Long;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "itemID"    # Ljava/lang/Integer;
    .param p3, "extraItemID"    # Ljava/lang/Integer;
    .param p4, "extraItem"    # Ljava/lang/String;
    .param p5, "extraPrice"    # Ljava/lang/Double;
    .param p6, "isActive"    # Ljava/lang/Boolean;
    .param p7, "addedBy"    # Ljava/lang/String;
    .param p8, "isExtra"    # Ljava/lang/Boolean;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->id:Ljava/lang/Long;

    .line 26
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->itemID:Ljava/lang/Integer;

    .line 27
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItemID:Ljava/lang/Integer;

    .line 28
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItem:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraPrice:Ljava/lang/Double;

    .line 30
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isActive:Ljava/lang/Boolean;

    .line 31
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->addedBy:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isExtra:Ljava/lang/Boolean;

    .line 35
    return-void
.end method


# virtual methods
.method public getAddedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->addedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsExtra()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isExtra:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->itemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "addedBy"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->addedBy:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItem:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setExtraItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "extraItemID"    # Ljava/lang/Integer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraItemID:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Double;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->extraPrice:Ljava/lang/Double;

    .line 83
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->id:Ljava/lang/Long;

    .line 51
    return-void
.end method

.method public setIsActive(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isActive"    # Ljava/lang/Boolean;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isActive:Ljava/lang/Boolean;

    .line 91
    return-void
.end method

.method public setIsExtra(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isExtra"    # Ljava/lang/Boolean;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->isExtra:Ljava/lang/Boolean;

    .line 107
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemID"    # Ljava/lang/Integer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ExtraItemDb;->itemID:Ljava/lang/Integer;

    .line 59
    return-void
.end method
