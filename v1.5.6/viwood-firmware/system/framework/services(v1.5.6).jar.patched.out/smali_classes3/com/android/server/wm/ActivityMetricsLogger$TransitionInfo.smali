.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# instance fields
.field public mBindApplicationDelayMs:I

.field public mCurrentTransitionDelayMs:I

.field public mIsDrawn:Z

.field public final mIsInTaskActivityStart:Z

.field public mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchTraceName:Ljava/lang/String;

.field public final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field public mLoggedStartingWindowDrawn:Z

.field public mLoggedTransitionStarting:Z

.field public mMultiWindowLaunchType:I

.field public mPendingFullyDrawn:Ljava/lang/Runnable;

.field public final mProcessOomAdj:I

.field public mProcessRunning:Z

.field public final mProcessState:I

.field public final mProcessSwitch:Z

.field public mReason:I

.field public mRelaunched:Z

.field public mSourceEventDelayMs:I

.field public mSourceType:I

.field public mStartingWindowDelayMs:I

.field public mTransitionType:I

.field public mWindowsDrawnDelayMs:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZIIZ)V
    .locals 1

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 310
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 314
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 316
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    const/4 v0, 0x3

    .line 320
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 363
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 364
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 365
    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 366
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 367
    iput p7, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessState:I

    .line 368
    iput p8, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessOomAdj:I

    .line 369
    iput-boolean p9, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsInTaskActivityStart:Z

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 373
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 374
    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fputmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 377
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 379
    iget p3, p1, Landroid/app/ActivityOptions$SourceInfo;->type:I

    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    .line 380
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide p4, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide p4, p1, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    sub-long/2addr p2, p4

    long-to-int p1, p2

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    :cond_1
    return-void
.end method

.method public static create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZIIZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 11

    move/from16 v0, p9

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    if-nez p7, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    .line 354
    :goto_1
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZIIZ)V

    return-object v1
.end method


# virtual methods
.method public calculateCurrentDelay()I
    .locals 2

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result p0

    return p0
.end method

.method public calculateDelay(J)I
    .locals 3

    .line 453
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v1, v2, :cond_3

    .line 418
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 429
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 431
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInterestingToLoggerAndObserver()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    return p0
.end method

.method public setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 396
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 397
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x47b9a7f4ae973b5fL    # 3.4102776210445793E37

    const/16 v3, 0x110

    invoke-static {v7, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 407
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 408
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 409
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 411
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
