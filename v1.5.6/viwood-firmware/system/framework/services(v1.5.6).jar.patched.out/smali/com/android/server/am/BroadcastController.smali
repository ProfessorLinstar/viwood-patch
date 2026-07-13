.class public Lcom/android/server/am/BroadcastController;
.super Ljava/lang/Object;
.source "BroadcastController.java"


# static fields
.field public static final TAG_BROADCAST:Ljava/lang/String;


# instance fields
.field public volatile mAreStickyCachesInvalidated:Z

.field public mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

.field public mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field public final mContext:Landroid/content/Context;

.field public mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field public mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field public final mReceiverResolver:Lcom/android/server/IntentResolver;

.field public final mRegisteredReceivers:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStickyBroadcasts:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    .line 199
    new-instance v0, Lcom/android/server/am/BroadcastController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastController$1;-><init>(Lcom/android/server/am/BroadcastController;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    .line 240
    iput-object p1, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    .line 241
    iput-object p2, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 242
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    return-void
.end method

.method public static getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 1

    .line 2401
    array-length v0, p1

    if-le p2, v0, :cond_0

    .line 2402
    const-string p1, "Missing argument"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p3

    .line 2405
    :cond_0
    aget-object p1, p1, p2

    .line 2407
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2409
    :catch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Non-numeric argument at index %d: %s\n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p3
.end method

.method public static traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I
    .locals 3

    const-wide/16 v0, 0x40

    .line 850
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastIntent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 854
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    const-string p0, "_"

    if-eqz p2, :cond_1

    const-string p2, "O"

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 857
    const-string p2, "S"

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 858
    const-string p0, "C"

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x75

    .line 860
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eq p4, p5, :cond_4

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    const-string/jumbo p0, "sender="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static traceBroadcastIntentEnd(I)V
    .locals 2

    const-wide/16 v0, 0x40

    .line 871
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    :cond_0
    return-void
.end method

.method public static traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V
    .locals 7

    const-wide/16 v0, 0x40

    .line 266
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v4, "null"

    if-nez p0, :cond_0

    move-object p0, v4

    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo p0, "p:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p2}, Landroid/content/IntentFilter;->safeCountActions()I

    move-result p0

    if-lez p0, :cond_2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p0, :cond_3

    .line 274
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p0, -0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2c

    .line 275
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x75

    .line 281
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    goto :goto_1

    .line 282
    :cond_4
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static traceRegistrationEnd()V
    .locals 3

    const-wide/16 v0, 0x40

    .line 291
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method

.method public static traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 631
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p0, :cond_0

    .line 634
    const-string/jumbo p0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_0
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 633
    const-string/jumbo v2, "unregisterReceiver: %d/%s"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 632
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static traceUnregistrationEnd()V
    .locals 3

    const-wide/16 v0, 0x40

    .line 642
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1889
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastStats;->addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1884
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BroadcastStats;->addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I
    .locals 30

    move-object/from16 v2, p0

    .line 779
    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    move-object/from16 v0, p6

    .line 780
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    const/4 v0, 0x0

    if-nez p13, :cond_0

    move-object v13, v0

    goto :goto_0

    .line 784
    :cond_0
    filled-new-array/range {p13 .. p13}, [Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 787
    :goto_0
    iget-object v3, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    const-string v4, "broadcast_p"

    move-object/from16 v5, p1

    move/from16 v7, p3

    invoke-virtual {v3, v5, v7, v4, v0}, Lcom/mediatek/server/am/AmsExt;->onReadyToStartComponent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 789
    const-string/jumbo v3, "skipped"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    const-string v0, "ActivityManager"

    const-string v2, "broadcastIntentInPackage, suppress to broadcastIntent!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v20, -0x1

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v22, p4

    move/from16 v23, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    move-object v4, v5

    move/from16 v21, v7

    move-object/from16 v5, p2

    move-object/from16 v7, p7

    .line 797
    :try_start_1
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    :try_start_2
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p16, :cond_2

    if-nez v0, :cond_2

    .line 809
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    :cond_2
    return v0

    :catchall_1
    move-exception v0

    .line 804
    :try_start_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    throw v0

    .line 806
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I
    .locals 30

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move/from16 v2, p16

    move/from16 v3, p17

    move/from16 v4, p19

    move/from16 v5, p20

    move/from16 v6, p22

    .line 825
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I

    move-result v29

    .line 828
    :try_start_0
    new-instance v28, Lcom/android/server/am/BroadcastSentEventRecord;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/BroadcastSentEventRecord;-><init>()V

    .line 833
    invoke-static/range {p15 .. p15}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    .line 830
    invoke-virtual/range {v2 .. v28}, Lcom/android/server/am/BroadcastController;->broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I

    move-result v0

    move-object/from16 v1, v28

    .line 837
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setResult(I)V

    .line 838
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastSentEventRecord;->logToStatsd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    .line 842
    throw v0
.end method

.method public final broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p11

    move/from16 v12, p16

    move/from16 v13, p17

    move/from16 v5, p18

    move/from16 v7, p19

    move/from16 v14, p20

    move/from16 v15, p21

    move/from16 v3, p22

    move-object/from16 v4, p26

    const/16 v16, 0xf

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x14

    const/16 v22, 0x2

    .line 889
    invoke-static {}, Lcom/android/server/am/BroadcastLoopers;->addMyLooper()V

    .line 891
    invoke-static {v14}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 892
    const-class v26, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static/range {v26 .. v26}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v6, v26

    check-cast v6, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v6, :cond_1

    .line 898
    invoke-interface {v6, v2}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canSendBroadcast(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be broadcast from an SDK sandbox uid. Given caller package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realCallingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when sending a broadcast from an SDK sandbox uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz p7, :cond_3

    if-nez p6, :cond_3

    .line 908
    invoke-interface/range {p7 .. p7}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    instance-of v9, v9, Landroid/os/BinderProxy;

    if-eqz v9, :cond_4

    .line 910
    const-string v9, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending broadcast "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with resultTo requires resultToApp"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/16 v9, 0x3e8

    goto :goto_1

    .line 915
    :cond_4
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "system"

    const/16 v9, 0x3e8

    invoke-virtual {v5, v6, v9}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    move-object/from16 v28, v5

    goto :goto_2

    :goto_1
    move-object/from16 v28, p6

    .line 919
    :goto_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 920
    invoke-virtual {v4, v5}, Lcom/android/server/am/BroadcastSentEventRecord;->setIntent(Landroid/content/Intent;)V

    .line 921
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setOriginalIntentFlags(I)V

    .line 922
    invoke-virtual {v4, v7}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUid(I)V

    .line 923
    invoke-virtual {v4, v14}, Lcom/android/server/am/BroadcastSentEventRecord;->setRealSenderUid(I)V

    .line 924
    invoke-virtual {v4, v13}, Lcom/android/server/am/BroadcastSentEventRecord;->setSticky(Z)V

    .line 925
    invoke-virtual {v4, v12}, Lcom/android/server/am/BroadcastSentEventRecord;->setOrdered(Z)V

    if-eqz p7, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 926
    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setResultRequested(Z)V

    .line 927
    invoke-virtual {v1, v0, v15}, Lcom/android/server/am/BroadcastController;->getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v2

    .line 928
    invoke-virtual {v4, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderProcState(I)V

    .line 929
    invoke-virtual {v1, v0, v15}, Lcom/android/server/am/BroadcastController;->getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUidState(I)V

    .line 932
    invoke-virtual {v1, v0, v8, v7}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v29

    const v30, -0x200001

    if-eqz v29, :cond_6

    .line 935
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int v6, v6, v30

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_6
    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    if-eqz p24, :cond_7

    .line 939
    const-string v6, "ActivityManager"

    const-string v9, "broadcastAllowList only applies when sending to individual users. Assuming restrictive whitelist."

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 941
    new-array v9, v6, [I

    move-object/from16 v24, v9

    :goto_4
    const/16 v9, 0x10

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    move-object/from16 v24, p24

    goto :goto_4

    .line 945
    :goto_5
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/high16 v32, 0x2000000

    move/from16 p4, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-nez p4, :cond_8

    .line 949
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v33

    and-int v33, v33, v32

    if-nez v33, :cond_8

    .line 950
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 953
    :cond_8
    sget-boolean v33, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v33, :cond_b

    .line 954
    sget-object v6, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_9

    .line 955
    const-string v34, "Broadcast sticky: "

    :goto_6
    move-object/from16 v0, v34

    goto :goto_7

    :cond_9
    const-string v34, "Broadcast: "

    goto :goto_6

    :goto_7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ordered="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " userid="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " options="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p15, :cond_a

    .line 957
    const-string/jumbo v0, "null"

    goto :goto_8

    :cond_a
    invoke-virtual/range {p15 .. p15}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p7, :cond_d

    if-nez v12, :cond_d

    .line 960
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    .line 961
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unauthorized unordered resultTo broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sent from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :cond_d
    :goto_9
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v7, 0x0

    const-string v8, "broadcast"

    const/4 v6, 0x1

    move-object/from16 v9, p2

    move/from16 v4, p19

    move/from16 v35, v2

    move-object/from16 p4, v5

    const/16 v13, 0x3e8

    const/16 v33, 0x10

    move-object v2, v0

    move v5, v3

    const/4 v0, -0x1

    move/from16 v3, p18

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v9, v3

    move v7, v4

    if-eq v5, v0, :cond_e

    .line 973
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, v5}, Lcom/android/server/am/UserController;->isUserOrItsParentRunning(I)Z

    move-result v2

    if-nez v2, :cond_e

    if-ne v7, v13, :cond_f

    .line 976
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int v2, v2, v32

    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v8, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p15

    move-object/from16 v2, v28

    goto :goto_b

    :cond_f
    :goto_a
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 977
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 978
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping broadcast of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and its parent (if any) are stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move-object/from16 v2, v28

    .line 980
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    const/4 v0, -0x2

    return v0

    .line 986
    :goto_b
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v31, 0x0

    if-eqz v6, :cond_19

    .line 988
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v36

    cmp-long v21, v36, v31

    if-lez v21, :cond_11

    const/16 p4, -0x60

    .line 992
    const-string v3, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    move-object/from16 p6, v2

    const/4 v2, 0x1

    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 995
    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    .line 998
    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_c

    .line 1001
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 p6, v2

    const/16 p4, -0x60

    .line 1012
    :cond_12
    :goto_c
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->isDontSendToRestrictedApps()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1013
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1014
    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/ActivityManagerService;->isBackgroundRestrictedNoCheck(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1015
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has background restrictions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1019
    :cond_13
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->allowsBackgroundActivityStarts()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1023
    const-string v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const/4 v3, 0x1

    invoke-static {v2, v15, v14, v0, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v2

    if-nez v2, :cond_14

    .line 1036
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_d

    .line 1027
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move-object/from16 v2, p23

    .line 1040
    :goto_d
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v14

    cmp-long v3, v14, v31

    if-lez v3, :cond_16

    .line 1041
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v14, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v15, "recordResponseEventWhileInBackground"

    invoke-virtual {v3, v14, v9, v7, v15}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1046
    :cond_16
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1047
    invoke-virtual {v1, v7}, Lcom/android/server/am/BroadcastController;->isShellOrRoot(I)Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz p1, :cond_17

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActiveInstrumentation()Z

    move-result v3

    if-nez v3, :cond_18

    :cond_17
    const/4 v3, 0x0

    .line 1049
    invoke-virtual {v6, v3}, Landroid/app/BroadcastOptions;->setDebugLogEnabled(Z)Landroid/app/BroadcastOptions;

    :cond_18
    move-object v14, v2

    goto :goto_e

    :cond_19
    move-object/from16 p6, v2

    const/16 p4, -0x60

    move-object/from16 v14, p23

    .line 1058
    :goto_e
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v13}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v15
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1067
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v3, 0x403

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x42c

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x431

    if-eq v2, v3, :cond_1b

    packed-switch v2, :pswitch_data_0

    if-eqz p1, :cond_1a

    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    :goto_f
    move/from16 v21, v2

    goto :goto_10

    :cond_1b
    :pswitch_0
    const/16 v21, 0x1

    :goto_10
    if-nez v21, :cond_21

    if-nez v15, :cond_20

    .line 1092
    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 1093
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_1c
    if-eqz v8, :cond_1f

    .line 1103
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1106
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_11

    .line 1108
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1117
    :cond_1e
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11

    .line 1099
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from unknown caller."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1086
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_11
    const/16 v23, 0x0

    if-eqz v13, :cond_57

    .line 1125
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastController;->getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1126
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_22

    .line 1127
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcast action "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " forcing include-background"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/high16 v0, 0x1000000

    .line 1129
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1133
    :cond_23
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1134
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastController;->getWearRemoteIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_24

    .line 1136
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    goto :goto_12

    :cond_24
    move/from16 v0, v20

    .line 1138
    :goto_12
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_25

    return p4

    .line 1144
    :cond_25
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_13
    const/4 v0, -0x1

    goto/16 :goto_14

    :sswitch_0
    const-string v0, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_13

    :cond_26
    move/from16 v0, v20

    goto/16 :goto_14

    :sswitch_1
    const-string v0, "android.net.action.CLEAR_DNS_CACHE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_13

    :cond_27
    const/16 v0, 0x13

    goto/16 :goto_14

    :sswitch_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_13

    :cond_28
    const/16 v0, 0x12

    goto/16 :goto_14

    :sswitch_3
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_13

    :cond_29
    const/16 v0, 0x11

    goto/16 :goto_14

    :sswitch_4
    const-string v0, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_13

    :cond_2a
    move/from16 v0, v33

    goto/16 :goto_14

    :sswitch_5
    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_13

    :cond_2b
    move/from16 v0, v16

    goto/16 :goto_14

    :sswitch_6
    const-string v0, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_13

    :cond_2c
    const/16 v0, 0xe

    goto/16 :goto_14

    :sswitch_7
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_13

    :cond_2d
    const/16 v0, 0xd

    goto/16 :goto_14

    :sswitch_8
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_13

    :cond_2e
    const/16 v0, 0xc

    goto/16 :goto_14

    :sswitch_9
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_13

    :cond_2f
    const/16 v0, 0xb

    goto/16 :goto_14

    :sswitch_a
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_13

    :cond_30
    const/16 v0, 0xa

    goto/16 :goto_14

    :sswitch_b
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_13

    :cond_31
    const/16 v0, 0x9

    goto/16 :goto_14

    :sswitch_c
    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_13

    :cond_32
    const/16 v0, 0x8

    goto/16 :goto_14

    :sswitch_d
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_13

    :cond_33
    const/4 v0, 0x7

    goto :goto_14

    :sswitch_e
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_13

    :cond_34
    move/from16 v0, v17

    goto :goto_14

    :sswitch_f
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_13

    :cond_35
    move/from16 v0, v18

    goto :goto_14

    :sswitch_10
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_13

    :cond_36
    move/from16 v0, v19

    goto :goto_14

    :sswitch_11
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_13

    :cond_37
    const/4 v0, 0x3

    goto :goto_14

    :sswitch_12
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_13

    :cond_38
    move/from16 v0, v22

    goto :goto_14

    :sswitch_13
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_13

    :cond_39
    const/4 v0, 0x1

    goto :goto_14

    :sswitch_14
    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_13

    :cond_3a
    const/4 v0, 0x0

    :goto_14
    packed-switch v0, :pswitch_data_1

    :goto_15
    goto/16 :goto_18

    .line 1401
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_15

    .line 1385
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_15

    .line 1336
    :pswitch_3
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1338
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1339
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    .line 1340
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1341
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageAdded(Ljava/lang/String;Z)V

    .line 1344
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 p4, v4

    const-wide/16 v3, 0x400

    const/4 v6, 0x0

    .line 1345
    :try_start_2
    invoke-interface {v2, v0, v3, v4, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1346
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_3b

    .line 1347
    iget-wide v1, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    goto :goto_16

    :cond_3b
    move-wide/from16 v1, v31

    .line 1346
    :goto_16
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->notePackageInstalled(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_17

    :catch_0
    move-object/from16 p4, v4

    :catch_1
    :cond_3c
    :goto_17
    move-object/from16 v1, p0

    move-object/from16 v4, p4

    goto :goto_15

    :cond_3d
    const/high16 v0, 0x40000000    # 2.0f

    move-object/from16 v1, p0

    goto :goto_19

    :pswitch_4
    move-object/from16 p4, v4

    .line 1146
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1148
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1149
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1150
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v4, p4

    :cond_3e
    :goto_18
    const/high16 v0, 0x40000000    # 2.0f

    :goto_19
    const/4 v6, 0x0

    goto/16 :goto_28

    :pswitch_5
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_28

    :pswitch_6
    move-object/from16 p4, v4

    .line 1406
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no longer supported. It will not be delivered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    .line 1408
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :pswitch_7
    move-object/from16 v2, p6

    const/4 v6, 0x0

    .line 1372
    const-string v0, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    const/4 v3, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_3f

    .line 1377
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v16, v2

    const/16 v2, 0x29

    .line 1378
    invoke-virtual {v3, v2, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1380
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a

    :cond_3f
    move-object/from16 v16, v2

    .line 1382
    :goto_1a
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->noteCurrentTimeChanged()V

    :cond_40
    :goto_1b
    move-object/from16 p6, v16

    goto/16 :goto_15

    :pswitch_8
    move-object/from16 v16, p6

    .line 1365
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_15

    :pswitch_9
    move-object/from16 v16, p6

    .line 1354
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1356
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1357
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageDataCleared(Ljava/lang/String;I)V

    goto :goto_1b

    :pswitch_a
    move-object/from16 v16, p6

    .line 1388
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_15

    :pswitch_b
    move-object/from16 v16, p6

    .line 1415
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v9, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move-object/from16 v2, v16

    .line 1417
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    :goto_1c
    const/16 v25, 0x0

    return v25

    :cond_41
    const/high16 v0, 0x40000000    # 2.0f

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 p6, v16

    goto/16 :goto_19

    :pswitch_c
    move-object/from16 v2, p6

    .line 1310
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 1312
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1315
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v6, 0x400

    .line 1316
    invoke-interface {v3, v1, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1d

    :catch_2
    move-object/from16 v3, v23

    :goto_1d
    if-nez v3, :cond_42

    .line 1320
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping ACTION_PACKAGE_REPLACED for non-existent pkg: ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    .line 1322
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    goto :goto_1c

    :cond_42
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object v0, v1

    move-object/from16 v1, p0

    .line 1326
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->updateAssociationForApp(Landroid/content/pm/ApplicationInfo;)V

    .line 1327
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V

    .line 1328
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1329
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    :cond_43
    :goto_1e
    move-object/from16 p6, v2

    goto/16 :goto_15

    :cond_44
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    goto :goto_1e

    :pswitch_d
    move-object/from16 v2, p6

    const/4 v3, 0x3

    .line 1163
    const-string v0, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-static {v0, v9, v7, v3, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_54

    .line 1175
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_1f
    const/16 v17, -0x1

    goto :goto_20

    :sswitch_15
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_1f

    :sswitch_16
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_1f

    :cond_45
    move/from16 v17, v18

    goto :goto_20

    :sswitch_17
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_1f

    :cond_46
    move/from16 v17, v19

    goto :goto_20

    :sswitch_18
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_1f

    :cond_47
    const/16 v17, 0x3

    goto :goto_20

    :sswitch_19
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_1f

    :cond_48
    move/from16 v17, v22

    goto :goto_20

    :sswitch_1a
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_1f

    :cond_49
    const/16 v17, 0x1

    goto :goto_20

    :sswitch_1b
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_1f

    :cond_4a
    const/16 v17, 0x0

    :cond_4b
    :goto_20
    packed-switch v17, :pswitch_data_2

    goto :goto_1e

    .line 1211
    :pswitch_e
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1213
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_43

    .line 1214
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1215
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    .line 1216
    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 p4, v0

    .line 1217
    const-string v0, "android.intent.extra.DONT_KILL_APP"

    .line 1218
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p4, :cond_4c

    if-nez v3, :cond_4c

    const/16 v43, 0x1

    goto :goto_21

    :cond_4c
    const/16 v43, 0x0

    :goto_21
    if-eqz p4, :cond_4f

    if-nez v0, :cond_4d

    .line 1223
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.intent.extra.UID"

    move/from16 p4, v0

    const/4 v0, -0x1

    .line 1224
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1223
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v38

    const/16 v44, 0x0

    const-string/jumbo v46, "pkg removed"

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    move-object/from16 v36, v3

    move/from16 v45, v5

    invoke-virtual/range {v36 .. v46}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    move-object/from16 v0, v37

    .line 1227
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 1228
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->onPackageProcessKilledForUninstall(Ljava/lang/String;)V

    move-object/from16 p6, v2

    goto :goto_22

    :cond_4d
    move/from16 p4, v0

    move-object/from16 v0, v37

    .line 1232
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.intent.extra.UID"

    move-object/from16 p6, v2

    const/4 v2, -0x1

    .line 1233
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1232
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopAppZygoteLocked(Ljava/lang/String;II)V

    :goto_22
    if-nez p4, :cond_4e

    const/4 v2, 0x0

    goto :goto_23

    :cond_4e
    move/from16 v2, v22

    .line 1239
    :goto_23
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    if-eqz v43, :cond_3e

    .line 1243
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v0, v5, v6, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 1246
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(Ljava/lang/String;I)V

    .line 1249
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 1250
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 1251
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BatteryStatsService;->notePackageUninstalled(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_4f
    move/from16 p4, v0

    move-object/from16 p6, v2

    move-object/from16 v0, v37

    if-nez p4, :cond_51

    if-eqz v3, :cond_50

    move/from16 v41, v33

    goto :goto_24

    :cond_50
    move/from16 v41, v16

    .line 1266
    :goto_24
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1268
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 1269
    :try_start_4
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1270
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v45, v5

    const-string v5, "change "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v42, 0x0

    const/16 v40, -0x2710

    move-object/from16 v37, v0

    move-object/from16 v36, v6

    move/from16 v39, v45

    .line 1269
    invoke-virtual/range {v36 .. v43}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z

    move/from16 v5, v39

    .line 1275
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_25

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1277
    :cond_51
    :goto_25
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.intent.extra.changed_component_name_list"

    .line 1278
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1277
    invoke-virtual {v2, v0, v5, v3}, Lcom/android/server/am/ActivityManagerService;->cleanupDisabledPackageComponentsLocked(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1280
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/am/ActiveServices;->schedulePendingServiceStartLocked(Ljava/lang/String;I)V

    goto/16 :goto_15

    :pswitch_f
    move-object/from16 p6, v2

    .line 1287
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1288
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1289
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1291
    const-string v3, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1294
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, v2, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V

    .line 1297
    const-string v3, "android.intent.extra.quarantined"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_3e

    if-eqz v3, :cond_3e

    if-eqz v2, :cond_3e

    const/4 v6, 0x0

    .line 1300
    :goto_26
    array-length v0, v2

    if-ge v6, v0, :cond_3e

    .line 1301
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    aget-object v3, v2, v6

    move-object/from16 p4, v2

    const-string/jumbo v2, "quarantined"

    move/from16 v16, v6

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v0, v16, 0x1

    move-object/from16 v2, p4

    move v6, v0

    goto :goto_26

    :pswitch_10
    move-object/from16 p6, v2

    .line 1207
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    goto/16 :goto_15

    :pswitch_11
    move-object/from16 p6, v2

    .line 1192
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1194
    array-length v2, v0

    if-lez v2, :cond_3e

    const/4 v6, 0x0

    .line 1195
    :goto_27
    array-length v2, v0

    if-ge v6, v2, :cond_52

    .line 1196
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    aget-object v37, v0, v6

    const/16 v44, 0x0

    const-string/jumbo v46, "storage unmount"

    const/16 v38, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v2

    move/from16 v45, v5

    invoke-virtual/range {v36 .. v46}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    const/4 v2, 0x1

    add-int/2addr v6, v2

    goto :goto_27

    :cond_52
    const/4 v2, 0x1

    .line 1199
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    .line 1201
    invoke-virtual {v1, v2, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    goto/16 :goto_15

    :pswitch_12
    move-object/from16 p6, v2

    .line 1177
    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v0

    if-ltz v0, :cond_3e

    .line 1179
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BatteryStatsService;->removeUid(I)V

    .line 1180
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1181
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 1182
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    invoke-virtual {v2, v0, v3}, Lcom/android/server/appop/AppOpsService;->resetAllModes(ILjava/lang/String;)V

    goto/16 :goto_15

    .line 1184
    :cond_53
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService;->uidRemoved(I)V

    .line 1185
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices;->onUidRemovedLocked(I)V

    goto/16 :goto_15

    .line 1167
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.BROADCAST_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_13
    const/high16 v0, 0x40000000    # 2.0f

    .line 1398
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_19

    .line 1425
    :goto_28
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 1426
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 1427
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1428
    :cond_55
    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    .line 1430
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 1432
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    :cond_56
    move v13, v6

    goto :goto_29

    :cond_57
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v13, 0x0

    :goto_29
    if-eqz p17, :cond_63

    .line 1440
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v2, v3, v9, v7}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_62

    if-eqz v11, :cond_58

    .line 1454
    array-length v2, v11

    if-lez v2, :cond_58

    .line 1455
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t broadcast sticky intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and enforce permissions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    .line 1457
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_58
    move-object/from16 v16, p6

    move-object v8, v1

    move v2, v5

    move-object/from16 v17, v14

    const/4 v3, -0x1

    move-object/from16 v1, p7

    move-object/from16 v14, p15

    .line 1461
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_61

    .line 1465
    iget-object v5, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v5

    if-eq v2, v3, :cond_5a

    .line 1472
    :try_start_6
    iget-object v6, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    if-eqz v6, :cond_5a

    .line 1475
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_5a

    .line 1477
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 p4, v0

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v6, :cond_5b

    .line 1480
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_59

    const/16 v27, 0x1

    add-int/lit8 v0, v19, 0x1

    goto :goto_2a

    .line 1481
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sticky broadcast "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " conflicts with existing global broadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    goto/16 :goto_2e

    :cond_5a
    move/from16 p4, v0

    .line 1489
    :cond_5b
    iget-object v0, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1490
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_5c

    .line 1492
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1493
    iget-object v3, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1495
    :cond_5c
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_5d

    .line 1497
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_5d
    invoke-static {v4, v14}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v0

    .line 1500
    invoke-static {v7, v14, v1, v12, v0}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v0

    .line 1503
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v6, :cond_5f

    .line 1506
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v11, v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v11}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 1508
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v18, v5

    move/from16 v5, v35

    :try_start_7
    invoke-static {v11, v0, v7, v5, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v11

    invoke-virtual {v3, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :catchall_2
    move-exception v0

    goto :goto_2e

    :cond_5e
    move-object/from16 v18, v5

    move/from16 v5, v35

    const/16 v27, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, p11

    move-object/from16 v5, v18

    goto :goto_2b

    :cond_5f
    move-object/from16 v18, v5

    move/from16 v5, v35

    :goto_2c
    if-lt v1, v6, :cond_60

    .line 1514
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v1, v0, v7, v5, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    :cond_60
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 1518
    monitor-exit v18

    :goto_2d
    const/4 v3, -0x1

    goto :goto_2f

    :goto_2e
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1462
    :cond_61
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Sticky broadcasts can\'t target a specific component"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: broadcastIntent() requesting a sticky broadcast from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    move-object/from16 v16, p6

    move/from16 p4, v0

    move-object v8, v1

    move v2, v5

    move-object/from16 v17, v14

    move/from16 v5, v35

    move-object/from16 v14, p15

    goto :goto_2d

    :goto_2f
    if-ne v2, v3, :cond_64

    .line 1524
    iget-object v0, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object v0

    goto :goto_30

    :cond_64
    const/4 v6, 0x1

    .line 1527
    new-array v0, v6, [I

    const/16 v25, 0x0

    aput v2, v0, v25

    .line 1530
    :goto_30
    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    move-object v3, v4

    const/4 v4, 0x1

    move/from16 v28, v5

    const/4 v5, 0x1

    move v6, v7

    move v7, v9

    move v9, v2

    move-object v2, v3

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v10, v1

    move-object v4, v2

    .line 1532
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 1535
    const-string/jumbo v1, "queryReceivers"

    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v11

    .line 1539
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    if-nez v1, :cond_65

    move-object/from16 v3, p5

    move/from16 v5, p18

    move-object v6, v0

    move-object v2, v4

    move-object v1, v8

    move-object/from16 v7, v24

    move/from16 v4, p19

    .line 1540
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I)Ljava/util/List;

    move-result-object v0

    move-object v1, v7

    move v7, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_31

    :cond_65
    move/from16 v7, p19

    move-object v2, v0

    move-object/from16 v1, v24

    move-object/from16 v0, v23

    .line 1543
    :goto_31
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_6b

    .line 1544
    iget-object v3, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v3

    const/4 v6, -0x1

    if-ne v9, v6, :cond_6a

    const/16 v5, 0x7d0

    if-ne v7, v5, :cond_6a

    move-object/from16 p6, v1

    move-object/from16 v6, v23

    const/4 v5, 0x0

    .line 1547
    :goto_32
    array-length v1, v2

    if-ge v5, v1, :cond_69

    .line 1548
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v18, v2

    const-string/jumbo v2, "no_debugging_features"

    move-object/from16 p20, v3

    aget v3, v18, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_66

    move-object/from16 v2, p20

    move/from16 v19, v5

    move-object v7, v6

    move/from16 v24, v9

    move-object/from16 v9, p6

    goto :goto_34

    .line 1552
    :cond_66
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    move v2, v5

    const/4 v5, 0x0

    move-object v3, v6

    aget v6, v18, v2

    move/from16 v19, v2

    move-object v7, v3

    move-object v3, v4

    move/from16 v24, v9

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    move-object/from16 v2, p20

    .line 1553
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v6

    move-object v4, v3

    if-nez v7, :cond_67

    :goto_33
    const/16 v27, 0x1

    goto :goto_35

    :cond_67
    if-eqz v6, :cond_68

    .line 1558
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_68
    :goto_34
    move-object v6, v7

    goto :goto_33

    :goto_35
    add-int/lit8 v5, v19, 0x1

    move/from16 v7, p19

    move-object v3, v2

    move-object/from16 p6, v9

    move-object/from16 v2, v18

    move/from16 v9, v24

    goto :goto_32

    :cond_69
    move-object v7, v6

    move/from16 v24, v9

    move-object/from16 v9, p6

    goto :goto_36

    :cond_6a
    move-object v2, v3

    move/from16 v24, v9

    move-object v9, v1

    .line 1562
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v5, 0x0

    move-object v3, v4

    move/from16 v6, v24

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    move-object v4, v3

    move-object v6, v1

    :goto_36
    if-eqz v6, :cond_6c

    .line 1566
    invoke-static {v10, v6}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_37

    :cond_6b
    move/from16 v24, v9

    move-object v9, v1

    move-object/from16 v6, v23

    .line 1569
    :cond_6c
    :goto_37
    invoke-static {v11}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1572
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6d

    const/4 v1, 0x1

    goto :goto_38

    :cond_6d
    const/4 v1, 0x0

    .line 1574
    :goto_38
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_6e

    .line 1575
    sget-object v2, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enqueueing broadcast: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " replacePending="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-eqz v6, :cond_70

    if-eqz v9, :cond_70

    .line 1581
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/16 v27, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_39
    if-ltz v1, :cond_70

    .line 1582
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget v2, v2, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_6f

    .line 1584
    invoke-static {v9, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_6f

    .line 1585
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6f
    const/16 v26, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    :cond_70
    if-eqz v6, :cond_71

    .line 1590
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3a

    :cond_71
    const/4 v1, 0x0

    :goto_3a
    if-eqz v0, :cond_7d

    .line 1602
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 1603
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 1604
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_3c

    .line 1612
    :cond_72
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1613
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_3b
    const/16 v25, 0x0

    goto :goto_3d

    :cond_73
    move-object/from16 v2, v23

    goto :goto_3b

    .line 1605
    :cond_74
    :goto_3c
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 1607
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    const/4 v3, 0x1

    .line 1609
    new-array v5, v3, [Ljava/lang/String;

    const/16 v25, 0x0

    aput-object v2, v5, v25

    move-object v2, v5

    goto :goto_3d

    :cond_75
    const/16 v25, 0x0

    move-object/from16 v2, v23

    :goto_3d
    if-eqz v2, :cond_78

    .line 1615
    array-length v3, v2

    if-lez v3, :cond_78

    .line 1616
    array-length v3, v2

    move/from16 v5, v25

    :goto_3e
    if-ge v5, v3, :cond_78

    aget-object v7, v2, v5

    if-eqz v7, :cond_77

    .line 1618
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v11, v9

    move/from16 v9, v25

    :goto_3f
    if-ge v9, v11, :cond_77

    .line 1620
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p6, v2

    move-object/from16 v2, v18

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1621
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 1622
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/16 v26, -0x1

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v11, v11, -0x1

    :goto_40
    const/16 v27, 0x1

    goto :goto_41

    :cond_76
    const/16 v26, -0x1

    goto :goto_40

    :goto_41
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p6

    goto :goto_3f

    :cond_77
    move-object/from16 p6, v2

    const/16 v26, -0x1

    const/16 v27, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p6

    goto :goto_3e

    .line 1631
    :cond_78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v7, v23

    move-object v9, v7

    move/from16 v3, v25

    move v5, v3

    :goto_42
    if-ge v3, v2, :cond_7c

    if-ge v5, v1, :cond_7c

    if-nez v7, :cond_79

    .line 1637
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    :cond_79
    if-nez v9, :cond_7a

    .line 1640
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/BroadcastFilter;

    .line 1642
    :cond_7a
    invoke-virtual {v9}, Landroid/content/IntentFilter;->getPriority()I

    move-result v11

    move/from16 v18, v2

    iget v2, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v11, v2, :cond_7b

    .line 1644
    invoke-interface {v0, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/16 v27, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v9, v23

    goto :goto_42

    :cond_7b
    const/16 v27, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v18

    move-object/from16 v7, v23

    goto :goto_42

    :cond_7c
    move-object v7, v0

    goto :goto_43

    :cond_7d
    const/16 v25, 0x0

    move-object v7, v0

    move/from16 v5, v25

    :goto_43
    if-ge v5, v1, :cond_80

    if-eqz v29, :cond_7e

    .line 1659
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_7e
    if-nez v7, :cond_7f

    .line 1662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1664
    :cond_7f
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v27, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_80
    if-eqz v21, :cond_81

    move-object/from16 v3, p1

    move/from16 v5, p19

    move-object v2, v4

    move-object v1, v8

    move v6, v15

    move-object/from16 v4, p2

    .line 1669
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V

    move-object v4, v2

    goto :goto_44

    :cond_81
    move-object v1, v8

    :goto_44
    if-eqz v7, :cond_82

    .line 1673
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_83

    :cond_82
    if-eqz p7, :cond_86

    .line 1675
    :cond_83
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 1676
    invoke-static {v10, v7}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v2, v0

    .line 1677
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v23, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    move/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v22, p17

    move/from16 v6, p18

    move-object/from16 v27, p25

    move-object v15, v7

    move/from16 v21, v12

    move/from16 v26, v13

    move/from16 v30, v25

    move/from16 v8, v29

    move-object/from16 v12, p13

    move/from16 v13, p14

    move/from16 v7, p19

    move-object/from16 v29, v1

    move-object v1, v2

    move-object v2, v4

    move-object/from16 v25, v17

    move-object/from16 v4, p2

    move-object/from16 v17, p7

    invoke-direct/range {v0 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move-object/from16 v4, p26

    .line 1684
    invoke-virtual {v4, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V

    .line 1686
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v2, :cond_84

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1687
    :cond_84
    sget-object v2, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_85
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_45

    :cond_86
    move/from16 v30, v25

    .line 1693
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_87

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_87

    .line 1694
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, p4

    if-nez v0, :cond_87

    .line 1696
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 p5, p2

    move-object/from16 p4, v0

    move-object/from16 p3, v1

    move/from16 p7, v2

    move/from16 p6, v3

    move-wide/from16 p8, v5

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/am/BroadcastController;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1698
    :cond_87
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_88

    invoke-static/range {p15 .. p15}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1699
    :cond_88
    sget-object v0, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to no receivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_45
    return v30

    :catch_3
    move-exception v0

    move-object/from16 v2, p6

    const/16 v30, 0x0

    .line 1060
    const-string v1, "ActivityManager"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    .line 1061
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    return v30

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7d14f855 -> :sswitch_14
        -0x6849e2b4 -> :sswitch_13
        -0x53ae571d -> :sswitch_12
        -0x4fc097e4 -> :sswitch_11
        -0x3bb3e592 -> :sswitch_10
        -0x304ed112 -> :sswitch_f
        -0x1808c879 -> :sswitch_e
        0xa480416 -> :sswitch_d
        0xaf62806 -> :sswitch_c
        0xff13fb5 -> :sswitch_b
        0x1df32313 -> :sswitch_a
        0x1e1f7f95 -> :sswitch_9
        0x1f50b9c2 -> :sswitch_8
        0x2114f460 -> :sswitch_7
        0x2f126fdf -> :sswitch_6
        0x32c98ebd -> :sswitch_5
        0x36db402e -> :sswitch_4
        0x4cef8b35 -> :sswitch_3
        0x5c1076e2 -> :sswitch_2
        0x6331ebb2 -> :sswitch_1
        0x6f08f706 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_13
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6849e2b4 -> :sswitch_1b
        -0x53ae571d -> :sswitch_1a
        -0x4fc097e4 -> :sswitch_19
        -0x3bb3e592 -> :sswitch_18
        0xa480416 -> :sswitch_17
        0x1f50b9c2 -> :sswitch_16
        0x4cef8b35 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 32

    move-object/from16 v2, p0

    .line 716
    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "broadcastIntent"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 719
    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    move-object/from16 v0, p3

    .line 720
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 722
    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 723
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v4, p13

    .line 730
    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V

    .line 732
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcastIntent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    .line 736
    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v7, 0x40

    .line 734
    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 741
    iget-object v5, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAmsExt:Lcom/mediatek/server/am/AmsExt;

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    .line 742
    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    const-string v11, "broadcast"

    .line 741
    invoke-virtual {v5, v10, v0, v11, v9}, Lcom/mediatek/server/am/AmsExt;->onReadyToStartComponent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 744
    const-string/jumbo v10, "skipped"

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 745
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    const-string v0, "ActivityManager"

    const-string v2, "broadcastIntentWithFeature, suppress to broadcastIntent!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :cond_2
    if-eqz v3, :cond_3

    .line 753
    :try_start_1
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v30, v7

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v25, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide v10, v7

    move-object v8, v3

    move/from16 v22, v0

    move/from16 v23, v20

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v24, p16

    move/from16 v21, v0

    move-object/from16 v17, v4

    move-object v4, v9

    move-wide/from16 v30, v10

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 752
    :try_start_2
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 759
    :try_start_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 762
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p15, :cond_4

    if-nez v0, :cond_4

    .line 765
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    :cond_4
    return v0

    :catchall_2
    move-exception v0

    .line 759
    :goto_3
    :try_start_4
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    throw v0

    .line 762
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V
    .locals 1

    .line 2096
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    .line 2101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p5, :cond_8

    .line 2102
    const-string p5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2103
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    .line 2104
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.intent.action.MEDIA_BUTTON"

    .line 2105
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 2106
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    .line 2107
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.intent.action.MASTER_CLEAR"

    .line 2108
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.intent.action.FACTORY_RESET"

    .line 2109
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 2110
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 2111
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "com.android.omadm.service.CONFIGURATION_UPDATE"

    .line 2112
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.text.style.SUGGESTION_PICKED"

    .line 2113
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2114
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    const-string p5, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2115
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    goto/16 :goto_2

    .line 2126
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    :cond_2
    if-eqz p6, :cond_8

    .line 2127
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    .line 2137
    :cond_3
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_8

    .line 2138
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .line 2139
    instance-of v0, p5, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_4

    .line 2140
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 2141
    iget-object p5, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, p5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_7

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez p5, :cond_7

    goto :goto_1

    .line 2146
    :cond_4
    check-cast p5, Lcom/android/server/am/BroadcastFilter;

    .line 2147
    iget-boolean v0, p5, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v0, :cond_7

    iget-object p5, p5, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-nez p5, :cond_7

    .line 2162
    :cond_5
    :goto_1
    const-string p1, " pkg "

    const-string p5, "Sending non-protected broadcast "

    const-string p6, "ActivityManager"

    if-eqz p2, :cond_6

    .line 2163
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from system "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 2163
    invoke-static {p6, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2167
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from system uid "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    invoke-static {p4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 2167
    invoke-static {p6, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method public final collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 1998
    array-length v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v6, v3, :cond_10

    aget v11, v1, v6

    const/16 v12, 0x7d0

    move/from16 v13, p3

    if-ne v13, v12, :cond_0

    .line 2000
    iget-object v12, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v14, "no_debugging_features"

    .line 2001
    invoke-virtual {v12, v14, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_8

    .line 2005
    :cond_0
    iget-object v12, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v19, 0x1

    const-wide/32 v14, 0x10000400

    move/from16 v17, p4

    move/from16 v18, v11

    move-object v11, v12

    move/from16 v16, v13

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v19}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object v11

    move/from16 v17, v18

    if-eqz v17, :cond_2

    if-eqz v11, :cond_2

    const/4 v12, 0x0

    .line 2010
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 2011
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 2012
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x20000000

    and-int v13, v13, v16

    if-eqz v13, :cond_1

    .line 2013
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :cond_1
    add-int/2addr v12, v10

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_5

    .line 2020
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    :goto_2
    if-ltz v12, :cond_5

    .line 2021
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 2022
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    move-object v5, v11

    move-object v11, v4

    move-object v4, v5

    move/from16 v18, p3

    move/from16 v19, p4

    move v5, v12

    move-wide v15, v14

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    .line 2023
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ComponentAliasResolver;->resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;JIII)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v11

    move-wide v14, v15

    if-nez v11, :cond_3

    .line 2027
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 2030
    :cond_3
    invoke-virtual {v11}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2031
    invoke-virtual {v11}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    invoke-interface {v4, v5, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v12, v5, -0x1

    move-object v11, v4

    goto :goto_2

    :cond_5
    move-object v4, v11

    if-eqz v4, :cond_6

    .line 2035
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    move-object v11, v4

    :goto_4
    if-nez v7, :cond_7

    move-object v7, v11

    goto/16 :goto_8

    :cond_7
    if-eqz v11, :cond_f

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v8, :cond_b

    const/4 v5, 0x0

    .line 2049
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 2050
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2051
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v12, v4

    if-eqz v12, :cond_9

    .line 2052
    new-instance v12, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_8

    .line 2055
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2057
    :cond_8
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    move v8, v10

    :cond_b
    const/4 v5, 0x0

    .line 2063
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_f

    .line 2064
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2065
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v12, v4

    if-eqz v12, :cond_d

    .line 2066
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_c

    .line 2069
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2071
    :cond_c
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 2072
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2073
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2076
    :cond_d
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_10
    if-eqz v7, :cond_12

    if-eqz v2, :cond_12

    .line 2082
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_9
    if-ltz v0, :cond_12

    .line 2084
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2083
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x2710

    if-lt v1, v3, :cond_11

    .line 2086
    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_11

    .line 2087
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_12
    return-object v7
.end method

.method public dumpBroadcastStatsCheckinLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2451
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2455
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 2456
    invoke-virtual {p1, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 2458
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    return-void

    .line 2462
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p1, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    .line 2464
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpBroadcastStatsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2417
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2421
    :cond_0
    const-string p1, "ACTIVITY MANAGER BROADCAST STATS STATE (dumpsys activity broadcast-stats)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 2423
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const-string p5, "    (nothing)"

    const-string v0, "    "

    const-string v1, " uptime):"

    if-eqz p1, :cond_2

    .line 2424
    const-string p1, "  Last stats (from "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2426
    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2427
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2428
    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2431
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2432
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p1, p2, v0, p6}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2433
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2437
    :cond_2
    const-string p1, "  Current stats (from "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2439
    const-string p1, " to now, "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr p3, v2

    invoke-static {p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2442
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2443
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p0, p2, v0, p6}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2444
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dumpBroadcastsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 24
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move/from16 v1, p4

    move-object/from16 v3, p6

    .line 2232
    const-string v4, "history"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 2233
    array-length v3, v8

    if-ge v1, v3, :cond_0

    const-string v3, "-s"

    aget-object v4, v8, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move/from16 v3, p5

    :goto_0
    move v9, v1

    move v8, v3

    move v4, v5

    move-object v10, v6

    move v14, v12

    move v15, v13

    move/from16 v16, v15

    goto/16 :goto_4

    .line 2238
    :cond_1
    const-string/jumbo v4, "receivers"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v1, 0x2

    .line 2241
    array-length v4, v8

    if-gt v3, v4, :cond_5

    move v3, v1

    move v4, v5

    .line 2242
    :goto_1
    array-length v7, v8

    if-ge v3, v7, :cond_4

    .line 2243
    aget-object v4, v8, v3

    .line 2244
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string v7, "--uid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2252
    const-string v0, "Invalid argument at index %d: %s\n"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 2246
    invoke-static {v2, v8, v4, v5}, Lcom/android/server/am/BroadcastController;->getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_3

    goto/16 :goto_12

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    move/from16 v8, p5

    move v9, v1

    :goto_2
    move-object v10, v6

    move v15, v12

    move v14, v13

    move/from16 v16, v14

    goto/16 :goto_4

    :cond_5
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    goto :goto_2

    .line 2257
    :cond_6
    const-string v4, "filter"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v3, v1, 0x2

    .line 2260
    array-length v4, v8

    if-gt v3, v4, :cond_9

    .line 2261
    const-string v3, "--action"

    add-int/lit8 v4, v1, 0x1

    aget-object v7, v8, v1

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v1, v1, 0x2

    .line 2262
    aget-object v3, v8, v4

    if-nez v3, :cond_7

    .line 2264
    const-string v0, "Missing argument for --action option\n"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_7
    move/from16 v8, p5

    move v9, v1

    move-object v10, v3

    move v4, v5

    :goto_3
    move/from16 v16, v12

    move v14, v13

    move v15, v14

    goto :goto_4

    .line 2268
    :cond_8
    const-string v0, "Unknown argument: %s\n"

    aget-object v1, v8, v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_9
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    move-object v10, v6

    goto :goto_3

    :cond_a
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    move-object v10, v6

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move-object v6, v3

    .line 2274
    :goto_4
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_b

    .line 2275
    sget-object v1, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    const-string v3, "dumpBroadcastsLocked(): dumpPackage=%s, onlyHistory=%b, onlyReceivers=%b, filteredUid=%d"

    .line 2276
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2277
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move/from16 v17, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v6, v7, v11, v12}, [Ljava/lang/Object;

    move-result-object v7

    .line 2275
    invoke-static {v1, v3, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    move/from16 v17, v12

    .line 2280
    :goto_5
    const-string v1, "ACTIVITY MANAGER BROADCAST STATE (dumpsys activity broadcasts)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v14, :cond_15

    if-nez v16, :cond_15

    if-eqz v8, :cond_15

    .line 2282
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 2284
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v13

    move v7, v3

    move v11, v7

    .line 2285
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ReceiverList;

    if-eqz v6, :cond_d

    .line 2287
    iget-object v13, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_c

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2288
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    :cond_c
    move-object/from16 p4, v1

    move/from16 p5, v3

    goto :goto_7

    :cond_d
    if-eq v4, v5, :cond_e

    .line 2291
    iget-object v13, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v13, :cond_e

    .line 2292
    sget-boolean v18, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v18, :cond_c

    .line 2293
    sget-object v5, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    move-object/from16 p4, v1

    const-string v1, "dumpBroadcastsLocked(): skipping receiver whose uid (%d) is not %d: %s"

    .line 2294
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 p5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v12, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    filled-new-array {v13, v3, v12}, [Ljava/lang/Object;

    move-result-object v3

    .line 2293
    invoke-static {v5, v1, v3}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    move-object/from16 v1, p4

    move/from16 v3, p5

    :goto_8
    const/4 v5, -0x1

    const/4 v13, 0x0

    goto :goto_6

    :cond_e
    move-object/from16 p4, v1

    move/from16 p5, v3

    if-nez v11, :cond_f

    .line 2299
    const-string v1, "  Registered Receivers:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v3, v17

    move v7, v3

    move v11, v7

    goto :goto_9

    :cond_f
    move/from16 v3, p5

    .line 2304
    :goto_9
    const-string v1, "  * "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2305
    const-string v1, "    "

    invoke-virtual {v12, v2, v1}, Lcom/android/server/am/ReceiverList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move-object/from16 v1, p4

    goto :goto_8

    :cond_10
    move/from16 p5, v3

    move/from16 v11, p5

    move v12, v7

    goto :goto_a

    :cond_11
    if-eqz v15, :cond_12

    .line 2309
    const-string v1, "  (no registered receivers)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    if-nez v15, :cond_14

    .line 2314
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    if-eqz v11, :cond_13

    .line 2315
    const-string v3, "\n  Receiver Resolver Table:"

    goto :goto_b

    :cond_13
    const-string v3, "  Receiver Resolver Table:"

    :goto_b
    const-string v4, "    "

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2314
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v11, v17

    move v12, v11

    goto :goto_c

    :cond_14
    move-object v5, v6

    goto :goto_c

    :cond_15
    move-object v5, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_16
    :goto_c
    if-nez v15, :cond_17

    .line 2324
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, v9

    move-object v9, v5

    move v5, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move-object v2, v3

    move-object v5, v9

    or-int/2addr v12, v1

    goto :goto_d

    :cond_17
    move-object/from16 v2, p2

    .line 2331
    :goto_d
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    if-nez v14, :cond_1d

    if-nez v15, :cond_1d

    if-nez v16, :cond_1d

    .line 2332
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    if-eqz v3, :cond_1d

    if-nez v5, :cond_1d

    const/4 v3, 0x0

    .line 2334
    :goto_e
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 2336
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2340
    const-string v4, "  Sticky broadcasts for user "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2341
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2342
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2345
    iget-object v5, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2346
    const-string v7, "  * Sticky action "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_1b

    .line 2349
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2351
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v7, :cond_1a

    .line 2353
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v10, v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 2354
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-boolean v11, v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    const/4 v12, 0x0

    .line 2355
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2356
    const-string v13, "    Intent: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v19, v4

    move-object/from16 v18, v10

    .line 2357
    invoke-virtual/range {v18 .. v23}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2358
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz v11, :cond_18

    .line 2360
    const-string v10, " [D]"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    .line 2362
    :cond_18
    :goto_11
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2363
    const-string v10, "      originalCallingUid: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v10, v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2365
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2366
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 2368
    const-string v11, "      extras: "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_1b
    const/4 v12, 0x0

    .line 2373
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1c
    const/4 v12, 0x0

    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v17

    goto/16 :goto_e

    .line 2378
    :cond_1d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_1e

    if-nez v15, :cond_1e

    if-nez v16, :cond_1e

    if-eqz v8, :cond_1e

    .line 2381
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Queue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 2383
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2382
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    const-string v1, "  mHandler:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2385
    iget-object v0, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "    "

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    move/from16 v12, v17

    :cond_1e
    if-nez v12, :cond_1f

    .line 2390
    const-string v0, "  (nothing)"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    :goto_12
    return-void

    .line 2378
    :goto_13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2

    .line 2184
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz p0, :cond_0

    .line 2186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Non-system caller "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " may not flag broadcast as alarm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system callers may not flag broadcasts as alarm"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2192
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2193
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string p1, "android.permission.BROADCAST_OPTION_INTERACTIVE"

    const-string/jumbo p2, "setInteractive"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V
    .locals 0

    .line 2177
    invoke-static {p1}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V

    return-void
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 11

    .line 1829
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p4, :cond_2

    .line 1832
    invoke-virtual {p4}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1833
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1836
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1838
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1839
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1841
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishReceiver: no app for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1852
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1845
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const/4 v10, 0x1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1848
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 1849
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1852
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1849
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1852
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1853
    throw p0
.end method

.method public final getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;
    .locals 1

    .line 1947
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1948
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowImplicitBroadcasts()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    .line 1950
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1741
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1742
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1743
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1745
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1746
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x14

    return p0
.end method

.method public final getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1754
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1755
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1756
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1758
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1759
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x14

    return p0
.end method

.method public getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ReceiverList;

    if-nez p0, :cond_0

    .line 699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 701
    :cond_0
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 704
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 707
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getStickyBroadcastsForTest(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastController$StickyBroadcast;",
            ">;"
        }
    .end annotation

    .line 1769
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1770
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1771
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1773
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1775
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    .line 1776
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUidFromIntent(Landroid/content/Intent;)I
    .locals 2

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 1863
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1864
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1865
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    :cond_1
    return p0
.end method

.method public final getWearRemoteIntentAction()Ljava/lang/String;
    .locals 1

    .line 1981
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402f3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .locals 3

    .line 1954
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 1959
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0

    .line 1962
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    if-nez p2, :cond_3

    .line 1965
    :try_start_0
    invoke-interface {p1, p3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1966
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 1970
    aget-object p2, v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1967
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to determine caller package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1972
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 1973
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1975
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error looking up if "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is an instant app."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isShellOrRoot(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x7d0

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 3

    .line 1893
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    .line 1896
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v1, 0x0

    const/16 v2, 0x4a

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1897
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    .line 252
    invoke-static {p4, p5, p6, p8}, Lcom/android/server/am/BroadcastController;->traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V

    .line 254
    :try_start_0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BroadcastController;->registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    .line 258
    throw p0
.end method

.method public final registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 54

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    move/from16 v12, p9

    .line 300
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "registerReceiver"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 302
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    const/4 v13, 0x1

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Landroid/app/BroadcastStickyCache;->invalidateAllCaches()V

    .line 304
    iput-boolean v13, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    :cond_0
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    move/from16 v16, v13

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 314
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 315
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 317
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerReceiverWithFeature: no app for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v5

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    .line 320
    :cond_2
    :try_start_1
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 321
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 322
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given caller package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not running in process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_4
    :goto_1
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 326
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 328
    invoke-virtual {v1, v4, v10, v8}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v17

    .line 329
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 330
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v9, v8

    const/4 v8, 0x2

    move-object v6, v5

    move v5, v9

    const-string/jumbo v9, "registerReceiver"

    move-object/from16 v18, v4

    move v4, v7

    const/4 v7, 0x1

    move-object v15, v6

    move/from16 v6, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    move v7, v4

    move v4, v5

    move-object v3, v10

    .line 336
    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/16 v5, 0x3e8

    if-eqz v0, :cond_9

    .line 337
    invoke-virtual {v11}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    if-ge v0, v5, :cond_9

    const/16 v6, -0x3e8

    if-gt v0, v6, :cond_5

    goto :goto_4

    .line 341
    :cond_5
    invoke-virtual {v11}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_9

    .line 344
    invoke-virtual {v11, v8}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    .line 345
    const-string v10, "android.intent.action.USER_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.PACKAGE_"

    .line 346
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.UID_"

    .line 347
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.EXTERNAL_"

    .line 348
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.bluetooth."

    .line 349
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    .line 350
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 351
    :cond_7
    :goto_3
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v6, :cond_8

    .line 352
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System internals registering for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v11}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with app priority; this will race with apps!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 352
    invoke-static {v6, v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    if-nez v0, :cond_9

    .line 362
    invoke-virtual {v11, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 370
    :cond_9
    :goto_4
    invoke-virtual {v11}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_a

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    move-object v6, v0

    const/4 v0, -0x1

    .line 380
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    filled-new-array {v0, v8}, [I

    move-result-object v8

    .line 381
    iget-object v9, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v9

    move v10, v13

    move-object v0, v15

    .line 382
    :goto_5
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    const/4 v5, 0x2

    if-eqz v21, :cond_f

    .line 383
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v5, :cond_d

    move/from16 v23, v5

    .line 384
    aget v5, v8, v0

    .line 385
    iget-object v13, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 386
    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-eqz v5, :cond_c

    .line 388
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    if-nez v21, :cond_b

    .line 391
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    move-object/from16 v13, v21

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_1d

    .line 393
    :goto_7
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v21, v13

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v23

    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    if-eqz v10, :cond_e

    .line 400
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    and-int/2addr v0, v10

    move v10, v0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 403
    :try_start_4
    const-string v5, "ActivityManager"

    const-string v10, "Remote exception"

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    :cond_e
    :goto_8
    move-object/from16 v0, v21

    const/16 v5, 0x3e8

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto :goto_5

    :cond_f
    move/from16 v23, v5

    .line 407
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 410
    const-class v5, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 411
    invoke-static {v5}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v5, :cond_11

    .line 416
    invoke-interface {v5, v11, v12, v10}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canRegisterBroadcastReceiver(Landroid/content/IntentFilter;IZ)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_9

    .line 418
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK sandbox not allowed to register receiver with the given IntentFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v11}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid can register to broadcast receivers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_9
    and-int/lit8 v5, v12, 0x6

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    and-int/lit8 v6, v12, 0x2

    if-eqz v6, :cond_15

    and-int/lit8 v6, v12, 0x4

    if-nez v6, :cond_14

    goto :goto_b

    .line 431
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Receiver can\'t specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTEDflag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_b
    const-wide/32 v8, 0x99ae1c7

    .line 439
    invoke-static {v8, v9, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    if-eqz v14, :cond_17

    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_17

    if-nez v6, :cond_16

    goto :goto_c

    .line 447
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Receiver can\'t specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_c
    if-nez v10, :cond_1b

    if-nez p5, :cond_18

    if-nez v5, :cond_18

    :goto_d
    or-int/lit8 v5, v12, 0x2

    goto :goto_f

    :cond_18
    if-eqz v6, :cond_1a

    if-eqz v5, :cond_19

    goto :goto_e

    .line 457
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": One of RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED should be specified when a receiver isn\'t being registered exclusively for system broadcasts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_e
    if-nez v6, :cond_1c

    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_1c

    goto :goto_d

    :cond_1b
    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_1c

    goto :goto_d

    :cond_1c
    move v5, v12

    :goto_f
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1d

    const/4 v13, 0x1

    goto :goto_10

    :cond_1d
    const/4 v13, 0x0

    :goto_10
    if-eqz v0, :cond_22

    .line 476
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_11
    if-ge v5, v14, :cond_21

    .line 479
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 480
    iget-object v8, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    if-eqz v17, :cond_1e

    .line 482
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-nez v9, :cond_1e

    move-object v2, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move-object v3, v11

    move/from16 p8, v13

    move/from16 p9, v14

    move v13, v7

    goto :goto_12

    :cond_1e
    move v9, v4

    .line 492
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move v10, v5

    iget-object v5, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->resolvedDataType:Ljava/lang/String;

    move-object v12, v6

    .line 493
    invoke-virtual {v8}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    move/from16 v21, v7

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    move/from16 v25, v9

    const-string v9, "ActivityManager"

    const/4 v11, 0x0

    .line 495
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    move/from16 v26, v10

    const/4 v10, 0x0

    move-object v2, v3

    move/from16 p8, v13

    move/from16 p9, v14

    move/from16 v13, v21

    move-object/from16 v3, p6

    move-object v14, v12

    move-object/from16 v12, v23

    .line 492
    invoke-virtual/range {v3 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result v4

    if-ltz v4, :cond_20

    if-nez v15, :cond_1f

    .line 501
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 503
    :cond_1f
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_12
    add-int/lit8 v5, v26, 0x1

    move/from16 v14, p9

    move-object v11, v3

    move v7, v13

    move/from16 v4, v25

    move/from16 v13, p8

    move-object v3, v2

    move-object/from16 v2, p1

    goto :goto_11

    :cond_21
    move-object v0, v15

    :goto_13
    move-object v2, v3

    move/from16 v25, v4

    move-object v3, v11

    move/from16 p8, v13

    move v13, v7

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    goto :goto_13

    :goto_14
    if-eqz v0, :cond_23

    const/4 v4, 0x0

    .line 509
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v5, v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object v11, v5

    goto :goto_15

    :cond_23
    const/4 v11, 0x0

    .line 510
    :goto_15
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_24

    sget-object v4, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Register receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-nez p5, :cond_25

    return-object v11

    .line 517
    :cond_25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v13, v4, :cond_27

    .line 518
    const-string v4, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "com.android.server.net.action.SNOOZE_RAPID"

    .line 519
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 520
    :cond_26
    const-string v4, "177931370"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x534e4554

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 524
    :cond_27
    iget-object v12, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    .line 526
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 527
    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_29

    :cond_28
    move-object/from16 v17, v12

    const/16 v16, 0x0

    goto/16 :goto_1b

    .line 531
    :cond_29
    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ReceiverList;

    if-nez v4, :cond_2c

    .line 533
    new-instance v4, Lcom/android/server/am/ReceiverList;

    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v10, p5

    move v7, v13

    move-object/from16 v6, v18

    move/from16 v9, v20

    move/from16 v8, v25

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ReceiverList;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V

    move v10, v9

    move v9, v8

    .line 535
    iget-object v5, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2b

    .line 536
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfReceivers()I

    move-result v5

    const/16 v7, 0x3e8

    if-ge v5, v7, :cond_2a

    .line 542
    iget-object v5, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessReceiverRecord;->addReceiver(Lcom/android/server/am/ReceiverList;)V

    const/4 v7, 0x0

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v17, v12

    goto/16 :goto_1c

    .line 538
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many receivers, total of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", registered for pid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 545
    :cond_2b
    :try_start_6
    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v5, 0x1

    .line 549
    :try_start_7
    iput-boolean v5, v4, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 551
    :goto_16
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 547
    :catch_1
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :cond_2c
    move-object/from16 v6, v18

    move/from16 v10, v20

    move/from16 v9, v25

    const/4 v7, 0x0

    .line 552
    :try_start_8
    iget v5, v4, Lcom/android/server/am/ReceiverList;->uid:I

    if-ne v5, v9, :cond_35

    .line 557
    iget v5, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-ne v5, v13, :cond_34

    .line 562
    iget v5, v4, Lcom/android/server/am/ReceiverList;->userId:I

    if-ne v5, v10, :cond_33

    .line 568
    :goto_17
    new-instance v2, Lcom/android/server/am/BroadcastFilter;

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v13, p8

    move/from16 v19, v7

    move-object/from16 v22, v11

    move/from16 v11, v17

    move-object/from16 v7, p4

    move-object/from16 v17, v12

    move/from16 v12, v16

    const/16 v16, 0x0

    :try_start_9
    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/BroadcastFilter;-><init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZLandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)V

    move-object v10, v5

    .line 571
    invoke-virtual {v4, v3}, Lcom/android/server/am/ReceiverList;->containsFilter(Landroid/content/IntentFilter;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 572
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver with filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered for pid "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPackage is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catchall_3
    move-exception v0

    goto/16 :goto_1c

    .line 576
    :cond_2d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {v2}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 578
    const-string v3, "ActivityManager"

    const-string v4, "==> For Dynamic broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_2e
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    :goto_18
    if-eqz v0, :cond_32

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v5, v16

    move/from16 v15, v19

    :goto_19
    if-ge v15, v2, :cond_31

    .line 592
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 593
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v6, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    if-nez v5, :cond_30

    if-nez v13, :cond_2f

    if-eq v6, v9, :cond_2f

    .line 597
    invoke-static {v6}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 599
    :cond_2f
    iget-object v5, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 601
    :cond_30
    iget-object v7, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 602
    new-instance v23, Lcom/android/server/am/BroadcastRecord;

    iget-object v8, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    iget-boolean v10, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    .line 604
    invoke-static {v10}, Landroid/app/BroadcastOptions;->makeWithDeferUntilActive(Z)Landroid/app/BroadcastOptions;

    move-result-object v37

    sget-object v49, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iget v4, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingAppProcessState:I

    iget-object v10, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, -0x1

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v38, v3

    move/from16 v52, v4

    move/from16 v48, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v53, v10

    invoke-direct/range {v23 .. v53}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    .line 610
    invoke-virtual {v3, v4}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v38

    goto :goto_19

    :cond_31
    move-object v11, v5

    goto :goto_1a

    :cond_32
    move-object/from16 v11, v22

    .line 614
    :goto_1a
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :cond_33
    move v9, v10

    move-object/from16 v17, v12

    move-object v10, v2

    .line 563
    :try_start_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object v10, v2

    move-object/from16 v17, v12

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    move-object v10, v2

    move-object/from16 v17, v12

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :goto_1b
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 615
    :goto_1c
    :try_start_b
    monitor-exit v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 407
    :goto_1d
    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    .line 329
    :goto_1e
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeStickyBroadcasts(I)V
    .locals 3

    .line 2205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2206
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2207
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 2208
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    .line 2210
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2212
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_1

    .line 2215
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    return-void

    .line 2213
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final rotateBroadcastStatsIfNeededLocked()V
    .locals 7

    .line 1869
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1870
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1872
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_2

    .line 1874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    .line 1875
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    .line 1877
    :cond_2
    new-instance v0, Lcom/android/server/am/BroadcastStats;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    return-void
.end method

.method public final scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 1719
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_5

    const/4 v2, 0x1

    if-eqz p5, :cond_2

    .line 1722
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    .line 1723
    :goto_1
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1725
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v13

    if-eqz v4, :cond_3

    move/from16 v14, p6

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    move v14, v5

    :goto_2
    if-eqz v4, :cond_4

    move-object/from16 v15, p7

    goto :goto_3

    :cond_4
    move-object v15, v0

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v12, p4

    .line 1723
    invoke-interface/range {v3 .. v15}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1729
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to schedule result of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    const/16 v4, 0x1a

    .line 1731
    const-string v5, "Can\'t schedule resultTo"

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1733
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-void
.end method

.method public final sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 0

    .line 1986
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    return-void
.end method

.method public startBroadcastObservers()V
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueue;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 8

    if-eqz p2, :cond_1

    .line 1781
    invoke-virtual {p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1782
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1785
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "removeStickyBroadcast"

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p3

    .line 1785
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1789
    iget-object p3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.BROADCAST_STICKY"

    invoke-virtual {p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_8

    .line 1798
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_6

    .line 1802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 1804
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 1807
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v5, v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1808
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1812
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    :cond_5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-gtz p2, :cond_6

    .line 1818
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1821
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_7

    .line 1823
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_7
    return-void

    .line 1821
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1791
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: unbroadcastIntent() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1795
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 0

    .line 619
    invoke-static {p1}, Lcom/android/server/am/BroadcastController;->traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V

    .line 621
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController;->unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    .line 624
    throw p0
.end method

.method public final unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    .locals 12

    .line 648
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BroadcastController;->TAG_BROADCAST:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 653
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ReceiverList;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 656
    iget-object v4, p1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_1

    .line 658
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, p1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v10, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    move v4, v0

    .line 665
    :goto_0
    iget-object v5, p1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2

    .line 666
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ProcessReceiverRecord;->removeReceiver(Lcom/android/server/am/ReceiverList;)V

    .line 668
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    .line 669
    iget-boolean v5, p1, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v5, :cond_4

    .line 670
    iput-boolean v0, p1, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 671
    iget-object v5, p1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    :cond_3
    move v4, v0

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 678
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 679
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 681
    :cond_5
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 684
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 681
    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 684
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    throw p0
.end method

.method public final verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_1

    .line 1904
    invoke-virtual {p1}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1908
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_0

    .line 1905
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1911
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1913
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-string v1, "ActivityManager"

    if-nez p0, :cond_4

    const/high16 p0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    goto :goto_1

    .line 1919
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to launch receivers of broadcast intent "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " before boot completion"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot broadcast before boot completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/high16 p0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_6

    const/high16 p0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_5

    .line 1931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_5

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing FLAG_RECEIVER_FROM_SHELL because caller is UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1936
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeFlags(I)V

    :cond_5
    return-object p1

    .line 1926
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use FLAG_RECEIVER_BOOT_UPGRADE here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeBroadcastsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 2469
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2470
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2471
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ReceiverList;

    const-wide v4, 0x20b00000001L

    .line 2473
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ReceiverList;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    .line 2476
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/IntentResolver;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2478
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/BroadcastQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2479
    iget-object v11, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v11

    const/4 v13, 0x0

    .line 2480
    :goto_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-wide v14, 0x10900000001L

    if-ge v13, v1, :cond_3

    const-wide v3, 0x20b00000004L

    .line 2481
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2483
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-wide v5, 0x10500000001L

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2485
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-wide v5, 0x20b00000002L

    .line 2486
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2487
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v8, v17

    check-cast v8, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 2489
    iget-object v8, v8, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move/from16 v17, v7

    const/4 v7, 0x1

    move-object/from16 v19, v1

    move-object v1, v8

    const/4 v8, 0x0

    move-wide/from16 v20, v3

    const-wide v3, 0x20b00000002L

    move-wide/from16 v22, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v24, v13

    move-wide/from16 v12, v20

    move-wide/from16 v9, v22

    move/from16 v21, v17

    move-object/from16 v17, v19

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-wide v5, v9

    move-wide v3, v12

    move-object/from16 v1, v17

    move/from16 v8, v18

    move/from16 v7, v21

    move/from16 v13, v24

    const-wide v9, 0x10b00000002L

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    move-wide v9, v5

    move/from16 v24, v13

    move-wide v12, v3

    .line 2492
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v3, v12

    move/from16 v13, v24

    const-wide v9, 0x10b00000002L

    goto :goto_2

    :cond_2
    move/from16 v24, v13

    move-wide v12, v3

    .line 2494
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v13, v24, 0x1

    const-wide v9, 0x10b00000002L

    goto/16 :goto_1

    .line 2496
    :cond_3
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v3, 0x10b00000005L

    .line 2498
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2499
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 2500
    invoke-virtual {v1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2499
    invoke-virtual {v2, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2501
    iget-object v0, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b00000002L

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2503
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    .line 2496
    :goto_4
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
