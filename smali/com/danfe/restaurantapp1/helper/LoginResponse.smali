###### Class com.danfe.restaurantapp1.helper.LoginResponse (com.danfe.restaurantapp1.helper.LoginResponse)
.class public Lcom/danfe/restaurantapp1/helper/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field private Password:Ljava/lang/String;

.field private Status:Ljava/lang/String;

.field private UserID:Ljava/lang/Integer;

.field private Username:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->additionalProperties:Ljava/util/Map;

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
    .line 74
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->UserID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Username:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "Password"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Password:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "Status"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Status:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUserID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "UserID"    # Ljava/lang/Integer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->UserID:Ljava/lang/Integer;

    .line 29
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "Username"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/LoginResponse;->Username:Ljava/lang/String;

    .line 43
    return-void
.end method
