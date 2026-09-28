###### Class com.danfe.restaurantapp1.model.OrderMasterDb (com.danfe.restaurantapp1.model.OrderMasterDb)
.class public Lcom/danfe/restaurantapp1/model/OrderMasterDb;
.super Ljava/lang/Object;
.source "OrderMasterDb.java"


# instance fields
.field private guestNo:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private isCanceled:Ljava/lang/Boolean;

.field private isSplit:Ljava/lang/Boolean;

.field private remarks:Ljava/lang/String;

.field private tableId:Ljava/lang/Integer;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->id:Ljava/lang/Long;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "tableId"    # Ljava/lang/Integer;
    .param p3, "isSplit"    # Ljava/lang/Boolean;
    .param p4, "guestNo"    # Ljava/lang/Integer;
    .param p5, "isCanceled"    # Ljava/lang/Boolean;
    .param p6, "remarks"    # Ljava/lang/String;
    .param p7, "username"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->id:Ljava/lang/Long;

    .line 26
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->tableId:Ljava/lang/Integer;

    .line 27
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isSplit:Ljava/lang/Boolean;

    .line 28
    iput-object p4, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->guestNo:Ljava/lang/Integer;

    .line 29
    iput-object p5, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isCanceled:Ljava/lang/Boolean;

    .line 30
    iput-object p6, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->remarks:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->username:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getGuestNo()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->guestNo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsCanceled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isCanceled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSplit()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isSplit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getTableId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->tableId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGuestNo(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "guestNo"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->guestNo:Ljava/lang/Integer;

    .line 64
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->id:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public setIsCanceled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCanceled"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isCanceled:Ljava/lang/Boolean;

    .line 72
    return-void
.end method

.method public setIsSplit(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isSplit"    # Ljava/lang/Boolean;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->isSplit:Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .registers 2
    .param p1, "remarks"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->remarks:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTableId(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "tableId"    # Ljava/lang/Integer;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->tableId:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/OrderMasterDb;->username:Ljava/lang/String;

    .line 88
    return-void
.end method
