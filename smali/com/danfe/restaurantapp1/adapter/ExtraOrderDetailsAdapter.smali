###### Class com.danfe.restaurantapp1.adapter.ExtraOrderDetailsAdapter (com.danfe.restaurantapp1.adapter.ExtraOrderDetailsAdapter)
.class Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraOrderDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 15
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;I)V
    .registers 3
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 32
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;->view:Landroid/view/View;

    .line 26
    return-object v2
.end method

###### Class com.danfe.restaurantapp1.adapter.ExtraOrderDetailsAdapter.ExtraOrdeDetailsViewHolder (com.danfe.restaurantapp1.adapter.ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter$ExtraOrdeDetailsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtraOrderDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ExtraOrderDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraOrdeDetailsViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    return-void
.end method
