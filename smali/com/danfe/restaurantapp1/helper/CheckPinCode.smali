###### Class com.danfe.restaurantapp1.helper.CheckPinCode (com.danfe.restaurantapp1.helper.CheckPinCode)
.class public Lcom/danfe/restaurantapp1/helper/CheckPinCode;
.super Ljava/lang/Object;
.source "CheckPinCode.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private btn_ok:Landroid/widget/Button;

.field private checkPinDetails:Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;

.field private checkPinDetailsInterface:Lcom/danfe/restaurantapp1/Interface/CheckPinDetailsInterface;

.field private context:Landroid/content/Context;

.field private dialogView:Landroid/view/View;

.field private editText:Landroid/widget/EditText;

.field private gvNumbers:Landroid/widget/GridView;

.field private inflater:Landroid/view/LayoutInflater;

.field private iv_cancel:Landroid/widget/TextView;

.field private numpadDigits:[Ljava/lang/String;

.field private preference:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private restAdapter:Lretrofit/RestAdapter;

.field private simpleAdapter:Landroid/widget/ArrayAdapter;

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private tv_invalidcode:Landroid/widget/TextView;

.field private zoomAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->stringBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orderType"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v16, Lcom/danfe/restaurantapp1/helper/Preferences;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    .line 69
    .local v16, "preference":Lcom/danfe/restaurantapp1/helper/Preferences;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v4, v2

    .line 70
    .local v4, "pin":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    .line 71
    .local v7, "usernamepin":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v8, v2

    .line 72
    .local v8, "userRole":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->stringBuilder:Ljava/lang/StringBuilder;

    .line 74
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "1"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v6, "2"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string v6, "3"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "4"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string v6, "5"

    aput-object v6, v2, v3

    const/4 v3, 0x5

    const-string v6, "6"

    aput-object v6, v2, v3

    const/4 v3, 0x6

    const-string v6, "7"

    aput-object v6, v2, v3

    const/4 v3, 0x7

    const-string v6, "8"

    aput-object v6, v2, v3

    const/16 v3, 0x8

    const-string v6, "9"

    aput-object v6, v2, v3

    const/16 v3, 0x9

    const-string v6, "Del"

    aput-object v6, v2, v3

    const/16 v3, 0xa

    const-string v6, "0"

    aput-object v6, v2, v3

    const/16 v3, 0xb

    const-string v6, "Ok"

    aput-object v6, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->numpadDigits:[Ljava/lang/String;

    .line 75
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030045

    const v6, 0x7f0f016a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->numpadDigits:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v6, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->simpleAdapter:Landroid/widget/ArrayAdapter;

    .line 76
    const v2, 0x7f04001b

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->zoomAnimation:Landroid/view/animation/Animation;

    .line 78
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v15, "pinbuilder":Landroid/app/AlertDialog$Builder;
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 80
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 82
    .local v12, "dialogView":Landroid/view/View;
    const v2, 0x7f0f00a5

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 83
    .local v5, "editText":Landroid/widget/EditText;
    const v2, 0x7f0f00a4

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 84
    .local v17, "tv_invalidcode":Landroid/widget/TextView;
    const v2, 0x7f0f014d

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 85
    .local v11, "btn_ok":Landroid/widget/Button;
    const v2, 0x7f0f014b

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->iv_cancel:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0f014c

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setScrollingCacheEnabled(Z)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->simpleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->gvNumbers:Landroid/widget/GridView;

    new-instance v3, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v5}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;-><init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-virtual {v15, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 148
    .local v10, "dialogpin":Landroid/app/AlertDialog;
    new-instance v14, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v14}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 149
    .local v14, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 150
    const/16 v2, 0x15e

    iput v2, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 151
    const/4 v2, -0x2

    iput v2, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 153
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02009d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 155
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15e

    const/4 v6, -0x2

    invoke-virtual {v2, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 159
    new-instance v2, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1, v5, v11}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;-><init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    const-string v2, "orderType"

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v2, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;-><init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;[Ljava/lang/String;Landroid/widget/EditText;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->iv_cancel:Landroid/widget/TextView;

    new-instance v3, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v10}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;-><init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/content/Context;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CheckPinCode.AnonymousClass1 (com.danfe.restaurantapp1.helper.CheckPinCode$1)
.class Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;
.super Ljava/lang/Object;
.source "CheckPinCode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field final synthetic val$btn_ok:Landroid/widget/Button;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/widget/Button;Landroid/widget/EditText;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->val$btn_ok:Landroid/widget/Button;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_ae

    .line 138
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 101
    :pswitch_13
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 104
    :pswitch_1e
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 107
    :pswitch_29
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 110
    :pswitch_34
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 113
    :pswitch_3f
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 116
    :pswitch_4a
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 119
    :pswitch_55
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 122
    :pswitch_60
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 125
    :pswitch_6c
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 128
    :pswitch_78
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 132
    :pswitch_9b
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 135
    :pswitch_a7
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$1;->val$btn_ok:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    goto/16 :goto_3

    .line 98
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1e
        :pswitch_29
        :pswitch_34
        :pswitch_3f
        :pswitch_4a
        :pswitch_55
        :pswitch_60
        :pswitch_6c
        :pswitch_78
        :pswitch_9b
        :pswitch_a7
    .end packed-switch
.end method

###### Class com.danfe.restaurantapp1.helper.CheckPinCode.AnonymousClass2 (com.danfe.restaurantapp1.helper.CheckPinCode$2)
.class Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;
.super Ljava/lang/Object;
.source "CheckPinCode.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field final synthetic val$btn_ok:Landroid/widget/Button;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$tv_invalidcode:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/Button;)V
    .registers 5
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$tv_invalidcode:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$btn_ok:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 179
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 163
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$tv_invalidcode:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 170
    .local v0, "length":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 171
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$btn_ok:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    .line 172
    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$2;->val$btn_ok:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_2c
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CheckPinCode.AnonymousClass3 (com.danfe.restaurantapp1.helper.CheckPinCode$3)
.class Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;
.super Ljava/lang/Object;
.source "CheckPinCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialogpin:Landroid/app/AlertDialog;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$orderType:Ljava/lang/String;

.field final synthetic val$pin:[Ljava/lang/String;

.field final synthetic val$userRole:[Ljava/lang/String;

.field final synthetic val$usernamepin:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;[Ljava/lang/String;Landroid/widget/EditText;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 9
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$pin:[Ljava/lang/String;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$usernamepin:[Ljava/lang/String;

    iput-object p6, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$userRole:[Ljava/lang/String;

    iput-object p7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    iput-object p8, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$dialogpin:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$pin:[Ljava/lang/String;

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 189
    new-instance v2, Lretrofit/RestAdapter$Builder;

    invoke-direct {v2}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    .line 190
    invoke-static {v3}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    .line 193
    .local v1, "restAdapter":Lretrofit/RestAdapter;
    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;

    .line 194
    .local v0, "checkPinDetails":Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;
    const-string v2, "pin"

    iget-object v3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$pin:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$pin:[Ljava/lang/String;

    aget-object v2, v2, v4

    new-instance v3, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;

    invoke-direct {v3, p0}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;-><init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;)V

    invoke-interface {v0, v2, v3}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$CheckPinDetails;->checkPinDetails(Ljava/lang/String;Lretrofit/Callback;)V

    .line 269
    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CheckPinCode.AnonymousClass3.AnonymousClass1 (com.danfe.restaurantapp1.helper.CheckPinCode$3$1)
.class Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;
.super Ljava/lang/Object;
.source "CheckPinCode.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t check your pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 267
    :goto_1e
    return-void

    .line 265
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method public success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V
    .registers 14
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 199
    :try_start_0
    const-string v7, "message"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "message":Ljava/lang/String;
    const-string v7, "statusCode"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, "statusCode":I
    const/16 v7, 0xc8

    if-ne v4, v7, :cond_132

    .line 204
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$usernamepin:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "data"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "UserName"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 205
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$userRole:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "data"

    invoke-virtual {p1, v9}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v9

    const-string v10, "Roles"

    invoke-virtual {v9, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 207
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$userRole:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v5, v7, v8

    .line 208
    .local v5, "userRoleName":Ljava/lang/String;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$usernamepin:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 212
    .local v6, "usernameData":Ljava/lang/String;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "sendOrder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 213
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v7, v6, v5}, Lcom/danfe/restaurantapp1/MainActivity;->SendOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_6d
    :goto_6d
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$dialogpin:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 259
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "userRoleName":Ljava/lang/String;
    .end local v6    # "usernameData":Ljava/lang/String;
    :goto_74
    return-void

    .line 215
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    .restart local v5    # "userRoleName":Ljava/lang/String;
    .restart local v6    # "usernameData":Ljava/lang/String;
    :cond_75
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "cancelOrder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 216
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$userRole:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string v8, "Void Bill"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 218
    const-string v7, "userRole success: "

    iget-object v8, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$userRole:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v7, v6}, Lcom/danfe/restaurantapp1/MainActivity;->CancelOrder(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a5} :catch_a6

    goto :goto_6d

    .line 256
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "userRoleName":Ljava/lang/String;
    .end local v6    # "usernameData":Ljava/lang/String;
    :catch_a6
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "exc"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v4    # "statusCode":I
    .restart local v5    # "userRoleName":Ljava/lang/String;
    .restart local v6    # "usernameData":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    const-string v7, "You don\'t have require permission to cancel order"

    const-string v8, "Cancel Order Failed "

    iget-object v9, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_6d

    .line 227
    :cond_c1
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "shiftTable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 228
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/TableSelectionActivity;

    invoke-virtual {v7, v6}, Lcom/danfe/restaurantapp1/TableSelectionActivity;->ShiftTable(Ljava/lang/String;)V

    goto :goto_6d

    .line 230
    :cond_d7
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "mergeTable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 231
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/TableActivity;->MergeTable()V

    goto :goto_6d

    .line 233
    :cond_ed
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "mergeCancel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_104

    .line 234
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/TableActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/TableActivity;->MergeCancel()V

    goto/16 :goto_6d

    .line 236
    :cond_104
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "payOrder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11b

    .line 237
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/MainActivity;

    invoke-virtual {v7}, Lcom/danfe/restaurantapp1/MainActivity;->PayOrder()V

    goto/16 :goto_6d

    .line 239
    :cond_11b
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    const-string v8, "shiftItem"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 240
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    check-cast v7, Lcom/danfe/restaurantapp1/ItemShiftActivity;

    invoke-virtual {v7, v6}, Lcom/danfe/restaurantapp1/ItemShiftActivity;->ShiftItem(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 246
    .end local v5    # "userRoleName":Ljava/lang/String;
    .end local v6    # "usernameData":Ljava/lang/String;
    :cond_132
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    const v8, 0x7f040014

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 247
    .local v3, "shake":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v7}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v9, v9, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    invoke-static {v9}, Lcom/danfe/restaurantapp1/helper/CheckPinCode;->access$000(Lcom/danfe/restaurantapp1/helper/CheckPinCode;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 248
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$editText:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v7, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v7, v7, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$editText:Landroid/widget/EditText;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$orderType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fail,Invalid credentials "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->this$1:Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;

    iget-object v8, v8, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v7, v8}, Lcom/danfe/restaurantapp1/helper/Util;->showErrorMessageWithTitle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_18b} :catch_a6

    goto/16 :goto_74
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 195
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/helper/CheckPinCode$3$1;->success(Lcom/google/gson/JsonObject;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.helper.CheckPinCode.AnonymousClass4 (com.danfe.restaurantapp1.helper.CheckPinCode$4)
.class Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;
.super Ljava/lang/Object;
.source "CheckPinCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/helper/CheckPinCode;->checkPinCodemethod(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialogpin:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/helper/CheckPinCode;Landroid/content/Context;Landroid/app/AlertDialog;)V
    .registers 4
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;->this$0:Lcom/danfe/restaurantapp1/helper/CheckPinCode;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;->val$dialogpin:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;->val$context:Landroid/content/Context;

    const-string v1, "Order Status was not changed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object v0, p0, Lcom/danfe/restaurantapp1/helper/CheckPinCode$4;->val$dialogpin:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 277
    return-void
.end method
