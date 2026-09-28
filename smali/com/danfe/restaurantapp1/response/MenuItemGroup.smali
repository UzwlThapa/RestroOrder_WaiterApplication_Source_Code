###### Class com.danfe.restaurantapp1.response.MenuItemGroup (com.danfe.restaurantapp1.response.MenuItemGroup)
.class public Lcom/danfe/restaurantapp1/response/MenuItemGroup;
.super Ljava/lang/Object;
.source "MenuItemGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;,
        Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;
    }
.end annotation


# instance fields
.field private itemgroup:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->itemgroup:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemgroup()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->itemgroup:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setItemgroup(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->itemgroup:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->message:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->statusCode:Ljava/lang/Integer;

    .line 23
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.MenuItemGroup.ExtraMenu (com.danfe.restaurantapp1.response.MenuItemGroup$ExtraMenu)
.class public Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;
.super Ljava/lang/Object;
.source "MenuItemGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/MenuItemGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraMenu"
.end annotation


# instance fields
.field private addedBy:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddedBy"
    .end annotation
.end field

.field private extraItem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtraItem"
    .end annotation
.end field

.field private extraItemID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtraItemID"
    .end annotation
.end field

.field private extraPrice:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtraPrice"
    .end annotation
.end field

.field private ingredientdata:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ingredientdata"
    .end annotation
.end field

.field private isActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsActive"
    .end annotation
.end field

.field private isDeleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDeleted"
    .end annotation
.end field

.field private isExtra:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsExtra"
    .end annotation
.end field

.field private itemID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemID"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/MenuItemGroup;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/MenuItemGroup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->this$0:Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedBy()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->addedBy:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraPrice:Ljava/lang/Float;

    return-object v0
.end method

.method public getIngredientdata()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->ingredientdata:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsDeleted()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsExtra()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isExtra:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->itemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddedBy(Ljava/lang/Object;)V
    .registers 2
    .param p1, "addedBy"    # Ljava/lang/Object;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->addedBy:Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraItem:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setExtraItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "extraItemID"    # Ljava/lang/Integer;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraItemID:Ljava/lang/Integer;

    .line 321
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Float;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Float;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->extraPrice:Ljava/lang/Float;

    .line 337
    return-void
.end method

.method public setIngredientdata(Ljava/lang/Object;)V
    .registers 2
    .param p1, "ingredientdata"    # Ljava/lang/Object;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->ingredientdata:Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public setIsActive(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isActive"    # Ljava/lang/Boolean;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isActive:Ljava/lang/Boolean;

    .line 345
    return-void
.end method

.method public setIsDeleted(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isDeleted:Ljava/lang/Boolean;

    .line 369
    return-void
.end method

.method public setIsExtra(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isExtra"    # Ljava/lang/Boolean;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->isExtra:Ljava/lang/Boolean;

    .line 361
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemID"    # Ljava/lang/Integer;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;->itemID:Ljava/lang/Integer;

    .line 313
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.MenuItemGroup.Itemgroup (com.danfe.restaurantapp1.response.MenuItemGroup$Itemgroup)
.class public Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;
.super Ljava/lang/Object;
.source "MenuItemGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/MenuItemGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Itemgroup"
.end annotation


# instance fields
.field private costCenterID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterID"
    .end annotation
.end field

.field private costCenterName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CostCenterName"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Currency"
    .end annotation
.end field

.field private dPUnitId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DPUnitId"
    .end annotation
.end field

.field private dSUnitId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DSUnitId"
    .end annotation
.end field

.field private details:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Details"
    .end annotation
.end field

.field private extraMenu:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extradata"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;",
            ">;"
        }
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ImagePath"
    .end annotation
.end field

.field private isCategory:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCategory"
    .end annotation
.end field

.field private isCombo:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsCombo"
    .end annotation
.end field

.field private isExpirable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsExpirable"
    .end annotation
.end field

.field private isOutOfStock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsOutOfStock"
    .end annotation
.end field

.field private isProdMaterial:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsProdMaterial"
    .end annotation
.end field

.field private isUnitWiseRate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsUnitWiseRate"
    .end annotation
.end field

.field private itemCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemCode"
    .end annotation
.end field

.field private itemId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemId"
    .end annotation
.end field

.field private itemName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemName"
    .end annotation
.end field

.field private level:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Level"
    .end annotation
.end field

.field private mUnitId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MUnitId"
    .end annotation
.end field

.field private pItemId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PItemId"
    .end annotation
.end field

.field private sRate:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SRate"
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/MenuItemGroup;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/MenuItemGroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->this$0:Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->extraMenu:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->costCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->costCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDPUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->dPUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDSUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->dSUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->details:Ljava/lang/String;

    return-object v0
.end method

.method public getExtradata()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->extraMenu:Ljava/util/List;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCategory()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isCategory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsExpirable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isExpirable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsOutOfStock()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isOutOfStock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsProdMaterial()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isProdMaterial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsUnitWiseRate()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isUnitWiseRate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->mUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->pItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSRate()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->sRate:Ljava/lang/Float;

    return-object v0
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->costCenterID:Ljava/lang/Integer;

    .line 161
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->costCenterName:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->currency:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setDPUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "dPUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->dPUnitId:Ljava/lang/Integer;

    .line 185
    return-void
.end method

.method public setDSUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "dSUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->dSUnitId:Ljava/lang/Integer;

    .line 177
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .registers 2
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->details:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setExtraMenu(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "extradata":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/MenuItemGroup$ExtraMenu;>;"
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->extraMenu:Ljava/util/List;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->extraMenu:Ljava/util/List;

    .line 241
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->imagePath:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setIsCategory(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCategory"    # Ljava/lang/Boolean;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isCategory:Ljava/lang/Boolean;

    .line 257
    return-void
.end method

.method public setIsCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isCombo:Ljava/lang/Boolean;

    .line 249
    return-void
.end method

.method public setIsExpirable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isExpirable"    # Ljava/lang/Boolean;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isExpirable:Ljava/lang/Boolean;

    .line 193
    return-void
.end method

.method public setIsOutOfStock(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isOutOfStock"    # Ljava/lang/Boolean;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isOutOfStock:Ljava/lang/Boolean;

    .line 265
    return-void
.end method

.method public setIsProdMaterial(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isProdMaterial"    # Ljava/lang/Boolean;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isProdMaterial:Ljava/lang/Boolean;

    .line 201
    return-void
.end method

.method public setIsUnitWiseRate(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isUnitWiseRate"    # Ljava/lang/Boolean;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->isUnitWiseRate:Ljava/lang/Boolean;

    .line 217
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemCode:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemId:Ljava/lang/Integer;

    .line 113
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->itemName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "level"    # Ljava/lang/Integer;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->level:Ljava/lang/Integer;

    .line 209
    return-void
.end method

.method public setMUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->mUnitId:Ljava/lang/Integer;

    .line 169
    return-void
.end method

.method public setPItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "pItemId"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->pItemId:Ljava/lang/Integer;

    .line 137
    return-void
.end method

.method public setSRate(Ljava/lang/Float;)V
    .registers 2
    .param p1, "sRate"    # Ljava/lang/Float;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;->sRate:Ljava/lang/Float;

    .line 225
    return-void
.end method
