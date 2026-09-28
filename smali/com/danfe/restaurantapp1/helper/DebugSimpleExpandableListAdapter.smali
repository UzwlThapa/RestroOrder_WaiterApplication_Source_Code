###### Class com.danfe.restaurantapp1.helper.DebugSimpleExpandableListAdapter (com.danfe.restaurantapp1.helper.DebugSimpleExpandableListAdapter)
.class public Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "DebugSimpleExpandableListAdapter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DebugSimpleExpandableListAdapter"


# instance fields
.field private BaseURL:Ljava/lang/String;

.field private childData:Ljava/util/List;

.field private context:Landroid/content/Context;

.field private groupData:Ljava/util/List;

.field private imageLink:Landroid/widget/ImageView;

.field private item:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p6, "childData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-direct/range {p0 .. p9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 33
    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->groupData:Ljava/util/List;

    .line 34
    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->childData:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    move-object v5, p4

    .line 40
    .local v5, "v":Landroid/view/View;
    if-nez v5, :cond_15

    .line 41
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    .line 42
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030026

    const/4 v7, 0x0

    invoke-virtual {v0, v6, p5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 46
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_15
    const v6, 0x7f0f0124

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->imageLink:Landroid/widget/ImageView;

    .line 47
    const v6, 0x7f0f012b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, "itemCode":Landroid/widget/TextView;
    const v6, 0x7f0f0125

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    .local v3, "itemName":Landroid/widget/TextView;
    const v6, 0x7f0f012c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "itemDesc":Landroid/widget/TextView;
    const v6, 0x7f0f012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    .local v4, "itemRate":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->BaseURL:Ljava/lang/String;

    .line 54
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->childData:Ljava/util/List;

    .line 55
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 56
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    .line 58
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    const-string v7, "code"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    const-string v7, "shadeName"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    const-string v7, "description"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    const-string v7, "rgb"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->BaseURL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/ROItem/images/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->item:Ljava/util/HashMap;

    const-string v9, "photopath"

    .line 64
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    const/16 v7, 0x64

    const/16 v8, 0x64

    .line 66
    invoke-virtual {v6, v7, v8}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/DebugSimpleExpandableListAdapter;->imageLink:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 69
    return-object v5
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "v":Landroid/view/View;
    const-string v1, "DebugSimpleExpandableListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupView: groupPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; isExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; v: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method
