###### Class com.danfe.restaurantapp1.MenuItemFragment (com.danfe.restaurantapp1.MenuItemFragment)
.class public Lcom/danfe/restaurantapp1/MenuItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "MenuItemFragment.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;


# instance fields
.field private BaseUrl:Ljava/lang/String;

.field private btBack:Landroid/widget/ImageButton;

.field private btReload:Landroid/widget/ImageButton;

.field private cond:Ljava/lang/String;

.field private etSearch:Landroid/widget/EditText;

.field private finalItemGroupLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;"
        }
    .end annotation
.end field

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private highestLevel:I

.field private inflateView:Landroid/view/View;

.field private itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

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

.field itemgroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/response/MenuItemGroup$Itemgroup;",
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

.field private layoutCategory:Landroid/widget/LinearLayout;

.field private layoutItem:Landroid/widget/LinearLayout;

.field layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private layoutMenu:Landroid/widget/LinearLayout;

.field private menuItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/danfe/restaurantapp1/adapter/ItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private menuShowingGrid:Ljava/util/ArrayList;
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

.field private preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

.field private restAdapter:Lretrofit/RestAdapter;

.field private restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

.field private rvGridView:Landroid/support/v7/widget/RecyclerView;

.field private rvMenu:Landroid/support/v7/widget/RecyclerView;

.field private rvNextLevel:Landroid/support/v7/widget/RecyclerView;

.field private searchView:Landroid/support/v7/widget/SearchView;

.field private tvMenuTitle:Landroid/widget/TextView;

.field private viewProgressBar:Landroid/widget/ProgressBar;

.field private webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    return-void
.end method

.method private ValidateSearchViews()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please enter the item names you want to search."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->tvMenuTitle:Landroid/widget/TextView;

    const-string v1, "Main Menu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvGridView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 394
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 398
    return-void
.end method

.method static synthetic access$000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgrouplists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgrouplists:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->viewProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restAdapter:Lretrofit/RestAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/danfe/restaurantapp1/MenuItemFragment;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Lretrofit/RestAdapter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restAdapter:Lretrofit/RestAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/danfe/restaurantapp1/MenuItemFragment;Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvGridView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->tvMenuTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->ValidateSearchViews()V

    return-void
.end method

