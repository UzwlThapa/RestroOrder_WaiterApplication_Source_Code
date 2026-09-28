###### Class com.danfe.restaurantapp1.adapter.ItemCancelledAdapter (com.danfe.restaurantapp1.adapter.ItemCancelledAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemCancelledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public BASE_URL:Ljava/lang/String;

.field context:Landroid/content/Context;

.field gsonObject:Lcom/google/gson/JsonObject;

.field private itemCancelledListModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;"
        }
    .end annotation
.end field

.field jsonArray:Lorg/json/JSONArray;

.field jsonObject:Lorg/json/JSONObject;

.field jsonParser:Lcom/google/gson/JsonParser;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "itemCancelledListModel":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->BASE_URL:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->context:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 27
    check-cast p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 52
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvItemName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvQuantity:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getQuantity()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvOrderedBy:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->etReason:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvSeatNo:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bill no. : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->itemCancelledListModel:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->getSeatNo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->etReason:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 67
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->view:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->view:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Landroid/view/View;)V

    .line 47
    .local v0, "send_order_details_adapter_layout":Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    return-object v0
.end method

###### Class com.danfe.restaurantapp1.adapter.ItemCancelledAdapter.SendOrderDetailsViewHolder (com.danfe.restaurantapp1.adapter.ItemCancelledAdapter$SendOrderDetailsViewHolder)
.class public Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemCancelledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendOrderDetailsViewHolder"
.end annotation


# instance fields
.field public etFinalReason:Landroid/widget/EditText;

.field public etReason:Landroid/widget/EditText;

.field public spResponsible:Landroid/widget/Spinner;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

.field public tvItemName:Landroid/widget/TextView;

.field public tvOrderedBy:Landroid/widget/TextView;

.field public tvQuantity:Landroid/widget/TextView;

.field public tvResponsible:Landroid/widget/TextView;

.field public tvSeatNo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    const v0, 0x7f0f015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvItemName:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0f015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvQuantity:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0f0160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvOrderedBy:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0f0163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvResponsible:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0f0161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->etReason:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0f0162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->spResponsible:Landroid/widget/Spinner;

    .line 89
    const v0, 0x7f0f015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->tvSeatNo:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0f0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->etFinalReason:Landroid/widget/EditText;

    .line 91
    return-void
.end method
