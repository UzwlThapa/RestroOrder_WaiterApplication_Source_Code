###### Class com.danfe.restaurantapp1.helper.Itemgroup (com.danfe.restaurantapp1.helper.Itemgroup)
.class public Lcom/danfe/restaurantapp1/helper/Itemgroup;
.super Ljava/lang/Object;
.source "Itemgroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;
    }
.end annotation


# instance fields
.field private CostCenterID:Ljava/lang/Integer;

.field private Currency:Ljava/lang/String;

.field private DPUnitId:Ljava/lang/Integer;

.field private DSUnitId:Ljava/lang/Integer;

.field private Details:Ljava/lang/String;

.field private ImagePath:Ljava/lang/String;

.field private IsExpirable:Ljava/lang/Boolean;

.field private IsProdMaterial:Ljava/lang/Boolean;

.field private IsUnitWiseRate:Ljava/lang/Boolean;

.field private ItemCode:Ljava/lang/String;

.field private ItemId:Ljava/lang/Integer;

.field private ItemName:Ljava/lang/String;

.field private Level:Ljava/lang/Integer;

.field private MUnitId:Ljava/lang/Integer;

.field private PItemId:Ljava/lang/Integer;

.field private SRate:Ljava/lang/Integer;

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

.field private extradata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->extradata:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->additionalProperties:Ljava/util/Map;

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
    .line 278
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->CostCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDPUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->DPUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDSUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->DSUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Details:Ljava/lang/String;

    return-object v0
.end method

.method public getExtradata()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->extradata:Ljava/util/List;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExpirable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsExpirable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsProdMaterial()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsProdMaterial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsUnitWiseRate()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsUnitWiseRate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->MUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->PItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSRate()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->SRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->CostCenterID:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Currency:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDPUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "dPUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->DPUnitId:Ljava/lang/Integer;

    .line 203
    return-void
.end method

.method public setDSUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "dSUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->DSUnitId:Ljava/lang/Integer;

    .line 185
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .registers 2
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Details:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setExtradata(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "extradata":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->extradata:Ljava/util/List;

    .line 325
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ImagePath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setIsExpirable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isExpirable"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsExpirable:Ljava/lang/Boolean;

    .line 221
    return-void
.end method

.method public setIsProdMaterial(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isProdMaterial"    # Ljava/lang/Boolean;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsProdMaterial:Ljava/lang/Boolean;

    .line 239
    return-void
.end method

.method public setIsUnitWiseRate(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isUnitWiseRate"    # Ljava/lang/Boolean;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->IsUnitWiseRate:Ljava/lang/Boolean;

    .line 275
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemCode:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemId:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->ItemName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "level"    # Ljava/lang/Integer;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->Level:Ljava/lang/Integer;

    .line 257
    return-void
.end method

.method public setMUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "mUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->MUnitId:Ljava/lang/Integer;

    .line 167
    return-void
.end method

.method public setPItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "pItemId"    # Ljava/lang/Integer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->PItemId:Ljava/lang/Integer;

    .line 95
    return-void
.end method

.method public setSRate(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "SRate"    # Ljava/lang/Integer;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup;->SRate:Ljava/lang/Integer;

    .line 287
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Itemgroup.ExtraMenu (com.danfe.restaurantapp1.helper.Itemgroup$ExtraMenu)
.class public Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;
.super Ljava/lang/Object;
.source "Itemgroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Itemgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraMenu"
.end annotation


# instance fields
.field private ExtraItem:Ljava/lang/String;

.field private ExtraPrice:Ljava/lang/Double;

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

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Itemgroup;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/Itemgroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Itemgroup;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->this$0:Lcom/danfe/restaurantapp1/helper/Itemgroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

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
    .line 370
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->ExtraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->ExtraPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->ExtraItem:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Double;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Itemgroup$ExtraMenu;->ExtraPrice:Ljava/lang/Double;

    .line 367
    return-void
.end method
