###### Class retrofit.RequestInterceptorTape (retrofit.RequestInterceptorTape)
.class final Lretrofit/RequestInterceptorTape;
.super Ljava/lang/Object;
.source "RequestInterceptorTape.java"

# interfaces
.implements Lretrofit/RequestInterceptor$RequestFacade;
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestInterceptorTape$CommandWithParams;,
        Lretrofit/RequestInterceptorTape$Command;
    }
.end annotation


# instance fields
.field private final tape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/RequestInterceptorTape$CommandWithParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    new-instance v1, Lretrofit/RequestInterceptorTape$CommandWithParams;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lretrofit/RequestInterceptorTape$CommandWithParams;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    new-instance v1, Lretrofit/RequestInterceptorTape$CommandWithParams;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lretrofit/RequestInterceptorTape$CommandWithParams;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    new-instance v1, Lretrofit/RequestInterceptorTape$CommandWithParams;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_HEADER:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lretrofit/RequestInterceptorTape$CommandWithParams;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    new-instance v1, Lretrofit/RequestInterceptorTape$CommandWithParams;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lretrofit/RequestInterceptorTape$CommandWithParams;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    new-instance v1, Lretrofit/RequestInterceptorTape$CommandWithParams;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lretrofit/RequestInterceptorTape$CommandWithParams;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .registers 7
    .param p1, "request"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 35
    iget-object v1, p0, Lretrofit/RequestInterceptorTape;->tape:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RequestInterceptorTape$CommandWithParams;

    .line 36
    .local v0, "cwp":Lretrofit/RequestInterceptorTape$CommandWithParams;
    iget-object v2, v0, Lretrofit/RequestInterceptorTape$CommandWithParams;->command:Lretrofit/RequestInterceptorTape$Command;

    iget-object v3, v0, Lretrofit/RequestInterceptorTape$CommandWithParams;->name:Ljava/lang/String;

    iget-object v4, v0, Lretrofit/RequestInterceptorTape$CommandWithParams;->value:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lretrofit/RequestInterceptorTape$Command;->intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 38
    .end local v0    # "cwp":Lretrofit/RequestInterceptorTape$CommandWithParams;
    :cond_1c
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.AnonymousClass1 (retrofit.RequestInterceptorTape$1)
.class synthetic Lretrofit/RequestInterceptorTape$1;
.super Ljava/lang/Object;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class retrofit.RequestInterceptorTape.Command (retrofit.RequestInterceptorTape$Command)
.class abstract enum Lretrofit/RequestInterceptorTape$Command;
.super Ljava/lang/Enum;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lretrofit/RequestInterceptorTape$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lretrofit/RequestInterceptorTape$Command;

.field public static final enum ADD_ENCODED_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

.field public static final enum ADD_ENCODED_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

.field public static final enum ADD_HEADER:Lretrofit/RequestInterceptorTape$Command;

.field public static final enum ADD_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

.field public static final enum ADD_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lretrofit/RequestInterceptorTape$Command$1;

    const-string v1, "ADD_HEADER"

    invoke-direct {v0, v1, v2}, Lretrofit/RequestInterceptorTape$Command$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->ADD_HEADER:Lretrofit/RequestInterceptorTape$Command;

    .line 47
    new-instance v0, Lretrofit/RequestInterceptorTape$Command$2;

    const-string v1, "ADD_PATH_PARAM"

    invoke-direct {v0, v1, v3}, Lretrofit/RequestInterceptorTape$Command$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->ADD_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    .line 53
    new-instance v0, Lretrofit/RequestInterceptorTape$Command$3;

    const-string v1, "ADD_ENCODED_PATH_PARAM"

    invoke-direct {v0, v1, v4}, Lretrofit/RequestInterceptorTape$Command$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    .line 59
    new-instance v0, Lretrofit/RequestInterceptorTape$Command$4;

    const-string v1, "ADD_QUERY_PARAM"

    invoke-direct {v0, v1, v5}, Lretrofit/RequestInterceptorTape$Command$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->ADD_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    .line 65
    new-instance v0, Lretrofit/RequestInterceptorTape$Command$5;

    const-string v1, "ADD_ENCODED_QUERY_PARAM"

    invoke-direct {v0, v1, v6}, Lretrofit/RequestInterceptorTape$Command$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lretrofit/RequestInterceptorTape$Command;

    sget-object v1, Lretrofit/RequestInterceptorTape$Command;->ADD_HEADER:Lretrofit/RequestInterceptorTape$Command;

    aput-object v1, v0, v2

    sget-object v1, Lretrofit/RequestInterceptorTape$Command;->ADD_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    aput-object v1, v0, v3

    sget-object v1, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    aput-object v1, v0, v4

    sget-object v1, Lretrofit/RequestInterceptorTape$Command;->ADD_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    aput-object v1, v0, v5

    sget-object v1, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    aput-object v1, v0, v6

    sput-object v0, Lretrofit/RequestInterceptorTape$Command;->$VALUES:[Lretrofit/RequestInterceptorTape$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lretrofit/RequestInterceptorTape$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lretrofit/RequestInterceptorTape$Command;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lretrofit/RequestInterceptorTape$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lretrofit/RequestInterceptorTape$Command;

    return-object v0
.end method

.method public static values()[Lretrofit/RequestInterceptorTape$Command;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lretrofit/RequestInterceptorTape$Command;->$VALUES:[Lretrofit/RequestInterceptorTape$Command;

    invoke-virtual {v0}, [Lretrofit/RequestInterceptorTape$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lretrofit/RequestInterceptorTape$Command;

    return-object v0
.end method


# virtual methods
.method abstract intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class retrofit.RequestInterceptorTape.Command.AnonymousClass1 (retrofit.RequestInterceptorTape$Command$1)
.class final enum Lretrofit/RequestInterceptorTape$Command$1;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.Command.AnonymousClass2 (retrofit.RequestInterceptorTape$Command$2)
.class final enum Lretrofit/RequestInterceptorTape$Command$2;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.Command.AnonymousClass3 (retrofit.RequestInterceptorTape$Command$3)
.class final enum Lretrofit/RequestInterceptorTape$Command$3;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.Command.AnonymousClass4 (retrofit.RequestInterceptorTape$Command$4)
.class final enum Lretrofit/RequestInterceptorTape$Command$4;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.Command.AnonymousClass5 (retrofit.RequestInterceptorTape$Command$5)
.class final enum Lretrofit/RequestInterceptorTape$Command$5;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILretrofit/RequestInterceptorTape$1;)V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "facade"    # Lretrofit/RequestInterceptor$RequestFacade;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-interface {p1, p2, p3}, Lretrofit/RequestInterceptor$RequestFacade;->addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

###### Class retrofit.RequestInterceptorTape.CommandWithParams (retrofit.RequestInterceptorTape$CommandWithParams)
.class final Lretrofit/RequestInterceptorTape$CommandWithParams;
.super Ljava/lang/Object;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandWithParams"
.end annotation


# instance fields
.field final command:Lretrofit/RequestInterceptorTape$Command;

.field final name:Ljava/lang/String;

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Lretrofit/RequestInterceptorTape$Command;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lretrofit/RequestInterceptorTape$CommandWithParams;->command:Lretrofit/RequestInterceptorTape$Command;

    .line 82
    iput-object p2, p0, Lretrofit/RequestInterceptorTape$CommandWithParams;->name:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lretrofit/RequestInterceptorTape$CommandWithParams;->value:Ljava/lang/String;

    .line 84
    return-void
.end method
