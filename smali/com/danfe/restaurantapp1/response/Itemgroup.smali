###### Class com.danfe.restaurantapp1.response.Itemgroup (com.danfe.restaurantapp1.response.Itemgroup)
.class public Lcom/danfe/restaurantapp1/response/Itemgroup;
.super Ljava/lang/Object;
.source "Itemgroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;
    }
.end annotation


# instance fields
.field private CostCenterID:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

.field private Currency:Ljava/lang/String;

.field private DPUnitId:Ljava/lang/Integer;

.field private DSUnitId:Ljava/lang/Integer;

.field private Details:Ljava/lang/String;

.field private ImagePath:Ljava/lang/String;

.field private IsCategory:Ljava/lang/Boolean;

.field private IsCombo:Ljava/lang/Boolean;

.field private IsExpirable:Ljava/lang/Boolean;

.field private IsOutOfStock:Ljava/lang/Boolean;

.field private IsProdMaterial:Ljava/lang/Boolean;

.field private IsUnitWiseRate:Ljava/lang/Boolean;

.field private ItemCode:Ljava/lang/String;

.field private ItemId:Ljava/lang/Integer;

.field private ItemName:Ljava/lang/String;

.field private Level:Ljava/lang/Integer;

.field private MUnitId:Ljava/lang/Integer;

.field private PItemId:Ljava/lang/Integer;

.field private SRate:Ljava/lang/String;

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

.field private extradata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->extradata:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->additionalProperties:Ljava/util/Map;

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
    .line 202
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCombo()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsCombo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->CostCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDPUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->DPUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDSUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->DSUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Details:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsExpirable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExtradata()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->extradata:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCategory()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsCategory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMUnitId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->MUnitId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutOfStock()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsOutOfStock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPItemId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->PItemId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProdMaterial()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsProdMaterial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->SRate:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitWiseRate()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsUnitWiseRate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "additionalProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->additionalProperties:Ljava/util/Map;

    .line 207
    return-void
.end method

.method public setCombo(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "combo"    # Ljava/lang/Boolean;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsCombo:Ljava/lang/Boolean;

    .line 175
    return-void
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->CostCenterID:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->CostCenterName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Currency:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setDPUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "DPUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->DPUnitId:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public setDSUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "DSUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->DSUnitId:Ljava/lang/Integer;

    .line 103
    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .registers 2
    .param p1, "details"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Details:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setExpirable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "expirable"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsExpirable:Ljava/lang/Boolean;

    .line 119
    return-void
.end method

.method public setExtradata(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "extradata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->extradata:Ljava/util/ArrayList;

    .line 191
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ImagePath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setIsCategory(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "category"    # Ljava/lang/Boolean;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsCategory:Ljava/lang/Boolean;

    .line 183
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemCode:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemId:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->ItemName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "level"    # Ljava/lang/Integer;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->Level:Ljava/lang/Integer;

    .line 135
    return-void
.end method

.method public setMUnitId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "MUnitId"    # Ljava/lang/Integer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->MUnitId:Ljava/lang/Integer;

    .line 95
    return-void
.end method

.method public setOutOfStock(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "outOfStock"    # Ljava/lang/Boolean;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsOutOfStock:Ljava/lang/Boolean;

    .line 199
    return-void
.end method

.method public setPItemId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "PItemId"    # Ljava/lang/Integer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->PItemId:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method public setProdMaterial(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "prodMaterial"    # Ljava/lang/Boolean;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsProdMaterial:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public setSRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "SRate"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->SRate:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setUnitWiseRate(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "unitWiseRate"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup;->IsUnitWiseRate:Ljava/lang/Boolean;

    .line 143
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.Itemgroup.ExtraMenu (com.danfe.restaurantapp1.response.Itemgroup$ExtraMenu)
.class public Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;
.super Ljava/lang/Object;
.source "Itemgroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/Itemgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraMenu"
.end annotation


# instance fields
.field private AddedBy:Ljava/lang/String;

.field private ExtraItem:Ljava/lang/String;

.field private ExtraItemID:Ljava/lang/Integer;

.field private ExtraPrice:Ljava/lang/Double;

.field private IsActive:Ljava/lang/Boolean;

.field private IsExtra:Ljava/lang/Boolean;

.field private ItemID:Ljava/lang/Integer;

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

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/Itemgroup;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/Itemgroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/Itemgroup;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->this$0:Lcom/danfe/restaurantapp1/response/Itemgroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActive()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->IsActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAddedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->AddedBy:Ljava/lang/String;

    return-object v0
.end method

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
    .line 277
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->IsExtra:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExtraItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraItem:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtraPrice()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getItemID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ItemID:Ljava/lang/Integer;

    return-object v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "active"    # Ljava/lang/Boolean;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->IsActive:Ljava/lang/Boolean;

    .line 258
    return-void
.end method

.method public setAddedBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "addedBy"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->AddedBy:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setAdditionalProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "additionalProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->additionalProperties:Ljava/util/Map;

    .line 282
    return-void
.end method

.method public setExtra(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "extra"    # Ljava/lang/Boolean;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->IsExtra:Ljava/lang/Boolean;

    .line 274
    return-void
.end method

.method public setExtraItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "extraItem"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraItem:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setExtraItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "extraItemID"    # Ljava/lang/Integer;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraItemID:Ljava/lang/Integer;

    .line 234
    return-void
.end method

.method public setExtraPrice(Ljava/lang/Double;)V
    .registers 2
    .param p1, "extraPrice"    # Ljava/lang/Double;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ExtraPrice:Ljava/lang/Double;

    .line 250
    return-void
.end method

.method public setItemID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "itemID"    # Ljava/lang/Integer;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/Itemgroup$ExtraMenu;->ItemID:Ljava/lang/Integer;

    .line 226
    return-void
.end method
