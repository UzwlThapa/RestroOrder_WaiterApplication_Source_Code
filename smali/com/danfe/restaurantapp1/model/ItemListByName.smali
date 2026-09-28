###### Class com.danfe.restaurantapp1.model.ItemListByName (com.danfe.restaurantapp1.model.ItemListByName)
.class public Lcom/danfe/restaurantapp1/model/ItemListByName;
.super Ljava/lang/Object;
.source "ItemListByName.java"


# instance fields
.field completedQuantity:F

.field imagePath:Ljava/lang/String;

.field itemId:I

.field itemname:Ljava/lang/String;

.field note:Ljava/lang/String;

.field orderedQuantity:F

.field progressQuantity:F

.field totalqty:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFLjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "itemname"    # Ljava/lang/String;
    .param p2, "totalqty"    # F
    .param p3, "progressQuantity"    # F
    .param p4, "completedQuantity"    # F
    .param p5, "orderedQuantity"    # F
    .param p6, "imagePath"    # Ljava/lang/String;
    .param p7, "note"    # Ljava/lang/String;
    .param p8, "itemId"    # I

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->progressQuantity:F

    .line 7
    iput v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->completedQuantity:F

    .line 8
    iput v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->orderedQuantity:F

    .line 14
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemname:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->totalqty:F

    .line 16
    iput p3, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->progressQuantity:F

    .line 17
    iput p4, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->completedQuantity:F

    .line 18
    iput p5, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->orderedQuantity:F

    .line 19
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->imagePath:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->note:Ljava/lang/String;

    .line 21
    iput p8, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemId:I

    .line 22
    return-void
.end method


# virtual methods
.method public getCompletedQuantity()F
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->completedQuantity:F

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemId:I

    return v0
.end method

.method public getItemname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemname:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedQuantity()F
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->orderedQuantity:F

    return v0
.end method

.method public getProgressQuantity()F
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->progressQuantity:F

    return v0
.end method

.method public getTotalqty()F
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->totalqty:F

    return v0
.end method

.method public setCompletedQuantity(F)V
    .registers 2
    .param p1, "completedQuantity"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->completedQuantity:F

    .line 54
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->imagePath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setItemId(I)V
    .registers 2
    .param p1, "itemId"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemId:I

    .line 86
    return-void
.end method

.method public setItemname(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemname"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->itemname:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->note:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setOrderedQuantity(F)V
    .registers 2
    .param p1, "orderedQuantity"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->orderedQuantity:F

    .line 62
    return-void
.end method

.method public setProgressQuantity(F)V
    .registers 2
    .param p1, "progressQuantity"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->progressQuantity:F

    .line 46
    return-void
.end method

.method public setTotalqty(F)V
    .registers 2
    .param p1, "totalqty"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/danfe/restaurantapp1/model/ItemListByName;->totalqty:F

    .line 38
    return-void
.end method
