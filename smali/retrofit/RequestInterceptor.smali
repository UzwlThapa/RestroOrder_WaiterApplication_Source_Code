###### Class retrofit.RequestInterceptor (retrofit.RequestInterceptor)
.class public interface abstract Lretrofit/RequestInterceptor;
.super Ljava/lang/Object;
.source "RequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestInterceptor$RequestFacade;
    }
.end annotation


# static fields
.field public static final NONE:Lretrofit/RequestInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lretrofit/RequestInterceptor$1;

    invoke-direct {v0}, Lretrofit/RequestInterceptor$1;-><init>()V

    sput-object v0, Lretrofit/RequestInterceptor;->NONE:Lretrofit/RequestInterceptor;

    return-void
.end method


# virtual methods
.method public abstract intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
.end method

###### Class retrofit.RequestInterceptor.AnonymousClass1 (retrofit.RequestInterceptor$1)
.class final Lretrofit/RequestInterceptor$1;
.super Ljava/lang/Object;
.source "RequestInterceptor.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .registers 2
    .param p1, "request"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 38
    return-void
.end method

###### Class retrofit.RequestInterceptor.RequestFacade (retrofit.RequestInterceptor$RequestFacade)
.class public interface abstract Lretrofit/RequestInterceptor$RequestFacade;
.super Ljava/lang/Object;
.source "RequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestFacade"
.end annotation


# virtual methods
.method public abstract addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addPathParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
.end method
