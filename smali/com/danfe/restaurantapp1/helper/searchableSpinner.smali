###### Class com.danfe.restaurantapp1.helper.searchableSpinner (com.danfe.restaurantapp1.helper.searchableSpinner)
.class public Lcom/danfe/restaurantapp1/helper/searchableSpinner;
.super Landroid/widget/ArrayAdapter;
.source "searchableSpinner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ab:Landroid/app/ActionBar;

.field private dropdown:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private keyboard:Landroid/view/inputmethod/InputMethodManager;

.field private onsearch:Landroid/view/View$OnClickListener;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/app/ActionBar;Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "l"    # Landroid/view/LayoutInflater;
    .param p5, "a"    # Landroid/app/ActionBar;
    .param p6, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p7, "spinnerid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Landroid/app/ActionBar;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->dropdown:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->result:Ljava/util/ArrayList;

    .line 27
    iput-boolean v1, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->searching:Z

    .line 33
    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p5, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->ab:Landroid/app/ActionBar;

    .line 35
    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->keyboard:Landroid/view/inputmethod/InputMethodManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 52
    iget-boolean v4, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->dropdown:Z

    if-nez v4, :cond_22

    .line 53
    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030071

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "mySpinner":Landroid/view/View;
    const v4, 0x7f0f01a2

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "main_text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 64
    .end local v0    # "main_text":Landroid/widget/TextView;
    .end local v1    # "mySpinner":Landroid/view/View;
    .local v2, "mySpinner":Landroid/view/View;
    :goto_21
    return-object v2

    .line 60
    .end local v2    # "mySpinner":Landroid/view/View;
    :cond_22
    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030025

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .restart local v1    # "mySpinner":Landroid/view/View;
    const v4, 0x7f0f0122

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "sub_text":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 64
    .end local v1    # "mySpinner":Landroid/view/View;
    .restart local v2    # "mySpinner":Landroid/view/View;
    goto :goto_21
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "cnvtView"    # Landroid/view/View;
    .param p3, "prnt"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->dropdown:Z

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "pos"    # I
    .param p2, "cnvtView"    # Landroid/view/View;
    .param p3, "prnt"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->dropdown:Z

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/danfe/restaurantapp1/helper/searchableSpinner;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
