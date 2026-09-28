###### Class com.danfe.restaurantapp1.helper.ServiceResult (com.danfe.restaurantapp1.helper.ServiceResult)
.class public Lcom/danfe/restaurantapp1/helper/ServiceResult;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;,
        Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;,
        Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;,
        Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;
    }
.end annotation


# instance fields
.field private MenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;",
            ">;"
        }
    .end annotation
.end field

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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->MenuList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->additionalProperties:Ljava/util/Map;

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
    .line 32
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getMenuList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->MenuList:Ljava/util/List;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setMenuList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "MenuList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult;->MenuList:Ljava/util/List;

    .line 29
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.ServiceResult.CategoryList (com.danfe.restaurantapp1.helper.ServiceResult$CategoryList)
.class public Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/ServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryList"
.end annotation


# instance fields
.field private CategoriesID:Ljava/lang/Integer;

.field private CategoriesName:Ljava/lang/String;

.field private MenuID:Ljava/lang/Integer;

.field private MenuName:Ljava/lang/Object;

.field private PhotoPath:Ljava/lang/String;

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

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/ServiceResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ServiceResult;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->itemList:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->additionalProperties:Ljava/util/Map;

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
    .line 209
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoriesID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->CategoriesID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCategoriesName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->CategoriesName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public getMenuID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->MenuID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->MenuName:Ljava/lang/Object;

    return-object v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->PhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public setCategoriesID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CategoriesID"    # Ljava/lang/Integer;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->CategoriesID:Ljava/lang/Integer;

    .line 136
    return-void
.end method

.method public setCategoriesName(Ljava/lang/String;)V
    .registers 2
    .param p1, "CategoriesName"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->CategoriesName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->itemList:Ljava/util/List;

    .line 206
    return-void
.end method

.method public setMenuID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "MenuID"    # Ljava/lang/Integer;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->MenuID:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public setMenuName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "MenuName"    # Ljava/lang/Object;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->MenuName:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "PhotoPath"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;->PhotoPath:Ljava/lang/String;

    .line 178
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.ServiceResult.ItemList (com.danfe.restaurantapp1.helper.ServiceResult$ItemList)
.class public Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/ServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemList"
.end annotation


# instance fields
.field private CategoriesID:Ljava/lang/Integer;

.field private CategoriesName:Ljava/lang/Object;

.field private CostCenterId:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

.field private ExtraCharge:Ljava/lang/Object;

.field private GuestNo:Ljava/lang/Integer;

.field private IsCancelled:Ljava/lang/Integer;

.field private IsSplit:Ljava/lang/Integer;

.field private ItemCode:Ljava/lang/String;

.field private ItemDescription:Ljava/lang/String;

.field private ItemID:Ljava/lang/Integer;

.field private ItemName:Ljava/lang/String;

.field private Note:Ljava/lang/Object;

.field private OrderDetailsID:Ljava/lang/Integer;

.field private OrderMasterId:Ljava/lang/Integer;

.field private PhotoPath:Ljava/lang/String;

.field private Price:Ljava/lang/Double;

.field private PriceWithIcon:Ljava/lang/String;

.field private Quantity:Ljava/lang/Integer;

.field private Remarks:Ljava/lang/Object;

.field private RoomId:Ljava/lang/Integer;

.field private RowTotal:Ljava/lang/Object;

.field private SeatNo:Ljava/lang/Integer;

.field private Status:Ljava/lang/Object;

.field private TableId:Ljava/lang/Integer;

.field private UnitID:Ljava/lang/Integer;

.field private UnitName:Ljava/lang/Object;

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

.field private restrotableTitle:Ljava/lang/Object;

.field private room:Ljava/lang/Object;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;

.field private unitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/ServiceResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ServiceResult;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->unitList:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->additionalProperties:Ljava/util/Map;

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
    .line 672
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoriesID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CategoriesID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCategoriesName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CategoriesName:Ljava/lang/Object;

    return-object v0
.end method

.method public getCostCenterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CostCenterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraCharge()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ExtraCharge:Ljava/lang/Object;

    return-object v0
.end method

.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->GuestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsCancelled()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->IsCancelled:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsSplit()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->IsSplit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Note:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrderDetailsID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->OrderDetailsID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderMasterId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->OrderMasterId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->PhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Price:Ljava/lang/Double;

    return-object v0
.end method

.method public getPriceWithIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->PriceWithIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Remarks:Ljava/lang/Object;

    return-object v0
.end method

.method public getRestrotableTitle()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->restrotableTitle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoom()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->room:Ljava/lang/Object;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->RoomId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRowTotal()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->RowTotal:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->SeatNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Status:Ljava/lang/Object;

    return-object v0
.end method

.method public getTableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->TableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnitID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->UnitID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnitList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->unitList:Ljava/util/List;

    return-object v0
.end method

.method public getUnitName()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->UnitName:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 676
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void
.end method

.method public setCategoriesID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CategoriesID"    # Ljava/lang/Integer;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CategoriesID:Ljava/lang/Integer;

    .line 417
    return-void
.end method

