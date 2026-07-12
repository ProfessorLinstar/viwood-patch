.class public final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# instance fields
.field public mAdjSeq:I

.field public mAdjSource:Ljava/lang/Object;

.field public mAdjSourceProcState:I

.field public mAdjTarget:Ljava/lang/Object;

.field public mAdjType:Ljava/lang/String;

.field public mAdjTypeCode:I

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundRestricted:Z

.field public mCacheOomRankerRss:J

.field public mCacheOomRankerRssTimeMs:J

.field public mCacheOomRankerUseCount:I

.field public mCachedAdj:I

.field public mCachedAdjType:Ljava/lang/String;

.field public mCachedCompatChanges:[I

.field public mCachedForegroundActivities:Z

.field public mCachedHasActivities:I

.field public mCachedHasRecentTasks:I

.field public mCachedHasVisibleActivities:I

.field public mCachedIsHeavyWeight:I

.field public mCachedIsHomeProcess:I

.field public mCachedIsPreviousProcess:I

.field public mCachedIsReceivingBroadcast:I

.field public mCachedProcState:I

.field public mCachedSchedGroup:I

.field public mCompletedAdjSeq:I

.field public mContainsCycle:Z

.field public mCurAdj:I

.field public mCurBoundByNonBgRestrictedApp:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mCurRawAdj:I

.field public mCurRawProcState:I

.field public mCurSchedGroup:I

.field public mFgInteractionTime:J

.field public mFollowupUpdateUptimeMs:J

.field public mForcingToImportant:Ljava/lang/Object;

.field public mHasForegroundActivities:Z

.field public mHasOverlayUi:Z

.field public mHasShownUi:Z

.field public mHasStartedServices:Z

.field public mHasTopUi:Z

.field public mInteractionEventTime:J

.field public mLastCanKillOnBgRestrictedAndIdleTime:J

.field public mLastInvisibleTime:J

.field public mLastStateTime:J

.field public mLastTopTime:J

.field public mMaxAdj:I

.field public mNoKillOnBgRestrictedAndIdle:Z

.field public mNotCachedSinceIdle:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStateChanged:Z

.field public mReachable:Z

.field public mRepForegroundActivities:Z

.field public mRepProcState:I

.field public mReportedInteraction:Z

.field public mRunningRemoteAnimation:Z

.field public mSavedPriority:I

.field public mScheduleLikeTopApp:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mServiceB:Z

.field public mServiceHighRam:Z

.field public mSetAdj:I

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z

.field public mSetCapability:I

.field public mSetNoKillOnBgRestrictedAndIdle:Z

.field public mSetProcState:I

.field public mSetRawAdj:I

.field public mSetSchedGroup:I

.field public mSystemNoUi:Z

.field public mVerifiedAdj:I

.field public mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 60
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/16 v0, -0x2710

    .line 66
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 72
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 78
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 84
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 90
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 103
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 109
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 115
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v2, 0x14

    .line 121
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 127
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 133
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 139
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 285
    iput-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 297
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 303
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    const/4 v2, -0x1

    .line 414
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 416
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 418
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 420
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 422
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 424
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 426
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 432
    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    .line 441
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 443
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    .line 445
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 447
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 450
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 453
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    .line 457
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 458
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 459
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .locals 10

    .line 1109
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    .line 1114
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getActivityStateFlags()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 1117
    invoke-virtual {p1, v1}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->onVisibleActivity(I)V

    goto :goto_1

    :cond_1
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1119
    invoke-virtual {p1}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->onPausedActivity()V

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1121
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->onStoppingActivity(Z)V

    goto :goto_1

    .line 1123
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPerceptibleTaskStoppedTimeMillis()J

    move-result-wide v2

    .line 1124
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->onOtherActivity(J)V

    .line 1127
    :goto_1
    iget v2, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1128
    iget-boolean v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1129
    iget-boolean v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1130
    iget v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1131
    iget v3, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1132
    iget-object v0, p1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mAdjType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    const/16 v0, 0x64

    if-ne v2, v0, :cond_5

    const v0, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x63

    .line 1136
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1137
    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    :cond_5
    :goto_2
    return-void
.end method

.method public containsCycle()Z
    .locals 0

    .line 881
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return p0
.end method

.method public decAdjSeq()V
    .locals 1

    .line 851
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public decCompletedAdjSeq()V
    .locals 1

    .line 866
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 7

    .line 1334
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 1335
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1337
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 1338
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1341
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 1342
    const-string v0, " fgInteractionTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1343
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1345
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1347
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1348
    const-string v0, " lruSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1350
    const-string v0, " curRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1351
    const-string v0, " setRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string v0, " cur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1353
    const-string v0, " set="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1355
    const-string v0, " setSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1356
    const-string v0, " systemNoUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1357
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1358
    const-string v0, " mRepProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1359
    const-string v0, " setProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1360
    const-string v0, " lastStateTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1362
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1364
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1365
    const-string v0, " setCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1366
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1367
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1368
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v0, :cond_4

    .line 1369
    const-string v0, " backgroundRestricted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1370
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1371
    const-string v0, " boundByNonBgRestrictedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1374
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1375
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1376
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1377
    const-string v0, " pendingUiClean="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1379
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1380
    const-string v0, " empty="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_7

    .line 1382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1383
    const-string v0, " serviceHighRam="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1385
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_9

    .line 1386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1387
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1388
    const-string v0, " initialIdlePss="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :cond_8
    const-string v0, " initialIdleRss="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePssOrRss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1394
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_b

    .line 1395
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1396
    const-string v0, " hasOverlayUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1397
    const-string v0, " runningRemoteAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1399
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_d

    .line 1400
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    const-string v0, "foregroundActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1402
    const-string v0, " (rep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_e

    .line 1405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    const-string/jumbo v0, "whenUnimportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1407
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1408
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1410
    :cond_e
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_f

    .line 1411
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1412
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1413
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1415
    :cond_f
    iget-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, p3, v1

    if-lez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p3, v0

    if-gez p3, :cond_10

    .line 1416
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "lastInvisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 1418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p3, v0, p3

    .line 1419
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr p3, v2

    .line 1421
    invoke-static {p1, p3, p4, v0, v1}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1422
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1424
    :cond_10
    iget-boolean p3, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p3, :cond_11

    .line 1425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "hasStartedServices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_11
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 2

    .line 640
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 642
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 646
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/am/OomAdjuster;->onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V

    .line 647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_0
    return-void
.end method

.method public getAdjSeq()I
    .locals 0

    .line 856
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return p0
.end method

.method public getAdjSource()Ljava/lang/Object;
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjSourceProcState()I
    .locals 0

    .line 973
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return p0
.end method

.method public getAdjTarget()Ljava/lang/Object;
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjType()Ljava/lang/String;
    .locals 0

    .line 943
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdjTypeCode()I
    .locals 0

    .line 953
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return p0
.end method

.method public getCacheOomRankerRss()J
    .locals 2

    .line 1324
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    return-wide v0
.end method

.method public getCacheOomRankerRssTimeMs()J
    .locals 2

    .line 1329
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-wide v0
.end method

.method public getCacheOomRankerUseCount()I
    .locals 0

    .line 917
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return p0
.end method

.method public getCachedAdj()I
    .locals 0

    .line 1143
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return p0
.end method

.method public getCachedAdjType()Ljava/lang/String;
    .locals 0

    .line 1163
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedCompatChange(I)Z
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    .line 1099
    aput v1, v0, p1

    .line 1101
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    return v3
.end method

.method public getCachedForegroundActivities()Z
    .locals 0

    .line 1148
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return p0
.end method

.method public getCachedHasActivities()Z
    .locals 3

    .line 1014
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    .line 1016
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/16 v1, 0x10

    if-ne v0, v2, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1023
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedHasRecentTasks()Z
    .locals 2

    .line 1072
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    .line 1074
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1076
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedHasVisibleActivities()Z
    .locals 2

    .line 1037
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    .line 1039
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1041
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedIsHeavyWeight()Z
    .locals 2

    .line 1028
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    .line 1030
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1032
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getCachedIsHomeProcess()Z
    .locals 4

    .line 1046
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1049
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_0

    .line 1051
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1054
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne p0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public getCachedIsPreviousProcess()Z
    .locals 4

    .line 1059
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1062
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_0

    .line 1064
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1067
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne p0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public getCachedIsReceivingBroadcast([I)Z
    .locals 4

    .line 1081
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;[I)Z

    move-result v0

    .line 1083
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v1, 0x20

    if-ne v0, v3, :cond_0

    .line 1085
    aget p1, p1, v2

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1086
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    .line 1088
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1091
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne p0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public getCachedProcState()I
    .locals 0

    .line 1153
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return p0
.end method

.method public getCachedSchedGroup()I
    .locals 0

    .line 1158
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return p0
.end method

.method public getCompletedAdjSeq()I
    .locals 0

    .line 871
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return p0
.end method

.method public getCurAdj()I
    .locals 0

    .line 519
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return p0
.end method

.method public getCurCapability()I
    .locals 0

    .line 559
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .locals 0

    .line 601
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public getCurRawAdj()I
    .locals 0

    .line 498
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurRawProcState()I
    .locals 0

    .line 624
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .locals 0

    .line 580
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return p0
.end method

.method public getFgInteractionTime()J
    .locals 2

    .line 831
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getFollowupUpdateUptimeMs()J
    .locals 2

    .line 1178
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    return-wide v0
.end method

.method public getForcingToImportant()Ljava/lang/Object;
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object p0
.end method

.method public getInteractionEventTime()J
    .locals 2

    .line 820
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getLastCanKillOnBgRestrictedAndIdleTime()J
    .locals 2

    .line 1314
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-wide v0
.end method

.method public getLastInvisibleTime()J
    .locals 2

    .line 1273
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .locals 2

    .line 672
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastTopTime()J
    .locals 2

    .line 902
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method public getMaxAdj()I
    .locals 0

    .line 473
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return p0
.end method

.method public getReportedProcState()I
    .locals 0

    .line 635
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return p0
.end method

.method public getSavedPriority()I
    .locals 0

    .line 682
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return p0
.end method

.method public getSetAdj()I
    .locals 0

    .line 529
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return p0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .line 534
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    .line 535
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x320

    return p0

    :cond_0
    return v0
.end method

.method public getSetCapability()I
    .locals 0

    .line 569
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 662
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return p0
.end method

.method public getSetRawAdj()I
    .locals 0

    .line 508
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return p0
.end method

.method public getSetSchedGroup()I
    .locals 0

    .line 590
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return p0
.end method

.method public getVerifiedAdj()I
    .locals 0

    .line 549
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return p0
.end method

.method public getWhenUnimportant()J
    .locals 2

    .line 892
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasForegroundActivities()Z
    .locals 0

    .line 737
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .locals 0

    .line 779
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return p0
.end method

.method public hasProcStateChanged()Z
    .locals 0

    .line 799
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return p0
.end method

.method public hasRepForegroundActivities()Z
    .locals 0

    .line 747
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return p0
.end method

.method public hasReportedInteraction()Z
    .locals 0

    .line 809
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return p0
.end method

.method public hasShownUi()Z
    .locals 0

    .line 757
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return p0
.end method

.method public hasStartedServices()Z
    .locals 0

    .line 727
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return p0
.end method

.method public hasTopUi()Z
    .locals 0

    .line 768
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return p0
.end method

.method public init(J)V
    .locals 0

    .line 463
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public isBackgroundRestricted()Z
    .locals 0

    .line 1233
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return p0
.end method

.method public isCached()Z
    .locals 1

    .line 912
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCurBoundByNonBgRestrictedApp()Z
    .locals 0

    .line 1243
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 907
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNotCachedSinceIdle()Z
    .locals 0

    .line 712
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return p0
.end method

.method public isReachable()Z
    .locals 0

    .line 988
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return p0
.end method

.method public isRunningRemoteAnimation()Z
    .locals 0

    .line 784
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return p0
.end method

.method public isServiceB()Z
    .locals 0

    .line 692
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return p0
.end method

.method public isSetBoundByNonBgRestrictedApp()Z
    .locals 0

    .line 1253
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isSetCached()Z
    .locals 0

    .line 1293
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return p0
.end method

.method public isSetNoKillOnBgRestrictedAndIdle()Z
    .locals 0

    .line 1303
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public isSystemNoUi()Z
    .locals 0

    .line 927
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return p0
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1189
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    .line 1192
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1196
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :goto_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    .line 1200
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 1204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1206
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCleanupApplicationRecordLSP()V
    .locals 3

    const/4 v0, 0x0

    .line 1219
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1220
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    const/4 v1, 0x0

    .line 1221
    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    const/16 v1, -0x2710

    .line 1222
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1223
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1224
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    const/16 v1, 0x14

    .line 1225
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1226
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    .line 1227
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetCachedInfo()V
    .locals 2

    const/4 v0, -0x1

    .line 998
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 999
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1000
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1001
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1002
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1003
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1004
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    .line 1005
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/4 v0, 0x0

    .line 1006
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    .line 1007
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1008
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    const/4 v0, 0x0

    .line 1009
    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdjType:Ljava/lang/String;

    return-void
.end method

.method public setAdjSeq(I)V
    .locals 0

    .line 846
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public setAdjSource(Ljava/lang/Object;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-void
.end method

.method public setAdjSourceProcState(I)V
    .locals 0

    .line 968
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return-void
.end method

.method public setAdjTarget(Ljava/lang/Object;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-void
.end method

.method public setAdjType(Ljava/lang/String;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method public setAdjTypeCode(I)V
    .locals 0

    .line 948
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return-void
.end method

.method public setBackgroundRestricted(Z)V
    .locals 0

    .line 1238
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return-void
.end method

.method public setCacheOomRankerRss(JJ)V
    .locals 0

    .line 1318
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 1319
    iput-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-void
.end method

.method public setCompletedAdjSeq(I)V
    .locals 0

    .line 861
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public setContainsCycle(Z)V
    .locals 0

    .line 876
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return-void
.end method

.method public setCurAdj(I)V
    .locals 0

    .line 513
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 514
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentAdj(I)V

    return-void
.end method

.method public setCurBoundByNonBgRestrictedApp(Z)V
    .locals 0

    .line 1248
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setCurCapability(I)V
    .locals 0

    .line 554
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .locals 0

    .line 595
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 596
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    return-void
.end method

.method public setCurRawAdj(I)V
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(IZ)Z

    return-void
.end method

.method public setCurRawAdj(IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 488
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    if-le p0, p1, :cond_0

    return v0

    :cond_0
    return v1

    .line 490
    :cond_1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 491
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/16 p2, 0xc8

    if-gt p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    return v1
.end method

.method public setCurRawProcState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(IZ)Z

    return-void
.end method

.method public setCurRawProcState(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 616
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    .line 618
    :cond_1
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return v0
.end method

.method public setCurrentSchedulingGroup(I)V
    .locals 0

    .line 574
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 575
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setFgInteractionTime(J)V
    .locals 0

    .line 825
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 826
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    return-void
.end method

.method public setFollowupUpdateUptimeMs(J)V
    .locals 0

    .line 1183
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFollowupUpdateUptimeMs:J

    return-void
.end method

.method public setForcingToImportant(Ljava/lang/Object;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .locals 0

    .line 732
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .locals 0

    .line 773
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 774
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    return-void
.end method

.method public setHasShownUi(Z)V
    .locals 0

    .line 752
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return-void
.end method

.method public setHasStartedServices(Z)V
    .locals 1

    .line 717
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 719
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    .line 721
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method

.method public setHasTopUi(Z)V
    .locals 0

    .line 762
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 763
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    return-void
.end method

.method public setInteractionEventTime(J)V
    .locals 0

    .line 814
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 815
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    return-void
.end method

.method public setLastCanKillOnBgRestrictedAndIdleTime(J)V
    .locals 0

    .line 1308
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-void
.end method

.method public setLastStateTime(J)V
    .locals 0

    .line 667
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public setLastTopTime(J)V
    .locals 0

    .line 897
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-void
.end method

.method public setMaxAdj(I)V
    .locals 0

    .line 468
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return-void
.end method

.method public setNoKillOnBgRestrictedAndIdle(Z)V
    .locals 0

    .line 1278
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setNotCachedSinceIdle(Z)V
    .locals 0

    .line 707
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return-void
.end method

.method public setProcStateChanged(Z)V
    .locals 0

    .line 794
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return-void
.end method

.method public setReachable(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return-void
.end method

.method public setRepForegroundActivities(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return-void
.end method

.method public setReportedInteraction(Z)V
    .locals 0

    .line 804
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return-void
.end method

.method public setReportedProcState(I)V
    .locals 0

    .line 629
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 630
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return-void
.end method

.method public setSavedPriority(I)V
    .locals 0

    .line 677
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return-void
.end method

.method public setScheduleLikeTopApp(Z)V
    .locals 0

    .line 1173
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    return-void
.end method

.method public setServiceB(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return-void
.end method

.method public setServiceHighRam(Z)V
    .locals 0

    .line 697
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return-void
.end method

.method public setSetAdj(I)V
    .locals 0

    .line 524
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return-void
.end method

.method public setSetBoundByNonBgRestrictedApp(Z)V
    .locals 0

    .line 1258
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setSetCached(Z)V
    .locals 0

    .line 1288
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return-void
.end method

.method public setSetCapability(I)V
    .locals 0

    .line 564
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return-void
.end method

.method public setSetNoKillOnBgRestrictedAndIdle(Z)V
    .locals 0

    .line 1298
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .locals 1

    .line 653
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 657
    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return-void
.end method

.method public setSetRawAdj(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return-void
.end method

.method public setSetSchedGroup(I)V
    .locals 0

    .line 585
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return-void
.end method

.method public setSystemNoUi(Z)V
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return-void
.end method

.method public setVerifiedAdj(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return-void
.end method

.method public setWhenUnimportant(J)V
    .locals 0

    .line 886
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 887
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    return-void
.end method

.method public shouldNotKillOnBgRestrictedAndIdle()Z
    .locals 0

    .line 1283
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public shouldScheduleLikeTopApp()Z
    .locals 0

    .line 1168
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mScheduleLikeTopApp:Z

    return p0
.end method

.method public updateLastInvisibleTime(Z)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_0

    .line 1264
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-void

    .line 1265
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 1266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    :cond_1
    return-void
.end method
