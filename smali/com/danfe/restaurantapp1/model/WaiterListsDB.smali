###### Class com.danfe.restaurantapp1.model.WaiterListsDB (com.danfe.restaurantapp1.model.WaiterListsDB)
.class public Lcom/danfe/restaurantapp1/model/WaiterListsDB;
.super Ljava/lang/Object;
.source "WaiterListsDB.java"


# instance fields
.field private WaiterIp:Ljava/lang/String;

.field private WaiterName:Ljava/lang/String;

.field private id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->id:Ljava/lang/Long;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "WaiterName"    # Ljava/lang/String;
    .param p3, "WaiterIp"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->id:Ljava/lang/Long;

    .line 22
    iput-object p2, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterIp:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getWaiterIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterIp:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiterName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->id:Ljava/lang/Long;

    .line 32
    return-void
.end method

.method public setWaiterIp(Ljava/lang/String;)V
    .registers 2
    .param p1, "WaiterIp"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterIp:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setWaiterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "WaiterName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/danfe/restaurantapp1/model/WaiterListsDB;->WaiterName:Ljava/lang/String;

    .line 40
    return-void
.end method
