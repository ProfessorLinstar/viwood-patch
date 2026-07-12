.class public Lcom/android/server/job/controllers/PrefetchController;
.super Lcom/android/server/job/controllers/StateController;
.source "PrefetchController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

.field public final mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

.field public final mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

.field public mLaunchTimeAllowanceMs:J

.field public mLaunchTimeThresholdMs:J

.field public final mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

.field public final mPrefetchChangedListeners:Landroid/util/ArraySet;

.field public final mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$BFFxIkqJJt_2lyMqlqgaHSZOKzI(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .locals 3

    const/4 v0, 0x0

    .line 648
    :goto_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 649
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 650
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 655
    const-string v2, " from "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 657
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$gh1bNa_9ifjYJLmF_wg478zhPO0(Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/controllers/PrefetchController;->lambda$onConstantsUpdatedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimes(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$PcHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdAlarmListener(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/job/controllers/PrefetchController;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUid(Lcom/android/server/job/controllers/PrefetchController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Prefetch"

    const/4 v1, 0x3

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 76
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 82
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    .line 84
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    const-wide/32 v0, 0x36ee80

    .line 92
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    const-wide/32 v0, 0x1b7740

    .line 101
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 111
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$1;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 132
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 133
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 134
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 136
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-void
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$0()V
    .locals 14

    .line 407
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 410
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    const/4 v2, 0x0

    move v10, v2

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v10, v3, :cond_3

    .line 412
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    move v11, v2

    .line 413
    :goto_1
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v11, v3, :cond_2

    .line 414
    iget-object v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v10, v11}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    move-object v3, p0

    .line 415
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 417
    iget-object p0, v3, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, v10, v11}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 419
    :cond_0
    :goto_2
    invoke-virtual {v3, v8, v9, v4, v5}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_1

    move-wide v12, v4

    move v4, v8

    move-object v5, v9

    move-wide v8, v6

    move-wide v6, v12

    .line 420
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    move-wide v12, v8

    move v8, v4

    move-wide v4, v6

    move-wide v6, v12

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object p0, v3

    goto :goto_1

    :cond_2
    move-object v3, p0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object v3, p0

    .line 424
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 426
    iget-object p0, v3, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    return-void

    .line 424
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 9

    .line 625
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 627
    const-string v2, "Cached launch times:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    move v3, v2

    .line 629
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 630
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move v5, v2

    .line 631
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 632
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 633
    iget-object v7, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 635
    invoke-static {v4, v6}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 636
    const-string v6, ": "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 638
    const-string v6, " ("

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v7, v0

    const/16 v6, 0x13

    .line 639
    invoke-static {v7, v8, p1, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 641
    const-string v6, " from now)"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 646
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 647
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 661
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 662
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getLaunchTimeAllowanceMs()J
    .locals 2

    .line 606
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method public getLaunchTimeThresholdMs()J
    .locals 2

    .line 611
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public final getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J
    .locals 5

    .line 226
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v3

    cmp-long p3, v1, p3

    if-gez p3, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 230
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 231
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 233
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    const-wide p3, 0x7fffffffffffffffL

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide p3
.end method

.method public getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 3

    .line 217
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 218
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 219
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPcConstants()Lcom/android/server/job/controllers/PrefetchController$PcConstants;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    return-object p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 9

    .line 153
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 155
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object p2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_0

    .line 158
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 162
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 163
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 164
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v0, p0

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    move-wide v7, v5

    move-wide v5, v3

    move-object v4, p1

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-wide v7, v5

    move-wide v5, v3

    move-object v3, p0

    move-object v4, p1

    .line 167
    :goto_0
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    :cond_2
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 175
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p2, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p5, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArraySet;

    const/4 p6, 0x0

    if-nez p5, :cond_0

    return p6

    :cond_0
    move v0, p6

    .line 247
    :goto_0
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p6, v1, :cond_1

    .line 248
    invoke-virtual {p5, p6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 249
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result p0

    or-int/2addr v0, p0

    add-int/lit8 p6, p6, 0x1

    move-object p0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final maybeUpdateConstraintForUid(I)V
    .locals 12

    .line 255
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 260
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 261
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 262
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 263
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 264
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 265
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    iget-object v5, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/util/ArraySet;

    if-nez v10, :cond_2

    :cond_1
    move-object v4, p0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move v11, v4

    .line 270
    :goto_1
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 271
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    move-object v4, p0

    .line 272
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 273
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object p0, v4

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move-object p0, v4

    goto :goto_0

    :cond_4
    move-object v4, p0

    .line 277
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 278
    iget-object p0, v4, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 280
    :cond_5
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 186
    const-string p0, "JobScheduler.Prefetch"

    const-string p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 190
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq p3, v0, :cond_2

    .line 209
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 199
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 200
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 392
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public final processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v7, p3

    .line 285
    sget-boolean v3, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 286
    const-string v4, "JobScheduler.Prefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Estimated launch time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 289
    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    sub-long v9, v7, v9

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from now)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v10, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 294
    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/util/ArraySet;

    if-nez v9, :cond_1

    if-eqz v3, :cond_3

    .line 297
    const-string v0, "JobScheduler.Prefetch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not caching launch time since we haven\'t seen any prefetch jobs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 305
    :cond_1
    iget-object v3, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 306
    iget-object v3, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 309
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 310
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 311
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    move-object v13, v0

    move-wide v14, v3

    move-wide v3, v5

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 313
    iget-object v1, v13, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    move/from16 v2, p1

    move-wide v6, v7

    move-wide/from16 v16, v3

    move-object/from16 v3, p2

    move-wide v4, v11

    move v11, v0

    move-object v0, v1

    move-object v1, v9

    move-wide/from16 v8, v16

    invoke-interface/range {v0 .. v9}, Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;->onPrefetchCacheUpdated(Landroid/util/ArraySet;ILjava/lang/String;JJJ)V

    move-object v7, v1

    add-int/lit8 v0, v11, 0x1

    move-wide v11, v4

    move-wide v3, v8

    move-object v9, v7

    move-wide/from16 v7, p3

    goto :goto_0

    :cond_2
    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v9

    move-object v0, v13

    move-wide v1, v14

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v7}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 322
    :cond_3
    :goto_1
    monitor-exit v10

    return-void

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTrackingLocked()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 142
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public unRegisterPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPrefetchChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 335
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 339
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p0, :cond_1

    .line 348
    invoke-virtual {p0, v1, v0}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 352
    :goto_1
    invoke-virtual {p1, p4, p5, p0}, Lcom/android/server/job/controllers/JobStatus;->setPrefetchConstraintSatisfied(JZ)Z

    move-result p0

    return p0
.end method

.method public final updateThresholdAlarmLocked(ILjava/lang/String;JJ)V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sub-long v2, v0, p3

    .line 366
    iget-wide v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    add-long/2addr p3, v4

    sub-long/2addr v0, p3

    .line 371
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    add-long/2addr p5, v0

    invoke-virtual {p0, p1, p5, p6}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void

    .line 374
    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    .line 360
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final willBeLaunchedSoonLocked(ILjava/lang/String;J)Z
    .locals 2

    .line 385
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
