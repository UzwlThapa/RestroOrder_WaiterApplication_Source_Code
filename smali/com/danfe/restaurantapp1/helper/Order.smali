###### Class com.danfe.restaurantapp1.helper.Order (com.danfe.restaurantapp1.helper.Order)
.class public Lcom/danfe/restaurantapp1/helper/Order;
.super Ljava/lang/Object;
.source "Order.java"


# instance fields
.field private orderBy:Ljava/lang/String;

.field private orderNo:I

.field private tableNo:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "orderNo"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/Order;->orderNo:I

    .line 17
    return-void
.end method


# virtual methods
.method public getOrderBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Order;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/Order;->orderNo:I

    return v0
.end method

.method public getTableNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Order;->tableNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/Order;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Order;->orderBy:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setOrderNo(I)V
    .registers 2
    .param p1, "orderNo"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/Order;->orderNo:I

    .line 49
    return-void
.end method

.method public setTableNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableNo"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Order;->tableNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Order;->time:Ljava/lang/String;

    .line 25
    return-void
.end method
