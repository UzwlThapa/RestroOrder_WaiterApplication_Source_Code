###### Class com.google.android.gms.internal.zzlg (com.google.android.gms.internal.zzlg)
.class public Lcom/google/android/gms/internal/zzlg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlg$zza;,
        Lcom/google/android/gms/internal/zzlg$zzd;,
        Lcom/google/android/gms/internal/zzlg$zzg;,
        Lcom/google/android/gms/internal/zzlg$zzb;,
        Lcom/google/android/gms/internal/zzlg$zzf;,
        Lcom/google/android/gms/internal/zzlg$zzc;,
        Lcom/google/android/gms/internal/zzlg$zzh;,
        Lcom/google/android/gms/internal/zzlg$zze;,
        Lcom/google/android/gms/internal/zzlg$zzi;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zzaaQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzqw;",
            "Lcom/google/android/gms/internal/zzqx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzabA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzabB:Lcom/google/android/gms/internal/zzqw;

.field private zzabC:I

.field private zzabD:Z

.field private zzabE:Z

.field private zzabF:Lcom/google/android/gms/common/internal/zzp;

.field private zzabG:Z

.field private zzabH:Z

.field private final zzabI:Lcom/google/android/gms/common/internal/zzf;

.field private final zzabJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzabK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzabr:Lcom/google/android/gms/internal/zzli;

.field private final zzabt:Ljava/util/concurrent/locks/Lock;

.field private zzabu:Lcom/google/android/gms/common/ConnectionResult;

.field private zzabv:I

.field private zzabw:I

.field private zzabx:Z

.field private zzaby:I

.field private final zzabz:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzli;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzqw;",
            "Lcom/google/android/gms/internal/zzqx;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabz:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabA:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlg;->zzabJ:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlg;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlg;->zzaaQ:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlg;->zzabt:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    return-void
.end method

