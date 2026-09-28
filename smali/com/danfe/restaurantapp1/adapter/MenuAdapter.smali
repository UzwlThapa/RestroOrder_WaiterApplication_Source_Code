###### Class com.danfe.restaurantapp1.adapter.MenuAdapter (com.danfe.restaurantapp1.adapter.MenuAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/MenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private menuGroupDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/MenuGroupDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemListener"    # Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/MenuGroupDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "menuGroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/MenuGroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->menuGroupDbs:Ljava/util/List;

    .line 31
    sput-object p3, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    .line 32
    return-void
.end method

.method static synthetic access$000()Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->menuGroupDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 22
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;I)V
    .registers 7
    .param p1, "menuViewHolder"    # Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->menuGroupDbs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/MenuGroupDb;

    .line 42
    .local v0, "menuGroupDb":Lcom/danfe/restaurantapp1/model/MenuGroupDb;
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/MenuGroupDb;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/danfe/restaurantapp1/helper/Constants;->WEB_SERVICE_BASE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ROMenu/images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/MenuGroupDb;->getMenuPhotoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const/16 v2, 0x7d

    const/16 v3, 0x41

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;->vImage:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 48
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/MenuAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.MenuAdapter.MenuViewHolder (com.danfe.restaurantapp1.adapter.MenuAdapter$MenuViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/MenuAdapter;

.field protected vImage:Landroid/widget/ImageView;

.field protected vName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/MenuAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/MenuAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/MenuAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    const v0, 0x7f0f0125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;->vName:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-static {}, Lcom/danfe/restaurantapp1/adapter/MenuAdapter;->access$000()Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/MenuAdapter$MenuViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;II)V

    .line 74
    return-void
.end method
