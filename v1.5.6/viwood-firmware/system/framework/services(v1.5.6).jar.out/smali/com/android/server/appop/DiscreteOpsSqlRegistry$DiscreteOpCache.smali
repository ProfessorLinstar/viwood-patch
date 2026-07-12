.class public Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;
.super Ljava/lang/Object;
.source "DiscreteOpsSqlRegistry.java"


# instance fields
.field public final mCache:Landroid/util/ArraySet;

.field public final mCapacity:I

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCache(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevictOldAppOpEvents(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->evictOldAppOpEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteOpsSqlRegistry;I)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    .line 441
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V
    .locals 1

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    if-lt p1, v0, :cond_1

    .line 452
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->this$0:Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    invoke-static {p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->-$$Nest$fgetmSqliteWriteHandler(Lcom/android/server/appop/DiscreteOpsSqlRegistry;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$SqliteWriteHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 454
    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public capacity()I
    .locals 0

    .line 516
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCapacity:I

    return p0
.end method

.method public clear()V
    .locals 1

    .line 523
    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear(ILjava/lang/String;)V
    .locals 3

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 551
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 552
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 557
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public evictAllAppOpEvents()Ljava/util/List;
    .locals 2

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 488
    monitor-exit p0

    return-object v0

    .line 489
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public evictAppOpEvents(Landroid/util/IntArray;)Ljava/util/List;
    .locals 4

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 502
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_2
    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 507
    monitor-exit p0

    return-object v0

    .line 508
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final evictOldAppOpEvents()Ljava/util/List;
    .locals 7

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    sub-long/2addr v2, v4

    .line 466
    invoke-static {v2, v3}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v2

    .line 467
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 468
    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmDiscretizedAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    .line 469
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 473
    :cond_1
    monitor-exit p0

    return-object v0

    .line 474
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offsetTimestamp(J)V
    .locals 20

    move-object/from16 v1, p0

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 534
    iget-object v2, v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 536
    new-instance v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v6

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmPackageName(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)Ljava/lang/String;

    move-result-object v7

    .line 537
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpCode(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v10

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmOpFlags(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)I

    move-result v11

    .line 539
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v13

    .line 540
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v14

    invoke-static {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->-$$Nest$fgetmAccessTime(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)J

    move-result-wide v16

    sub-long v16, v16, p1

    .line 541
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v18

    invoke-direct/range {v5 .. v19}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 536
    invoke-virtual {v1, v5}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->add(Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 544
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOpCache;->mCache:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method