.method static synthetic access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->finalItemGroupLists:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->finalItemGroupLists:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getMenus()V
    .registers 6

    .prologue
    .line 724
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    .line 725
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemGroupDbsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemGroupDbsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 726
    :cond_1b
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemGroupDbsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 728
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 729
    :cond_2f
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getHighestLevel(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->highestLevel:I

    .line 731
    const-string v1, "Highest Level"

    iget v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->highestLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    .line 733
    .local v0, "itemAdapter":Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 734
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->notifyDataSetChanged()V

    .line 735
    return-void
.end method

.method public getNewMenu()V
    .registers 5

    .prologue
    .line 738
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    .line 740
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/helper/Preferences;->getEnableOrderGrid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 742
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 748
    :goto_21
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 749
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 750
    :cond_2e
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getHighestLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->highestLevel:I

    .line 752
    const-string v0, "Highest Level"

    iget v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->highestLevel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 755
    :cond_59
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->setNextLevelItem(Ljava/util/List;)V

    .line 757
    return-void

    .line 746
    :cond_66
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_21
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0f0076

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 96
    const v1, 0x7f030074

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    .line 98
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0221

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvGridView:Landroid/support/v7/widget/RecyclerView;

    .line 99
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0220

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 100
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->etSearch:Landroid/widget/EditText;

    .line 101
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f021d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->tvMenuTitle:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->btReload:Landroid/widget/ImageButton;

    .line 103
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0222

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->viewProgressBar:Landroid/widget/ProgressBar;

    .line 104
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutCategory:Landroid/widget/LinearLayout;

    .line 105
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f021b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutMenu:Landroid/widget/LinearLayout;

    .line 106
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f0224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    .line 107
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    const v2, 0x7f0f021c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->btBack:Landroid/widget/ImageButton;

    .line 108
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 109
    new-instance v1, Lcom/danfe/restaurantapp1/helper/Preferences;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danfe/restaurantapp1/helper/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->preferences:Lcom/danfe/restaurantapp1/helper/Preferences;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupDbs:Ljava/util/List;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemGroupDbsList:Ljava/util/ArrayList;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "value":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    const-string v1, "cond"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v2, "Main"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :cond_109
    :goto_109
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 128
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 130
    new-instance v1, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    iput-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 132
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getNewMenu()V

    .line 140
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->btBack:Landroid/widget/ImageButton;

    new-instance v2, Lcom/danfe/restaurantapp1/MenuItemFragment$1;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$1;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const-string v1, "itemgroupsResult"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItemGroups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 155
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 157
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v2, Lcom/danfe/restaurantapp1/MenuItemFragment$2;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$2;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 256
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v2, Lcom/danfe/restaurantapp1/MenuItemFragment$3;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$3;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    .line 270
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->btReload:Landroid/widget/ImageButton;

    new-instance v2, Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$4;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvGridView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/danfe/restaurantapp1/MenuItemFragment$5;

    invoke-direct {v4, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$5;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-direct {v2, v3, v4}, Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 370
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->etSearch:Landroid/widget/EditText;

    new-instance v2, Lcom/danfe/restaurantapp1/MenuItemFragment$6;

    invoke-direct {v2, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$6;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 385
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->inflateView:Landroid/view/View;

    return-object v1

    .line 123
    :cond_1a0
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v2, "Stock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 124
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_109
.end method

.method public recyclerLongClicked(Landroid/view/View;ILjava/lang/Boolean;)V
    .registers 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "itemId"    # I
    .param p3, "isCombo"    # Ljava/lang/Boolean;

    .prologue
    .line 661
    const-string v18, "RECYCLERLONGCLICKED"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_1be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-object/from16 v18, v0

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1be

    .line 670
    const-string v4, ""

    .line 673
    .local v4, "BaseURL":Ljava/lang/String;
    new-instance v6, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 674
    .local v6, "dialog":Landroid/app/Dialog;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 675
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 676
    const v18, 0x7f03004a

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 677
    new-instance v14, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-direct {v14}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;-><init>()V

    .line 678
    .local v14, "rDb":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    const v18, 0x7f0f018c

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 679
    .local v13, "ivDialogItemImage":Landroid/widget/ImageView;
    const v18, 0x7f0f018d

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 680
    .local v16, "tvDialogItemName":Landroid/widget/TextView;
    const v18, 0x7f0f018e

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 681
    .local v15, "tvDialogItemDescription":Landroid/widget/TextView;
    const v18, 0x7f0f018f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 682
    .local v17, "tvDialogitemPrice":Landroid/widget/TextView;
    const v18, 0x7f0f0190

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 684
    .local v5, "btnOk":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 685
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v12, "itemgroupDbList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v12

    .line 687
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, "imagePath":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v11

    .line 689
    .local v11, "itemTitle":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getDetails()Ljava/lang/String;

    move-result-object v9

    .line 690
    .local v9, "itemDescription":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 692
    .local v10, "itemPrice":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/ROI_Item/ImageItem/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 693
    .local v8, "imgpath":Ljava/lang/String;
    const-string v18, " "

    const-string v19, "%20"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v18

    .line 696
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v18

    const v19, 0x7f0200b6

    .line 697
    invoke-virtual/range {v18 .. v19}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v18

    .line 698
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 699
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_1bf

    .line 701
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_156
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCurrency()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v18 .. v18}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    new-instance v18, Lcom/danfe/restaurantapp1/MenuItemFragment$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/danfe/restaurantapp1/MenuItemFragment$8;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 716
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x320

    const/16 v20, 0x258

    invoke-virtual/range {v18 .. v20}, Landroid/view/Window;->setLayout(II)V

    .line 722
    .end local v4    # "BaseURL":Ljava/lang/String;
    .end local v5    # "btnOk":Landroid/widget/Button;
    .end local v6    # "dialog":Landroid/app/Dialog;
    .end local v7    # "imagePath":Ljava/lang/String;
    .end local v8    # "imgpath":Ljava/lang/String;
    .end local v9    # "itemDescription":Ljava/lang/String;
    .end local v10    # "itemPrice":Ljava/lang/String;
    .end local v11    # "itemTitle":Ljava/lang/String;
    .end local v12    # "itemgroupDbList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v13    # "ivDialogItemImage":Landroid/widget/ImageView;
    .end local v14    # "rDb":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .end local v15    # "tvDialogItemDescription":Landroid/widget/TextView;
    .end local v16    # "tvDialogItemName":Landroid/widget/TextView;
    .end local v17    # "tvDialogitemPrice":Landroid/widget/TextView;
    :cond_1be
    return-void

    .line 704
    .restart local v4    # "BaseURL":Ljava/lang/String;
    .restart local v5    # "btnOk":Landroid/widget/Button;
    .restart local v6    # "dialog":Landroid/app/Dialog;
    .restart local v7    # "imagePath":Ljava/lang/String;
    .restart local v8    # "imgpath":Ljava/lang/String;
    .restart local v9    # "itemDescription":Ljava/lang/String;
    .restart local v10    # "itemPrice":Ljava/lang/String;
    .restart local v11    # "itemTitle":Ljava/lang/String;
    .restart local v12    # "itemgroupDbList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .restart local v13    # "ivDialogItemImage":Landroid/widget/ImageView;
    .restart local v14    # "rDb":Lcom/danfe/restaurantapp1/database/RestaurantDatabase;
    .restart local v15    # "tvDialogItemDescription":Landroid/widget/TextView;
    .restart local v16    # "tvDialogItemName":Landroid/widget/TextView;
    .restart local v17    # "tvDialogitemPrice":Landroid/widget/TextView;
    :cond_1bf
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_156
.end method

.method public recyclerViewListClicked(Landroid/view/View;II)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "position"    # I

    .prologue
    .line 403
    return-void
.end method

.method public recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;I)V
    .registers 31
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "position"    # I
    .param p4, "currentlevel"    # I
    .param p5, "isCombo"    # Ljava/lang/Boolean;
    .param p6, "costcenterid"    # I

    .prologue
    .line 408
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    new-instance v19, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 411
    .local v19, "layoutOuter":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_46c

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadItemNextLevel(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v20

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p4

    if-ge v0, v2, :cond_2bb

    .line 417
    const-string v2, "OLD VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 421
    new-instance v3, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v2, v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 424
    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    .line 425
    new-instance v18, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 426
    .local v18, "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 433
    new-instance v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v21, "tvTitle":Landroid/widget/TextView;
    const-string v2, "sans-serif-condensed"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 441
    const-string v2, "ChildCount"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_272

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 457
    :cond_213
    new-instance v22, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 458
    .local v22, "view":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 460
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 462
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 554
    .end local v18    # "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v21    # "tvTitle":Landroid/widget/TextView;
    .end local v22    # "view":Landroid/view/View;
    :cond_271
    :goto_271
    return-void

    .line 445
    .restart local v18    # "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v21    # "tvTitle":Landroid/widget/TextView;
    :cond_272
    const-string v2, "ChildCount"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_2a1

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    .local v17, "i":I
    :goto_290
    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_213

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 447
    add-int/lit8 v17, v17, -0x1

    goto :goto_290

    .line 451
    .end local v17    # "i":I
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    .restart local v17    # "i":I
    :goto_2a9
    add-int/lit8 v2, p4, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_213

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 451
    add-int/lit8 v17, v17, -0x1

    goto :goto_2a9

    .line 469
    .end local v17    # "i":I
    .end local v18    # "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v21    # "tvTitle":Landroid/widget/TextView;
    :cond_2bb
    const-string v2, "NEW VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    new-instance v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    .line 472
    new-instance v18, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 473
    .restart local v18    # "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 474
    new-instance v3, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v2, v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuItemLists:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    move/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemAdapter:Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 481
    new-instance v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 482
    .restart local v21    # "tvTitle":Landroid/widget/TextView;
    const-string v2, "sans-serif-condensed"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 490
    new-instance v22, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 491
    .restart local v22    # "view":Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 493
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 495
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvNextLevel:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->invalidate()V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_271

    .line 502
    .end local v18    # "layoutManager1":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v21    # "tvTitle":Landroid/widget/TextView;
    .end local v22    # "view":Landroid/view/View;
    :cond_46c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItembyItemId(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCategory()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5e6

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v3, "Main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_555

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_545

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/MainActivity;

    iget-wide v4, v4, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v6, v7, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemNameByid(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 510
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v8, v9, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemRateById(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 512
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/MainActivity;

    sget v10, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 514
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, p5

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemPriceById(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v4

    .line 507
    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/danfe/restaurantapp1/MainActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_271

    .line 519
    :cond_545
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Item is out of Stock"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_271

    .line 522
    :cond_555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v3, "Stock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 525
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v6, v7, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemNameByid(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 527
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v8, v9, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemRateById(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 529
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    .line 530
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 531
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, p5

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getImagePathById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v4

    .line 524
    move-object/from16 v0, v23

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_271

    .line 536
    :cond_5e6
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No Items in this Category."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 537
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_602

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_271

    .line 540
    :cond_602
    const-string v2, "ChildCount"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_631

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    .restart local v17    # "i":I
    :goto_620
    const/4 v2, 0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_271

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 542
    add-int/lit8 v17, v17, -0x1

    goto :goto_620

    .line 546
    .end local v17    # "i":I
    :cond_631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    .restart local v17    # "i":I
    :goto_639
    add-int/lit8 v2, p4, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_271

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->layoutItem:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 546
    add-int/lit8 v17, v17, -0x1

    goto :goto_639
.end method

.method public recyclerViewListClicked(Landroid/view/View;IIILjava/lang/Boolean;IZ)V
    .registers 28
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "position"    # I
    .param p4, "currentlevel"    # I
    .param p5, "isCombo"    # Ljava/lang/Boolean;
    .param p6, "costcenterid"    # I
    .param p7, "isCategory"    # Z

    .prologue
    .line 558
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_65

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_65

    .line 565
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadItemNextLevel(Landroid/content/Context;I)Ljava/util/List;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4c} :catch_11e

    move-result-object v18

    .line 573
    :goto_4d
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_65

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->setNextLevelItem(Ljava/util/List;)V

    .line 580
    :cond_65
    if-nez p7, :cond_11d

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v3, "Main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_152

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/MainActivity;

    iget-wide v4, v4, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v6, v7, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemNameByid(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 588
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v8, v9, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemRateById(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 590
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/MainActivity;

    sget v10, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 592
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, p5

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemPriceById(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v4

    .line 585
    move-object/from16 v0, v19

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/danfe/restaurantapp1/MainActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 614
    :cond_11d
    :goto_11d
    return-void

    .line 567
    :catch_11e
    move-exception v17

    .line 568
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->menuShowingGrid:Ljava/util/ArrayList;

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadItemNextLevel(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v18

    .line 570
    const-string v2, "menuShowingGrid: "

    const-string v3, "Error"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4d

    .line 596
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_152
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Item is out of Stock"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_11d

    .line 598
    :cond_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->cond:Ljava/lang/String;

    const-string v3, "Stock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v6, v7, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemNameByid(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 602
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v8, v9, v0, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemRateById(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 604
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    .line 605
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 606
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v15, p5

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getImagePathById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restaurantDatabase:Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemStockInfo(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v4

    .line 599
    move-object/from16 v0, v19

    move/from16 v1, p6

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_11d

    .line 610
    :cond_1f2
    invoke-virtual/range {p0 .. p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No Items in this Category."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_11d
.end method

.method public refreshMenu()V
    .registers 3

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    .line 618
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->BaseUrl:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restAdapter:Lretrofit/RestAdapter;

    .line 622
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->restAdapter:Lretrofit/RestAdapter;

    const-class v1, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    iput-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    .line 623
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->webService:Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    new-instance v1, Lcom/danfe/restaurantapp1/MenuItemFragment$7;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$7;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    invoke-interface {v0, v1}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;->getItemGroups(Lretrofit/Callback;)V

    .line 656
    return-void
.end method

.method public setNextLevelItem(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/danfe/restaurantapp1/model/ItemgroupDb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, "menuShowingGrid":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 761
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v2, v1, p0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    .line 762
    .local v0, "itemAdapter":Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 763
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;->notifyDataSetChanged()V

    .line 766
    .end local v0    # "itemAdapter":Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
    :cond_2f
    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass1 (com.danfe.restaurantapp1.MenuItemFragment$1)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$1;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2d

    .line 144
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$1;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->setNextLevelItem(Ljava/util/List;)V

    .line 148
    :cond_2d
    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass2 (com.danfe.restaurantapp1.MenuItemFragment$2)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$2;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 19
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1c7

    .line 211
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 212
    move-object/from16 v1, p1

    .line 213
    .local v1, "ch":Ljava/lang/CharSequence;
    const-string v13, "QUERY"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v14}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v14, v15, v1}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->searchItems(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$102(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 215
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v8, v13, :cond_d5

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 217
    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v13

    .line 216
    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v13

    .line 217
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_d1

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v15, v13}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRelatedItems(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    .line 219
    .local v7, "itemgroupDbsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 220
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_b9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_d1

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v12, v12, 0x1

    goto :goto_b9

    .line 215
    .end local v7    # "itemgroupDbsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v12    # "y":I
    :cond_d1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_31

    .line 225
    :cond_d5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_1a0

    .line 226
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v6, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v13, v14}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$802(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 228
    new-instance v11, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v14}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {v11, v13, v14, v15}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    .line 229
    .local v11, "searchitemadapter":Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 230
    .local v4, "display":Landroid/view/Display;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    .local v10, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v3, v13, Landroid/util/DisplayMetrics;->density:F

    .line 234
    .local v3, "density":F
    iget v13, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v13, v13

    div-float v5, v13, v3

    .line 235
    .local v5, "dpWidth":F
    const/high16 v13, 0x43960000    # 300.0f

    div-float v13, v5, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 236
    .local v2, "columns":I
    new-instance v9, Landroid/support/v7/widget/GridLayoutManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v9, v13, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 237
    .local v9, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, "Searched Items"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 252
    .end local v1    # "ch":Ljava/lang/CharSequence;
    .end local v2    # "columns":I
    .end local v3    # "density":F
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "dpWidth":F
    .end local v6    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v8    # "j":I
    .end local v9    # "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v10    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "searchitemadapter":Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
    :goto_19e
    const/4 v13, 0x0

    return v13

    .line 245
    .restart local v1    # "ch":Ljava/lang/CharSequence;
    .restart local v8    # "j":I
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, "No such items available"

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_19e

    .line 250
    .end local v1    # "ch":Ljava/lang/CharSequence;
    .end local v8    # "j":I
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v13}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$700(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    goto :goto_19e
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 23
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_236

    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 162
    move-object/from16 v4, p1

    .line 163
    .local v4, "ch":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->searchItems(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$102(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 164
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_107

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    .line 166
    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v17

    .line 165
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getActualItem(Landroid/content/Context;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v17

    .line 166
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_103

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getRelatedItems(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v11

    .line 168
    .local v11, "itemgroupDbsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_e3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_103

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v16, v16, 0x1

    goto :goto_e3

    .line 164
    .end local v11    # "itemgroupDbsList":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v16    # "y":I
    :cond_103
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_32

    .line 174
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_1f3

    .line 175
    new-instance v10, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v10, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    .local v9, "finalItemGroupLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    new-instance v15, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v9, v1}, Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    .line 178
    .local v15, "searchitemadapter":Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 179
    .local v7, "display":Landroid/view/Display;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 180
    .local v14, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 183
    .local v6, "density":F
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v17, v6

    .line 184
    .local v8, "dpWidth":F
    const/high16 v17, 0x43960000    # 300.0f

    div-float v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 185
    .local v5, "columns":I
    new-instance v13, Landroid/support/v7/widget/GridLayoutManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 186
    .local v13, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;

    move-result-object v17

    const-string v18, "Searched Items"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    .end local v4    # "ch":Ljava/lang/CharSequence;
    .end local v5    # "columns":I
    .end local v6    # "density":F
    .end local v7    # "display":Landroid/view/Display;
    .end local v8    # "dpWidth":F
    .end local v9    # "finalItemGroupLists":Ljava/util/List;, "Ljava/util/List<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v10    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/danfe/restaurantapp1/model/ItemgroupDb;>;"
    .end local v12    # "j":I
    .end local v13    # "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v14    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "searchitemadapter":Lcom/danfe/restaurantapp1/adapter/SearchItemAdapter;
    :goto_1f0
    const/16 v17, 0x0

    return v17

    .line 194
    .restart local v4    # "ch":Ljava/lang/CharSequence;
    .restart local v12    # "j":I
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;

    move-result-object v17

    const-string v18, "No such items available"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "No such items available."

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1f0

    .line 200
    .end local v4    # "ch":Ljava/lang/CharSequence;
    .end local v12    # "j":I
    :cond_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$2;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$700(Lcom/danfe/restaurantapp1/MenuItemFragment;)V

    goto :goto_1f0
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass3 (com.danfe.restaurantapp1.MenuItemFragment$3)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$3;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Main Menu"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 261
    new-instance v0, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$900(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/danfe/restaurantapp1/adapter/ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/danfe/restaurantapp1/Interface/RecyclerViewClickListener;)V

    .line 262
    .local v0, "itemAdapter":Lcom/danfe/restaurantapp1/adapter/ItemAdapter;
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 263
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$500(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 265
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$3;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    return v4
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass4 (com.danfe.restaurantapp1.MenuItemFragment$4)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$4;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/danfe/restaurantapp1/helper/Util;->getBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1002(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 276
    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1000(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1202(Lcom/danfe/restaurantapp1/MenuItemFragment;Lretrofit/RestAdapter;)Lretrofit/RestAdapter;

    .line 278
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lretrofit/RestAdapter;

    move-result-object v0

    const-class v2, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    invoke-virtual {v0, v2}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    invoke-static {v1, v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1302(Lcom/danfe/restaurantapp1/MenuItemFragment;Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    .line 279
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1300(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;

    move-result-object v0

    new-instance v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;-><init>(Lcom/danfe/restaurantapp1/MenuItemFragment$4;)V

    invoke-interface {v0, v1}, Lcom/danfe/restaurantapp1/service/RestaurantWebService$ItemGroupWebService;->getItemGroups(Lretrofit/Callback;)V

    .line 312
    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass4.AnonymousClass1 (com.danfe.restaurantapp1.MenuItemFragment$4$1)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment$4;->onClick(Landroid/view/View;)V
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
        "Lcom/danfe/restaurantapp1/response/MenuItemGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload Items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 306
    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_30

    .line 310
    :goto_2f
    return-void

    .line 307
    :catch_30
    move-exception v0

    goto :goto_2f
.end method

.method public success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V
    .registers 9
    .param p1, "itemgroupResult"    # Lcom/danfe/restaurantapp1/response/MenuItemGroup;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_89

    .line 284
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getItemgroup()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupList:Ljava/util/List;

    .line 285
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertItemgroup(Landroid/content/Context;Ljava/util/List;)V

    .line 286
    const-string v1, "itemgroupsResult"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItemGroups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$902(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 289
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 290
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v1, v1, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getNewMenu()V

    .line 299
    :goto_88
    return-void

    .line 294
    :cond_89
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error MenuReload Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->this$1:Lcom/danfe/restaurantapp1/MenuItemFragment$4;

    iget-object v2, v2, Lcom/danfe/restaurantapp1/MenuItemFragment$4;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 296
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 295
    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_88
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 279
    check-cast p1, Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MenuItemFragment$4$1;->success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass5 (com.danfe.restaurantapp1.MenuItemFragment$5)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$5;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Lcom/danfe/restaurantapp1/helper/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16d

    .line 321
    const-string v3, "SELECTEDBILLNO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/danfe/restaurantapp1/MainActivity;

    sget v2, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Item Added to the Order list"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/danfe/restaurantapp1/MainActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 324
    invoke-virtual {v4}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/danfe/restaurantapp1/MainActivity;

    iget-wide v4, v4, Lcom/danfe/restaurantapp1/MainActivity;->orderMasterId:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 325
    invoke-static {v5}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v5

    move/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 326
    invoke-static {v6}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v6

    move/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 327
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 328
    invoke-static {v8}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v8

    move/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 329
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 330
    invoke-virtual {v10}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    check-cast v10, Lcom/danfe/restaurantapp1/MainActivity;

    sget v10, Lcom/danfe/restaurantapp1/MainActivity;->selectedBill:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    .line 332
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    .line 334
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 335
    invoke-static {v15}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v15

    move/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v16, v0

    .line 336
    invoke-static/range {v16 .. v16}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 337
    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 338
    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getImagePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v3

    .line 323
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/danfe/restaurantapp1/MainActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 365
    :cond_16c
    :goto_16c
    return-void

    .line 341
    :cond_16d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Item is out of Stock"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_16c

    .line 345
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1400(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Item Added to the Order list"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    new-instance v2, Lcom/danfe/restaurantapp1/model/OrderDetailDb;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 350
    invoke-static {v5}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v5

    move/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v5}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemId()Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 351
    invoke-static {v6}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v6

    move/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v6}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getItemName()Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 352
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 353
    invoke-static {v8}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v8

    move/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v8}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    .line 354
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    .line 355
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, " "

    const/4 v12, 0x0

    .line 357
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-string v13, "Ordered"

    const/4 v14, 0x0

    .line 359
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 360
    invoke-static {v15}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v15

    move/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v15}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getIsCombo()Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    move-object/from16 v16, v0

    .line 361
    invoke-static/range {v16 .. v16}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual/range {v16 .. v16}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lcom/danfe/restaurantapp1/model/OrderDetailDb;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 362
    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getCostcenterID()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 363
    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getSRate()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/danfe/restaurantapp1/MenuItemFragment$5;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$800(Lcom/danfe/restaurantapp1/MenuItemFragment;)Ljava/util/List;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/danfe/restaurantapp1/model/ItemgroupDb;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/ItemgroupDb;->getOutOfStock()Ljava/lang/Boolean;

    move-result-object v3

    .line 348
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->onOrderArrival(Lcom/danfe/restaurantapp1/model/OrderDetailDb;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_16c
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass6 (com.danfe.restaurantapp1.MenuItemFragment$6)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$6;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$6;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 382
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 373
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 378
    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass7 (com.danfe.restaurantapp1.MenuItemFragment$7)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$7;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->refreshMenu()V
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
        "Lcom/danfe/restaurantapp1/response/MenuItemGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .registers 4
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v0}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 649
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload Items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/danfe/restaurantapp1/helper/Util$Api;->getErrorMessage(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 650
    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 649
    invoke-static {v0, v1}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_2c

    .line 654
    :goto_2b
    return-void

    .line 651
    :catch_2c
    move-exception v0

    goto :goto_2b
.end method

.method public success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V
    .registers 9
    .param p1, "itemgroupResult"    # Lcom/danfe/restaurantapp1/response/MenuItemGroup;
    .param p2, "response"    # Lretrofit/client/Response;

    .prologue
    const/4 v5, 0x1

    .line 626
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_90

    .line 627
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getItemgroup()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupList:Ljava/util/List;

    .line 628
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v3, v3, Lcom/danfe/restaurantapp1/MenuItemFragment;->itemgroupList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->insertItemgroup(Landroid/content/Context;Ljava/util/List;)V

    .line 629
    const-string v1, "itemgroupsResult"

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItemGroups(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->loadAllItems(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$902(Lcom/danfe/restaurantapp1/MenuItemFragment;Ljava/util/List;)Ljava/util/List;

    .line 632
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$600(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 633
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$1100(Lcom/danfe/restaurantapp1/MenuItemFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getNewMenu()V

    .line 636
    iget-object v1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v1}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-static {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->access$200(Lcom/danfe/restaurantapp1/MenuItemFragment;)Lcom/danfe/restaurantapp1/database/RestaurantDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/danfe/restaurantapp1/database/RestaurantDatabase;->getItemByOutOfStock(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/danfe/restaurantapp1/OrderItemDetailsActivity;->updateOutOfStockData(Ljava/util/List;)V

    .line 643
    :goto_8f
    return-void

    .line 639
    :cond_90
    invoke-virtual {p1}, Lcom/danfe/restaurantapp1/response/MenuItemGroup;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error MenuReload Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    .line 641
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/MenuItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 640
    invoke-static {v1, v2}, Lcom/danfe/restaurantapp1/helper/Util;->showRetrofitErrorMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_8f
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 3

    .prologue
    .line 623
    check-cast p1, Lcom/danfe/restaurantapp1/response/MenuItemGroup;

    invoke-virtual {p0, p1, p2}, Lcom/danfe/restaurantapp1/MenuItemFragment$7;->success(Lcom/danfe/restaurantapp1/response/MenuItemGroup;Lretrofit/client/Response;)V

    return-void
.end method

###### Class com.danfe.restaurantapp1.MenuItemFragment.AnonymousClass8 (com.danfe.restaurantapp1.MenuItemFragment$8)
.class Lcom/danfe/restaurantapp1/MenuItemFragment$8;
.super Ljava/lang/Object;
.source "MenuItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/MenuItemFragment;->recyclerLongClicked(Landroid/view/View;ILjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/MenuItemFragment;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/MenuItemFragment;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$8;->this$0:Lcom/danfe/restaurantapp1/MenuItemFragment;

    iput-object p2, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/danfe/restaurantapp1/MenuItemFragment$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 712
    return-void
.end method
