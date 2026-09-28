###### Class com.danfe.restaurantapp1.helper.OrderItem (com.danfe.restaurantapp1.helper.OrderItem)
.class public Lcom/danfe/restaurantapp1/helper/OrderItem;
.super Ljava/lang/Object;
.source "OrderItem.java"


# instance fields
.field private extra:F

.field private isCancelled:Ljava/lang/Boolean;

.field private itemid:I

.field private note:Ljava/lang/String;

.field private orderDetailsId:I

.field private price:J

.field private qty:J

.field private seatId:I

.field private seatNo:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "qty"    # J
    .param p4, "itemid"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    .line 39
    iput p4, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->itemid:I

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatId:I

    .line 44
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JII)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "qty"    # J
    .param p4, "itemid"    # I
    .param p5, "orderDetailsId"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    .line 50
    iput p4, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->itemid:I

    .line 51
    iput p5, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->orderDetailsId:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    .line 55
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatId:I

    .line 56
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIILjava/lang/String;F)V
    .registers 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "qty"    # J
    .param p4, "itemid"    # I
    .param p5, "orderDetailsId"    # I
    .param p6, "seatNo"    # I
    .param p7, "note"    # Ljava/lang/String;
    .param p8, "extra"    # F

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 62
    iput-wide p2, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    .line 63
    iput p4, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->itemid:I

    .line 64
    iput p5, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->orderDetailsId:I

    .line 65
    iput p6, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    .line 66
    iput-object p7, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    .line 67
    iput p8, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "qty"    # J
    .param p4, "price"    # J

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    .line 28
    iput-wide p4, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->price:J

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatId:I

    .line 33
    iput v1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    .line 34
    return-void
.end method


# virtual methods
.method public getExtra()F
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    return v0
.end method

.method public getIsCancelled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemid()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->itemid:I

    return v0
.end method

.method public getNotes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDetailsId()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->orderDetailsId:I

    return v0
.end method

.method public getPrice()J
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->price:J

    return-wide v0
.end method

.method public getQty()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    return-wide v0
.end method

.method public getSeatId()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatId:I

    return v0
.end method

.method public getSeatNo()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(F)V
    .registers 2
    .param p1, "extra"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->extra:F

    .line 145
    return-void
.end method

.method public setIsCancelled(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isCancelled"    # Ljava/lang/Boolean;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->isCancelled:Ljava/lang/Boolean;

    .line 121
    return-void
.end method

.method public setItemid(I)V
    .registers 2
    .param p1, "itemid"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->itemid:I

    .line 105
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .registers 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->note:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setOrderDetailsId(I)V
    .registers 2
    .param p1, "orderDetailsId"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->orderDetailsId:I

    .line 113
    return-void
.end method

.method public setPrice(J)V
    .registers 4
    .param p1, "price"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->price:J

    .line 97
    return-void
.end method

.method public setQty(J)V
    .registers 4
    .param p1, "qty"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->qty:J

    .line 89
    return-void
.end method

.method public setSeatId(I)V
    .registers 2
    .param p1, "seatId"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatId:I

    .line 137
    return-void
.end method

.method public setSeatNo(I)V
    .registers 2
    .param p1, "seatNo"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->seatNo:I

    .line 129
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/OrderItem;->title:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "ItemId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getQty()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "Quantity"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getQty()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    const-string v2, "ItemId"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getItemid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    const-string v2, "OrderDetailsID"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getOrderDetailsId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v2, "isCancelled"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getIsCancelled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v2, "SeatNo"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getSeatNo()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v2, "Note"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "ExtraCharge"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/OrderItem;->getExtra()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_6c} :catch_6d

    .line 172
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_6c
    return-object v1

    .line 169
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_6d
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    goto :goto_6c
.end method
