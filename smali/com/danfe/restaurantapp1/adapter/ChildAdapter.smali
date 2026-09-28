###### Class com.danfe.restaurantapp1.adapter.ChildAdapter (com.danfe.restaurantapp1.adapter.ChildAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ChildAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChildAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private PItemID:Lcom/danfe/restaurantapp1/model/ItemgroupDb;

.field private context:Landroid/content/Context;

.field private itemGroupDbsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

.field private itemgroupDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field private itemgrouplists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    .line 40
    return-void
.end method

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
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/model/ItemgroupDb;Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "PItemID"    # Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    .param p4, "itemListener"    # Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            "Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "itemgroupDbs":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->PItemID:Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .line 46
    iput-object p4, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemListener:Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 23
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;I)V
    .registers 6
    .param p1, "itemViewHolder"    # Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->itemgroupDbs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    .line 62
    .local v0, "itemgroupDb":Lcom/danfe/restaurantapp1/model/ItemgroupDb;
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const-string v1, "Itemname"

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030026

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;Landroid/view/View;)V

    return-object v1
.end method

###### Class com.danfe.restaurantapp1.adapter.ChildAdapter.ItemViewHolder (com.danfe.restaurantapp1.adapter.ChildAdapter$ItemViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChildAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ChildAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

.field protected vImage:Landroid/widget/ImageView;

.field protected vName:Landroid/widget/TextView;

.field private vparentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ChildAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->vparentView:Landroid/view/View;

    .line 109
    const v0, 0x7f0f0125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->vName:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0f0124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->vImage:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getParentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->vparentView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New menu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->access$200(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/danfe/restaurantapp1/helper/RecyclerViewClickListener;->recyclerViewListClicked(Landroid/view/View;III)V

    .line 124
    const-string v0, "CLICKEDPosition"

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v1, "CLICKEDLevel"

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/ChildAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ChildAdapter$ItemViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ChildAdapter;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ChildAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method
