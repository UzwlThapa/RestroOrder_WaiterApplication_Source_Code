###### Class retrofit.Endpoints (retrofit.Endpoints)
.class public final Lretrofit/Endpoints;
.super Ljava/lang/Object;
.source "Endpoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/Endpoints$FixedEndpoint;
    }
.end annotation


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "default"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static newFixedEndpoint(Ljava/lang/String;)Lretrofit/Endpoint;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Lretrofit/Endpoints$FixedEndpoint;

    const-string v1, "default"

    invoke-direct {v0, p0, v1}, Lretrofit/Endpoints$FixedEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newFixedEndpoint(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Endpoint;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lretrofit/Endpoints$FixedEndpoint;

    invoke-direct {v0, p0, p1}, Lretrofit/Endpoints$FixedEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

###### Class retrofit.Endpoints.FixedEndpoint (retrofit.Endpoints$FixedEndpoint)
.class Lretrofit/Endpoints$FixedEndpoint;
.super Ljava/lang/Object;
.source "Endpoints.java"

# interfaces
.implements Lretrofit/Endpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Endpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEndpoint"
.end annotation


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "apiUrl"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lretrofit/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lretrofit/Endpoints$FixedEndpoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lretrofit/Endpoints$FixedEndpoint;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
