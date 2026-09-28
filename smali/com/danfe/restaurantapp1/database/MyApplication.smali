###### Class com.danfe.restaurantapp1.database.MyApplication (com.danfe.restaurantapp1.database.MyApplication)
.class public Lcom/danfe/restaurantapp1/database/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static activityVisible:Z


# instance fields
.field public daoSession:Lcom/danfe/restaurantapp1/model/DaoSession;

.field handler:Landroid/os/Handler;

.field public itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

.field logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

.field public tableDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static activityPaused()V
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/danfe/restaurantapp1/database/MyApplication;->activityVisible:Z

    .line 76
    return-void
.end method

.method public static activityResumed()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/danfe/restaurantapp1/database/MyApplication;->activityVisible:Z

    .line 72
    return-void
.end method

.method public static isActivityVisible()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/danfe/restaurantapp1/database/MyApplication;->activityVisible:Z

    return v0
.end method

.method private setupDb()V
    .registers 6

    .prologue
    .line 52
    new-instance v2, Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;

    const-string v3, "routine-db"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 54
    .local v2, "helper":Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;
    invoke-virtual {v2}, Lcom/danfe/restaurantapp1/model/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 55
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/danfe/restaurantapp1/model/DaoMaster;

    invoke-direct {v0, v1}, Lcom/danfe/restaurantapp1/model/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    .local v0, "daoMaster":Lcom/danfe/restaurantapp1/model/DaoMaster;
    invoke-virtual {v0}, Lcom/danfe/restaurantapp1/model/DaoMaster;->newSession()Lcom/danfe/restaurantapp1/model/DaoSession;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->daoSession:Lcom/danfe/restaurantapp1/model/DaoSession;

    .line 57
    iget-object v3, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->daoSession:Lcom/danfe/restaurantapp1/model/DaoSession;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/DaoSession;->getItemgroupDbDao()Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->itemgroupDbDao:Lcom/danfe/restaurantapp1/model/ItemgroupDbDao;

    .line 58
    iget-object v3, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->daoSession:Lcom/danfe/restaurantapp1/model/DaoSession;

    invoke-virtual {v3}, Lcom/danfe/restaurantapp1/model/DaoSession;->getTableDbDao()Lcom/danfe/restaurantapp1/model/TableDbDao;

    move-result-object v3

    iput-object v3, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->tableDao:Lcom/danfe/restaurantapp1/model/TableDbDao;

    .line 59
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 111
    :cond_9
    return-void
.end method

.method public detectUserInActivity()V
    .registers 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->cancelTimer()V

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->timer:Ljava/util/Timer;

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/danfe/restaurantapp1/database/MyApplication$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/database/MyApplication$1;-><init>(Lcom/danfe/restaurantapp1/database/MyApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public detectUserInteracted()V
    .registers 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInActivity()V

    .line 115
    return-void
.end method

.method public getDaoSession()Lcom/danfe/restaurantapp1/model/DaoSession;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->daoSession:Lcom/danfe/restaurantapp1/model/DaoSession;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    invoke-direct {p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->setupDb()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/danfe/restaurantapp1/database/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public registerSessionListener(Lcom/danfe/restaurantapp1/Interface/LogoutInterface;)V
    .registers 2
    .param p1, "logoutInterface"    # Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/danfe/restaurantapp1/database/MyApplication;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    .line 105
    return-void
.end method

###### Class com.danfe.restaurantapp1.database.MyApplication.AnonymousClass1 (com.danfe.restaurantapp1.database.MyApplication$1)
.class Lcom/danfe/restaurantapp1/database/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/database/MyApplication;->detectUserInActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danfe/restaurantapp1/database/MyApplication;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/database/MyApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/danfe/restaurantapp1/database/MyApplication;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/danfe/restaurantapp1/database/MyApplication$1;->this$0:Lcom/danfe/restaurantapp1/database/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication$1;->this$0:Lcom/danfe/restaurantapp1/database/MyApplication;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/database/MyApplication;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/danfe/restaurantapp1/database/MyApplication$1$1;

    invoke-direct {v1, p0}, Lcom/danfe/restaurantapp1/database/MyApplication$1$1;-><init>(Lcom/danfe/restaurantapp1/database/MyApplication$1;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 95
    return-void
.end method

###### Class com.danfe.restaurantapp1.database.MyApplication.AnonymousClass1.C00081 (com.danfe.restaurantapp1.database.MyApplication$1$1)
.class Lcom/danfe/restaurantapp1/database/MyApplication$1$1;
.super Ljava/util/TimerTask;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danfe/restaurantapp1/database/MyApplication$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/danfe/restaurantapp1/database/MyApplication$1;


# direct methods
.method constructor <init>(Lcom/danfe/restaurantapp1/database/MyApplication$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/danfe/restaurantapp1/database/MyApplication$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/danfe/restaurantapp1/database/MyApplication$1$1;->this$1:Lcom/danfe/restaurantapp1/database/MyApplication$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication$1$1;->this$1:Lcom/danfe/restaurantapp1/database/MyApplication$1;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/database/MyApplication$1;->this$0:Lcom/danfe/restaurantapp1/database/MyApplication;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/database/MyApplication;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/danfe/restaurantapp1/database/MyApplication$1$1;->this$1:Lcom/danfe/restaurantapp1/database/MyApplication$1;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/database/MyApplication$1;->this$0:Lcom/danfe/restaurantapp1/database/MyApplication;

    iget-object v0, v0, Lcom/danfe/restaurantapp1/database/MyApplication;->logoutInterface:Lcom/danfe/restaurantapp1/Interface/LogoutInterface;

    invoke-interface {v0}, Lcom/danfe/restaurantapp1/Interface/LogoutInterface;->logout()V

    .line 93
    :cond_11
    return-void
.end method
