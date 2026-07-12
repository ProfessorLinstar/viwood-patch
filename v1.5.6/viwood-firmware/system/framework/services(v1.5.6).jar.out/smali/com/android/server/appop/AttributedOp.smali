.class public final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "AttributedOp.java"


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mInProgressEvents:Landroid/util/ArrayMap;

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;

.field public mRejectEvents:Landroid/util/LongSparseArray;

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final persistentDeviceId:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 90
    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 13

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v10, p6

    move-wide v1, v8

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 111
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-wide v8, v1

    .line 114
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object p2, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v1, p2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v0, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v12, p7

    invoke-interface/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 137
    invoke-static/range {p9 .. p10}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 139
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v3, -0x1

    if-eq p5, v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual {v3, p5, v4, v5, v6}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v3, :cond_2

    .line 151
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v9, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    .line 154
    :cond_2
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/app/AppOpsManager$NoteOpEvent;

    move-wide/from16 p6, p1

    move-wide/from16 p8, p3

    move-object p5, v0

    move-object/from16 p10, v8

    invoke-direct/range {p5 .. p10}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object p1, p5

    invoke-virtual {p0, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 9

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 572
    :cond_1
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    .line 574
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 575
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 576
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2

    .line 578
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_3

    .line 579
    :cond_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public add(Lcom/android/server/appop/AttributedOp;)V
    .locals 5

    .line 596
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 600
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 605
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 607
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 608
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 613
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    return-void
.end method

.method public createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    .line 661
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 666
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 673
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 675
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v8, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 676
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    .line 677
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 678
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 675
    invoke-virtual {v0, v6, v7, v8}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 684
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p0

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 402
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    return-void
.end method

.method public final deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 651
    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    .line 652
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 654
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    new-instance v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v4, v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V
    .locals 4

    .line 266
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 273
    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 275
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 312
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-gez v3, :cond_1

    .line 314
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    return-void

    .line 318
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 320
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 323
    :cond_2
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz v5, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    if-nez v2, :cond_4

    .line 325
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 326
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 329
    :cond_4
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_5

    .line 330
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 333
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 334
    new-instance v3, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v11, v3

    goto :goto_1

    :cond_6
    move-object v11, v4

    .line 337
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 338
    new-instance v6, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 339
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v7

    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 341
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v5, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 344
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 345
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v13

    .line 346
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v14

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    invoke-virtual {v6}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    .line 347
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v19

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v20

    .line 344
    invoke-interface/range {v7 .. v20}, Lcom/android/server/appop/HistoricalRegistryInterface;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    if-nez v2, :cond_7

    .line 350
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 351
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez p2, :cond_7

    .line 355
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 356
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 357
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v8

    .line 358
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    const/4 v9, 0x0

    .line 356
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_7
    return-void
.end method

.method public final finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_0

    .line 369
    const-string p0, "No ops running or paused"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    .line 375
    const-string p0, "No op running or paused for the client"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    iget-object p2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 384
    iget v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-nez v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 387
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {p1, p2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 388
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_3
    :goto_0
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final finished(Landroid/os/IBinder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method public hasAnyTime()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz p0, :cond_2

    .line 639
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasInProgressEvent(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 626
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 627
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 630
    :goto_1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 631
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v0
.end method

.method public isPaused()Z
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClientDeath(Landroid/os/IBinder;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 478
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 484
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 486
    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 489
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 490
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidStateChanged(I)V
    .locals 26

    move-object/from16 v0, p0

    .line 499
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 505
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 507
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 508
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move-object v15, v1

    move v1, v2

    :goto_1
    if-ge v1, v13, :cond_6

    .line 510
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v2, :cond_4

    .line 512
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v3

    move/from16 v7, p1

    if-eq v3, v7, :cond_4

    .line 513
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v23

    .line 514
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v24

    .line 518
    :try_start_0
    iget v3, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    const/4 v4, 0x1

    .line 519
    iput v4, v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 520
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    .line 522
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v5, :cond_2

    move v6, v1

    .line 527
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v2

    :try_start_2
    invoke-virtual {v8}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v2

    move v9, v3

    .line 528
    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    move v10, v4

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v11, v5

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v8

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v8

    move/from16 v17, v9

    .line 530
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v19, v6

    move-object v6, v11

    const/4 v11, 0x1

    move/from16 v25, v13

    move/from16 v13, v19

    .line 527
    :try_start_4
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    move-object/from16 v0, p0

    goto :goto_4

    :catch_0
    :goto_2
    move-object/from16 v0, p0

    goto :goto_7

    :catch_1
    :goto_3
    move/from16 v25, v13

    move v13, v6

    goto :goto_2

    :catch_2
    move-object/from16 v16, v8

    goto :goto_3

    :catch_3
    move-object/from16 v16, v2

    goto :goto_3

    :cond_2
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v25, v13

    move v13, v1

    .line 533
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v2

    .line 535
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    .line 536
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 533
    :try_start_5
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    :goto_4
    if-eqz v12, :cond_3

    .line 539
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_5
    move-object v15, v1

    goto :goto_6

    :cond_3
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_5

    .line 540
    :goto_6
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v1, :cond_5

    .line 542
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v3, v17, -0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_4
    move-object/from16 v16, v2

    move/from16 v25, v13

    move v13, v1

    .line 549
    :catch_5
    :goto_7
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 550
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    .line 549
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_8

    :cond_4
    move/from16 v25, v13

    move v13, v1

    :cond_5
    :goto_8
    add-int/lit8 v1, v13, 0x1

    move/from16 v13, v25

    goto/16 :goto_1

    :cond_6
    :goto_9
    return-void
.end method

.method public pause()V
    .locals 14

    .line 411
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 419
    :goto_0
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 421
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 424
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v8, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 425
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v10

    .line 426
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v13

    const/4 v11, 0x0

    .line 424
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public rejected(II)V
    .locals 8

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    .line 167
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public rejected(JII)V
    .locals 17

    move-object/from16 v0, p0

    .line 181
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    .line 183
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_0

    .line 184
    new-instance v3, Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 188
    :cond_0
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_1

    .line 190
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-wide/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    return-void

    .line 192
    :cond_1
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v11, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-wide/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v1, v2, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 37

    move-object/from16 v0, p0

    .line 436
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 443
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 444
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 446
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 447
    :goto_1
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 448
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 449
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartElapsedTime(J)V

    .line 451
    invoke-virtual {v3, v11, v12}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartTime(J)V

    .line 452
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    move-object v6, v3

    move-object v3, v4

    iget v4, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move-object v10, v9

    .line 453
    invoke-virtual {v10}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v9

    move-object v13, v10

    .line 454
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v10

    move-object v14, v13

    invoke-virtual {v14}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v13

    move-object v15, v14

    .line 455
    invoke-virtual {v15}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v14

    move-object/from16 v16, v15

    const/4 v15, 0x1

    .line 452
    invoke-interface/range {v3 .. v15}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    if-eqz v1, :cond_3

    .line 457
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 458
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v22

    .line 459
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    const/16 v23, 0x1

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v21, v7

    .line 457
    invoke-virtual/range {v17 .. v25}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    .line 463
    :cond_3
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 464
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getVirtualDeviceId()I

    move-result v31

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v32

    .line 465
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v35

    .line 466
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v36

    const/16 v33, 0x0

    const/16 v34, 0x2

    move-object/from16 v26, v3

    move-object/from16 v29, v4

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v30, v7

    .line 463
    invoke-virtual/range {v26 .. v36}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 468
    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public started(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 215
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V

    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    if-nez p11, :cond_0

    .line 227
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p12, :cond_0

    .line 228
    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v13, 0x1

    move/from16 v12, p2

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IZII)V

    :cond_0
    const/4 v1, 0x1

    if-eqz p12, :cond_1

    .line 233
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_1

    .line 234
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    if-nez p12, :cond_2

    .line 235
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v2, :cond_2

    .line 236
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_2
    :goto_0
    if-eqz p12, :cond_3

    .line 239
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 241
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 242
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-nez v3, :cond_4

    .line 244
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    new-instance v10, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 246
    invoke-static {v10, v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v10

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v1

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v8

    move-object v9, v10

    move/from16 v8, p2

    move/from16 v10, p3

    .line 244
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-result-object v1

    move-wide v8, v2

    .line 249
    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v3, v1

    goto :goto_2

    :cond_4
    move/from16 v14, p7

    move/from16 v18, v1

    .line 251
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v0

    if-eq v14, v0, :cond_5

    move-object/from16 v0, p0

    .line 252
    invoke-virtual {v0, v14}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    .line 256
    :goto_2
    iget v1, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz p12, :cond_6

    .line 259
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistryInterface;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    move-object v3, v1

    iget v1, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v2

    move v2, v4

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->persistentDeviceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v12, 0x1

    move-object v6, v5

    move-object v5, v0

    move-object v0, v6

    move/from16 v7, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move v6, v14

    invoke-interface/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistryInterface;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIII)V

    :cond_6
    return-void
.end method
