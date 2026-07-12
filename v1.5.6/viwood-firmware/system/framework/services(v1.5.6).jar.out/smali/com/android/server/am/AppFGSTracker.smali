.class public final Lcom/android/server/am/AppFGSTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppFGSTracker.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# instance fields
.field public final mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

.field public final mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

.field final mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

.field public final mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field public final mTmpPkgDurations:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$96CgEXxVLBdbNPixpdL0HZzibHo(Landroid/util/ArrayMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 442
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 441
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppFGSTracker;)Lcom/android/server/am/AppFGSTracker$MyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker;->checkLongRunningFgs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServiceNotificationUpdated(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppFGSTracker;->handleForegroundServicesChanged(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationPosted(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationPosted(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotificationRemoved(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppFGSTracker;->handleNotificationRemoved(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker;->onBgFgsLongRunningThresholdChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgFgsMonitorEnabled(Lcom/android/server/am/AppFGSTracker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->onBgFgsMonitorEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppFGSTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 81
    new-instance p1, Lcom/android/server/am/UidProcessMap;

    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 85
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 87
    new-instance p1, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    .line 90
    new-instance p1, Lcom/android/server/am/AppFGSTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$1;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 190
    new-instance p1, Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$MyHandler;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 191
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppFGSTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method

.method public static foregroundServiceTypeToIndex(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 513
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static indexToForegroundServiceType(I)I
    .locals 1

    .line 517
    sget v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0
.end method


# virtual methods
.method public final checkLongRunningFgs()V
    .locals 19

    move-object/from16 v0, p0

    .line 401
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 402
    iget-object v2, v0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 404
    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v5

    .line 405
    invoke-virtual {v1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    sub-long v7, v3, v7

    .line 406
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 408
    iget-object v9, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 409
    :try_start_0
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v10}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v10

    .line 410
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    :goto_0
    if-ltz v11, :cond_2

    .line 411
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 412
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v12

    :goto_1
    if-ltz v14, :cond_1

    .line 413
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 414
    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v15}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v16

    if-nez v16, :cond_0

    .line 415
    invoke-virtual {v0, v15, v3, v4}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v16

    cmp-long v18, v16, v5

    if-ltz v18, :cond_0

    .line 417
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x1

    .line 418
    invoke-virtual {v15, v12}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_2
    add-int/lit8 v14, v14, -0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    .line 432
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 437
    new-array v6, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_3

    .line 439
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 441
    :cond_3
    new-instance v7, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_4
    if-ltz v5, :cond_4

    .line 445
    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 446
    iget-object v8, v7, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget v7, v7, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    invoke-virtual {v1, v8, v9, v7}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgs(Ljava/lang/String;II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 448
    :cond_4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 451
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_1
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 453
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 432
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .locals 2

    .line 215
    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;
    .locals 0

    .line 220
    new-instance p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 73
    check-cast p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(Lcom/android/server/am/AppFGSTracker$PackageDurations;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    const-string v0, "APP FOREGROUND SERVICE TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    .line 601
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    const-string v0, "APPS WITH ACTIVE FOREGROUND SERVICES:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 604
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 606
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    const-string v2, "(none)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 611
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    .line 612
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 613
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 615
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    .line 616
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 617
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v11, 0x2f

    .line 619
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 620
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    const-string v11, " notification="

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0, v10, v5}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 625
    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTotalDurations(IJ)J
    .locals 1

    const/4 v0, 0x0

    .line 529
    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v0

    .line 528
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J
    .locals 6

    .line 522
    iget-object v1, p1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    const/4 p1, 0x0

    .line 523
    invoke-static {p1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v5

    move-object v0, p0

    move-wide v3, p2

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurations(Ljava/lang/String;IJI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTrackerInfoForStatsd(I)[B
    .locals 5

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_0
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v3, 0x10800000001L

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotifications(I)Z

    move-result p0

    .line 585
    invoke-virtual {v2, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p0, 0x10300000002L

    .line 587
    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 588
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 589
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public final handleForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 9

    .line 260
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez p4, :cond_1

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 265
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 267
    invoke-virtual {v0, p3, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_5

    .line 270
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-ltz p3, :cond_5

    .line 272
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p4

    .line 273
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 274
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    if-nez p3, :cond_2

    .line 275
    iget-object p3, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/am/UidProcessMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 279
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_4

    .line 280
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 282
    monitor-exit v1

    return-void

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x8

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move v3, p2

    .line 287
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 294
    :cond_5
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleForegroundServicesChanged(Ljava/lang/String;II)V
    .locals 6

    .line 457
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v0

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 467
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 468
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v4, :cond_1

    .line 470
    new-instance v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v4, p2, p1, v5, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;Lcom/android/server/am/AppFGSTracker;)V

    .line 471
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 473
    :cond_1
    :goto_0
    invoke-virtual {v4, p3, v1, v2}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setForegroundServiceType(IJ)V

    .line 474
    iput v0, v4, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 475
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleForegroundServicesChanged(Ljava/lang/String;IIZ)V
    .locals 5

    .line 225
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 230
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p2, p3}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result p2

    .line 236
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v3, p3, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v3, :cond_1

    .line 239
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppFGSTracker$PackageDurations;

    move-result-object v3

    .line 240
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p3, p1, v3}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 242
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v4

    .line 243
    invoke-virtual {v3, p4, v0, v1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(ZJ)V

    const/4 p4, 0x0

    if-eqz v4, :cond_2

    .line 244
    invoke-virtual {v3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    if-eqz v4, :cond_3

    .line 246
    invoke-virtual {v3, p4}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setIsLongRunning(Z)V

    .line 248
    :cond_3
    iput p2, v3, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 251
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 254
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->onLongRunningFgsGone(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void

    .line 251
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleNotificationPosted(Ljava/lang/String;II)V
    .locals 11

    .line 312
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_5

    .line 316
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_0

    goto :goto_2

    .line 319
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 325
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 326
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 331
    :goto_1
    invoke-virtual {v0, p3, v3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    if-nez v2, :cond_4

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x8

    const/4 v7, 0x1

    move-object v4, p0

    move-object v6, p1

    move v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 338
    :cond_4
    monitor-exit v1

    return-void

    .line 317
    :cond_5
    :goto_2
    monitor-exit v1

    return-void

    .line 338
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleNotificationRemoved(Ljava/lang/String;II)V
    .locals 9

    .line 342
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    .line 346
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 353
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 355
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_3

    .line 356
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    monitor-exit v1

    return-void

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 362
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x8

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 364
    monitor-exit v1

    return-void

    .line 347
    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    .line 364
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasForegroundServiceNotifications(I)Z
    .locals 5

    .line 562
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 564
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 565
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    .line 567
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 568
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 573
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasForegroundServiceNotifications(Ljava/lang/String;I)Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 558
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasForegroundServiceNotificationsLocked(Ljava/lang/String;I)Z
    .locals 2

    .line 299
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 300
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 304
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public hasForegroundServices(Ljava/lang/String;I)Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 536
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBgFgsLongRunningThresholdChanged()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 508
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBgFgsMonitorEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 481
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    .line 482
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :try_start_1
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, -0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catchall_0
    move-exception p0

    .line 482
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 492
    :cond_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 496
    :catch_0
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 498
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 499
    monitor-exit p1

    :catch_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 125
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 126
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 127
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 128
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 129
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p4, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 202
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    return-void
.end method

.method public final scheduleDurationCheckLocked(J)V
    .locals 8

    .line 370
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 373
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 374
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_2

    .line 375
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 376
    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->hasForegroundServices()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->isLongRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 380
    :cond_0
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 384
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_4

    .line 388
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getServiceStartForegroundTimeout()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 389
    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    invoke-virtual {p1}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningThreshold()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 394
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method
