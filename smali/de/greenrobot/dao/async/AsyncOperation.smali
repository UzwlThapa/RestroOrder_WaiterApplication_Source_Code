###### Class de.greenrobot.dao.async.AsyncOperation (de.greenrobot.dao.async.AsyncOperation)
.class public Lde/greenrobot/dao/async/AsyncOperation;
.super Ljava/lang/Object;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/dao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I = 0x4


# instance fields
.field private volatile completed:Z

.field final creatorStacktrace:Ljava/lang/Exception;

.field final dao:Lde/greenrobot/dao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/AbstractDao",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field final flags:I

.field volatile mergedOperationsCount:I

.field final parameter:Ljava/lang/Object;

.field volatile result:Ljava/lang/Object;

.field sequenceNumber:I

.field volatile throwable:Ljava/lang/Throwable;

.field volatile timeCompleted:J

.field volatile timeStarted:J

.field final type:Lde/greenrobot/dao/async/AsyncOperation$OperationType;


# direct methods
.method constructor <init>(Lde/greenrobot/dao/async/AsyncOperation$OperationType;Lde/greenrobot/dao/AbstractDao;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "type"    # Lde/greenrobot/dao/async/AsyncOperation$OperationType;
    .param p3, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "parameter"    # Ljava/lang/Object;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/async/AsyncOperation$OperationType;",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "dao":Lde/greenrobot/dao/AbstractDao;, "Lde/greenrobot/dao/AbstractDao<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lde/greenrobot/dao/async/AsyncOperation;->type:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 70
    iput p5, p0, Lde/greenrobot/dao/async/AsyncOperation;->flags:I

    .line 71
    iput-object p2, p0, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    .line 72
    iput-object p3, p0, Lde/greenrobot/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    iput-object p4, p0, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 74
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AsyncOperation was created here"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_18
    iput-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    .line 75
    return-void

    .line 74
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public getCreatorStacktrace()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-object v0
.end method

.method getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->database:Landroid/database/sqlite/SQLiteDatabase;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->dao:Lde/greenrobot/dao/AbstractDao;

    invoke-virtual {v0}, Lde/greenrobot/dao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_6
.end method

.method public getDuration()J
    .registers 5

    .prologue
    .line 136
    iget-wide v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeCompleted:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 137
    new-instance v0, Lde/greenrobot/dao/DaoException;

    const-string v1, "This operation did not yet complete"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_10
    iget-wide v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeCompleted:J

    iget-wide v2, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeStarted:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMergedOperationsCount()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->mergedOperationsCount:I

    return v0
.end method

.method public getParameter()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z

    if-nez v0, :cond_8

    .line 102
    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    .line 104
    :cond_8
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_17

    .line 105
    new-instance v0, Lde/greenrobot/dao/async/AsyncDaoException;

    iget-object v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lde/greenrobot/dao/async/AsyncDaoException;-><init>(Lde/greenrobot/dao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 101
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_17
    :try_start_17
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_14

    monitor-exit p0

    return-object v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->sequenceNumber:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeCompleted()J
    .registers 3

    .prologue
    .line 132
    iget-wide v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeCompleted:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .registers 3

    .prologue
    .line 128
    iget-wide v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeStarted:J

    return-wide v0
.end method

.method public getType()Lde/greenrobot/dao/async/AsyncOperation$OperationType;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->type:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public isCompleted()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z

    return v0
.end method

.method public isCompletedSucessfully()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFailed()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMergeTx()Z
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isMergeableWith(Lde/greenrobot/dao/async/AsyncOperation;)Z
    .registers 4
    .param p1, "other"    # Lde/greenrobot/dao/async/AsyncOperation;

    .prologue
    .line 124
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lde/greenrobot/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lde/greenrobot/dao/async/AsyncOperation;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 213
    iput-wide v2, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeStarted:J

    .line 214
    iput-wide v2, p0, Lde/greenrobot/dao/async/AsyncOperation;->timeCompleted:J

    .line 215
    iput-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z

    .line 216
    iput-object v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 217
    iput-object v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 218
    iput v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->mergedOperationsCount:I

    .line 219
    return-void
.end method

.method declared-synchronized setCompleted()V
    .registers 2

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 189
    monitor-exit p0

    return-void

    .line 187
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iput-object p1, p0, Lde/greenrobot/dao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 83
    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 158
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 160
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_12

    goto :goto_1

    .line 161
    :catch_9
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    :cond_15
    :try_start_15
    iget-object v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_12

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .registers 6
    .param p1, "maxMillis"    # I

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_9

    .line 177
    int-to-long v2, p1

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_d
    .catchall {:try_start_6 .. :try_end_9} :catchall_16

    .line 182
    :cond_9
    :try_start_9
    iget-boolean v1, p0, Lde/greenrobot/dao/async/AsyncOperation;->completed:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    monitor-exit p0

    return v1

    .line 178
    :catch_d
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_e
    new-instance v1, Lde/greenrobot/dao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    .line 175
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

###### Class de.greenrobot.dao.async.AsyncOperation.OperationType (de.greenrobot.dao.async.AsyncOperation$OperationType)
.class public final enum Lde/greenrobot/dao/async/AsyncOperation$OperationType;
.super Ljava/lang/Enum;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/async/AsyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/greenrobot/dao/async/AsyncOperation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Count:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Delete:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum DeleteAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum DeleteByKey:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum DeleteInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Insert:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum InsertInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplace:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum InsertOrReplaceInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Load:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum LoadAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum QueryList:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum QueryUnique:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Refresh:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum TransactionCallable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum TransactionRunnable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum Update:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

.field public static final enum UpdateInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v3}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Insert:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxIterable"

    invoke-direct {v0, v1, v4}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxArray"

    invoke-direct {v0, v1, v5}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 33
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplace"

    invoke-direct {v0, v1, v6}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplace:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxIterable"

    invoke-direct {v0, v1, v7}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxArray"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 34
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Update"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Update:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxIterable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxArray"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 35
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Delete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Delete:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxIterable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxArray"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 36
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteByKey"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteByKey:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteAll"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 37
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionRunnable"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->TransactionRunnable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionCallable"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->TransactionCallable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 38
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "QueryList"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->QueryList:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "QueryUnique"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->QueryUnique:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 39
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Load"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Load:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "LoadAll"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->LoadAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 40
    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Count"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Count:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    new-instance v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    const-string v1, "Refresh"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Refresh:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    .line 31
    const/16 v0, 0x16

    new-array v0, v0, [Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    sget-object v1, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Insert:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplace:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Update:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Delete:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteByKey:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->DeleteAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->TransactionRunnable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->TransactionCallable:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->QueryList:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->QueryUnique:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Load:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->LoadAll:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Count:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->Refresh:Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->$VALUES:[Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/greenrobot/dao/async/AsyncOperation$OperationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public static values()[Lde/greenrobot/dao/async/AsyncOperation$OperationType;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lde/greenrobot/dao/async/AsyncOperation$OperationType;->$VALUES:[Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    invoke-virtual {v0}, [Lde/greenrobot/dao/async/AsyncOperation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/greenrobot/dao/async/AsyncOperation$OperationType;

    return-object v0
.end method
