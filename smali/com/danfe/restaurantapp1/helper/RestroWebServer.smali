###### Class com.danfe.restaurantapp1.helper.RestroWebServer (com.danfe.restaurantapp1.helper.RestroWebServer)
.class public Lcom/danfe/restaurantapp1/helper/RestroWebServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "RestroWebServer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 86
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->params:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .registers 6
    .param p1, "session"    # Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .prologue
    .line 92
    const-string v1, ""

    .line 93
    .local v1, "msg":Ljava/lang/String;
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->params:Ljava/util/Map;

    .line 94
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->params:Ljava/util/Map;

    const-string v3, "Department"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->params:Ljava/util/Map;

    const-string v3, "ItemName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b0

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->params:Ljava/util/Map;

    const-string v3, "TableName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<html><body>\n<form action=\'?\' method=\'get\'>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>Your name: <input type=\'text\' name=\'Department\'></p>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>ItemName: <input type=\'text\' name=\'ItemName\'></p>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>Table: <input type=\'text\' name=\'TableName\'></p>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p> Submit: <input type=\'submit\'></p\n>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</form>\n</body></html>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 103
    :cond_b0
    :try_start_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{\"response\":\"success\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;-><init>(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cd} :catch_ce

    goto :goto_98

    .line 119
    :catch_ce
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EXCEPTIONERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98
.end method

###### Class com.danfe.restaurantapp1.helper.RestroWebServer.AnonymousClass1 (com.danfe.restaurantapp1.helper.RestroWebServer$1)
.class Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;
.super Ljava/lang/Object;
.source "RestroWebServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/RestroWebServer;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;->this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 109
    new-instance v0, Lcom/danfe/restaurantapp1/helper/Notification;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;->this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->access$000(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;->this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .line 110
    invoke-static {v2}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->access$100(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Department"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;->this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .line 111
    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->access$100(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "ItemName"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/RestroWebServer$1;->this$0:Lcom/danfe/restaurantapp1/helper/RestroWebServer;

    .line 112
    invoke-static {v4}, Lcom/danfe/restaurantapp1/helper/RestroWebServer;->access$100(Lcom/danfe/restaurantapp1/helper/RestroWebServer;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "TableName"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/danfe/restaurantapp1/helper/Notification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 114
    .local v0, "notification":Lcom/danfe/restaurantapp1/helper/Notification;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/helper/Notification;->getWaiterLists(Ljava/lang/Boolean;)V

    .line 116
    return-void
.end method
