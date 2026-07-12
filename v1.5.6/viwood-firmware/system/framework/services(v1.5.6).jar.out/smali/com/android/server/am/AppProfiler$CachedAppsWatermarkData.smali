.class public Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# instance fields
.field public mAverageFrozenTimeInSeconds:I

.field public mBinderProxySnapshot:I

.field public mCachedAppFrozenDurations:[J

.field public mCachedAppHighWatermark:I

.field public mCachedInKb:I

.field public mEarliestFrozenTimestamp:J

.field public mFreeInKb:I

.field public mKernelInKb:I

.field public mLatestFrozenTimestamp:J

.field public mLongestFrozenTimeInSeconds:I

.field public mMeanFrozenTimeInSeconds:I

.field public mNumOfFrozenApps:I

.field public mShortestFrozenTimeInSeconds:I

.field public mTotalFrozenDurations:J

.field public mUptimeInSeconds:I

.field public mZramInKb:I

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public static synthetic $r8$lambda$zI0BBTvUIJgiEIeZIL8U6fuo_8Y(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;JLcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->lambda$updateCachedAppsSnapshot$0(JLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedAppsHighWatermarkStats(IZ)Landroid/util/StatsEvent;
    .locals 15

    .line 559
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v1, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 560
    :try_start_0
    iget v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    iget v4, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    iget v5, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    iget v6, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    iget v7, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    iget v8, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    iget v9, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    iget v10, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    iget v11, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    iget v12, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    iget v13, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    iget v14, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    move/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 574
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    .line 575
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 576
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 577
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    .line 578
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    .line 579
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    .line 580
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    .line 581
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 582
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    .line 583
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    .line 584
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    .line 585
    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 587
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    .line 588
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateCachedAppsSnapshot$0(JLcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 514
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v0

    .line 516
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 517
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    .line 519
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    .line 520
    iput-wide v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    :cond_1
    sub-long/2addr p1, v0

    .line 523
    iget-wide v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    .line 524
    iget-object p3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    iget v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    aput-wide p1, p3, v0

    :cond_2
    return-void
.end method

.method public updateCachedAppsHighWatermarkIfNecessaryLocked(IJ)V
    .locals 2

    .line 488
    iget v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    if-le p1, v0, :cond_0

    .line 489
    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppHighWatermark:I

    const-wide/16 v0, 0x3e8

    .line 490
    div-long v0, p2, v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mUptimeInSeconds:I

    .line 493
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p1}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 496
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 495
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateCachedAppsSnapshot(J)V
    .locals 7

    .line 502
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 503
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    const-wide/16 v1, 0x0

    .line 504
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    .line 505
    iput-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    const/4 v1, 0x0

    .line 506
    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 507
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    .line 508
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    if-eqz v3, :cond_0

    array-length v3, v3

    if-ge v3, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 510
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v3}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v2}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v3, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;J)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 527
    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    if-lez v2, :cond_2

    .line 528
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    sub-long v3, p1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLongestFrozenTimeInSeconds:I

    .line 529
    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    sub-long/2addr p1, v3

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mShortestFrozenTimeInSeconds:I

    .line 530
    iget-wide p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    int-to-long v3, v2

    div-long/2addr p1, v3

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mAverageFrozenTimeInSeconds:I

    .line 532
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    div-int/lit8 p2, v2, 0x2

    invoke-static {p1, v1, v2, p2}, Lcom/android/internal/util/QuickSelect;->select([JIII)J

    move-result-wide p1

    div-long/2addr p1, v5

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mMeanFrozenTimeInSeconds:I

    .line 536
    :cond_2
    iput v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    .line 537
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 539
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_4

    .line 540
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 541
    iget-object v3, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v3}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 543
    iget v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mBinderProxySnapshot:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    :cond_4
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 549
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 550
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mFreeInKb:I

    .line 551
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedInKb:I

    .line 552
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v1

    long-to-int p2, v1

    iput p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mZramInKb:I

    .line 553
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mKernelInKb:I

    .line 554
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