.method public setCategoriesName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "CategoriesName"    # Ljava/lang/Object;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CategoriesName:Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public setCostCenterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "CostCenterId"    # Ljava/lang/Integer;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CostCenterId:Ljava/lang/Integer;

    .line 375
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "CostCenterName"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->CostCenterName:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setExtraCharge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "ExtraCharge"    # Ljava/lang/Object;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ExtraCharge:Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "GuestNo"    # Ljava/lang/Integer;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->GuestNo:Ljava/lang/Integer;

    .line 515
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "IsCancelled"    # Ljava/lang/Integer;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->IsCancelled:Ljava/lang/Integer;

    .line 571
    return-void
.end method

.method public setIsSplit(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "IsSplit"    # Ljava/lang/Integer;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->IsSplit:Ljava/lang/Integer;

    .line 529
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "ItemCode"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemCode:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setItemDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "ItemDescription"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemDescription:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "ItemID"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemID:Ljava/lang/Integer;

    .line 263
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ItemName"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->ItemName:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setNote(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Note"    # Ljava/lang/Object;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Note:Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public setOrderDetailsID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderDetailsID"    # Ljava/lang/Integer;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->OrderDetailsID:Ljava/lang/Integer;

    .line 557
    return-void
.end method

.method public setOrderMasterId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "OrderMasterId"    # Ljava/lang/Integer;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->OrderMasterId:Ljava/lang/Integer;

    .line 613
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "PhotoPath"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->PhotoPath:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "Price"    # Ljava/lang/Double;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Price:Ljava/lang/Double;

    .line 319
    return-void
.end method

.method public setPriceWithIcon(Ljava/lang/String;)V
    .registers 2
    .param p1, "PriceWithIcon"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->PriceWithIcon:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "Quantity"    # Ljava/lang/Integer;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Quantity:Ljava/lang/Integer;

    .line 487
    return-void
.end method

.method public setRemarks(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Remarks"    # Ljava/lang/Object;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Remarks:Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public setRestrotableTitle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "restrotableTitle"    # Ljava/lang/Object;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->restrotableTitle:Ljava/lang/Object;

    .line 641
    return-void
.end method

.method public setRoom(Ljava/lang/Object;)V
    .registers 2
    .param p1, "room"    # Ljava/lang/Object;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->room:Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public setRoomId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "RoomId"    # Ljava/lang/Integer;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->RoomId:Ljava/lang/Integer;

    .line 599
    return-void
.end method

.method public setRowTotal(Ljava/lang/Object;)V
    .registers 2
    .param p1, "RowTotal"    # Ljava/lang/Object;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->RowTotal:Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public setSeatNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SeatNo"    # Ljava/lang/Integer;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->SeatNo:Ljava/lang/Integer;

    .line 501
    return-void
.end method

.method public setStatus(Ljava/lang/Object;)V
    .registers 2
    .param p1, "Status"    # Ljava/lang/Object;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->Status:Ljava/lang/Object;

    .line 585
    return-void
.end method

.method public setTableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "TableId"    # Ljava/lang/Integer;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->TableId:Ljava/lang/Integer;

    .line 627
    return-void
.end method

.method public setUnitID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "UnitID"    # Ljava/lang/Integer;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->UnitID:Ljava/lang/Integer;

    .line 361
    return-void
.end method

.method public setUnitList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "unitList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->unitList:Ljava/util/List;

    .line 669
    return-void
.end method

.method public setUnitName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "UnitName"    # Ljava/lang/Object;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$ItemList;->UnitName:Ljava/lang/Object;

    .line 445
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.ServiceResult.MenuList (com.danfe.restaurantapp1.helper.ServiceResult$MenuList)
.class public Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/ServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuList"
.end annotation


# instance fields
.field private MenuID:Ljava/lang/Integer;

.field private MenuName:Ljava/lang/String;

.field private PhotoPath:Ljava/lang/String;

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

.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/ServiceResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ServiceResult;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->categoryList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->additionalProperties:Ljava/util/Map;

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
    .line 104
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getMenuID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->MenuID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->MenuName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->PhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public setCategoryList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/ServiceResult$CategoryList;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->categoryList:Ljava/util/List;

    .line 87
    return-void
.end method

.method public setMenuID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "MenuID"    # Ljava/lang/Integer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->MenuID:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .registers 2
    .param p1, "MenuName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->MenuName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPhotoPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "PhotoPath"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$MenuList;->PhotoPath:Ljava/lang/String;

    .line 101
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.ServiceResult.UnitList (com.danfe.restaurantapp1.helper.ServiceResult$UnitList)
.class public Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;
.super Ljava/lang/Object;
.source "ServiceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/ServiceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnitList"
.end annotation


# instance fields
.field private UnitID:Ljava/lang/Integer;

.field private UnitName:Ljava/lang/String;

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

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/ServiceResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ServiceResult;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->this$0:Lcom/danfe/restaurantapp1/helper/ServiceResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->additionalProperties:Ljava/util/Map;

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
    .line 715
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getUnitID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->UnitID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnitName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->UnitName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public setUnitID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "UnitID"    # Ljava/lang/Integer;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->UnitID:Ljava/lang/Integer;

    .line 698
    return-void
.end method

.method public setUnitName(Ljava/lang/String;)V
    .registers 2
    .param p1, "UnitName"    # Ljava/lang/String;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ServiceResult$UnitList;->UnitName:Ljava/lang/String;

    .line 712
    return-void
.end method
