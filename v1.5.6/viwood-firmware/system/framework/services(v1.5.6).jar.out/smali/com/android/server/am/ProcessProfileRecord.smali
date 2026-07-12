.class public final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field public final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

.field public mCurRawAdj:I

.field public mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mInitialIdlePssOrRss:J

.field public mLastCachedPss:J

.field public mLastCachedRss:J

.field public mLastCachedSwapPss:J

.field public final mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastLowMemory:J

.field public mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field public mLastMemInfoTime:J

.field public mLastPss:J

.field public mLastPssTime:J

.field public mLastRequestedGc:J

.field public mLastRss:J

.field public mLastStateTime:J

.field public mLastSwapPss:J

.field public mNextPssTime:J

.field public mPendingUiClean:Z

.field public mPid:I

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field public final mProfilerLock:Ljava/lang/Object;

.field public mPssProcState:I

.field public mPssStatType:I

.field public mReportLowMemory:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAdj:I

.field public mSetProcState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public mTrimMemoryLevel:I


# direct methods
.method public static synthetic $r8$lambda$IUdC3S34rs87Xa1P5tzUxV1FgmY(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessActive$0(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JxHNnB95IHo4uPFFKjkpWwJexpY(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 1

    .line 324
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_0
    const/4 p0, 0x0

    .line 327
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 328
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    const/16 v0, 0x14

    .line 135
    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 224
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 225
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 226
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    return-void
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1

    const/4 v0, -0x1

    .line 597
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 4

    .line 588
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v1, v0

    .line 590
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v3, v1, v0

    .line 591
    iput v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    .line 592
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_0
    return-void
.end method

.method public static getUidForAttribution(Lcom/android/server/am/ProcessRecord;)I
    .locals 1

    .line 608
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    .line 611
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    return p0
.end method


# virtual methods
.method public abortNextPssTime()V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public addHostingComponentType(I)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 660
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public addPss(JJJZIJ)V
    .locals 14

    .line 528
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_0

    .line 531
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 532
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v13

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    .line 533
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    .line 535
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 537
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public clearHostingComponentType(I)V
    .locals 1

    .line 664
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public commitNextPssTime()V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public computeNextPssTime(IZZJ)J
    .locals 8

    .line 580
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerService;->mBootCompletedTimestamp:J

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    .line 583
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    add-long v6, v2, v4

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 580
    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    const-string/jumbo p2, "lastCpuTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 745
    const-string p2, " timeUsed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 748
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v1

    const-wide/16 v2, 0x400

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const-string/jumbo v1, "lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 683
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 685
    const-string v1, " pssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 687
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 689
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 690
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    const-string/jumbo v1, "lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 693
    const-string v1, " lastSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 695
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 697
    const-string v1, " lastCachedSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 699
    const-string v1, " lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 702
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    const-string/jumbo v1, "lastRssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 705
    const-string v1, " rssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 707
    const-string v1, " rssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 709
    const-string v1, " nextRssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 711
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v1, "lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 715
    const-string v1, " lastCachedRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 718
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 719
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    const-string/jumbo v1, "trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 724
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 727
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 729
    const-string p3, " reportLowMemory="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    iget-boolean p3, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 731
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    const-string p2, "currentHostingComponentTypes=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    const-string p2, " historicalHostingComponentTypes=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 731
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object p0
.end method

.method public getCurProcBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    return-object p0
.end method

.method public getCurRawAdj()I
    .locals 0

    .line 642
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurrentHostingComponentTypes()I
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getHistoricalHostingComponentTypes()I
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getInitialIdlePssOrRss()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    return-wide v0
.end method

.method public getLastCachedPss()J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method public getLastCachedRss()J
    .locals 2

    .line 390
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    return-wide v0
.end method

.method public getLastLowMemory()J
    .locals 2

    .line 509
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method public getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object p0
.end method

.method public getLastMemInfoTime()J
    .locals 2

    .line 440
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method public getLastPss()J
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method public getLastPssTime()J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method public getLastRequestedGc()J
    .locals 2

    .line 499
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method public getLastRss()J
    .locals 2

    .line 420
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .locals 2

    .line 647
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastSwapPss()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method public getNextPssTime()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method public getPid()I
    .locals 0

    .line 617
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return p0
.end method

.method public getPssProcState()I
    .locals 0

    .line 450
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return p0
.end method

.method public getPssStatType()I
    .locals 0

    .line 460
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return p0
.end method

.method public getReportLowMemory()Z
    .locals 0

    .line 519
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return p0
.end method

.method public getSetAdj()I
    .locals 0

    .line 637
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 632
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getTrimMemoryLevel()I
    .locals 0

    .line 470
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return p0
.end method

.method public hasPendingUiClean()Z
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return p0
.end method

.method public init(J)V
    .locals 0

    .line 230
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public final synthetic lambda$onProcessActive$0(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 7

    .line 291
    iget-object v0, p6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p2

    move v3, p3

    move-object v2, p5

    move-object v1, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 296
    iget-object p0, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, p4, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    :cond_1
    return-void
.end method

.method public onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 270
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    .line 271
    iget-object v7, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v7

    move-object/from16 v3, p2

    .line 272
    :try_start_0
    iget-object v14, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 273
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 274
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v15

    if-eqz v2, :cond_0

    .line 276
    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 279
    invoke-virtual {v15}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v13

    const/4 v9, -0x1

    move-object v8, v2

    .line 277
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 280
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 280
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 283
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 284
    iget-object v4, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4}, Lcom/android/server/am/ProcessProfileRecord;->getUidForAttribution(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    .line 285
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v8, v3

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    move v4, v10

    .line 288
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 289
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 290
    new-instance v0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v15, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 300
    iput-object v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 301
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 301
    :goto_1
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 302
    :goto_2
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 304
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 305
    :try_start_9
    iput-object v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 306
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public onProcessFrozen()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    .line 247
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 249
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->onProcessFrozen(JLandroid/util/ArrayMap;)V

    .line 251
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 10

    .line 311
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 313
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    .line 316
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 319
    invoke-virtual {v9}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v4, -0x1

    .line 317
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 320
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 323
    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v9, p1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 320
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    .line 331
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 332
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 334
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 335
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 332
    :goto_1
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    .line 333
    :goto_2
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public onProcessUnfrozen()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 262
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->onProcessUnfrozen(JLandroid/util/ArrayMap;)V

    .line 264
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public reportExcessiveCpu()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    .line 544
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 545
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 547
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 549
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setCurProcBatteryStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    return-void
.end method

.method public setInitialIdlePssOrRss(J)V
    .locals 0

    .line 365
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePssOrRss:J

    return-void
.end method

.method public setLastCachedPss(J)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-void
.end method

.method public setLastCachedRss(J)V
    .locals 0

    .line 395
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    return-void
.end method

.method public setLastCachedSwapPss(J)V
    .locals 0

    .line 415
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-void
.end method

.method public setLastLowMemory(J)V
    .locals 0

    .line 514
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-void
.end method

.method public setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method public setLastMemInfoTime(J)V
    .locals 0

    .line 445
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-void
.end method

.method public setLastPss(J)V
    .locals 0

    .line 375
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-void
.end method

.method public setLastPssTime(J)V
    .locals 0

    .line 345
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public setLastRequestedGc(J)V
    .locals 0

    .line 504
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-void
.end method

.method public setLastRss(J)V
    .locals 0

    .line 425
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-void
.end method

.method public setLastSwapPss(J)V
    .locals 0

    .line 405
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-void
.end method

.method public setNextPssTime(J)V
    .locals 0

    .line 355
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 486
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 622
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return-void
.end method

.method public setProcessTrackerState(II)V
    .locals 8

    .line 553
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 557
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 559
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 561
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    move v3, p1

    move v4, p2

    .line 560
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 562
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 565
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setPssProcState(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return-void
.end method

.method public setPssStatType(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return-void
.end method

.method public setReportLowMemory(Z)V
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return-void
.end method

.method public setTrimMemoryLevel(I)V
    .locals 0

    .line 475
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return-void
.end method

.method public updateProcState(Lcom/android/server/am/ProcessStateRecord;)V
    .locals 2

    .line 652
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 653
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 654
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 655
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-void
.end method
