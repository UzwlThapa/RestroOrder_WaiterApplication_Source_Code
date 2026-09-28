###### Class com.danfe.restaurantapp1.helper.CancelledOrderDialog (com.danfe.restaurantapp1.helper.CancelledOrderDialog)
.class public Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;
.super Ljava/lang/Object;
.source "CancelledOrderDialog.java"


# instance fields
.field final alertDialog:Landroid/app/AlertDialog;

.field btCancel:Landroid/widget/Button;

.field btDone:Landroid/widget/Button;

.field failedInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;

.field finalReason:Landroid/widget/EditText;

.field itemCancelledAdapter:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

.field status:Ljava/lang/String;

.field successInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "successInterface"    # Lcom/danfe/restaurantapp1/Interface/SuccessInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;",
            "Lcom/danfe/restaurantapp1/Interface/SuccessInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "changedInfo":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    const/4 v9, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v6, ""

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->status:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->successInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;

    .line 57
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->failedInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->failedInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;

    .line 58
    new-instance v6, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

    invoke-direct {v6, p2, p1}, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->itemCancelledAdapter:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030049

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "DialogView":Landroid/view/View;
    const v6, 0x7f0f0187

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 61
    .local v4, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    const v6, 0x7f0f0189

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->finalReason:Landroid/widget/EditText;

    .line 62
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v6, 0x1

    invoke-direct {v3, p1, v6, v9}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 63
    .local v3, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->itemCancelledAdapter:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 66
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 67
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 69
    const v6, 0x7f0f018a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, "btCancel":Landroid/widget/Button;
    const v6, 0x7f0f018b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    .line 71
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    new-instance v7, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;

    invoke-direct {v7, p0, v4, p2, p1}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;-><init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v6, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;

    invoke-direct {v6, p0, p1}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;-><init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 92
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 93
    .local v2, "height":I
    iget-object v6, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/view/Window;->setLayout(II)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Ljava/util/List;Landroid/content/Context;)V
    .registers 5
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->sendCancelledList(Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method private sendCancelledList(Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Ljava/util/List;Landroid/content/Context;)V
    .registers 22
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "itemCancelledAdapter"    # Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p3, "changedInfo":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;>;"
    invoke-static/range {p4 .. p4}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "BaseURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->finalReason:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "finalreason":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_73

    .line 106
    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->finalReason:Landroid/widget/EditText;

    move-object/from16 v0, p4

    invoke-static {v0, v15}, Lcom/danfe/restaurantapp1/gcm/Utility;->validatReason(Landroid/content/Context;Landroid/widget/EditText;)Z

    .line 110
    :goto_2f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    invoke-virtual/range {p2 .. p2}, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;->getItemCount()I

    move-result v15

    if-ge v6, v15, :cond_8f

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v14

    check-cast v14, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;

    .line 112
    .local v14, "viewHolder":Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    iget-object v3, v14, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->etReason:Landroid/widget/EditText;

    .line 114
    .local v3, "editText":Landroid/widget/EditText;
    iget-object v13, v14, Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;->spResponsible:Landroid/widget/Spinner;

    .line 115
    .local v13, "spinner":Landroid/widget/Spinner;
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->setResponsible(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7b

    .line 118
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v15, v4}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->setReason(Ljava/lang/String;)V

    .line 110
    :goto_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 108
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v6    # "i":I
    .end local v13    # "spinner":Landroid/widget/Spinner;
    .end local v14    # "viewHolder":Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    :cond_73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->successInterface:Lcom/danfe/restaurantapp1/Interface/SuccessInterface;

    invoke-interface {v15}, Lcom/danfe/restaurantapp1/Interface/SuccessInterface;->onSuccess()V

    goto :goto_2f

    .line 121
    .restart local v3    # "editText":Landroid/widget/EditText;
    .restart local v6    # "i":I
    .restart local v13    # "spinner":Landroid/widget/Spinner;
    .restart local v14    # "viewHolder":Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    :cond_7b
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->setReason(Ljava/lang/String;)V

    goto :goto_70

    .line 125
    .end local v3    # "editText":Landroid/widget/EditText;
    .end local v13    # "spinner":Landroid/widget/Spinner;
    .end local v14    # "viewHolder":Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter$SendOrderDetailsViewHolder;
    :cond_8f
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 126
    .local v8, "jsonArray":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v10, "obj":Lorg/json/JSONObject;
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 129
    .local v5, "gsonObject":Lcom/google/gson/JsonObject;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9f
    :try_start_9f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_b7

    .line 130
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/response/ItemCancelledListModel;->toJSON()Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 134
    :cond_b7
    const-string v15, "cancelledOrderItems"

    invoke-virtual {v10, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v9, Lcom/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/google/gson/JsonParser;-><init>()V

    .line 136
    .local v9, "jsonParser":Lcom/google/gson/JsonParser;
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lcom/google/gson/JsonObject;

    move-object v5, v0

    .line 137
    const-string v15, "cancelledOrderItems"

    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d6} :catch_f6

    .line 142
    .end local v9    # "jsonParser":Lcom/google/gson/JsonParser;
    :goto_d6
    new-instance v15, Lretrofit/RestAdapter$Builder;

    invoke-direct {v15}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 143
    invoke-virtual {v15, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v15

    .line 144
    invoke-virtual {v15}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v12

    .line 145
    .local v12, "restAdapter":Lretrofit/RestAdapter;
    const-class v15, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;

    invoke-virtual {v12, v15}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;

    .line 146
    .local v11, "postCancelledItems":Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;
    new-instance v15, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;-><init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;)V

    invoke-interface {v11, v5, v15}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;->postcancelled(Lcom/google/gson/JsonObject;Lretrofit/Callback;)V

    .line 165
    return-void

    .line 138
    .end local v11    # "postCancelledItems":Lcom/danfe/restaurantapp1/service/RestaurantWebService$PostCancelledItems;
    .end local v12    # "restAdapter":Lretrofit/RestAdapter;
    :catch_f6
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "cancelledOrderItems Exc"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6
.end method

###### Class com.danfe.restaurantapp1.helper.CancelledOrderDialog.AnonymousClass1 (com.danfe.restaurantapp1.helper.CancelledOrderDialog$1)
.class Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;
.super Ljava/lang/Object;
.source "CancelledOrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

.field final synthetic val$changedInfo:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$changedInfo:Ljava/util/List;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->itemCancelledAdapter:Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$changedInfo:Ljava/util/List;

    iget-object v4, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->access$000(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Ljava/util/List;Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$1;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CancelledOrderDialog.AnonymousClass2 (com.danfe.restaurantapp1.helper.CancelledOrderDialog$2)
.class Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;
.super Ljava/lang/Object;
.source "CancelledOrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/SuccessInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    const-string v0, "No changes in order made!"

    const-string v1, "Cancel Changes"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showError(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CancelledOrderDialog.AnonymousClass3 (com.danfe.restaurantapp1.helper.CancelledOrderDialog$3)
.class Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;
.super Ljava/lang/Object;
.source "CancelledOrderDialog.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->sendCancelledList(Landroid/support/v7/widget/RecyclerView;Lcom/danfe/restaurantapp1/adapter/ItemCancelledAdapter;Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 5
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 159
    const-string v0, "Msg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Faileddddd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    return-void
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 6
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 149
    invoke-virtual {p2}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "status":Ljava/lang/String;
    const-string v1, "Response got:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 152
    const-string v1, "Msg"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;->this$0:Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog;->btDone:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    :cond_22
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 146
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/helper/CancelledOrderDialog$3;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method
