###### Class com.danfe.restaurantapp1.model.CategoryDb (com.danfe.restaurantapp1.model.CategoryDb)
.class public Lcom/danfe/restaurantapp1/model/CategoryDb;
.super Ljava/lang/Object;
.source "CategoryDb.java"


# instance fields
.field private categoryPhotoPath:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private menuid:Ljava/lang/Integer;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->id:Ljava/lang/Long;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "categoryPhotoPath"    # Ljava/lang/String;
    .param p4, "menuid"    # Ljava/lang/Integer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->id:Ljava/lang/Long;

    .line 23
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->name:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->categoryPhotoPath:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->menuid:Ljava/lang/Integer;

    .line 26
    return-void
.end method


# virtual methods
.method public getCategoryPhotoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->categoryPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMenuid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->menuid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryPhotoPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "categoryPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->categoryPhotoPath:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->id:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method public setMenuid(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "menuid"    # Ljava/lang/Integer;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->menuid:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/CategoryDb;->name:Ljava/lang/String;

    .line 42
    return-void
.end method
