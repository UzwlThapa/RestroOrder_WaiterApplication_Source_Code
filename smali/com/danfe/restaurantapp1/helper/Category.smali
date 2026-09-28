###### Class com.danfe.restaurantapp1.helper.Category (com.danfe.restaurantapp1.helper.Category)
.class public Lcom/danfe/restaurantapp1/helper/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;
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

.field private categoryresult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;",
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

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->categoryresult:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->additionalProperties:Ljava/util/Map;

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
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoryresult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->categoryresult:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public setCategoryresult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "categoryresult":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category;->categoryresult:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category;->status:Ljava/lang/String;

    .line 33
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Category.Categoryresult (com.danfe.restaurantapp1.helper.Category$Categoryresult)
.class public Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Categoryresult"
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

.field private menuId:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Category;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/Category;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Category;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->this$0:Lcom/danfe/restaurantapp1/helper/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->additionalProperties:Ljava/util/Map;

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
    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->menuId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->id:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setMenuId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "menuId"    # Ljava/lang/Integer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->menuId:Ljava/lang/Integer;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Category$Categoryresult;->name:Ljava/lang/String;

    .line 102
    return-void
.end method
