.class public Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsXmlRegistry.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DiscreteOpsXmlRegistry"


# instance fields
.field public mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public mDiscreteAccessDir:Ljava/io/File;

.field public mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

.field public final mInMemoryLock:Ljava/lang/Object;

.field public final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 138
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getDiscreteOpsDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 143
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 144
    monitor-enter v0

    .line 145
    :try_start_0
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 146
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createDiscreteAccessDirLocked()V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readLargestChainIdFromDiskLocked()I

    move-result p2

    .line 148
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    new-instance v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 150
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 150
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 151
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 11

    .line 1402
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1405
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1406
    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v10, p10

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    if-eqz v4, :cond_0

    move/from16 v6, p6

    move-object/from16 v5, p7

    move/from16 v8, p8

    move-object/from16 v7, p9

    .line 1408
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1409
    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 1413
    :cond_0
    iget v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v3, v3, p5

    if-eqz v3, :cond_1

    iget-wide v3, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v5, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    add-long/2addr v5, v3

    cmp-long v5, v5, p1

    if-lez v5, :cond_1

    cmp-long v3, v3, p3

    if-gez v3, :cond_1

    .line 1416
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getDiscreteOpsDir()Ljava/io/File;
    .locals 4

    .line 155
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "discrete"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1379
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1383
    new-instance v2, Ljava/util/ArrayList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_1

    if-ge v4, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 1386
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v4, v5

    goto :goto_0

    :cond_2
    if-ne v4, v1, :cond_3

    add-int/lit8 v5, v3, 0x1

    .line 1388
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move v3, v5

    goto :goto_0

    .line 1389
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 1390
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 1392
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 14

    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 222
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p0, v2, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createAttributionChains(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;

    move-result-object v3

    :cond_1
    move-object v13, v3

    .line 226
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v0, v1, v3}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    move-wide/from16 v3, p2

    .line 226
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 228
    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 230
    invoke-static {v2, p1, v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mapplyToHistoricalOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public clearHistory()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 356
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearOnDiskHistoryLocked()V

    .line 358
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 356
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 358
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public clearHistory(ILjava/lang/String;)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 373
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    .line 374
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;ILjava/lang/String;)V

    .line 376
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 377
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 374
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 377
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final clearOnDiskHistoryLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 411
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 412
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->createDiscreteAccessDir()V

    return-void
.end method

.method public final createAttributionChains(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;
    .locals 26

    move-object/from16 v0, p1

    .line 280
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 281
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_9

    .line 283
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    iget-object v5, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 284
    iget-object v6, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 285
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v6, :cond_8

    .line 287
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v14, v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 289
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_7

    .line 291
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 293
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    iget-object v10, v10, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 295
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_6

    .line 298
    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    move/from16 v16, v2

    .line 300
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_5

    .line 302
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/util/List;

    .line 303
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v20, v0

    .line 304
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v21, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_4

    .line 306
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move-object/from16 v22, v2

    if-eqz v0, :cond_3

    .line 307
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v24, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    :cond_0
    :goto_6
    move/from16 v25, v4

    move v3, v7

    move-object v0, v10

    move v2, v12

    move-object/from16 v10, v18

    move-object/from16 v4, p2

    goto :goto_8

    .line 314
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    move/from16 v25, v4

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_2
    move/from16 v25, v4

    move-object/from16 v4, p2

    .line 318
    :goto_7
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    move v3, v7

    move-object v7, v2

    move v2, v12

    move-object v12, v0

    move-object v0, v10

    move-object/from16 v10, v18

    .line 319
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)V

    goto :goto_8

    :cond_3
    move/from16 v24, v3

    goto :goto_6

    :goto_8
    add-int/lit8 v7, v24, 0x1

    move v4, v7

    move v7, v3

    move v3, v4

    move v12, v2

    move-object/from16 v18, v10

    move-object/from16 v2, v22

    move/from16 v4, v25

    move-object v10, v0

    move/from16 v0, v23

    goto :goto_5

    :cond_4
    move/from16 v25, v4

    move v3, v7

    move-object v0, v10

    move v2, v12

    move-object/from16 v4, p2

    add-int/lit8 v7, v21, 0x1

    move v4, v7

    move v7, v3

    move v3, v4

    move/from16 v2, v19

    move-object/from16 v0, v20

    move/from16 v4, v25

    goto/16 :goto_4

    :cond_5
    move/from16 v25, v4

    move v3, v7

    move-object v0, v10

    move v2, v12

    move-object/from16 v4, p2

    add-int/lit8 v7, v17, 0x1

    move v4, v7

    move v7, v3

    move v3, v4

    move/from16 v2, v16

    move/from16 v4, v25

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_6
    move/from16 v16, v2

    move/from16 v25, v4

    move v3, v7

    move-object/from16 v4, p2

    add-int/lit8 v7, v3, 0x1

    move-object/from16 v0, p1

    move/from16 v4, v25

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v2

    move/from16 v25, v4

    move-object/from16 v4, p2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v4, v25

    goto/16 :goto_1

    :cond_8
    move/from16 v16, v2

    move/from16 v25, v4

    move-object/from16 v4, p2

    add-int/lit8 v0, v25, 0x1

    move v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public final createDiscreteAccessDir()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    return-void
