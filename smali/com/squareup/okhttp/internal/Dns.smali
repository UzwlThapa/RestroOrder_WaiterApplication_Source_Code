###### Class com.squareup.okhttp.internal.Dns (com.squareup.okhttp.internal.Dns)
.class public interface abstract Lcom/squareup/okhttp/internal/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final DEFAULT:Lcom/squareup/okhttp/internal/Dns;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/squareup/okhttp/internal/Dns$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/Dns$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/Dns;->DEFAULT:Lcom/squareup/okhttp/internal/Dns;

    return-void
.end method


# virtual methods
.method public abstract getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

###### Class com.squareup.okhttp.internal.Dns.AnonymousClass1 (com.squareup.okhttp.internal.Dns$1)
.class final Lcom/squareup/okhttp/internal/Dns$1;
.super Ljava/lang/Object;
.source "Dns.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/Dns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_a

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_a
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
