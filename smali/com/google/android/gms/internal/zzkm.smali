###### Class com.google.android.gms.internal.zzkm (com.google.android.gms.internal.zzkm)
.class public Lcom/google/android/gms/internal/zzkm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/proxy/ProxyApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performProxyRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "request"    # Lcom/google/android/gms/auth/api/proxy/ProxyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzkm$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzkm$1;-><init>(Lcom/google/android/gms/internal/zzkm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkm.AnonymousClass1 (com.google.android.gms.internal.zzkm$1)
.class Lcom/google/android/gms/internal/zzkm$1;
.super Lcom/google/android/gms/internal/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkm;->performProxyRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSQ:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

.field final synthetic zzSR:Lcom/google/android/gms/internal/zzkm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkm$1;->zzSR:Lcom/google/android/gms/internal/zzkm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkm$1;->zzSQ:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzkl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzkm$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkm$1$1;-><init>(Lcom/google/android/gms/internal/zzkm$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkm$1;->zzSQ:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzkk;->zza(Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzkm.AnonymousClass1.BinderC00351 (com.google.android.gms.internal.zzkm$1$1)
.class Lcom/google/android/gms/internal/zzkm$1$1;
.super Lcom/google/android/gms/internal/zzkh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkm$1;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSS:Lcom/google/android/gms/internal/zzkm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkm$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkm$1$1;->zzSS:Lcom/google/android/gms/internal/zzkm$1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkh;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$1$1;->zzSS:Lcom/google/android/gms/internal/zzkm$1;

    new-instance v1, Lcom/google/android/gms/internal/zzkn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzkn;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkm$1;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
