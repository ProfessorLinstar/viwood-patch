.class public Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# static fields
.field public static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;


# instance fields
.field public mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field public final mLastHibernationStates:Landroid/util/ArrayMap;

.field public mLastLogTimeSecs:J

.field public final mLastTransitionInfo:Landroid/util/ArrayMap;

.field public final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTransitionInfoList:Ljava/util/ArrayList;

.field public mWindowState:I


# direct methods
.method public static synthetic $r8$lambda$3RGlU1M3uP_iCCCYjYhunixnUpw(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionFinished$2(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ki7q7mPhYIecj4-hBYOZDmsAik(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$notifyFullyDrawn$6(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9hr_GK0GAsfQJMY3gnuWhWcVa94(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FGN_QvgZ9ig3PZArPbmcE7o8Di8(Lcom/android/server/wm/ActivityMetricsLogger;JLcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$notifyWindowsDrawn$0(JLcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MDDCoWK980XoH_6bZLWfXzhTwEY(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OUNyB_bwgLMY8TVVdFfVT61UkxQ(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$notifyFullyDrawn$4(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PB0dUMSgkSLbNfMfRBQ_zSD5XVk(JLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowManagerService;I)V
    .locals 2

    .line 1307
    iget-wide v0, p2, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 1311
    :cond_0
    iget-object p0, p3, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p4}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$S-wqbHVH_zpEtI4RMGxzu0oWXbo(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SLhgClhCxMNiyG0X8ws4k9l4gJc(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$notifyFullyDrawn$5(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 172
    const-string v0, "window_time_3"

    const-string v1, "window_time_4"

    const-string v2, "window_time_0"

    const-string v3, "window_time_1"

    const-string v4, "window_time_2"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .locals 4

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 178
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 179
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 184
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 560
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 561
    new-instance p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-void
.end method

.method public static convertTransitionTypeToLaunchObserverTemperature(I)I
    .locals 1

    .line 0
    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getAppStartTransitionType(IZ)I
    .locals 1

    .line 0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isAppCompateStateChangedToLetterboxed(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V
    .locals 2

    .line 1060
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    return-void

    .line 1064
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort launch cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1066
    iget-wide p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed(J)V

    return-void
.end method

.method public final abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1071
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    return-void
.end method

.method public final checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 982
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 983
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 998
    :try_start_1
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1000
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1003
    :cond_1
    :try_start_2
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p1, :cond_2

    const-string p1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActivityToBeDrawn cancels activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1005
    const-string p1, "checkActivityToBeDrawn (invisible or drawn already)"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 1006
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V
    .locals 2

    .line 1077
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "done abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " timestamp="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " info="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1082
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1083
    iget-object p3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    iget-object v0, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1084
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 1086
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 1088
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_1

    .line 1090
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1091
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    :cond_2
    if-eqz p3, :cond_3

    .line 1093
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V

    .line 1094
    iget p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    const/4 p3, 0x5

    if-ne p1, p3, :cond_4

    .line 1095
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logRecentsAnimationLatency(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1098
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V
    .locals 9

    .line 1596
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    .line 1597
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v3

    .line 1601
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 1602
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1603
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v7

    if-ne v7, v1, :cond_0

    .line 1606
    iput-object v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_0
    if-ne v7, v3, :cond_1

    .line 1611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Visible activity with NOT_VISIBLE App Compat state for package UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eq v5, v3, :cond_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    if-eq v7, v8, :cond_3

    :cond_2
    move-object v2, v6

    move v5, v7

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eq v5, v3, :cond_5

    .line 1623
    invoke-virtual {p0, v2, v5, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    :cond_5
    return-void
.end method

.method public final getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 612
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .locals 1

    .line 1011
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_1

    .line 1013
    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 1014
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 1016
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object p0
.end method

.method public final getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    .line 1687
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 1689
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object p0
.end method

.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 0

    .line 1715
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object p0
.end method

.method public final isIncrementalLoading(Ljava/lang/String;I)Z
    .locals 1

    .line 1257
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    .line 1258
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1259
    invoke-virtual {p0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final synthetic lambda$logAppTransitionFinished$2(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V
    .locals 8

    .line 1136
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 1137
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZII)V

    .line 1140
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsInTaskActivityStart:Z

    if-eqz v1, :cond_1

    move/from16 v1, p9

    .line 1141
    invoke-virtual {p0, p5, v1, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->logInTaskActivityStart(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZI)V

    .line 1143
    :cond_1
    invoke-virtual {p5}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->isInterestedToEventLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    :cond_2
    return-void
.end method

.method public final synthetic lambda$notifyFullyDrawn$4(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    .line 1340
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyFullyDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 p0, 0x0

    .line 1341
    iput-object p0, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-void
.end method

.method public final synthetic lambda$notifyFullyDrawn$5(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0

    .line 1354
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public final synthetic lambda$notifyFullyDrawn$6(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 0

    .line 1367
    iget-boolean p3, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawnMetrics(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZZ)V

    return-void
.end method

.method public final synthetic lambda$notifyWindowsDrawn$0(JLcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;I)V
    .locals 7

    .line 864
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v4, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    const/4 v1, 0x4

    move-wide v2, p1

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->addStartInfoTimestamp(IJIII)V

    return-void
.end method

.method public final launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    .line 1777
    const-string v0, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1780
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled(J)V

    .line 1782
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .locals 10

    .line 1790
    const-string v0, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1793
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v4, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v9, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    .line 1797
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 9

    .line 1748
    const-string v0, "MetricsLogger:launchObserverNotifyActivityLaunched"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1751
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1752
    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v7

    .line 1755
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v4, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched(JLandroid/content/ComponentName;II)V

    .line 1759
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyIntentFailed(J)V
    .locals 3

    .line 1735
    const-string v0, "MetricsLogger:launchObserverNotifyIntentFailed"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1738
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed(J)V

    .line 1740
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V
    .locals 3

    .line 1720
    const-string v0, "MetricsLogger:launchObserverNotifyIntentStarted"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1724
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;J)V

    .line 1726
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .locals 5

    .line 1766
    const-string v0, "MetricsLogger:launchObserverNotifyReportFullyDrawn"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1768
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onReportFullyDrawn(JJ)V

    .line 1769
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .locals 7

    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1439
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x5e9

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 1441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v5, 0x5ea

    invoke-virtual {v4, v5, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 p3, 0x5eb

    .line 1442
    invoke-virtual {v4, p3, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1444
    invoke-static {p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5ec

    .line 1443
    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1446
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5ed

    .line 1445
    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1447
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5ee

    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1449
    invoke-static {p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5ef

    .line 1448
    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1451
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f0

    .line 1450
    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1452
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x5f7

    invoke-virtual {v4, p4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p1, :cond_0

    const/16 p3, 0x5f8

    .line 1454
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p3, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1455
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p3, 0x5f6

    .line 1458
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 1457
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    if-eqz p2, :cond_3

    const/16 p1, 0x5f9

    .line 1462
    iget-object p3, p2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1464
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result p1

    invoke-static {p1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5fa

    .line 1463
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1466
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5fb

    .line 1465
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1468
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5fc

    .line 1467
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1470
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5fd

    .line 1469
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1471
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5fe

    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1473
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x5ff

    .line 1472
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1475
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x600

    .line 1474
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1476
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide p3

    const-wide/16 v5, 0x0

    cmp-long p1, p3, v5

    if-eqz p1, :cond_1

    .line 1478
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide p3

    sub-long p3, v0, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p3, 0x601

    .line 1477
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1480
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide p3

    cmp-long p1, p3, v5

    if-eqz p1, :cond_2

    .line 1482
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide p3

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p3, 0x602

    .line 1481
    invoke-virtual {v4, p3, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1484
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide p3

    cmp-long p1, p3, v5

    if-eqz p1, :cond_3

    .line 1486
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x603

    .line 1485
    invoke-virtual {v4, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1489
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9

    .line 1539
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1540
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v1

    .line 1542
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1543
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger-IA;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1545
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    .line 1546
    iget v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    .line 1547
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1550
    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1551
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1552
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    .line 1554
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1555
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1557
    iget-object v8, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    :goto_1
    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    if-nez v6, :cond_6

    .line 1567
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_5

    if-ne p1, v4, :cond_7

    .line 1571
    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V

    return-void

    :cond_6
    if-eqz v4, :cond_8

    if-eq p1, v4, :cond_8

    if-eq v3, v5, :cond_8

    const/4 v0, 0x2

    if-eq v3, v0, :cond_8

    :cond_7
    :goto_2
    return-void

    .line 1583
    :cond_8
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    return-void
.end method

.method public final logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V
    .locals 0

    .line 1635
    iput p2, p3, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    .line 1636
    iput-object p1, p3, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1637
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1640
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger;->isAppCompateStateChangedToLetterboxed(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1641
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object p1

    .line 1642
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getLetterboxPositionForLogging()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 p3, 0x182

    .line 1644
    invoke-static {p3, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1647
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p3, :cond_1

    .line 1649
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1648
    const-string p1, "APP_COMPAT_STATE_CHANGED(%s, %s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 4

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 1280
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v3

    .line 1279
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/server/am/AmsExt;->onNotifyAppTTId(Ljava/lang/String;II)V

    .line 1281
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 1282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 1283
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7539

    .line 1281
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1285
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1286
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1287
    const-string v0, "Displayed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1291
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1293
    const-string v0, "ActivityTaskManager"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP_Launch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 2

    .line 1421
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1422
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1423
    const-string v0, "Fully drawn "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v0, p1

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1427
    const-string p1, "ActivityTaskManager"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logAppFullyDrawnMetrics(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1381
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x442

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1382
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v3, 0x367

    .line 1383
    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1384
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v3, v3

    .line 1385
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x443

    .line 1384
    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p2, :cond_0

    const/16 v3, 0xd

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    .line 1386
    :goto_0
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1389
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x144

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1390
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1392
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v2

    .line 1395
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1396
    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1398
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v0

    move/from16 v18, v0

    move/from16 v17, v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move/from16 v17, v0

    move/from16 v18, v17

    .line 1400
    :goto_1
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_2
    move v8, v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x2

    goto :goto_2

    .line 1406
    :goto_3
    iget-object v9, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v11, v0

    .line 1410
    invoke-virtual {v2}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v13

    .line 1411
    invoke-virtual {v2}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v14

    iget v15, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 1416
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v19

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 1417
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    const/16 v5, 0x32

    move/from16 v10, p3

    move/from16 v16, v0

    .line 1400
    invoke-static/range {v5 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJIIIIZZIJ)V

    return-void
.end method

.method public final logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 17

    .line 1493
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 1494
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    const-string v0, "logAppStartMemoryStateCapture processRecord null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1498
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 1499
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1500
    invoke-static {v4, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1502
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    const-string v0, "logAppStartMemoryStateCapture memoryStat null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1506
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v0, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    const/16 v3, 0x37

    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    return-void
.end method

.method public final logAppTransition(JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZII)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1158
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1159
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1160
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v3, 0x367

    .line 1161
    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1162
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    .line 1163
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v3, 0x388

    .line 1164
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1167
    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchToken(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v4, 0x387

    .line 1169
    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1171
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x389

    invoke-virtual {v2, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1172
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v5, p1

    .line 1173
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0x145

    .line 1172
    invoke-virtual {v2, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1174
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x13f

    invoke-virtual {v2, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1175
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 1176
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1177
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    .line 1178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x141

    .line 1177
    invoke-virtual {v2, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1180
    :cond_2
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    if-eq v5, v6, :cond_3

    .line 1181
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    .line 1182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3b1

    .line 1181
    invoke-virtual {v2, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1184
    :cond_3
    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x142

    invoke-virtual {v2, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1186
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v5

    .line 1188
    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x529

    .line 1187
    invoke-virtual {v2, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1190
    invoke-virtual {v5}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x528

    .line 1189
    invoke-virtual {v2, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1191
    iget-object v6, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1195
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 1196
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1198
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v0, v2, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v2

    move/from16 v25, v2

    move/from16 v24, v6

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    move/from16 v24, v2

    move/from16 v25, v24

    .line 1200
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->wasStoppedNeedsLogging(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v7, 0x2

    move/from16 v31, v7

    goto :goto_1

    :cond_5
    move/from16 v31, v6

    .line 1205
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->wasFirstLaunch(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Z

    move-result v33

    .line 1206
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v8, v6

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v11, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 1210
    invoke-static {v9, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v9

    move v11, v8

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    move-object v12, v5

    move v5, v7

    move v7, v9

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v13

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v15

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v16

    iget v14, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 1221
    invoke-virtual {v12}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 1222
    invoke-virtual {v12}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    iget v12, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    iget v11, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    move/from16 p2, v2

    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 1228
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v26

    move-object/from16 v18, v3

    iget-wide v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 1229
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v27

    const-wide/16 v34, 0x0

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->multiWindowLaunchType:I

    const/16 v4, 0x30

    move/from16 v22, v11

    move/from16 v21, v12

    const-wide/16 v11, 0x0

    const/16 v32, 0x0

    move/from16 v23, p5

    move/from16 v29, p6

    move/from16 v30, p7

    move/from16 v36, v2

    move/from16 v17, v14

    const/4 v2, 0x1

    move/from16 v14, p3

    .line 1206
    invoke-static/range {v4 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;IIIIZZZIJIIIZZJI)V

    .line 1238
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1239
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->setWasStoppedLogged(Z)V

    .line 1242
    :cond_6
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_7

    .line 1243
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 1247
    invoke-static {v2, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v7

    .line 1250
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    .line 1243
    const-string v3, "APP_START_OCCURRED(%s, %s, %s, %s, %s, wasStopped=%b, firstLaunch=%b)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public final logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 6

    .line 1102
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1103
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1104
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x478

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1105
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1106
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1107
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1108
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1109
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 1113
    invoke-static {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v5, 0x31

    .line 1109
    invoke-static {v5, p0, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;)V

    .line 1115
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_0

    .line 1116
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 1119
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    filled-new-array {p0, v2, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1116
    const-string p1, "APP_START_CANCELED(%s, %s, %s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V
    .locals 13

    .line 1125
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logging finished transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    new-instance v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 v0, 0x0

    invoke-direct {v8, p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger-IA;)V

    .line 1130
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 1131
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 1132
    iget v7, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 1133
    iget v10, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessState:I

    .line 1134
    iget v11, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessOomAdj:I

    .line 1135
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
    iget-object p0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 1148
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1151
    :cond_1
    iget-object p0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    return-void
.end method

.method public logInTaskActivityStart(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZI)V
    .locals 8

    .line 1265
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_0

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IN_TASK_ACTIVITY_STARTED "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionDelayMs="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 1271
    invoke-static {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v2

    iget v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 1275
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v0, 0x2ad

    move v3, p2

    move v4, p3

    .line 1269
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIJ)V

    return-void
.end method

.method public logLetterboxPositionChange(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 3

    .line 1657
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x1ce

    .line 1658
    invoke-static {v1, v0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1660
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    .line 1666
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 1673
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v2

    .line 1674
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    .line 1676
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_2

    .line 1678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1677
    const-string p1, "LETTERBOX_POSITION_CHANGED(%s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final logRecentsAnimationLatency(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 8

    .line 1302
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    add-int v7, v0, v1

    .line 1303
    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1304
    iget-wide v3, v5, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 1305
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1306
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;-><init>(JLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowManagerService;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public logWindowState()V
    .locals 8

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 570
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 574
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;-><init>()V

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    .line 576
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 574
    invoke-static {v4, p0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 578
    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 580
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    .line 584
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    .line 588
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    if-eqz v1, :cond_3

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown windowing mode for task="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " windowingMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x4

    .line 597
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_5
    const/4 v0, 0x2

    .line 594
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 591
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void
.end method

.method public final logWindowState(Ljava/lang/String;I)V
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 11

    if-eqz p4, :cond_13

    .line 681
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 687
    :cond_0
    iget-object v1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 698
    invoke-virtual {v1, p4}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 702
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v2

    .line 703
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCurrentAdj()I

    move-result v1

    :goto_3
    move v6, v1

    move v5, v2

    goto :goto_4

    :cond_5
    const/16 v2, 0x14

    const/16 v1, -0x2710

    goto :goto_3

    .line 709
    :goto_4
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    .line 710
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v10, "ActivityTaskManager"

    if-eqz v2, :cond_6

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyActivityLaunched resultCode="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " launchedActivity="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " processRunning="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " processSwitch="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " processState="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " processOomAdj="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " newActivityCreated="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " info="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_6
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 721
    const-string p2, "launched activity already visible"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v1, :cond_b

    .line 727
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 728
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p1, :cond_8

    const-string p1, "notifyActivityLaunched consecutive launch"

    invoke-static {v10, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_8
    iget-object p1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p2, p4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 731
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 734
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 737
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object p3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 741
    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_a

    .line 744
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 746
    :cond_a
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 750
    :cond_b
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    move-object v1, p1

    move v9, p2

    move v7, p3

    move-object v0, p4

    move-object/from16 v2, p5

    .line 751
    invoke-static/range {v0 .. v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZIIZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p2

    if-nez p2, :cond_c

    .line 755
    const-string p2, "unrecognized launch"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void

    .line 761
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->updateSplitPairLaunches(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 763
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p1, :cond_d

    const-string p1, "notifyActivityLaunched successful"

    invoke-static {v10, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 768
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 769
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_5

    .line 772
    :cond_e
    iget-object p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed(J)V

    .line 774
    :goto_5
    iget-object p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 775
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;-><init>()V

    const/16 p3, 0x3f8

    .line 776
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget v1, p4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 777
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 775
    invoke-static {p2, p3, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 779
    :cond_f
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    .line 785
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_6
    if-ltz p1, :cond_12

    .line 786
    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 787
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez p3, :cond_10

    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p3

    if-nez p3, :cond_11

    .line 788
    :cond_10
    iget-object p2, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_12
    return-void

    .line 683
    :cond_13
    :goto_7
    const-string p2, "nothing launched"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void
.end method

.method public notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 626
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object p0

    return-object p0
.end method

.method public notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz p2, :cond_0

    .line 643
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 647
    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne p3, v3, :cond_1

    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 654
    :cond_2
    :goto_1
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p2, :cond_3

    .line 655
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyActivityLaunching intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " existingInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v1, :cond_4

    .line 660
    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-direct {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;-><init>()V

    .line 662
    iget-wide v0, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V

    return-object p2

    .line 665
    :cond_4
    iget-object p0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    return-object p0
.end method

.method public notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 922
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    :cond_0
    return-void
.end method

.method public notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    const-string v1, "removed"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 934
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 935
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    if-nez p0, :cond_1

    goto :goto_0

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 942
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyBeforePackageUnstopped(Ljava/lang/String;)V
    .locals 1

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1040
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_0

    .line 1041
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateCurrentDelay()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 1042
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1045
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    const/4 v2, 0x7

    .line 1046
    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " restarted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$sfgetsTraceSeqId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyFullyDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 7

    .line 1332
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1336
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-nez v2, :cond_1

    .line 1339
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-object v1

    .line 1346
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v2

    .line 1347
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 1348
    iget v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    int-to-long v4, v4

    goto :goto_0

    .line 1349
    :cond_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    sub-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 1351
    :goto_0
    new-instance v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    long-to-int v4, v4

    invoke-direct {v6, v0, p1, v4, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger-IA;)V

    .line 1353
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->isInterestedToEventLog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1354
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v6}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1356
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v6

    .line 1365
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1367
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v6, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1374
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    return-object v6
.end method

.method public notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 877
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 878
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStartingWindowDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    .line 882
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateCurrentDelay()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyTransitionStarting(Landroid/util/ArrayMap;)V
    .locals 9

    .line 893
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTransitionStarting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v6

    .line 896
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    :goto_0
    if-ltz v0, :cond_5

    .line 897
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 898
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 900
    invoke-virtual {v2, v3, v8}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 901
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 902
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v3, :cond_3

    :cond_2
    move-object v2, p0

    goto :goto_2

    .line 906
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_4

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyTransitionStarting activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " info="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_4
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v2

    iput v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 911
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 912
    iput-boolean v8, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    .line 913
    iget-boolean v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 914
    const-string v5, "notifyTransitionStarting drawn"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    move-object p0, v2

    goto :goto_0

    :cond_5
    return-void
.end method

.method public notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 952
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 966
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-wide/16 v0, 0x0

    .line 969
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    return-void
.end method

.method public notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 8

    .line 844
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWindowsDrawn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v4

    move-wide v6, v4

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_4

    .line 848
    iget-boolean v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v2, :cond_1

    goto :goto_2

    .line 853
    :cond_1
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    const/4 v1, 0x1

    .line 854
    iput-boolean v1, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 855
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    invoke-direct {v1, v4, v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger-IA;)V

    .line 856
    iget-boolean v0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 857
    const-string v5, "notifyWindowsDrawn"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 861
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p0

    .line 863
    iget-object p1, v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    move-object v3, v2

    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda8;

    move-wide v4, v6

    move v7, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;JLcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;I)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v6

    .line 849
    :cond_4
    :goto_2
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyWindowsDrawn not pending drawn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method public final scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 3

    .line 976
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda7;-><init>()V

    .line 977
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 976
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 827
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    .line 832
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_0
    return-void
.end method

.method public final startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 2

    .line 1694
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startLaunchTrace "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    if-nez p0, :cond_1

    return-void

    .line 1698
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launching: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 1699
    iget-object p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    long-to-int p1, v0

    const-wide/16 v0, 0x40

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 3

    .line 1705
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopLaunchTrace "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    if-nez p0, :cond_1

    return-void

    .line 1709
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v0, v0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    long-to-int v0, v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 p0, 0x0

    .line 1711
    iput-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    return-void
.end method

.method public final updateSplitPairLaunches(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 8

    .line 798
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_4

    .line 806
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 810
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 813
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda10;

    invoke-direct {v6, v5}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/Task;)V

    .line 812
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->forOtherAdjacentTasks(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 815
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v6, :cond_2

    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found adjacent tasks t1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_2
    iput v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 821
    iput v3, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final wasFirstLaunch(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Z
    .locals 2

    .line 1825
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1826
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->wasFirstLaunch()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getWasStoppedLogged()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1830
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 1831
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method public final wasStoppedNeedsLogging(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Z
    .locals 2

    .line 1815
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 1816
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->wasForceStopped()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->wasFirstLaunch()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getWasStoppedLogged()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0

    .line 1820
    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method
