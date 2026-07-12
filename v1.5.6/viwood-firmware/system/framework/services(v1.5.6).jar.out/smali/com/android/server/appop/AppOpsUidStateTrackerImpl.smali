.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppOpsUidStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mCapability:Landroid/util/SparseIntArray;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public mPendingCapability:Landroid/util/SparseIntArray;

.field public mPendingCommitTime:Landroid/util/SparseLongArray;

.field public mPendingUidStates:Landroid/util/SparseIntArray;

.field public mUidStateChangedCallbacks:Landroid/util/ArrayMap;

.field public mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic $r8$lambda$DDarXSJMLhcQjOvjQGC1suxs48A(Lcom/android/server/appop/AppOpsUidStateTrackerImpl;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;)V
    .locals 2

    move-object v0, p2

    .line 96
    new-instance p2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;

    invoke-direct {p2, v0, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 106
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    move-object v1, p5

    move-object p5, p3

    move-object p3, p4

    move-object p4, v1

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;-><init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 74
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 114
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 115
    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 116
    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 118
    new-instance p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-direct {p1, p2, p5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Ljava/lang/Thread;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    return-void
.end method


# virtual methods
.method public addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Callback is already registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final commitUidPendingState(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 344
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v7, 0x7fffffff

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 345
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 346
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 348
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 349
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 350
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    const/16 v6, 0x2bc

    .line 354
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 355
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x1

    const/16 v13, 0x1f4

    if-gt v11, v13, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v9

    :goto_0
    if-gt v6, v13, :cond_1

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v9

    :goto_1
    if-ne v14, v13, :cond_3

    if-ne v1, v4, :cond_3

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v13, v9

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v12

    :goto_3
    if-ne v11, v6, :cond_4

    if-ne v1, v4, :cond_4

    if-eq v3, v5, :cond_7

    :cond_4
    if-eqz v13, :cond_6

    .line 368
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    if-eq v3, v5, :cond_5

    move v3, v6

    move v6, v12

    goto :goto_4

    :cond_5
    move v3, v6

    move v6, v9

    :goto_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logCommitUidState(IIIZZ)V

    goto :goto_5

    :cond_6
    move v3, v6

    :goto_5
    move v1, v9

    .line 372
    :goto_6
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 373
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 374
    iget-object v11, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    .line 376
    new-instance v12, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 376
    invoke-static {v12, v6, v14, v15, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    if-ne v10, v7, :cond_8

    if-eq v8, v10, :cond_8

    .line 383
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 384
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 385
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    const/4 v9, 0x0

    .line 387
    :goto_7
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v9, v1, :cond_9

    .line 388
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;

    .line 389
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    .line 392
    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 392
    invoke-static {v4, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 397
    :cond_8
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 402
    :cond_9
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 403
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 404
    iget-object v1, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 405
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->dumpEvents(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpUidState(Ljava/io/PrintWriter;IJ)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 288
    const-string v2, "    state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    .line 291
    const-string v0, "    pendingState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 296
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 297
    const-string v3, "    capability="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eq v0, v2, :cond_1

    .line 301
    const-string v0, "    pendingCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 303
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 308
    const-string v2, "    appWidgetVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    if-eq v0, v1, :cond_2

    .line 311
    const-string v0, "    pendingAppWidgetVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 314
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_3

    .line 316
    const-string p0, "    pendingStateCommitTime="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    invoke-static {v2, v3, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public evalMode(III)I
    .locals 7

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    return p3

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidState(I)I

    move-result v3

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidCapability(I)I

    move-result v4

    .line 139
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalModeInternal(IIII)I

    move-result v6

    .line 141
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logEvalForegroundMode(IIIII)V

    return v6
.end method

.method public final evalModeInternal(IIII)I
    .locals 2

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidAppWidgetVisible(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 147
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getOpCapability(I)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    and-int/2addr p0, p4

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v1

    .line 160
    :cond_2
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result p0

    if-le p3, p0, :cond_3

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final getOpCapability(I)I
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x29

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3

    const/16 p0, 0x79

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9a

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x40

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    :cond_3
    return p0
.end method

.method public final getUidAppWidgetVisible(I)Z
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final getUidCapability(I)I
    .locals 1

    .line 409
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getUidState(I)I
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->getUidStateLocked(I)I

    move-result p0

    return p0
.end method

.method public final getUidStateLocked(I)I
    .locals 1

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 128
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v0, 0x2bc

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public isUidInForeground(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x4

    .line 188
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->evalMode(III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 4

    .line 210
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 213
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateUidPendingStateIfNeeded(I)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeededLocked(I)V

    return-void
.end method

.method public final updateUidPendingStateIfNeededLocked(I)V
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 335
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateUidProcState(III)V
    .locals 12

    .line 221
    invoke-static {p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->processStateToUidState(I)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v2, 0x7fffffff

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 224
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 225
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 226
    iget-object v6, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 227
    iget-object v7, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, p1, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_0

    if-ne v0, v1, :cond_1

    if-ne p3, v3, :cond_1

    :cond_0
    if-eqz v7, :cond_9

    if-ne v0, v5, :cond_1

    if-eq p3, v6, :cond_9

    .line 236
    :cond_1
    iget-object v5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->logUpdateUidProcState(III)V

    .line 237
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    not-int p2, p3

    and-int/2addr p2, v3

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_3
    if-ge v0, v1, :cond_4

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_4
    if-ne v0, v1, :cond_5

    if-nez v4, :cond_5

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_5
    const/16 p2, 0x1f4

    if-gt v0, p2, :cond_6

    if-nez v4, :cond_6

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_6
    if-nez v7, :cond_9

    const/16 p2, 0xc8

    if-gt v1, p2, :cond_7

    .line 267
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_0

    :cond_7
    const/16 p2, 0x190

    if-gt v1, p2, :cond_8

    .line 269
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_0

    .line 271
    :cond_8
    iget-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide p2, p2, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 274
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 276
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    new-instance v1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 276
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    invoke-interface {v0, p0, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method
