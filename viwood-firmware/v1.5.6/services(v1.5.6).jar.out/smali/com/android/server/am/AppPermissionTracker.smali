.class public final Lcom/android/server/am/AppPermissionTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppPermissionTracker.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final mAppOpsCallbacks:Landroid/util/SparseArray;

.field public final mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

.field public volatile mLockedBootCompleted:Z

.field public mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppPermissionTracker;)Lcom/android/server/am/AppPermissionTracker$MyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAppOpsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsDestroy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAppOpsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOpChanged(Lcom/android/server/am/AppPermissionTracker;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppPermissionTracker;->handleOpChanged(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsChanged(Lcom/android/server/am/AppPermissionTracker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsDestroy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPermissionTrackerEnabled(Lcom/android/server/am/AppPermissionTracker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 88
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 91
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 104
    new-instance p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppPermissionTracker$MyHandler;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 105
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p2, p3, p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppPermissionTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 460
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    const-string v2, "APP PERMISSIONS TRACKER:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 465
    array-length v6, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_7

    aget-object v9, v2, v8

    .line 466
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 469
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    :cond_0
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    if-nez v10, :cond_1

    const/16 v10, 0x2b

    .line 473
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 475
    :cond_1
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/16 v10, 0x3a

    .line 477
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 478
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 479
    :try_start_0
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 481
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v12, 0x5b

    .line 482
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 484
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_6

    .line 485
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 486
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v7, v16

    :goto_2
    if-ltz v7, :cond_5

    .line 487
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move-object/from16 v16, v2

    .line 488
    iget v2, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    move-object/from16 v18, v3

    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 489
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v14, :cond_3

    const/16 v2, 0x2c

    .line 491
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 494
    :cond_3
    :goto_3
    iget v0, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v14, v17

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_2

    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/16 v0, 0x5d

    .line 499
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 500
    monitor-exit v10

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto/16 :goto_0

    :goto_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 502
    :cond_7
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public final handleAppOpsDestroy()V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    return-void
.end method

.method public final handleAppOpsInit()V
    .locals 6

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 121
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 122
    aget-object v3, v1, v2

    .line 123
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 124
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->startWatchingMode([Ljava/lang/Integer;)V

    return-void
.end method

.method public final handleOpChanged(IILjava/lang/String;)V
    .locals 3

    .line 203
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {p3}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 204
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 205
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 206
    aget-object v1, p3, v0

    .line 207
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance p3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 212
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_0
    filled-new-array {p3}, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 214
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final handlePermissionsChanged(I)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    array-length v1, v0

    if-lez v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 227
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 228
    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    const/4 v2, 0x0

    .line 230
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 231
    aget-object v3, v0, v2

    .line 232
    new-instance v4, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, p0, p1, v5, v3}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V
    .locals 11

    .line 245
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v9, 0x0

    move v10, v9

    .line 249
    :goto_1
    array-length v2, p2

    if-ge v10, v2, :cond_5

    .line 250
    aget-object v2, p2, v10

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v5

    const/4 v2, 0x1

    if-eqz v5, :cond_2

    if-nez v1, :cond_1

    .line 254
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 255
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move v2, v9

    .line 258
    :goto_2
    aget-object v3, p2, v10

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 259
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 260
    aget-object v3, p2, v10

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_3
    move v2, v9

    :goto_3
    if-eqz v2, :cond_4

    .line 266
    const-string v4, ""

    const/16 v8, 0x10

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_4

    :cond_4
    move-object v2, p0

    move v3, p1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object p0, v2

    move p1, v3

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final handlePermissionsDestroy()V
    .locals 11

    .line 175
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 179
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_1

    .line 180
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 181
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 182
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 183
    const-string v4, ""

    const/4 v5, 0x0

    const/16 v8, 0x10

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    move-object v2, p0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object p0, v2

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 188
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handlePermissionsInit()V
    .locals 24

    move-object/from16 v0, p0

    .line 131
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v7

    .line 132
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    .line 133
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 134
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v9

    .line 135
    iget-object v10, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 137
    array-length v11, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_5

    aget v1, v7, v13

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    .line 138
    invoke-virtual {v8, v2, v3, v1, v4}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v19, v7

    goto/16 :goto_6

    .line 142
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 143
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v15, :cond_0

    .line 144
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 145
    array-length v3, v9

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    aget-object v12, v9, v6

    move/from16 v16, v3

    .line 146
    new-instance v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move/from16 v17, v1

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-wide/from16 v18, v4

    iget-object v4, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 147
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 148
    invoke-virtual {v3}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v21, v6

    move-wide/from16 v4, v18

    move-object/from16 v19, v7

    move/from16 v18, v16

    move-object/from16 v16, v2

    goto :goto_4

    .line 152
    :cond_2
    iget-object v12, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 153
    :try_start_0
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 154
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_3

    .line 156
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 157
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v1

    .line 160
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v5, v2

    const-string v2, ""

    move-object/from16 v20, v3

    const/4 v3, 0x1

    move/from16 v21, v6

    const/16 v6, 0x10

    move-object/from16 v22, v20

    move-object/from16 v20, v4

    move/from16 v23, v16

    move-object/from16 v16, v5

    move-wide/from16 v4, v18

    move-object/from16 v19, v7

    move/from16 v18, v23

    move-object/from16 v7, v22

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    move-object/from16 v1, v20

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    move/from16 v21, v6

    move-wide/from16 v4, v18

    move-object/from16 v19, v7

    move/from16 v18, v16

    move-object/from16 v16, v2

    move-object v7, v3

    .line 163
    :goto_3
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v12

    :goto_4
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move/from16 v1, v17

    move/from16 v3, v18

    move-object/from16 v7, v19

    goto/16 :goto_2

    :goto_5
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move/from16 v17, v1

    move-object/from16 v19, v7

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onLockedBootCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 455
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public final onPermissionTrackerEnabled(Z)V
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 445
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 447
    :cond_1
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPermissionsChanged(I)V
    .locals 2

    .line 115
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final startWatchingMode([Ljava/lang/Integer;)V
    .locals 8

    .line 364
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 366
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 369
    new-instance v5, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;Lcom/android/server/am/AppPermissionTracker-IA;)V

    .line 370
    iget-object v7, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x1

    .line 371
    invoke-interface {v1, v4, v6, v7, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 377
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final stopWatchingMode()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 385
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 390
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 391
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
