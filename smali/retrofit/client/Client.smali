###### Class retrofit.client.Client (retrofit.client.Client)
.class public interface abstract Lretrofit/client/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/client/Client$Provider;
    }
.end annotation


# virtual methods
.method public abstract execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class retrofit.client.Client.Provider (retrofit.client.Client$Provider)
.class public interface abstract Lretrofit/client/Client$Provider;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/client/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract get()Lretrofit/client/Client;
.end method
