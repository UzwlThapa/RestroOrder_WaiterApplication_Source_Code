###### Class com.google.android.gms.playlog.internal.zzb (com.google.android.gms.playlog.internal.zzb)
.class public Lcom/google/android/gms/playlog/internal/zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/playlog/internal/zzb$1;,
        Lcom/google/android/gms/playlog/internal/zzb$zza;
    }
.end annotation


# instance fields
.field private final zzaRK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/playlog/internal/zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaRL:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/android/gms/playlog/internal/zzb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    iput p1, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRL:I

    return-void
.end method

.method private zzBu()V
    .registers 3

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzb;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/playlog/internal/zzb;->getCapacity()I

    move-result v1

    if-le v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_11
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCapacity()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRL:I

    return v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public zzBt()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/playlog/internal/zzb$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb;->zzaRK:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/playlog/internal/zzb$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/playlog/internal/zzb$zza;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;Lcom/google/android/gms/playlog/internal/zzb$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/playlog/internal/zzb;->zzBu()V

    return-void
.end method

###### Class com.google.android.gms.playlog.internal.zzb.AnonymousClass1 (com.google.android.gms.playlog.internal.zzb$1)
.class synthetic Lcom/google/android/gms/playlog/internal/zzb$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/playlog/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.playlog.internal.zzb.zza (com.google.android.gms.playlog.internal.zzb$zza)
.class public Lcom/google/android/gms/playlog/internal/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/playlog/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public final zzaRN:Lcom/google/android/gms/playlog/internal/LogEvent;

.field public final zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRM:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRN:Lcom/google/android/gms/playlog/internal/LogEvent;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzb$zza;->zzaRO:Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;Lcom/google/android/gms/playlog/internal/zzb$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzb$zza;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/playlog/internal/LogEvent;)V

    return-void
.end method