.end method

.method public final createDiscreteAccessDirLocked()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1f9

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    return-void
.end method

.method public final deleteOldDiscreteHistoryFilesLocked()V
    .locals 11

    .line 757
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 758
    array-length v0, p0

    if-lez v0, :cond_2

    .line 759
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 760
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 761
    const-string/jumbo v5, "tl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 766
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 765
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 767
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    sget-wide v8, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v10, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v7

    .line 768
    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_1

    .line 769
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 770
    sget-object v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 774
    sget-object v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v5, "Error while cleaning timeline files: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 12

    .line 397
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v0

    const/4 v1, -0x1

    move/from16 v2, p6

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 399
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    .line 400
    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    const-wide/16 v1, 0x0

    const/16 v10, 0x1f

    move v6, p2

    move-object v7, p3

    move-object/from16 v9, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    move-object/from16 v4, p9

    .line 402
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    const-string v1, "Largest chain id: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v5, p10

    .line 406
    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .locals 5

    .line 416
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    .line 418
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 421
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    :try_start_2
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    if-nez v3, :cond_0

    .line 423
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-direct {v3, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 424
    invoke-virtual {p0, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 426
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 427
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_1
    move-exception p0

    .line 421
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 428
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public migrateSqliteData(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 201
    sget-object p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string p1, "State not saved - persistence not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    iput v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mLargestChainId:I

    .line 206
    iget v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    iput v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 211
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    .line 207
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 211
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public offsetHistory(J)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->clearHistory()V

    .line 386
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;J)V

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 389
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 386
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 389
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 5

    .line 738
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 739
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tl"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 743
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 744
    :try_start_1
    invoke-static {p1, p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    .line 745
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    .line 747
    :goto_0
    sget-object v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing timeline state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 751
    invoke-virtual {v2, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    return-void
.end method

.method public final readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 334
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 335
    array-length v3, p0

    if-lez v3, :cond_2

    .line 336
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 338
    const-string/jumbo v8, "tl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 341
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_1

    goto :goto_1

    .line 346
    :cond_1
    invoke-static {p1, v6, v1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;Ljava/io/File;J)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 349
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readLargestChainIdFromDiskLocked()I
    .locals 11

    .line 234
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 235
    array-length v1, p0

    if-lez v1, :cond_4

    .line 238
    array-length v1, p0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v0

    move-object v6, v2

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v7, p0, v5

    .line 239
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 240
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    .line 243
    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-gez v10, :cond_1

    move-object v6, v7

    move-wide v3, v8

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    return v0

    .line 255
    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 261
    const-string v3, "h"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v3, "lc"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catchall_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    return v0
.end method

.method public recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 15

    move/from16 v1, p4

    move/from16 v6, p6

    .line 162
    invoke-static {v1, v6}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v14, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v14

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const-string v4, "default:0"

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    .line 176
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeAndClearOldAccessHistory()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 182
    sget-object p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->TAG:Ljava/lang/String;

    const-string v1, "State not saved - persistence not initialized."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 188
    new-instance v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v3, 0x0

    .line 189
    iput-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    .line 190
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    .line 192
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 195
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    .line 190
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 195
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
