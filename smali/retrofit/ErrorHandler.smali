###### Class retrofit.ErrorHandler (retrofit.ErrorHandler)
.class public interface abstract Lretrofit/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# static fields
.field public static final DEFAULT:Lretrofit/ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lretrofit/ErrorHandler$1;

    invoke-direct {v0}, Lretrofit/ErrorHandler$1;-><init>()V

    sput-object v0, Lretrofit/ErrorHandler;->DEFAULT:Lretrofit/ErrorHandler;

    return-void
.end method


# virtual methods
.method public abstract handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
.end method

###### Class retrofit.ErrorHandler.AnonymousClass1 (retrofit.ErrorHandler$1)
.class final Lretrofit/ErrorHandler$1;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Lretrofit/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
    .registers 2
    .param p1, "cause"    # Lretrofit/RetrofitError;

    .prologue
    .line 52
    return-object p1
.end method
