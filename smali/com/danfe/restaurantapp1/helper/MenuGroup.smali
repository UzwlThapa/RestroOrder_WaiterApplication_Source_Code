###### Class com.danfe.restaurantapp1.helper.MenuGroup (com.danfe.restaurantapp1.helper.MenuGroup)
.class public Lcom/danfe/restaurantapp1/helper/MenuGroup;
.super Ljava/lang/Object;
.source "MenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;
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

.field private menugroupresult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->menugroupresult:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->additionalProperties:Ljava/util/Map;

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
    .line 46
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getMenugroupresult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->menugroupresult:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public setMenugroupresult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "menugroupresult":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->menugroupresult:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup;->status:Ljava/lang/String;

    .line 29
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.MenuGroup.Menugroupresult (com.danfe.restaurantapp1.helper.MenuGroup$Menugroupresult)
.class public Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;
.super Ljava/lang/Object;
.source "MenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/MenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Menugroupresult"
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

.field private id:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/MenuGroup;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/MenuGroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/MenuGroup;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->this$0:Lcom/danfe/restaurantapp1/helper/MenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->additionalProperties:Ljava/util/Map;

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
    .line 88
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->id:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/MenuGroup$Menugroupresult;->name:Ljava/lang/String;

    .line 85
    return-void
.end method
