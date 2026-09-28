###### Class com.google.android.gms.internal.zzsi (com.google.android.gms.internal.zzsi)
.class public interface abstract Lcom/google/android/gms/internal/zzsi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsi$zzb;,
        Lcom/google/android/gms/internal/zzsi$zzc;,
        Lcom/google/android/gms/internal/zzsi$zzd;,
        Lcom/google/android/gms/internal/zzsi$zza;,
        Lcom/google/android/gms/internal/zzsi$zze;
    }
.end annotation

###### Class com.google.android.gms.internal.zzsi.zza (com.google.android.gms.internal.zzsi$zza)
.class public final Lcom/google/android/gms/internal/zzsi$zza;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiF:[Ljava/lang/String;

.field public zzbiG:[Ljava/lang/String;

.field public zzbiH:[I

.field public zzbiI:[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zza;->zzFS()Lcom/google/android/gms/internal/zzsi$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_40
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_4c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4c
    move v0, v1

    goto :goto_5

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_40
    const/4 v0, 0x0

    :goto_41
    add-int/2addr v0, v1

    return v0

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_41
.end method

.method protected zzB()I
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_96

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_11
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_26

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_23

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_26
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_50

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_37
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_49

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4c
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v2, v2

    if-lez v2, :cond_73

    move v2, v1

    move v3, v1

    :goto_5b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v4, v4

    if-ge v2, v4, :cond_6c

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_6c
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_73
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v2, v2

    if-lez v2, :cond_95

    move v2, v1

    :goto_7d
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v3, v3

    if-ge v1, v3, :cond_8e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzaa(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8e
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_95
    return v0

    :cond_96
    move v0, v4

    goto :goto_2b
.end method

.method public zzFS()Lcom/google/android/gms/internal/zzsi$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiy:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiv:I

    return-object p0
.end method

.method public zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_162

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zza;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    if-nez v0, :cond_35

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1a

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    goto :goto_1

    :sswitch_42
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-nez v0, :cond_68

    move v0, v1

    :goto_4d
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_57

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_57
    :goto_57
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_4d

    :cond_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    goto :goto_1

    :sswitch_75
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v0, :cond_9b

    move v0, v1

    :goto_80
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_8a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8a
    :goto_8a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v0, v0

    goto :goto_80

    :cond_9f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    goto/16 :goto_1

    :sswitch_a9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v0, v1

    :goto_b6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_c2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_c2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v2, :cond_e0

    move v2, v1

    :goto_ca
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_d4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d4
    :goto_d4
    array-length v4, v0

    if-ge v2, v4, :cond_e4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    :cond_e0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v2, v2

    goto :goto_ca

    :cond_e4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_1

    :sswitch_eb
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v0, :cond_111

    move v0, v1

    :goto_f6
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_100

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_100
    :goto_100
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_115

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    :cond_111
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v0, v0

    goto :goto_f6

    :cond_115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    goto/16 :goto_1

    :sswitch_11f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v0, v1

    :goto_12c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_138

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    :cond_138
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v2, :cond_156

    move v2, v1

    :goto_140
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_14a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14a
    :goto_14a
    array-length v4, v0

    if-ge v2, v4, :cond_15a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14a

    :cond_156
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v2, v2

    goto :goto_140

    :cond_15a
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_162
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_42
        0x18 -> :sswitch_75
        0x1a -> :sswitch_a9
        0x20 -> :sswitch_eb
        0x22 -> :sswitch_11f
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1d

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_39

    move v0, v1

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v0, v0

    if-lez v0, :cond_53

    move v0, v1

    :goto_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v0, v0

    if-lez v0, :cond_6c

    :goto_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v0, v0

    if-ge v1, v0, :cond_6c

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zza;->zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzsi.zzb (com.google.android.gms.internal.zzsi$zzb)
.class public final Lcom/google/android/gms/internal/zzsi$zzb;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public version:Ljava/lang/String;

.field public zzbiJ:I

.field public zzbiK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzb;->zzFT()Lcom/google/android/gms/internal/zzsi$zzb;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzb;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_2e
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3a
    move v0, v1

    goto :goto_5

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_5

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_32
    :goto_32
    add-int/2addr v0, v1

    return v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_23

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_32
.end method

.method protected zzB()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method public zzFT()Lcom/google/android/gms/internal/zzsi$zzb;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiv:I

    return-object p0
.end method

.method public zzH(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzb;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiJ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->zzbiK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzb;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_2a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzb;->zzH(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzb;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzsi.zzc (com.google.android.gms.internal.zzsi$zzc)
.class public final Lcom/google/android/gms/internal/zzsi$zzc;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiL:[B

.field public zzbiM:[[B

.field public zzbiN:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzc;->zzFU()Lcom/google/android/gms/internal/zzsi$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzc;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->zza([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_32
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3e
    move v0, v1

    goto :goto_5

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzsc;->zza([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0x4cf

    :goto_28
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_37
    const/4 v0, 0x0

    :goto_38
    add-int/2addr v0, v1

    return v0

    :cond_3a
    const/16 v0, 0x4d5

    goto :goto_28

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v0

    goto :goto_38
.end method

.method protected zzB()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v2, v2

    if-lez v2, :cond_3b

    move v2, v1

    move v3, v1

    :goto_22
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_37

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_34

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzrx;->zzE([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_47
    return v0
.end method

.method public zzFU()Lcom/google/android/gms/internal/zzsi$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiD:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiv:I

    return-object p0
.end method

.method public zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzc;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    goto :goto_1

    :sswitch_16
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-nez v0, :cond_3c

    move v0, v1

    :goto_21
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v0, v0

    goto :goto_21

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    goto :goto_1

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    goto :goto_1

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
        0x18 -> :sswitch_49
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v0, v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_29

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_36
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzc;->zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzsi.zzd (com.google.android.gms.internal.zzsi$zzd)
.class public final Lcom/google/android/gms/internal/zzsi$zzd;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbiO:J

.field public zzbiP:J

.field public zzbiQ:I

.field public zzbiR:I

.field public zzbiS:Z

.field public zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

.field public zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

.field public zzbiV:[B

.field public zzbiW:[B

.field public zzbiX:[B

.field public zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

.field public zzbiZ:Ljava/lang/String;

.field public zzbja:J

.field public zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

.field public zzbjc:[B

.field public zzbjd:I

.field public zzbje:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzd;->zzFV()Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_bb

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_24
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_c7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_5

    :cond_48
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_d3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_5

    :cond_6e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_df

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_76
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_eb

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_5

    :cond_86
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f7

    :cond_ac
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_b8

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_b8
    move v0, v1

    goto/16 :goto_5

    :cond_bb
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_5

    :cond_c7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zzb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_5

    :cond_d3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    goto/16 :goto_5

    :cond_df
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto/16 :goto_5

    :cond_eb
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzsi$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto/16 :goto_5

    :cond_f7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v0, :cond_b5

    move v0, v1

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_bd

    const/16 v0, 0x4cf

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_c0

    move v0, v1

    :goto_50
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_c7

    move v0, v1

    :goto_73
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v0, :cond_ce

    move v0, v1

    :goto_7b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_d5

    move v0, v1

    :goto_8d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_dc

    :cond_b3
    :goto_b3
    add-int/2addr v0, v1

    return v0

    :cond_b5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2c

    :cond_bd
    const/16 v0, 0x4d5

    goto :goto_3f

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zzb;->hashCode()I

    move-result v0

    goto :goto_50

    :cond_c7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zza;->hashCode()I

    move-result v0

    goto :goto_73

    :cond_ce
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7b

    :cond_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi$zzc;->hashCode()I

    move-result v0

    goto :goto_8d

    :cond_dc
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_b3
.end method

.method protected zzB()I
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    if-lez v2, :cond_47

    move v2, v0

    move v0, v1

    :goto_32
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_46

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_43

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_46
    move v0, v2

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_59

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v2, :cond_65

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_78

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_78
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v2, :cond_85

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_85
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v2, :cond_92

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_92
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v2, :cond_9f

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9f
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v2, :cond_ac

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_ac
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_bf

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_bf
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d2

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e4

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v2, :cond_f1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_100

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_100
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_113

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_113
    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v2, :cond_120

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_120
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v2, :cond_142

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    if-lez v2, :cond_142

    move v2, v1

    :goto_12a
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    :cond_13b
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_142
    return v0
.end method

.method public zzFV()Lcom/google/android/gms/internal/zzsi$zzd;
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsi$zze;->zzFW()[Lcom/google/android/gms/internal/zzsi$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iput v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiv:I

    return-object p0
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_162

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzd;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    goto :goto_1

    :sswitch_1d
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v0, :cond_49

    move v0, v1

    :goto_28
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_32
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4d

    new-instance v3, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    goto :goto_28

    :cond_4d
    new-instance v3, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    goto :goto_1

    :sswitch_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    goto :goto_1

    :sswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_1

    :sswitch_74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    goto :goto_1

    :sswitch_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_86

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_1

    :sswitch_8d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    goto/16 :goto_1

    :sswitch_95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    goto/16 :goto_1

    :sswitch_9d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    goto/16 :goto_1

    :sswitch_a5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    goto/16 :goto_1

    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_b5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    goto/16 :goto_1

    :sswitch_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_c8

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    :cond_c8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_1

    :sswitch_cf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    goto/16 :goto_1

    :sswitch_d7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    goto/16 :goto_1

    :sswitch_df
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_1b4

    goto/16 :goto_1

    :pswitch_e8
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    goto/16 :goto_1

    :sswitch_ec
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v0, :cond_112

    move v0, v1

    :goto_f7
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_101

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_101
    :goto_101
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_116

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_112
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    goto :goto_f7

    :cond_116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    goto/16 :goto_1

    :sswitch_120
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v0, v1

    :goto_12d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_139

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    :cond_139
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_157

    move v2, v1

    :goto_141
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_14b

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14b
    :goto_14b
    array-length v4, v0

    if-ge v2, v4, :cond_15b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14b

    :cond_157
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    goto :goto_141

    :cond_15b
    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_1

    :sswitch_data_162
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1d
        0x32 -> :sswitch_5c
        0x3a -> :sswitch_63
        0x42 -> :sswitch_74
        0x4a -> :sswitch_7b
        0x50 -> :sswitch_8d
        0x58 -> :sswitch_95
        0x60 -> :sswitch_9d
        0x6a -> :sswitch_a5
        0x72 -> :sswitch_ad
        0x78 -> :sswitch_b5
        0x82 -> :sswitch_bd
        0x88 -> :sswitch_cf
        0x92 -> :sswitch_d7
        0x98 -> :sswitch_df
        0xa0 -> :sswitch_ec
        0xa2 -> :sswitch_120
    .end sparse-switch

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    if-lez v0, :cond_3b

    move v0, v1

    :goto_29
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_38

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v0, :cond_55

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_66

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v0, :cond_71

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_7c

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_7c
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v0, :cond_87

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_87
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v0, :cond_92

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a3

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_b4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c4

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    :cond_c4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v0, :cond_cf

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_cf
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_dc

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_ed

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_ed
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v0, :cond_f8

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_f8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-lez v0, :cond_112

    :goto_101
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-ge v1, v0, :cond_112

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    :cond_112
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzd;->zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzsi.zze (com.google.android.gms.internal.zzsi$zze)
.class public final Lcom/google/android/gms/internal/zzsi$zze;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzsi$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbjf:[Lcom/google/android/gms/internal/zzsi$zze;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zze;->zzFX()Lcom/google/android/gms/internal/zzsi$zze;

    return-void
.end method

.method public static zzFW()[Lcom/google/android/gms/internal/zzsi$zze;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzsi$zze;->zzbjf:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzsc;->zzbiu:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzsi$zze;->zzbjf:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsi$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzsi$zze;->zzbjf:[Lcom/google/android/gms/internal/zzsi$zze;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzsi$zze;->zzbjf:[Lcom/google/android/gms/internal/zzsi$zze;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzsi$zze;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    if-nez v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_28
    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_34

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_34
    move v0, v1

    goto :goto_5

    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_2d
    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_2d
.end method

.method protected zzB()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    return v0
.end method

.method public zzFX()Lcom/google/android/gms/internal/zzsi$zze;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->zzbiv:I

    return-object p0
.end method

.method public zzK(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zze;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_1c

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zze;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
    .end sparse-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zze;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zze;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zze;->zzK(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zze;

    move-result-object v0

    return-object v0
.end method
