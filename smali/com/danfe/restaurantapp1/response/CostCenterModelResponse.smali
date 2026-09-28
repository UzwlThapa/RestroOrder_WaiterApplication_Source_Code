###### Class com.danfe.restaurantapp1.response.CostCenterModelResponse (com.danfe.restaurantapp1.response.CostCenterModelResponse)
.class public Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;
.super Ljava/lang/Object;
.source "CostCenterModelResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;,
        Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;,
        Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;
    }
.end annotation


# instance fields
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

.field private d:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->additionalProperties:Ljava/util/Map;

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
    .line 26
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getD()Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->d:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setD(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;)V
    .registers 2
    .param p1, "d"    # Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;->d:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;

    .line 23
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.CostCenterModelResponse.BillingTerm (com.danfe.restaurantapp1.response.CostCenterModelResponse$BillingTerm)
.class public Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;
.super Ljava/lang/Object;
.source "CostCenterModelResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BillingTerm"
.end annotation


# instance fields
.field private BilingID:Ljava/lang/Integer;

.field private CostCenter:Ljava/lang/Object;

.field private Description:Ljava/lang/String;

.field private IsAdd:Ljava/lang/Boolean;

.field private Name:Ljava/lang/String;

.field private Rate:Ljava/lang/String;

.field private SequenceOrder:Ljava/lang/Integer;

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

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->additionalProperties:Ljava/util/Map;

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
    .line 143
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getBilingID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->BilingID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenter()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->CostCenter:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAdd()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->IsAdd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Rate:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceOrder()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->SequenceOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public setBilingID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "bilingID"    # Ljava/lang/Integer;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->BilingID:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setCostCenter(Ljava/lang/Object;)V
    .registers 2
    .param p1, "costCenter"    # Ljava/lang/Object;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->CostCenter:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Description:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setIsAdd(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isAdd"    # Ljava/lang/Boolean;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->IsAdd:Ljava/lang/Boolean;

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->Rate:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSequenceOrder(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "sequenceOrder"    # Ljava/lang/Integer;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;->SequenceOrder:Ljava/lang/Integer;

    .line 132
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.CostCenterModelResponse.CostCenter (com.danfe.restaurantapp1.response.CostCenterModelResponse$CostCenter)
.class public Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;
.super Ljava/lang/Object;
.source "CostCenterModelResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CostCenter"
.end annotation


# instance fields
.field private CostCenterID:Ljava/lang/Integer;

.field private CostCenterName:Ljava/lang/String;

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

.field private coDiscount:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->additionalProperties:Ljava/util/Map;

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
    .line 193
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCoDiscount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->coDiscount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->CostCenterID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCostCenterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->CostCenterName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public setCoDiscount(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "coDiscount"    # Ljava/lang/Integer;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->coDiscount:Ljava/lang/Integer;

    .line 182
    return-void
.end method

.method public setCostCenterID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "costCenterID"    # Ljava/lang/Integer;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->CostCenterID:Ljava/lang/Integer;

    .line 166
    return-void
.end method

.method public setCostCenterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "costCenterName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;->CostCenterName:Ljava/lang/String;

    .line 174
    return-void
.end method

###### Class com.danfe.restaurantapp1.response.CostCenterModelResponse.D (com.danfe.restaurantapp1.response.CostCenterModelResponse$D)
.class public Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;
.super Ljava/lang/Object;
.source "CostCenterModelResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "D"
.end annotation


# instance fields
.field private __type:Ljava/lang/String;

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

.field private billingTerm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;",
            ">;"
        }
    .end annotation
.end field

.field private costCenter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->this$0:Lcom/danfe/restaurantapp1/response/CostCenterModelResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->billingTerm:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->costCenter:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->additionalProperties:Ljava/util/Map;

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
    .line 65
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getBillingTerm()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->billingTerm:Ljava/util/List;

    return-object v0
.end method

.method public getCostCenter()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->costCenter:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->__type:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public setBillingTerm(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "billingTerm":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$BillingTerm;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->billingTerm:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setCostCenter(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "costCenter":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$CostCenter;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->costCenter:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/CostCenterModelResponse$D;->__type:Ljava/lang/String;

    .line 46
    return-void
.end method
