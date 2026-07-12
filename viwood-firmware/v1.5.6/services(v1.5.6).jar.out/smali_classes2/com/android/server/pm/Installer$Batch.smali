.class public Lcom/android/server/pm/Installer$Batch;
.super Ljava/lang/Object;
.source "Installer.java"


# instance fields
.field public final mArgs:Ljava/util/List;

.field public mExecuted:Z

.field public final mFutures:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    monitor-enter p0

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 373
    iget-object v1, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object p1, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 370
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 375
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized execute(Lcom/android/server/pm/Installer;)V
    .locals 8

    monitor-enter p0

    .line 386
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/android/server/pm/Installer$Batch;->mExecuted:Z

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    sub-int v3, v0, v2

    const/16 v4, 0x100

    .line 391
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Landroid/os/CreateAppDataArgs;

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    .line 394
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mArgs:Ljava/util/List;

    add-int v7, v2, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/CreateAppDataArgs;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 396
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/pm/Installer;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v3

    move v4, v1

    .line 397
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 398
    aget-object v5, v3, v4

    .line 399
    iget-object v6, p0, Lcom/android/server/pm/Installer$Batch;->mFutures:Ljava/util/List;

    add-int v7, v2, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CompletableFuture;

    .line 400
    iget v7, v5, Landroid/os/CreateAppDataResult;->exceptionCode:I

    if-nez v7, :cond_1

    .line 401
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    :cond_1
    new-instance v7, Lcom/android/server/pm/Installer$InstallerException;

    iget-object v5, v5, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    invoke-direct {v7, v5}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit16 v2, v2, 0x100

    goto :goto_0

    .line 408
    :cond_3
    monitor-exit p0

    return-void

    .line 386
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 408
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
