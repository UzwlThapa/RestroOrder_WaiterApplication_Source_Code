###### Class com.danfe.restaurantapp1.response.LoginResponse (com.danfe.restaurantapp1.response.LoginResponse)
.class public Lcom/danfe/restaurantapp1/response/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field private Password:Ljava/lang/String;

.field private RoleNames:Ljava/lang/String;

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
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->additionalProperties:Ljava/util/Map;

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
    .line 107
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->additionalProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleNames()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->RoleNames:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->UserID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Username:Ljava/lang/String;

    return-object v0
.end method

.method public setAdditionalProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->additionalProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Password:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRoleNames(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleNames"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->RoleNames:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Status:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUserID(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/Integer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->UserID:Ljava/lang/Integer;

    .line 68
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/danfe/restaurantapp1/response/LoginResponse;->Username:Ljava/lang/String;

    .line 32
    return-void
.end method
