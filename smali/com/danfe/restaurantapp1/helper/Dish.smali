###### Class com.danfe.restaurantapp1.helper.Dish (com.danfe.restaurantapp1.helper.Dish)
.class public Lcom/danfe/restaurantapp1/helper/Dish;
.super Ljava/lang/Object;
.source "Dish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;
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

.field private dishresult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->dishresult:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->additionalProperties:Ljava/util/Map;

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
    .line 47
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getDishresult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->dishresult:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setDishresult(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "dishresult":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;>;"
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish;->dishresult:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish;->status:Ljava/lang/String;

    .line 30
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.Dish.Dishresult (com.danfe.restaurantapp1.helper.Dish$Dishresult)
.class public Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;
.super Ljava/lang/Object;
.source "Dish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/helper/Dish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dishresult"
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

.field private categoryid:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private itemCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rate:Ljava/lang/Long;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/Dish;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/helper/Dish;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/Dish;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->this$0:Lcom/danfe/restaurantapp1/helper/Dish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->additionalProperties:Ljava/util/Map;

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
    .line 149
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoryid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->categoryid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->itemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()J
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->rate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setCategoryid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "categoryid"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->categoryid:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->description:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->id:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setItemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->itemCode:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->name:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRate(J)V
    .registers 4
    .param p1, "rate"    # J

    .prologue
    .line 145
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/Dish$Dishresult;->rate:Ljava/lang/Long;

    .line 146
    return-void
.end method
