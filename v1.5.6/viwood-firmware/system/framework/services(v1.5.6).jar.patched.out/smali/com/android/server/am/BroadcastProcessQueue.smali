.class public Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "BroadcastProcessQueue.java"


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final constants:Lcom/android/server/am/BroadcastConstants;

.field public lastCpuDelayTime:J

.field public lastProcessState:I

.field public mActive:Lcom/android/server/am/BroadcastRecord;

.field public mActiveAssumedDeliveryCountSinceIdle:I

.field public mActiveCountConsecutiveNormal:I

.field public mActiveCountConsecutiveUrgent:I

.field public mActiveCountSinceIdle:I

.field public mActiveFirstLaunch:Z

.field public mActiveIndex:I

.field public mActiveReEnqueued:Z

.field public mActiveViaColdStart:Z

.field public mActiveWasStopped:Z

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCountAlarm:I

.field public mCountDeferred:I

.field public mCountEnqueued:I

.field public mCountForeground:I

.field public mCountForegroundDeferred:I

.field public mCountInstrumented:I

.field public mCountInteractive:I

.field public mCountManifest:I

.field public mCountOrdered:I

.field public mCountPrioritizeEarliestRequests:I

.field public mCountPrioritized:I

.field public mCountPrioritizedDeferred:I

.field public mCountResultTo:I

.field public mCurReceiversIncremented:Z

.field public mForcedDelayedDurationMs:J

.field public mLastDeferredStates:Z

.field public final mOutgoingBroadcasts:Ljava/util/ArrayList;

.field public final mPending:Ljava/util/ArrayDeque;

.field public final mPendingOffload:Ljava/util/ArrayDeque;

.field public final mPendingUrgent:Ljava/util/ArrayDeque;

.field public mProcessFreezable:Z

.field public mProcessInstrumented:Z

.field public mProcessPersistent:Z

.field public mProcessStartInitiatedTimestampMillis:J

.field public mRunnableAt:J

.field public mRunnableAtInvalidated:Z

.field public mRunnableAtReason:I

.field public mTimeoutScheduled:Z

.field public mUidForeground:Z

.field public final processName:Ljava/lang/String;

.field public processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field public runningOomAdjusted:Z