.method private zzY(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->zzCe()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabF:Lcom/google/android/gms/common/internal/zzp;

    :cond_1b
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlg;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzbn(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzpr()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzpq()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabF:Lcom/google/android/gms/common/internal/zzp;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabE:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabG:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzpt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabH:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznQ()V

    goto :goto_7

    :cond_2b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznV()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznQ()V

    goto :goto_7

    :cond_38
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method

.method private zza(IILcom/google/android/gms/common/ConnectionResult;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p2, v1, :cond_b

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabv:I

    if-ge p1, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlg;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zzbn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p3, v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zznv()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zza;->getPriority()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/zzlg;->zza(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabv:I

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method private zzbn(I)Z
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    if-eq v0, p1, :cond_4d

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzli;->zzog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzlg;->zzbo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zzbo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_4c
    return v0

    :cond_4d
    const/4 v0, 0x1

    goto :goto_4c
.end method

.method private zzbo(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_12

    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "STEP_GETTING_SERVICE_BINDINGS"

    goto :goto_5

    :pswitch_9
    const-string v0, "STEP_VALIDATING_ACCOUNT"

    goto :goto_5

    :pswitch_c
    const-string v0, "STEP_AUTHENTICATING"

    goto :goto_5

    :pswitch_f
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabt:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzbn(I)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznT()V

    goto :goto_7

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznV()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznT()V

    goto :goto_7

    :cond_1f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_7
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzbi(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private zze(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabC:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabC:I

    if-ne v1, v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzlg;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznW()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzY(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzli;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzd(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzof()Z

    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzk;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_40
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzpk()V

    return-void

    :cond_4a
    move v0, v1

    goto :goto_b
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabF:Lcom/google/android/gms/common/internal/zzp;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzlg;)Ljava/util/Set;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznX()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzlg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznV()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzlg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznT()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzlg;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznP()Z

    move-result v0

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzlg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznQ()V

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzlg;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznS()V

    return-void
.end method

.method private zznP()Z
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    iget v1, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    if-lez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    if-gez v1, :cond_33

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzli;->zzog()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :cond_3d
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private zznQ()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabE:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznR()V

    goto :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznT()V

    goto :goto_4
.end method

.method private zznR()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznP()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznS()V

    goto :goto_1e

    :cond_3e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoj()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzlg$zzh;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzlg$zzh;-><init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    return-void
.end method

.method private zznS()V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznX()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoj()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zzc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzlg$zzc;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zznT()V
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznP()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznU()V

    goto :goto_1e

    :cond_3e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoj()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzlg$zzf;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzlg$zzf;-><init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    return-void
.end method

.method private zznU()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzob()V

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoj()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlg$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlg$1;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabF:Lcom/google/android/gms/common/internal/zzp;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabH:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzp;Z)V

    :cond_23
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzlg;->zzY(Z)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->disconnect()V

    goto :goto_32

    :cond_4c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    if-eqz v0, :cond_56

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlg;->disconnect()V

    :goto_55
    return-void

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabz:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    :goto_5f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzk;->zzh(Landroid/os/Bundle;)V

    goto :goto_55

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabz:Landroid/os/Bundle;

    goto :goto_5f
.end method

.method private zznV()V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_37
    return-void
.end method

.method private zznW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private zznX()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoK()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoM()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzf$zza;->zzTm:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_3f
    return-object v1
.end method


# virtual methods
.method public begin()V
    .registers 12

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzpl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabw:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabC:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabE:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabG:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabJ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznv()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api$zza;->getPriority()I

    move-result v2

    if-ne v2, v5, :cond_85

    move v2, v5

    :goto_61
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zzb;->zzlN()Z

    move-result v3

    if-eqz v3, :cond_7b

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    iget v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabC:I

    if-ge v8, v3, :cond_70

    iput v8, p0, Lcom/google/android/gms/internal/zzlg;->zzabC:I

    :cond_70
    if-eqz v8, :cond_7b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabA:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7b
    new-instance v3, Lcom/google/android/gms/internal/zzlg$zzd;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/zzlg$zzd;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/api/Api;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_30

    :cond_85
    move v2, v4

    goto :goto_61

    :cond_87
    if-eqz v3, :cond_8b

    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    :cond_8b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabD:Z

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzli;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzf;->zza(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/zzlg$zzg;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/zzlg$zzg;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaaQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzli;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlg;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzf;->zzoQ()Lcom/google/android/gms/internal/zzqx;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqw;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabB:Lcom/google/android/gms/internal/zzqw;

    :cond_be
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzlg;->zzaby:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabK:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoj()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zze;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/zzlg$zze;-><init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    return-void
.end method

.method public disconnect()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzli$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzli$zzf;->zznK()I

    move-result v2

    if-eq v2, v3, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzli$zzf;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zznY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabu:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzlg;->zzabx:Z

    :goto_37
    return-void

    :cond_38
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznW()V

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzlg;->zzY(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->zzpk()V

    goto :goto_37
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "CONNECTING"

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzbn(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabz:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznP()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznU()V

    goto :goto_7
.end method

.method public onConnectionSuspended(I)V
    .registers 5
    .param p1, "cause"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzabr:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlg;->zzbn(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznP()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlg;->zznU()V

    goto :goto_7
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzlg.AnonymousClass1 (com.google.android.gms.internal.zzlg$1)
.class Lcom/google/android/gms/internal/zzlg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlg;->zznU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$1;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$1;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$1;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzac(Landroid/content/Context;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zza (com.google.android.gms.internal.zzlg$zza)
.class Lcom/google/android/gms/internal/zzlg$zza;
.super Lcom/google/android/gms/signin/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzabM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzlg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzb;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg$zza;->zzabM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zza;->zzabM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlg;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zza$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzlg$zza$1;-><init>(Lcom/google/android/gms/internal/zzlg$zza;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzb;)V

    goto :goto_a
.end method

###### Class com.google.android.gms.internal.zzlg.zza.AnonymousClass1 (com.google.android.gms.internal.zzlg$zza$1)
.class Lcom/google/android/gms/internal/zzlg$zza$1;
.super Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlg$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/signin/internal/AuthAccountResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabN:Lcom/google/android/gms/internal/zzlg;

.field final synthetic zzabO:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzabP:Lcom/google/android/gms/internal/zzlg$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg$zza;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zza$1;->zzabP:Lcom/google/android/gms/internal/zzlg$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlg$zza$1;->zzabN:Lcom/google/android/gms/internal/zzlg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlg$zza$1;->zzabO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzli$zzb;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zza$1;->zzabN:Lcom/google/android/gms/internal/zzlg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zza$1;->zzabO:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzb (com.google.android.gms.internal.zzlg$zzb)
.class Lcom/google/android/gms/internal/zzlg$zzb;
.super Lcom/google/android/gms/common/internal/zzt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzabM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzlg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzt$zza;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzb;->zzabM:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzb;->zzabM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlg;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zzb$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzlg$zzb$1;-><init>(Lcom/google/android/gms/internal/zzlg$zzb;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzb;)V

    goto :goto_a
.end method

###### Class com.google.android.gms.internal.zzlg.zzb.AnonymousClass1 (com.google.android.gms.internal.zzlg$zzb$1)
.class Lcom/google/android/gms/internal/zzlg$zzb$1;
.super Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlg$zzb;->zzb(Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabN:Lcom/google/android/gms/internal/zzlg;

.field final synthetic zzabQ:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

.field final synthetic zzabR:Lcom/google/android/gms/internal/zzlg$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg$zzb;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzb$1;->zzabR:Lcom/google/android/gms/internal/zzlg$zzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlg$zzb$1;->zzabN:Lcom/google/android/gms/internal/zzlg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlg$zzb$1;->zzabQ:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzli$zzb;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzb$1;->zzabN:Lcom/google/android/gms/internal/zzlg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzb$1;->zzabQ:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzc (com.google.android.gms.internal.zzlg$zzc)
.class Lcom/google/android/gms/internal/zzlg$zzc;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzc;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/zzlg$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlg$zzc;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzlg$zza;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzd (com.google.android.gms.internal.zzlg$zzd)
.class Lcom/google/android/gms/internal/zzlg$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzabM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzlg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzabS:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzabT:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/api/Api;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlg;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabM:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabS:Lcom/google/android/gms/common/api/Api;

    iput p3, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabT:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlg;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzli;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_28
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;I)Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_54

    move-result v1

    if-nez v1, :cond_36

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :cond_36
    :try_start_36
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabS:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabT:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    :cond_43
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzk(Lcom/google/android/gms/internal/zzlg;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzl(Lcom/google/android/gms/internal/zzlg;)V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_54

    :cond_4c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_54
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlg;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzli;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_35

    :goto_1a
    const-string v2, "onReportAccountValidation must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;I)Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_55

    move-result v1

    if-nez v1, :cond_37

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :cond_35
    const/4 v1, 0x0

    goto :goto_1a

    :cond_37
    :try_start_37
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabS:Lcom/google/android/gms/common/api/Api;

    iget v2, p0, Lcom/google/android/gms/internal/zzlg$zzd;->zzabT:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V

    :cond_44
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzk(Lcom/google/android/gms/internal/zzlg;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzm(Lcom/google/android/gms/internal/zzlg;)V
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_55

    :cond_4d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b

    :catchall_55
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzlg.zze (com.google.android.gms.internal.zzlg$zze)
.class Lcom/google/android/gms/internal/zzlg$zze;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;

.field private final zzabU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_29

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzlg$zze$1;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/gms/internal/zzlg$zze$1;-><init>(Lcom/google/android/gms/internal/zzlg$zze;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzb;)V

    :cond_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zze(Lcom/google/android/gms/internal/zzlg;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqw;->connect()V

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zze;->zzabU:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    goto :goto_44
.end method

###### Class com.google.android.gms.internal.zzlg.zze.AnonymousClass1 (com.google.android.gms.internal.zzlg$zze$1)
.class Lcom/google/android/gms/internal/zzlg$zze$1;
.super Lcom/google/android/gms/internal/zzli$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlg$zze;->zznO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabV:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzabW:Lcom/google/android/gms/internal/zzlg$zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlg$zze;Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zze$1;->zzabW:Lcom/google/android/gms/internal/zzlg$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlg$zze$1;->zzabV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzli$zzb;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zze$1;->zzabW:Lcom/google/android/gms/internal/zzlg$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzlg$zze;->zzabL:Lcom/google/android/gms/internal/zzlg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zze$1;->zzabV:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzf (com.google.android.gms.internal.zzlg$zzf)
.class Lcom/google/android/gms/internal/zzlg$zzf;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzf"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;

.field private final zzabX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabX:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzh(Lcom/google/android/gms/internal/zzlg;)Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzlg$zzf;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzlg;->zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_1b

    :cond_31
    return-void

    :cond_32
    move-object v1, v0

    goto :goto_15
.end method

###### Class com.google.android.gms.internal.zzlg.zzg (com.google.android.gms.internal.zzlg$zzg)
.class Lcom/google/android/gms/internal/zzlg$zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzg"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzg;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzf(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlg$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzlg$zzb;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzt;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->zzb(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzi(Lcom/google/android/gms/internal/zzlg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzj(Lcom/google/android/gms/internal/zzlg;)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_2b

    :goto_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->zza(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzg;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "cause"    # I

    .prologue
    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzh (com.google.android.gms.internal.zzlg$zzh)
.class Lcom/google/android/gms/internal/zzlg$zzh;
.super Lcom/google/android/gms/internal/zzlg$zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzh"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;

.field private final zzabX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzh;->zzabL:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$zzh;->zzabX:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public zznO()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzh;->zzabX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$zzh;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlg;->zzg(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/internal/zzp;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

###### Class com.google.android.gms.internal.zzlg.zzi (com.google.android.gms.internal.zzlg$zzi)
.class abstract Lcom/google/android/gms/internal/zzlg$zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zzi"
.end annotation


# instance fields
.field final synthetic zzabL:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$zzi;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_26
    .catchall {:try_start_9 .. :try_end_c} :catchall_3a

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_18
    return-void

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlg$zzi;->zznO()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_26
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catch_26
    move-exception v0

    :try_start_27
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzd(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzli;->zza(Ljava/lang/RuntimeException;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_18

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$zzi;->zzabL:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->zzc(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract zznO()V
.end method
