.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;

.field public final mDispatchRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;

.field public mUidChangeDispatchCount:I

.field public final mUidObservers:Landroid/os/RemoteCallbackList;

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 69
    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 75
    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .locals 2

    .line 0
    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0xd

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_5

    or-int/lit8 p0, p0, 0x40

    :cond_5
    return p0
.end method


# virtual methods
.method public final addUidToObserver(Landroid/os/IBinder;I)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 115
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final addUidToObserverImpl(Landroid/os/IBinder;I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->addUid(I)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 135
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    const-string v2, "Unable to find UidObserver by token"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dispatchUidsChanged()V
    .locals 9

    .line 264
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 267
    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 270
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 271
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v3

    .line 272
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    .line 273
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 276
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_2

    .line 277
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** Delivering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid changes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 285
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 284
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v3

    goto :goto_2

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_8

    .line 292
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 293
    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 294
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    .line 296
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-nez v5, :cond_5

    .line 298
    new-instance v5, Lcom/android/server/am/UidRecord;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    .line 299
    iget-object v7, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 301
    :cond_5
    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_6

    .line 302
    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_4

    :cond_6
    and-int/lit8 v6, v7, 0x4

    if-eqz v6, :cond_7

    .line 304
    invoke-virtual {v5, v2}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 306
    :cond_7
    :goto_4
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 307
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 308
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 309
    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v4}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_6
    if-ge v0, v1, :cond_9

    .line 314
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    .line 315
    iput-boolean v2, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 316
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 318
    :cond_9
    monitor-exit v3

    return-void

    :goto_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 280
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    .line 323
    const-string v7, ": "

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v8, 0x0

    move/from16 v9, p3

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_1e

    move-object/from16 v11, p0

    .line 328
    :try_start_0
    iget-object v1, v11, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v12, v1, v10

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 330
    iget v15, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 332
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v1}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->isWatchingUid(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_a

    .line 336
    :cond_1
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_a

    :cond_2
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v15, v1, :cond_3

    .line 340
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    goto/16 :goto_a

    :cond_3
    const/16 v1, 0x40

    if-ne v15, v1, :cond_4

    .line 346
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v1

    if-nez v3, :cond_4

    goto/16 :goto_a

    :cond_4
    and-int/lit8 v3, v15, 0x2

    .line 352
    const-string v4, "UID active uid="

    if-eqz v3, :cond_6

    .line 353
    :try_start_1
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    .line 354
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_5

    .line 355
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID idle uid="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_5
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v0, v1, v3}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_1

    :cond_6
    and-int/lit8 v1, v15, 0x4

    if-eqz v1, :cond_8

    .line 360
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 361
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_7

    .line 362
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_7
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v1}, Landroid/app/IUidObserver;->onUidActive(I)V

    .line 367
    :cond_8
    :goto_1
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_a

    .line 369
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_9

    .line 370
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID cached uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_9
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_2

    :cond_a
    and-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_c

    .line 374
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_b

    .line 375
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_b
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v0, v1, v8}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_c
    :goto_2
    and-int/lit8 v1, v15, 0x1

    const/16 v3, 0x14

    if-eqz v1, :cond_10

    .line 381
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    .line 382
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_d

    .line 383
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID gone uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_d
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v0, v1, v4}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    .line 387
    :cond_e
    iget-object v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_f

    .line 388
    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_f
    move/from16 v18, v2

    move v8, v3

    goto/16 :goto_9

    .line 392
    :cond_10
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    .line 394
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    if-ltz v1, :cond_14

    .line 395
    iget-object v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v5, :cond_13

    .line 398
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    if-gt v1, v4, :cond_11

    move v1, v2

    goto :goto_3

    :cond_11
    move v1, v8

    .line 399
    :goto_3
    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v5

    if-gt v4, v5, :cond_12

    move v4, v2

    goto :goto_4

    :cond_12
    move v4, v8

    :goto_4
    if-eq v1, v4, :cond_15

    goto :goto_5

    .line 402
    :cond_13
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v1, v3, :cond_15

    :cond_14
    :goto_5
    move v1, v2

    goto :goto_6

    :cond_15
    move v1, v8

    .line 406
    :goto_6
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_17

    and-int/lit8 v4, v15, 0x20

    if-eqz v4, :cond_16

    move v4, v2

    goto :goto_7

    :cond_16
    move v4, v8

    :goto_7
    or-int/2addr v1, v4

    :cond_17
    if-eqz v1, :cond_1a

    .line 410
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_18

    .line 411
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID CHANGED uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_18
    iget-object v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_19

    .line 415
    iget v4, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    :cond_19
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    move v4, v2

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    move/from16 v17, v3

    move v5, v4

    iget-wide v3, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    move/from16 v18, v5

    iget v5, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v8, v17

    const/16 v16, 0x40

    invoke-interface/range {v0 .. v5}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_8

    :cond_1a
    move/from16 v18, v2

    move v8, v3

    const/16 v16, 0x40

    .line 421
    :goto_8
    invoke-static {v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1b

    and-int/lit8 v1, v15, 0x40

    if-eqz v1, :cond_1b

    .line 423
    iget v1, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v2, v12, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    invoke-interface {v0, v1, v2}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    .line 426
    :cond_1b
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v13

    long-to-int v1, v1

    .line 427
    iget v2, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v2, v1, :cond_1c

    .line 428
    iput v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_1c
    if-lt v1, v8, :cond_1d

    .line 431
    iget v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1d
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    :cond_1e
    :goto_b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    .line 449
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 450
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    .line 451
    invoke-static {v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    .line 453
    const-string v4, "  mUidObservers:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 456
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IUidObserver;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string p2, "  mUidChangeDispatchCount="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 464
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 465
    const-string p2, "  Slow UID dispatches:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge v2, v1, :cond_4

    .line 467
    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 468
    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 469
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUidObserver;

    invoke-interface {v3}, Landroid/app/IUidObserver;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    const-string v3, " / Max "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 475
    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 6

    .line 482
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 486
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    .line 487
    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->-$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    const-wide v4, 0x20b00000017L

    .line 488
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 2

    .line 496
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 2

    .line 503
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 505
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIIJIZ)I
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    const-string v2, "*** Enqueueing dispatch uid changed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 177
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object p1

    .line 182
    :goto_1
    iget-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    .line 184
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 186
    :cond_3
    iget p0, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, p0}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result p3

    .line 189
    :goto_2
    iput p2, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    .line 190
    iput p3, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    .line 191
    iput p4, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    .line 192
    iput p5, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    .line 193
    iput-wide p6, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    .line 194
    iput p8, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    .line 195
    iput-boolean p9, p1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    .line 197
    monitor-exit v0

    return p3

    .line 198
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 249
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving available item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    .line 253
    :cond_1
    new-instance p0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    .line 254
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocating new item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 441
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .locals 9

    .line 91
    new-instance v7, Landroid/os/Binder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidObserver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v8, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 95
    :try_start_0
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, p5, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    move v3, p2

    move v4, p3

    move-object v2, p4

    move v1, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 101
    monitor-exit v8

    return-object v7

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUidFromObserver(Landroid/os/IBinder;I)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 144
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final removeUidFromObserverImpl(Landroid/os/IBinder;I)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v0, p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->removeUid(I)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 164
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->TAG_UID_OBSERVERS:Ljava/lang/String;

    const-string v2, "Unable to find UidObserver by token"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    goto :goto_0

    .line 167
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public unregister(Landroid/app/IUidObserver;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
