###### Class com.google.android.gms.internal.zzqx (com.google.android.gms.internal.zzqx)
.class public final Lcom/google/android/gms/internal/zzqx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqx$1;,
        Lcom/google/android/gms/internal/zzqx$zza;
    }
.end annotation


# static fields
.field public static final zzaUZ:Lcom/google/android/gms/internal/zzqx;


# instance fields
.field private final zzTi:Z

.field private final zzTk:Z

.field private final zzTl:Ljava/lang/String;

.field private final zzaVa:Z

.field private final zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private final zzaVc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzqx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqx$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx$zza;->zzCi()Lcom/google/android/gms/internal/zzqx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzqx;->zzaUZ:Lcom/google/android/gms/internal/zzqx;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqx;->zzaVa:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzqx;->zzTi:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqx;->zzTl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqx;->zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzqx;->zzaVc:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzqx;->zzTk:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzqx$1;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzqx;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZ)V

    return-void
.end method


# virtual methods
.method public zzCf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVa:Z

    return v0
.end method

.method public zzCg()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVb:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object v0
.end method

.method public zzCh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzaVc:Z

    return v0
.end method

.method public zzlY()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTi:Z

    return v0
.end method

.method public zzma()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTk:Z

    return v0
.end method

.method public zzmb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx;->zzTl:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzqx.AnonymousClass1 (com.google.android.gms.internal.zzqx$1)
.class synthetic Lcom/google/android/gms/internal/zzqx$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzqx.zza (com.google.android.gms.internal.zzqx$zza)
.class public final Lcom/google/android/gms/internal/zzqx$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzaSe:Ljava/lang/String;

.field private zzaVd:Z

.field private zzaVe:Z

.field private zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

.field private zzaVg:Z

.field private zzaVh:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzet(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-string v1, "two different server client ids provided"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    return-object p1

    :cond_16
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public zzCi()Lcom/google/android/gms/internal/zzqx;
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/zzqx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVd:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVe:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVg:Z

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVh:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqx;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;ZZLcom/google/android/gms/internal/zzqx$1;)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;)Lcom/google/android/gms/internal/zzqx$zza;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVe:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqx$zza;->zzet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaSe:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqx$zza;->zzaVf:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    return-object p0
.end method