.field public runningTraceTrackName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$7LuENv9AvlpyJsICrtISXBsS3_E(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$7jvfHufVyE3JdVe4Li1zoeZOhgw(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uTkPoca9PFx_MiK361g77-Nbtxk(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 135
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 142
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    const-wide v0, 0x7fffffffffffffffL

    .line 220
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 269
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 270
    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    return-void
.end method

.method public static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 6

    if-nez p0, :cond_0

    return-object p1

    .line 1467
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_4

    .line 1471
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_3

    .line 1472
    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1473
    iget-object v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1475
    iput-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1477
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    .line 1478
    iput-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_1
    if-ne v2, p0, :cond_2

    return-object p1

    :cond_2
    return-object p0

    .line 1483
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 1485
    :cond_4
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1486
    iput-object p1, v3, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method

.method public static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 981
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1252
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1251
    :pswitch_1
    const-string p0, "TOP_PROCESS"

    return-object p0

    .line 1250
    :pswitch_2
    const-string p0, "CORE_UID"

    return-object p0

    .line 1249
    :pswitch_3
    const-string p0, "FOREGROUND"

    return-object p0

    .line 1248
    :pswitch_4
    const-string p0, "CONTAINS_MANIFEST"

    return-object p0

    .line 1247
    :pswitch_5
    const-string p0, "CONTAINS_INSTRUMENTED"

    return-object p0

    .line 1246
    :pswitch_6
    const-string p0, "CONTAINS_RESULT_TO"

    return-object p0

    .line 1245
    :pswitch_7
    const-string p0, "CONTAINS_INTERACTIVE"

    return-object p0

    .line 1244
    :pswitch_8
    const-string p0, "CONTAINS_PRIORITIZED"

    return-object p0

    .line 1243
    :pswitch_9
    const-string p0, "CONTAINS_ALARM"

    return-object p0

    .line 1242
    :pswitch_a
    const-string p0, "CONTAINS_ORDERED"

    return-object p0

    .line 1241
    :pswitch_b
    const-string p0, "CONTAINS_FOREGROUND"

    return-object p0

    .line 1240
    :pswitch_c
    const-string p0, "INFINITE_DEFER"

    return-object p0

    .line 1239
    :pswitch_d
    const-string p0, "FORCE_DELAYED"

    return-object p0

    .line 1238
    :pswitch_e
    const-string p0, "PERSISTENT"

    return-object p0

    .line 1237
    :pswitch_f
    const-string p0, "INSTRUMENTED"

    return-object p0

    .line 1236
    :pswitch_10
    const-string p0, "BLOCKED"

    return-object p0

    .line 1235
    :pswitch_11
    const-string p0, "MAX_PENDING"

    return-object p0

    .line 1234
    :pswitch_12
    const-string p0, "NORMAL"

    return-object p0

    .line 1233
    :pswitch_13
    const-string p0, "CACHED"

    return-object p0

    .line 1232
    :pswitch_14
    const-string p0, "EMPTY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 1501
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1503
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    .line 1504
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1506
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_2

    .line 1507
    iput-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_2
    const/4 v0, 0x0

    .line 1509
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1510
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method


# virtual methods
.method public addPrioritizeEarliestRequest()Z
    .locals 2

    .line 996
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    add-int/2addr v0, v1

    .line 997
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 998
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_0
    add-int/2addr v0, v1

    .line 1001
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 p0, 0x0

    return p0
.end method

.method public assertHealthLocked()V
    .locals 2

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "mRunnableAtInvalidated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    return-void
.end method

.method public final assertHealthLocked(Ljava/util/ArrayDeque;)V
    .locals 5

    .line 1435
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 1437
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1438
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1439
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1440
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1441
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1443
    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1444
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isDeferUntilActive()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1448
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1449
    :goto_1
    const-string/jumbo v0, "waitingTime"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 2

    .line 1402
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1403
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 1404
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_0
    return-void
.end method

.method public clearOutgoingBroadcasts()V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearProcessStartInitiatedTimestampMillis()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 719
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-void
.end method

.method public decrementCurAppReceivers()V
    .locals 1

    .line 682
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->decrementCurReceivers()V

    const/4 v0, 0x0

    .line 684
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    :cond_0
    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 2

    .line 1547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describeStateLocked(J)Ljava/lang/String;
    .locals 3

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1552
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    const-string/jumbo v1, "runnable at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    goto :goto_0

    .line 1556
    :cond_0
    const-string/jumbo p1, "not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :goto_0
    const-string p1, " because "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1636
    const-string v0, "e:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1637
    const-string v0, " d:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1638
    const-string v0, " f:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1639
    const-string v0, " fd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1640
    const-string v0, " o:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1641
    const-string v0, " a:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1642
    const-string v0, " p:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1643
    const-string v0, " pd:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1644
    const-string v0, " int:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1645
    const-string v0, " rt:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1646
    const-string v0, " ins:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1647
    const-string v0, " m:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1649
    const-string v0, " csi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1650
    const-string v0, " adcsi:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1651
    const-string v0, " ccu:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1652
    const-string v0, " ccn:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1653
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(JLandroid/util/IndentingPrintWriter;)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1565
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1568
    const-string v1, " "

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1572
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1573
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpProcessState(Landroid/util/IndentingPrintWriter;)V

    .line 1574
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V

    .line 1576
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1577
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1578
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/am/BroadcastProcessQueue;->dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1582
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v5, :cond_2

    .line 1583
    const-string v1, "ACTIVE"

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1585
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1586
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1587
    const-string v2, "URGENT"

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_1

    .line 1589
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1590
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    const/4 v2, 0x0

    .line 1591
    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_2

    .line 1593
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1594
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1595
    const-string v2, "OFFLOAD"

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v0, p0

    move-object v4, p3

    move-object v1, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_3

    .line 1597
    :cond_5
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1598
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final dumpOutgoingRecord(JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1659
    const-string p0, "OUTGOING "

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1660
    iget-wide v0, p4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 p0, 0x20

    .line 1661
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1662
    invoke-virtual {p4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpProcessState(Landroid/util/IndentingPrintWriter;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_0

    .line 1605
    const-string v1, "FG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 1608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    :cond_1
    const-string v1, "FRZ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_4

    .line 1612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    :cond_3
    const-string v1, "INSTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_6

    .line 1616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :cond_5
    const-string v1, "PER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1620
    const-string/jumbo v1, "state:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1622
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_8

    .line 1623
    const-string/jumbo v0, "runningOomAdjusted:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1625
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    if-eqz v0, :cond_9

    .line 1626
    const-string v0, "activeReEnqueued:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1628
    :cond_9
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 1629
    const-string/jumbo v0, "processStartInitiatedTimestamp:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    .line 1630
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    .line 1629
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1668
    iget-wide v0, p5, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 p0, 0x20

    .line 1669
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1670
    invoke-virtual {p5}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    const-string v0, "    "

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p6

    .line 1673
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1675
    const-string v0, " at "

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1676
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v0, v0, p6

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1679
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1680
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    :cond_1
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 1683
    instance-of p1, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_2

    .line 1684
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .line 1685
    const-string p1, " for registered "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1686
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1688
    :cond_2
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1689
    const-string p1, " for manifest "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    :goto_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1693
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p6

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3

    .line 1695
    const-string p1, "    blocked until "

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1697
    const-string p0, ", currently at "

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget p0, p5, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1699
    const-string p0, " of "

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_3
    return-void
.end method

.method public enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 324
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isReplacePending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_0

    .line 331
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    return-object v0

    .line 339
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 340
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 341
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 352
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_2

    .line 354
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-interface {p1, v1}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;->accept(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 487
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    .line 497
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 498
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 500
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 501
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 502
    invoke-interface {p2, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    invoke-interface {p3, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    if-eqz p4, :cond_1

    .line 505
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 506
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 507
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public forceDelayBroadcastDelivery(J)Z
    .locals 2

    .line 911
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 912
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 913
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActive()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public getActiveAssumedDeliveryCountSinceIdle()I
    .locals 0

    .line 649
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    return p0
.end method

.method public getActiveCountSinceIdle()I
    .locals 0

    .line 641
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    return p0
.end method

.method public getActiveFirstLaunch()Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    return p0
.end method

.method public getActiveIndex()I
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    return p0
.end method

.method public getActiveViaColdStart()Z
    .locals 0

    .line 665
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return p0
.end method

.method public getActiveWasStopped()Z
    .locals 0

    .line 669
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferredSchedulingGroupLocked()I
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 624
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/4 v2, 0x2

    if-le v0, v1, :cond_1

    return v2

    .line 628
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getProcessStartInitiatedTimestampMillis()J
    .locals 2

    .line 694
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-wide v0
.end method

.method public final getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .locals 1

    .line 274
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    return-object p0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isOffload()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    return-object p0

    .line 279
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public getRunnableAt()J
    .locals 2

    .line 1167
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1168
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    return-wide v0
.end method

.method public getRunnableAtReason()I
    .locals 1

    .line 1176
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1177
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return p0
.end method

.method public hasProcessStartInitiationTimedout()Z
    .locals 6

    .line 698
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 701
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public incrementCurAppReceivers()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->incrementCurReceivers()V

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCurReceiversIncremented:Z

    return-void
.end method

.method public invalidateRunnableAt()V
    .locals 1

    const/4 v0, 0x1

    .line 1181
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBeyondBarrierLocked(J)Z
    .locals 8

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1091
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1092
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1095
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-wide v6, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-eqz v0, :cond_3

    .line 1097
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v0, v6, p1

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v1, :cond_5

    .line 1099
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v1, v6, p1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v5

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v4

    :goto_5
    if-eqz v2, :cond_7

    .line 1101
    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p1, v6, p1

    if-lez p1, :cond_6

    goto :goto_6

    :cond_6
    move p1, v5

    goto :goto_7

    :cond_7
    :goto_6
    move p1, v4

    :goto_7
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 1105
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    return v4

    :cond_a
    return v5
.end method

.method public isDeferredUntilActive()Z
    .locals 1

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1150
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isDispatched(Landroid/content/Intent;)Z
    .locals 6

    .line 1113
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1115
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v3

    .line 1116
    iget-object v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v4

    .line 1117
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result p1

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez p1, :cond_3

    .line 1120
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public final isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .locals 1

    .line 1129
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1130
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    if-nez p1, :cond_1

    return v0

    .line 1135
    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastRecord;

    .line 1136
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isOutgoingEmpty()Z
    .locals 0

    .line 893
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mOutgoingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isPendingManifest()Z
    .locals 0

    .line 1050
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingOrdered()Z
    .locals 0

    .line 1058
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingResultTo()Z
    .locals 0

    .line 1066
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPendingUrgent()Z
    .locals 0

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isProcessStartInitiationTimeoutExpected()Z
    .locals 8

    .line 711
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 714
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_ABANDON_TIMEOUT_MILLIS:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isProcessWarm()Z
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunnable()Z
    .locals 4

    .line 1144
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1145
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public makeActiveIdle()V
    .locals 1

    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x0

    .line 753
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 754
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 755
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 756
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 757
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public makeActiveNextPending()V
    .locals 6

    .line 735
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removeNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 736
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 737
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 738
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    .line 739
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 740
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 741
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 742
    iput-boolean v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 743
    iput-boolean v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 744
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 745
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    .line 814
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 815
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_0

    .line 816
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 818
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_1

    .line 820
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 822
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 824
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_3

    .line 825
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 827
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_4

    .line 828
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 830
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_6

    .line 831
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_5

    .line 832
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 834
    :cond_5
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 836
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_7

    .line 837
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 839
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_8

    .line 840
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 842
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_9

    .line 843
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 845
    :cond_9
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_a

    .line 846
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 848
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public final onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 1

    .line 773
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 774
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_0

    .line 775
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_1

    .line 779
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 781
    :cond_1
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 783
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_3

    .line 784
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 786
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_4

    .line 787
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 789
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v0, :cond_6

    .line 790
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v0, :cond_5

    .line 791
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 793
    :cond_5
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 795
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_7

    .line 796
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 798
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_8

    .line 799
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 801
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_9

    .line 802
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 804
    :cond_9
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_a

    .line 805
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 807
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public peekNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 1036
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 1042
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queueForNextBroadcast()Ljava/util/ArrayDeque;
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .locals 4

    .line 954
    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 958
    :cond_0
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 968
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 969
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 970
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 971
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 972
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-gtz p0, :cond_2

    if-lt p3, p4, :cond_3

    .line 974
    :cond_2
    iget-wide p3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v2, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, p3, v2

    if-gtz p0, :cond_3

    .line 976
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result p0

    if-nez p0, :cond_3

    return-object p2

    :cond_3
    return-object p1
.end method

.method public reEnqueueActiveBroadcast()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    .line 374
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 375
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 376
    iput v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    .line 377
    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final removeNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .line 925
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 926
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_0

    .line 927
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    goto :goto_0

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 929
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 930
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    goto :goto_0

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_2

    .line 932
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 933
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 935
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public removePrioritizeEarliestRequest()Z
    .locals 2

    .line 1019
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 1024
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    :cond_1
    return v1
.end method

.method public final replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 7

    .line 409
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 410
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 411
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 413
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 414
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 415
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v5, v6, :cond_0

    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_0

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 424
    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    invoke-static {v0, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->allReceiversPending()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 430
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 431
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 433
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-object v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setActiveFirstLaunch(Z)V
    .locals 0

    .line 661
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveFirstLaunch:Z

    return-void
.end method

.method public setActiveViaColdStart(Z)V
    .locals 0

    .line 653
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return-void
.end method

.method public setActiveWasStopped(Z)V
    .locals 0

    .line 657
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return-void
.end method

.method public setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 1

    .line 531
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 535
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p2

    .line 540
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 541
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 542
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p2

    return p0

    .line 544
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p1

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 546
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method

.method public final setProcessFreezable(Z)Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eq v0, p1, :cond_0

    .line 575
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 576
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessInstrumented(Z)Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eq v0, p1, :cond_0

    .line 591
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessPersistent(Z)Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eq v0, p1, :cond_0

    .line 606
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 607
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setProcessStartInitiatedTimestampMillis(J)V
    .locals 0

    .line 689
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessStartInitiatedTimestampMillis:J

    return-void
.end method

.method public setTimeoutScheduled(Z)V
    .locals 0

    .line 1519
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    return-void
.end method

.method public final setUidForeground(Z)Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eq v0, p1, :cond_0

    .line 560
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeDeferred()Z
    .locals 2

    .line 1412
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1413
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public timeoutScheduled()Z
    .locals 0

    .line 1526
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mTimeoutScheduled:Z

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 1541
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 1543
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastProcessQueue{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 1534
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public traceActiveBegin()V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 868
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 867
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceActiveEnd()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 873
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 872
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessEnd()V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 863
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 862
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessRunningBegin()V
    .locals 4

    .line 857
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 857
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceProcessStartingBegin()V
    .locals 4

    .line 852
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 852
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 2

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v0

    .line 1387
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eq v1, v0, :cond_1

    .line 1388
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1390
    new-instance p2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    return-void

    .line 1394
    :cond_0
    new-instance p1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_1
    return-void
.end method

.method public updateRunnableAt()V
    .locals 11

    .line 1260
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1261
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_17

    .line 1265
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1266
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1267
    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 1269
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x4

    .line 1271
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void

    .line 1275
    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    add-long/2addr v6, v4

    .line 1276
    iput-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x7

    .line 1277
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1278
    :cond_2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/16 v7, 0xa

    if-le v1, v6, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1280
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1281
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    if-lez v1, :cond_4

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xe

    .line 1283
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1284
    :cond_4
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    if-lez v1, :cond_5

    .line 1285
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x10

    .line 1286
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1287
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_6

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x5

    .line 1289
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1290
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_7

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x12

    .line 1292
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1293
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x2

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v1

    if-ne v1, v6, :cond_8

    .line 1296
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x14

    .line 1297
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1298
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_9

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x6

    .line 1300
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1301
    :cond_9
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v1, :cond_a

    .line 1302
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xb

    .line 1303
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1304
    :cond_a
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    if-lez v1, :cond_b

    .line 1305
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xc

    .line 1306
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1307
    :cond_b
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    iget v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    const/16 v9, 0xd

    if-le v1, v8, :cond_c

    .line 1308
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1309
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1310
    :cond_c
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v1, :cond_d

    .line 1311
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x11

    .line 1312
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_0

    .line 1313
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const/16 v8, 0xf

    if-eqz v1, :cond_13

    .line 1314
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    const/4 v6, 0x1

    if-eqz v1, :cond_12

    .line 1316
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    iget v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v1, v10, :cond_e

    .line 1317
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x8

    .line 1318
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1323
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1324
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1325
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1326
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_10

    .line 1327
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1328
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1329
    :cond_10
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_11

    .line 1330
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1331
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1333
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1334
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1339
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1340
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1342
    :cond_13
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v0, :cond_14

    .line 1345
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1346
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1347
    :cond_14
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1348
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x13

    .line 1349
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_0

    .line 1351
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1352
    iput v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1357
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 1358
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    if-lt v0, v1, :cond_16

    .line 1359
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x3

    .line 1360
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    :cond_16
    :goto_1
    return-void

    .line 1372
    :cond_17
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1373
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void
.end method

.method public wasActiveBroadcastReEnqueued()Z
    .locals 0

    .line 766
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveReEnqueued:Z

    return p0
.end method
