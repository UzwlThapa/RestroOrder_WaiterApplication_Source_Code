###### Class com.google.android.gms.internal.zzme (com.google.android.gms.internal.zzme)
.class public Lcom/google/android/gms/internal/zzme;
.super Lcom/google/android/gms/internal/zzmi;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzmi",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field zzagz:Lcom/google/android/gms/internal/zzmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmi;-><init>()V

    return-void
.end method

.method private zzpx()Lcom/google/android/gms/internal/zzmh;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzmh",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzme$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzme$1;-><init>(Lcom/google/android/gms/internal/zzme;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme;->zzagz:Lcom/google/android/gms/internal/zzmh;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme;, "Lcom/google/android/gms/internal/zzme<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Lcom/google/android/gms/internal/zzme;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzme;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzme;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzme.AnonymousClass1 (com.google.android.gms.internal.zzme$1)
.class Lcom/google/android/gms/internal/zzme$1;
.super Lcom/google/android/gms/internal/zzmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic zzagA:Lcom/google/android/gms/internal/zzme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzme;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzme;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    return-object v0
.end method

.method protected colGetSize()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    iget v0, v0, Lcom/google/android/gms/internal/zzme;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->indexOfNull()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzme;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_8
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzme;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzme;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/zzme$1;, "Lcom/google/android/gms/internal/zzme.1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
