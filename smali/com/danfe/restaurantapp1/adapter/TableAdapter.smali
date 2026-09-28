###### Class com.danfe.restaurantapp1.adapter.TableAdapter (com.danfe.restaurantapp1.adapter.TableAdapter)
.class public Lcom/danfe/restaurantapp1/adapter/TableAdapter;
.super Landroid/widget/BaseAdapter;
.source "TableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static MERGE_CASE:Z

.field public static MERGE_TABLE_ID:I


# instance fields
.field private checkState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private tableArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;"
        }
    .end annotation
.end field

.field private tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

.field private visibleState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_TABLE_ID:I

    .line 37
    sput-boolean v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_CASE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/TableDb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "tableArray":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/TableDb;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->checkState:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->visibleState:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_TABLE_ID:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 49
    const-string v0, "AdapterCount"

    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 27
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    if-nez p2, :cond_22c

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f03007e

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v17, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;-><init>(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)V

    .line 68
    .local v17, "vh":Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;
    const v18, 0x7f0f0245

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/support/v7/widget/CardView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cardViewTable:Landroid/support/v7/widget/CardView;

    .line 69
    const v18, 0x7f0f0242

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    .line 70
    const v18, 0x7f0f0246

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 71
    const v18, 0x7f0f0249

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    .line 72
    const v18, 0x7f0f0247

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTabletime:Landroid/widget/TextView;

    .line 73
    const v18, 0x7f0f0248

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    .line 74
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    new-instance v19, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;-><init>(Lcom/danfe/restaurantapp1/adapter/TableAdapter;Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;)V

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    :goto_bb
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-gtz v18, :cond_fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_41a

    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_41a

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-lez v18, :cond_3d6

    .line 141
    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 142
    .local v15, "tableName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_393

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_23f

    .line 145
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_234

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    .line 147
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {p0 .. p1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_228

    .line 148
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableArray:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getId()Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 145
    :cond_228
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_15d

    .line 133
    .end local v11    # "i":I
    .end local v15    # "tableName":Ljava/lang/String;
    .end local v17    # "vh":Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;
    :cond_22c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    .restart local v17    # "vh":Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;
    goto/16 :goto_bb

    .line 152
    .restart local v11    # "i":I
    .restart local v15    # "tableName":Ljava/lang/String;
    :cond_234
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v11    # "i":I
    .end local v15    # "tableName":Ljava/lang/String;
    :cond_23f
    :goto_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_3eb

    .line 166
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200be

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :goto_269
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d004d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTabletime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getTabletime()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableDate()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_40d

    .line 177
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v18, "MM/dd/yyyy hh:mm:ss a"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "currentDateandTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableDate()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "tableoccupy":Ljava/lang/String;
    :try_start_2c8
    invoke-virtual {v14, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 183
    .local v4, "Date1":Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 184
    .local v5, "Date2":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v12, v18, v20

    .line 185
    .local v12, "mills":J
    const-wide/32 v18, 0x36ee80

    div-long v18, v12, v18

    const-wide/16 v20, 0x18

    rem-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 186
    .local v6, "Hours":I
    const-wide/32 v18, 0xea60

    div-long v18, v12, v18

    const-wide/16 v20, 0x3c

    rem-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v7, v0

    .line 187
    .local v7, "Mins":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "diff":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_31a
    .catch Ljava/text/ParseException; {:try_start_2c8 .. :try_end_31a} :catch_407

    .line 213
    .end local v4    # "Date1":Ljava/util/Date;
    .end local v5    # "Date2":Ljava/util/Date;
    .end local v6    # "Hours":I
    .end local v7    # "Mins":I
    .end local v8    # "currentDateandTime":Ljava/lang/String;
    .end local v9    # "diff":Ljava/lang/String;
    .end local v12    # "mills":J
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v16    # "tableoccupy":Ljava/lang/String;
    :goto_31a
    sget-boolean v18, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->MERGE_CASE:Z

    if-eqz v18, :cond_50b

    .line 214
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTabletime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v18

    if-eqz v18, :cond_4da

    .line 217
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 222
    :goto_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-lez v18, :cond_377

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_387

    :cond_377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_4e7

    .line 223
    :cond_387
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    .line 251
    :goto_392
    return-object p2

    .line 156
    .restart local v15    # "tableName":Ljava/lang/String;
    :cond_393
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Merged with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/danfe/restaurantapp1/model/TableDb;->getMergeTableId()Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getTableName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->notifyDataSetChanged()V

    goto/16 :goto_23f

    .line 163
    .end local v15    # "tableName":Ljava/lang/String;
    :cond_3d6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23f

    .line 169
    :cond_3eb
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200b8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_269

    .line 189
    .restart local v8    # "currentDateandTime":Ljava/lang/String;
    .restart local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v16    # "tableoccupy":Ljava/lang/String;
    :catch_407
    move-exception v10

    .line 190
    .local v10, "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_31a

    .line 193
    .end local v8    # "currentDateandTime":Ljava/lang/String;
    .end local v10    # "e":Ljava/text/ParseException;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v16    # "tableoccupy":Ljava/lang/String;
    :cond_40d
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31a

    .line 195
    :cond_41a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getNumber()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_47a

    .line 197
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200bd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_462
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTabletime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31a

    .line 200
    :cond_47a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d004c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_4bf

    .line 202
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200bc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_462

    .line 205
    :cond_4bf
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200b7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_462

    .line 219
    :cond_4da
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    goto/16 :goto_357

    .line 226
    :cond_4e7
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->tableDb:Lcom/danfe/restaurantapp1/model/TableDb;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsChecked()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 227
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    goto/16 :goto_392

    .line 233
    :cond_50b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    .line 234
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTabletime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->tvTableoccupy:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_392
.end method

###### Class com.danfe.restaurantapp1.adapter.TableAdapter.AnonymousClass1 (com.danfe.restaurantapp1.adapter.TableAdapter$1)
.class Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;
.super Ljava/lang/Object;
.source "TableAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/adapter/TableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

.field final synthetic val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/TableAdapter;Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    .local v0, "checkedPosition":I
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/model/TableDb;->setIsChecked(Ljava/lang/Boolean;)V

    .line 79
    if-eqz p2, :cond_54

    .line 83
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_53
    return-void

    .line 98
    :cond_54
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDb;->getTableStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_cb

    .line 99
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 101
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_53

    .line 104
    :cond_b2
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_53

    .line 108
    :cond_cb
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->table:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$000(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/model/TableDb;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/model/TableDb;->getIsTable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 110
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53

    .line 113
    :cond_113
    iget-object v1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->val$vh:Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->ivTable:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$1;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/adapter/TableAdapter;->access$100(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_53
.end method

###### Class com.danfe.restaurantapp1.adapter.TableAdapter.ViewHolder (com.danfe.restaurantapp1.adapter.TableAdapter$ViewHolder)
.class Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danfe/restaurantapp1/adapter/TableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cardViewTable:Landroid/support/v7/widget/CardView;

.field cbMergeCheck:Landroid/support/v7/widget/AppCompatCheckBox;

.field ivTable:Landroid/widget/ImageView;

.field table:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

.field tvTableoccupy:Landroid/widget/TextView;

.field tvTabletime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/adapter/TableAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/danfe/restaurantapp1/adapter/TableAdapter$ViewHolder;->this$0:Lcom/danfe/restaurantapp1/adapter/TableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
