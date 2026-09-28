###### Class com.danfe.restaurantapp1.helper.Authorization (com.danfe.restaurantapp1.helper.Authorization)
.class public Lcom/danfe/restaurantapp1/helper/Authorization;
.super Ljava/lang/Object;
.source "Authorization.java"


# static fields
.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/Authorization;->context:Landroid/content/Context;

    .line 22
    const-string v0, "loginPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/danfe/restaurantapp1/helper/Authorization;->preferences:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 33
    sget-object v0, Lcom/danfe/restaurantapp1/helper/Authorization;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/helper/Authorization;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public removeToken()V
    .registers 2

    .prologue
    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/helper/Authorization;->setToken(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v1, Lcom/danfe/restaurantapp1/helper/Authorization;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method
