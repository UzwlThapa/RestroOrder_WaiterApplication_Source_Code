###### Class com.danfe.restaurantapp1.helper.SearchItem (com.danfe.restaurantapp1.helper.SearchItem)
.class public Lcom/danfe/restaurantapp1/helper/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# instance fields
.field private item:Ljava/lang/String;

.field private rate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->item:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "rate"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->item:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->rate:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->item:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public setItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->item:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/SearchItem;->rate:Ljava/lang/String;

    .line 34
    return-void
.end method
