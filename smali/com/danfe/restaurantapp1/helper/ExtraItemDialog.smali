###### Class com.danfe.restaurantapp1.helper.ExtraItemDialog (com.danfe.restaurantapp1.helper.ExtraItemDialog)
.class public Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;
.super Ljava/lang/Object;
.source "ExtraItemDialog.java"


# instance fields
.field alertDialog:Landroid/support/v7/app/AlertDialog;

.field extraItemDb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;>;"
        }
    .end annotation
.end field

.field extraItemDbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;"
        }
    .end annotation
.end field

.field note:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "extraItemsInterface"    # Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;
    .param p4, "orderDetailD"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "extraItemDb":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->extraItemDbs:Ljava/util/List;

    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003c

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 47
    .local v11, "extraItemDialog":Landroid/view/View;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f0a00dc

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2, v11}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 51
    const v2, 0x7f0f014a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 52
    .local v15, "submit":Landroid/widget/Button;
    const v2, 0x7f0f0149

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 53
    .local v10, "cancel":Landroid/widget/Button;
    const v2, 0x7f0f0145

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->note:Landroid/widget/EditText;

    .line 54
    const v2, 0x7f0f0144

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 55
    .local v16, "tvTitle":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extra Item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual/range {p4 .. p4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->note:Landroid/widget/EditText;

    invoke-virtual/range {p4 .. p4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_9c
    const v2, 0x7f0f0146

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 61
    .local v13, "layoutTitle":Landroid/widget/LinearLayout;
    const v2, 0x7f0f0148

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    .line 62
    .local v5, "extraItemRecycler":Landroid/support/v7/widget/RecyclerView;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_be

    .line 64
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 67
    :cond_be
    new-instance v6, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 68
    .local v6, "extraDataAdapter":Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
    new-instance v14, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 70
    .local v14, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual/range {p4 .. p4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ordered"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->note:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 73
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    :cond_e9
    invoke-virtual {v5, v14}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 81
    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    .line 82
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Landroid/view/Window;->setLayout(II)V

    .line 83
    new-instance v2, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$1;-><init>(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v2, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;-><init>(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Lcom/danfe/restaurantapp1/model/OrderDetailDb;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;)V

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Ljava/lang/Integer;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 8
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
    .param p4, "x4"    # Ljava/lang/Integer;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;
    .param p7, "x7"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->setExtraItemValue(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Ljava/lang/Integer;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V

    return-void
.end method

.method private setExtraItemValue(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Ljava/lang/Integer;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extraItemRecycler"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "extraDataAdapter"    # Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;
    .param p4, "quantity"    # Ljava/lang/Integer;
    .param p6, "extraItemsInterface"    # Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;
    .param p7, "orderDetailDb"    # Lcom/danfe/restaurantapp1/model/OrderDetailDb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/orderExtraItem;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;",
            "Lcom/danfe/restaurantapp1/model/OrderDetailDb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p5, "extraItemDb":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v10, "extraItems":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/orderExtraItem;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 105
    .local v14, "total":Ljava/lang/Integer;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;->getItemCount()I

    move-result v3

    if-ge v13, v3, :cond_a0

    .line 107
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;

    .line 108
    .local v15, "viewholder":Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
    iget-object v12, v15, Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;->quantity:Landroid/widget/EditText;

    .line 109
    .local v12, "extraQuantity":Landroid/widget/EditText;
    const-string v11, ""

    .line 110
    .local v11, "extraQuan":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 111
    const-string v3, ""

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 113
    const-string v11, "0"

    .line 115
    :cond_2f
    new-instance v2, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemID()Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItemID()Ljava/lang/Integer;

    move-result-object v4

    .line 116
    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraItem()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getExtraPrice()Ljava/lang/Double;

    move-result-object v6

    .line 117
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getItemStatus()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v9}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/danfe/restaurantapp1/model/orderExtraItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v2, "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getSeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->setSeatNo(Ljava/lang/String;)V

    .line 119
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9c

    .line 121
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_9c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 125
    .end local v2    # "extraItem":Lcom/danfe/restaurantapp1/model/orderExtraItem;
    .end local v11    # "extraQuan":Ljava/lang/String;
    .end local v12    # "extraQuantity":Landroid/widget/EditText;
    .end local v15    # "viewholder":Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter$ExtraDataViewholder;
    :cond_a0
    const/4 v13, 0x0

    :goto_a1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_c1

    .line 127
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/orderExtraItem;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/orderExtraItem;->getQuantity()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 125
    add-int/lit8 v13, v13, 0x1

    goto :goto_a1

    .line 129
    :cond_c1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_d3

    .line 131
    const-string v3, "Extra Quantity Cannot Be Greater Than Total Quantity"

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/danfe/restaurantapp1/helper/Util;->showSuccessDialog(Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    :goto_d2
    return-void

    .line 134
    :cond_d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->note:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-interface {v0, v10, v3, v1}, Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;->sendExtraItems(Ljava/util/List;Ljava/lang/String;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_d2
.end method

###### Class com.danfe.restaurantapp1.helper.ExtraItemDialog.AnonymousClass1 (com.danfe.restaurantapp1.helper.ExtraItemDialog$1)
.class Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$1;
.super Ljava/lang/Object;
.source "ExtraItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 87
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.ExtraItemDialog.AnonymousClass2 (com.danfe.restaurantapp1.helper.ExtraItemDialog$2)
.class Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;
.super Ljava/lang/Object;
.source "ExtraItemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extraDataAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;

.field final synthetic val$extraItemDb:Ljava/util/List;

.field final synthetic val$extraItemRecycler:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$extraItemsInterface:Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;

.field final synthetic val$orderDetailD:Lcom/danfe/restaurantapp1/model/OrderDetailDb;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Lcom/danfe/restaurantapp1/model/OrderDetailDb;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;)V
    .registers 8
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemRecycler:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraDataAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;

    iput-object p5, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$orderDetailD:Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemDb:Ljava/util/List;

    iput-object p7, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemsInterface:Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->this$0:Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraDataAdapter:Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$orderDetailD:Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;->getQuantity()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemDb:Ljava/util/List;

    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$extraItemsInterface:Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;

    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog$2;->val$orderDetailD:Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    invoke-static/range {v0 .. v7}, Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;->access$000(Lcom/danfe/restaurantapp1/helper/ExtraItemDialog;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ExtraDataAdapter;Ljava/lang/Integer;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/ExtraItemsInterface;Lcom/danfe/restaurantapp1/model/OrderDetailDb;)V

    .line 95
    return-void
.end method
