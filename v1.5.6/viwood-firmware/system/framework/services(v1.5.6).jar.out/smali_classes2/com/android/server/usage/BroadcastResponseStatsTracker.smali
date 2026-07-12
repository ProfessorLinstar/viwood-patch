.class public Lcom/android/server/usage/BroadcastResponseStatsTracker;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsTracker.java"


# instance fields
.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public final mContext:Landroid/content/Context;

.field public mExemptedRoleHoldersCache:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

.field public final mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mUserBroadcastEvents:Landroid/util/SparseArray;

.field public mUserResponseStats:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$q3U5spRGQ0QcFJiTSLlmc7ZqWdE(Lcom/android/server/usage/BroadcastResponseStatsTracker;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 102
    iput-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    .line 103
    new-instance p1, Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-direct {p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    return-void
.end method

.method public static getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;
    .locals 6

    .line 472
    new-instance v0, Lcom/android/server/usage/BroadcastEvent;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastEvent;-><init>(ILjava/lang/String;IJ)V

    .line 474
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 476
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastEvent;

    return-object p0

    .line 478
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public clearBroadcastEvents(II)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez p0, :cond_0

    .line 289
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    .line 292
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearBroadcastResponseStats(ILjava/lang/String;JI)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 272
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    .line 274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_1

    .line 279
    monitor-exit v0

    return-void

    .line 281
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->clearBroadcastResponseStats(Ljava/lang/String;J)V

    .line 282
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6

    const/4 v0, 0x0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 327
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 326
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object p2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 332
    invoke-interface {p2}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedPermissions()Ljava/util/List;

    move-result-object p2

    .line 333
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 334
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    iget-object v4, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedRoles()Ljava/util/List;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 312
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 313
    invoke-virtual {p0, v4, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 314
    invoke-static {v4, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 318
    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1

    .line 484
    const-string v0, "Broadcast response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 487
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 491
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 493
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 494
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    .line 495
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 502
    const-string v0, "Broadcast events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 506
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 509
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 510
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 9

    .line 517
    const-string v0, "Response stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 521
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 522
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, v0

    .line 525
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 526
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 528
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 531
    invoke-virtual {v6, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 532
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 534
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7

    .line 541
    const-string v0, "Role holders:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 545
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 546
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v0

    .line 549
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 550
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 551
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v4, v0

    .line 553
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    if-lez v4, :cond_0

    .line 555
    const-string v6, ", "

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 557
    :cond_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 559
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 414
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 413
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-direct {v0}, Lcom/android/server/usage/UserBroadcastEvents;-><init>()V

    .line 428
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getOrCreateBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .locals 2

    .line 453
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getSourceUid()I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 455
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 457
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 458
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result p0

    .line 460
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_1

    .line 463
    new-instance p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    invoke-direct {p0}, Lcom/android/server/usage/UserBroadcastResponseStats;-><init>()V

    .line 464
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object p0

    return-object p0
.end method

.method public final getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 347
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 353
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz p0, :cond_1

    .line 354
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 355
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public isPackageExemptedFromBroadcastResponseStats(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 299
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 302
    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x0

    .line 304
    monitor-exit v0

    return p0

    .line 305
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserBroadcastEvents;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 389
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 390
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 391
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->onPackageRemoved(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 396
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 363
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    .line 365
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemServicesReady(Landroid/content/Context;)V
    .locals 2

    .line 107
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    .line 108
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUidRemoved(I)V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onUidRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 406
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 375
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 379
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;
    .locals 2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_0

    .line 255
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_1

    .line 260
    monitor-exit v1

    return-object v0

    .line 262
    :cond_1
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->populateAllBroadcastResponseStats(Ljava/util/List;Ljava/lang/String;J)V

    .line 264
    monitor-exit v1

    return-object v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V
    .locals 13

    .line 228
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 230
    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v1

    .line 231
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 232
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsDurationMs()J

    move-result-wide v3

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 235
    :goto_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    sub-long v11, v5, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 237
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-ltz v11, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v7

    const/4 v8, 0x1

    .line 241
    invoke-virtual {v7, v8}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long/2addr v9, v3

    move-wide v7, v9

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 118
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseFgThresholdState()I

    move-result v0

    if-gt v8, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v7, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 134
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v1

    .line 136
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move-wide v5, p4

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;

    move-result-object p1

    move-wide p2, p6

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/android/server/usage/BroadcastEvent;->addTimestampMs(J)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 141
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportNotificationCancelled(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 6

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 157
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public final reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .locals 21

    move-object/from16 v0, p0

    .line 162
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 163
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v3

    if-nez v3, :cond_0

    .line 167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 169
    :cond_0
    iget-object v4, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 170
    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v4

    .line 171
    iget-object v6, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 172
    invoke-interface {v6}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsWithResponseDurationMs()J

    move-result-wide v6

    .line 173
    iget-object v8, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 174
    invoke-interface {v8}, Lcom/android/server/usage/AppStandbyInternal;->shouldNoteResponseEventForAllBroadcastSessions()Z

    move-result v8

    .line 175
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_0
    if-ltz v9, :cond_8

    .line 176
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/BroadcastEvent;

    .line 177
    invoke-virtual {v0, v11}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 179
    invoke-virtual {v11}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v12

    const-wide/16 v13, 0x0

    move-wide v15, v13

    .line 183
    :goto_1
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 184
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    cmp-long v17, v17, p4

    if-gtz v17, :cond_6

    .line 185
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    sub-long v19, p4, v17

    cmp-long v19, v19, v4

    if-gtz v19, :cond_5

    cmp-long v19, v17, v15

    if-ltz v19, :cond_5

    cmp-long v15, v15, v13

    if-eqz v15, :cond_1

    if-nez v8, :cond_1

    goto :goto_3

    .line 199
    :cond_1
    invoke-virtual {v0, v11}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v15

    .line 200
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long v16, v17, v6

    if-eqz v2, :cond_4

    if-eq v2, v10, :cond_3

    const/4 v13, 0x2

    if-eq v2, v13, :cond_2

    .line 214
    const-string v13, "ResponseStatsTracker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown event: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    goto :goto_2

    .line 208
    :cond_3
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    goto :goto_2

    .line 205
    :cond_4
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    :goto_2
    move-wide/from16 v15, v16

    .line 217
    :cond_5
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->removeFirst()J

    const-wide/16 v13, 0x0

    goto :goto_1

    .line 219
    :cond_6
    :goto_3
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 220
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 223
    :cond_8
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method
