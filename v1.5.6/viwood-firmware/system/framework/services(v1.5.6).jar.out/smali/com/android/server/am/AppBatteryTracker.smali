.class public final Lcom/android/server/am/AppBatteryTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppBatteryTracker.java"

# interfaces
.implements Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;


# static fields
.field public static final BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;


# instance fields
.field public final mActiveUserIdStates:Landroid/util/SparseBooleanArray;

.field public final mBatteryUsageStatsPollingIntervalMs:J

.field public final mBatteryUsageStatsPollingMinIntervalMs:J

.field public mBatteryUsageStatsUpdatePending:Z

.field public final mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

.field public final mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

.field public final mDebugUidPercentages:Landroid/util/SparseArray;

.field public mLastBatteryUsageSamplingTs:J

.field public mLastReportTime:J

.field public final mLastUidBatteryUsage:Landroid/util/SparseArray;

.field public mLastUidBatteryUsageStartTs:J

.field public final mTmpUidBatteryUsage:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsage2:Landroid/util/SparseArray;

.field public final mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

.field public final mTmpUserIds:Landroid/util/ArraySet;

.field public final mUidBatteryUsage:Landroid/util/SparseArray;

.field public final mUidBatteryUsageInWindow:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$GVjH5JD3sTOwGKB6DypsoPOGbCs(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 0

    .line 830
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Lvw7zZMxSUr0N2eHhDJL56S52v0(Lcom/android/server/am/AppBatteryTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void
.end method

.method public static synthetic $r8$lambda$P-Ua0UoczzrCFByY9q-jpnqiqVk(Lcom/android/server/am/AppBatteryTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker;->onCurrentDrainMonitorEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>()V

    sput-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 121
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    .line 122
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    .line 128
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 147
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 153
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 160
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 164
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 167
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 170
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 174
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    const-wide/16 p1, 0x0

    .line 185
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 189
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    if-nez p3, :cond_0

    const-wide/32 p1, 0x1b7740

    .line 200
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    const-wide/32 p1, 0x493e0

    .line 203
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x7d0

    .line 207
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 208
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 211
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4

    .line 753
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 754
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 755
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V
    .locals 4

    .line 761
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 762
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 763
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3, p2, p3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkBatteryUsageStats()V
    .locals 13

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 437
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 439
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 440
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v0, v8}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 442
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    :try_start_2
    iget-wide v0, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 444
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_0

    .line 445
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 446
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 447
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v6, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 448
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    .line 452
    invoke-virtual {v12}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v6

    .line 453
    invoke-virtual {v6, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    .line 467
    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v10, v0, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 472
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 471
    invoke-virtual {v7, v1, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 475
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void

    :catchall_1
    move-exception v0

    .line 442
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 475
    :goto_2
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 476
    throw v0
.end method

.method public clearDebugUidPercentage()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 802
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 819
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    const-string v3, "APP BATTERY STATE TRACKER:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 823
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 826
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 828
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 829
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 834
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :catch_0
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 838
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    const-string v5, "  Last battery usage start="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    invoke-static {v1, v5, v6}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 842
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    const-string v5, "Battery usage over last "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 846
    iget-object v5, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 848
    iget-wide v8, v5, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v8, v12, v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    sub-long v8, v12, v10

    .line 849
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 851
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    const-string v4, "(none)"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 854
    :cond_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v8, 0x0

    move v15, v8

    :goto_0
    if-ge v15, v6, :cond_2

    .line 855
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 856
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 857
    invoke-virtual {v8, v9, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v8

    move-object v14, v8

    .line 858
    iget-object v8, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    move-object/from16 v16, v14

    iget v14, v5, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    move-object/from16 v2, v16

    .line 859
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    move-wide/from16 v19, v10

    move-wide/from16 v17, v12

    .line 861
    invoke-virtual {v8, v9, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v8

    .line 862
    new-instance v10, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v10, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 863
    invoke-virtual {v10, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v10

    .line 864
    invoke-virtual {v10, v9, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v10

    .line 865
    const-string v11, "%s%s: [%s] %s (%s) | %s (%s) | %s (%s) | %s\n"

    move-object v12, v8

    .line 866
    invoke-static {v9}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    .line 867
    invoke-virtual {v5, v9}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v13

    invoke-static {v13}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    .line 868
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v10

    .line 869
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v12

    .line 870
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v12

    .line 871
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v21, v14

    .line 872
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v14

    .line 873
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 874
    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v11

    move-object v9, v13

    move-object/from16 v13, v16

    move-object/from16 v11, v22

    move-object/from16 v16, v0

    move v0, v15

    move-object/from16 v15, v21

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Object;

    move-result-object v8

    .line 865
    invoke-virtual {v1, v2, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v15, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v12, v17

    move-wide/from16 v10, v19

    goto/16 :goto_0

    .line 877
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 877
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 5

    .line 883
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 890
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz v1, :cond_2

    .line 892
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 895
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 896
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 897
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 898
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x20b00000002L

    .line 940
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10e00000001L

    .line 941
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000003L

    .line 942
    invoke-virtual {p1, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 943
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 905
    iget-object v3, v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 909
    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v4

    const/4 v6, 0x2

    .line 910
    invoke-virtual {v2, v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v7

    const/4 v9, 0x3

    .line 911
    invoke-virtual {v2, v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v10

    const/4 v12, 0x4

    .line 912
    invoke-virtual {v2, v12}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v2, v4, v15

    if-nez v2, :cond_1

    cmpl-double v2, v7, v15

    if-nez v2, :cond_1

    cmpl-double v2, v10, v15

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    move-wide v15, v13

    const-wide v12, 0x20b00000001L

    .line 918
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    move-wide/from16 v17, v10

    const-wide v9, 0x10500000001L

    move/from16 v11, p2

    .line 919
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 920
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 923
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    move-wide/from16 v3, v17

    const/4 v14, 0x3

    .line 926
    invoke-virtual {v0, v1, v14, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    move-wide v3, v15

    const/4 v2, 0x4

    .line 929
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 932
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTrackerInfoForStatsd(I)[B
    .locals 13

    .line 295
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    .line 302
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    const/4 p1, 0x1

    aget-wide v2, p0, p1

    add-double/2addr v0, v2

    const/4 p1, 0x2

    aget-wide v4, p0, p1

    add-double/2addr v0, v4

    const/4 p1, 0x3

    aget-wide v6, p0, p1

    add-double/2addr v0, v6

    const/4 p1, 0x4

    aget-wide p0, p0, p1

    add-double/2addr v0, p0

    .line 323
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v9, 0x10500000001L

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v11

    .line 324
    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000002L

    mul-double/2addr v4, v11

    .line 326
    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000003L

    mul-double/2addr v6, v11

    .line 328
    invoke-virtual {v8, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000004L

    mul-double/2addr v2, v11

    .line 330
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000005L

    mul-double/2addr p0, v11

    .line 332
    invoke-virtual {v8, v0, v1, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 334
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 335
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 297
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 411
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz p0, :cond_1

    .line 412
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_1
    monitor-exit v1

    return-object p1

    .line 413
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logAppBatteryTrackerIfNeeded()V
    .locals 19

    move-object/from16 v0, p0

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 251
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 252
    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 253
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    sub-long v5, v1, v5

    iget-wide v7, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    cmp-long v4, v5, v7

    if-gez v4, :cond_0

    .line 254
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 256
    :cond_0
    iput-wide v1, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 258
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 260
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 261
    :try_start_1
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 262
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 263
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 266
    :cond_1
    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppBatteryTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v11

    .line 281
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    const/16 v18, 0x0

    const/16 v5, 0x1b9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 269
    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 258
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onCurrentDrainMonitorEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 769
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 770
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 775
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 776
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 779
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 783
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 784
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 785
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v0, 0x0

    .line 786
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 787
    monitor-exit p1

    :cond_2
    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 8

    .line 221
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 222
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 224
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 225
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 227
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 228
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void
.end method

.method public onUidRemoved(I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 374
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 375
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUidRemovedLocked(I)V

    .line 376
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 356
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 366
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserRemovedLocked(I)V

    .line 367
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserStarted(I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 342
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserStopped(I)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 3

    .line 807
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 809
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 810
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v1, 0x0

    .line 811
    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 812
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void

    :catchall_0
    move-exception p0

    .line 812
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final scheduleBatteryUsageStatsUpdateIfNecessary(J)V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 240
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->logAppBatteryTrackerIfNeeded()V

    return-void

    .line 240
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final scheduleBgBatteryUsageStatsCheck()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setDebugUidPercentage([I[[D)V
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 793
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    aget v2, p1, v0

    new-instance v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    aget-object v4, p2, v0

    .line 795
    invoke-virtual {v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v3

    .line 794
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return-void
.end method

.method public final updateBatteryUsageStatsAndCheck()V
    .locals 7

    .line 423
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    return-void

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 431
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBatteryUsageStatsIfNecessary(JZ)Z
    .locals 5

    .line 487
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 491
    :cond_1
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 494
    :try_start_1
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move p3, v2

    goto :goto_1

    .line 498
    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    move p3, v1

    .line 506
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_3

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnce(J)V

    .line 510
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 511
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 512
    iput-boolean v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 513
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 514
    monitor-exit p3

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    return v1

    .line 506
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final updateBatteryUsageStatsOnce(J)V
    .locals 22

    move-object/from16 v0, p0

    .line 520
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 521
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 522
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 523
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object v6

    .line 524
    iget-wide v7, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 526
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 527
    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 528
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    :goto_0
    if-ltz v2, :cond_1

    .line 530
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 532
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 535
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 543
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    const-wide/16 v10, 0x0

    .line 544
    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    const-wide/16 v1, 0x0

    .line 545
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 547
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v1

    move-wide v13, v1

    goto :goto_2

    :cond_2
    move-wide v13, v10

    :goto_2
    if-eqz v12, :cond_3

    .line 548
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v1

    goto :goto_3

    :cond_3
    move-wide/from16 v1, p1

    :goto_3
    sub-long/2addr v1, v13

    cmp-long v4, v1, v7

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const/16 v17, 0x0

    if-ltz v4, :cond_4

    .line 554
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 555
    :try_start_1
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    move-wide/from16 v18, v10

    long-to-double v10, v7

    mul-double/2addr v10, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    long-to-double v5, v1

    div-double/2addr v10, v5

    invoke-static {v3, v9, v10, v11}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 556
    monitor-exit v4

    move/from16 v9, v17

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v18, v10

    .line 561
    :goto_4
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 562
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 565
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 566
    :try_start_2
    iget-wide v10, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 567
    iput-wide v13, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 568
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    cmp-long v4, v13, v10

    if-lez v4, :cond_6

    cmp-long v4, v10, v18

    if-lez v4, :cond_6

    .line 572
    new-instance v4, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 573
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    .line 574
    invoke-virtual {v4, v10, v11, v13, v14}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    move-wide v5, v1

    const-wide/16 v1, 0x0

    move-wide/from16 v18, v5

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    .line 576
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v1

    sub-long/2addr v13, v10

    add-long v13, v18, v13

    if-eqz v1, :cond_5

    .line 584
    :try_start_3
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_5

    .line 586
    :cond_5
    const-string v1, "ActivityManager"

    const-string v2, "Stat was null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 589
    :catch_0
    const-string v1, "ActivityManager"

    const-string v2, "Failed to close a stat"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-wide v1, v13

    goto :goto_6

    :cond_6
    move-wide/from16 v18, v1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v1, v18

    :goto_6
    if-eqz v9, :cond_7

    cmp-long v4, v1, v7

    if-ltz v4, :cond_7

    .line 594
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 595
    :try_start_4
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    long-to-double v13, v7

    mul-double/2addr v13, v15

    long-to-double v1, v1

    div-double/2addr v13, v1

    invoke-static {v3, v9, v13, v14}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 596
    monitor-exit v4

    move/from16 v9, v17

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 601
    :cond_7
    :goto_7
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v4, v17

    :goto_8
    if-ge v4, v2, :cond_9

    .line 603
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 604
    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    .line 605
    iget-object v15, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    move/from16 v16, v2

    sget-object v2, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v15, v13, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 606
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-ltz v14, :cond_8

    .line 610
    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 613
    invoke-virtual {v13, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_c

    .line 616
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v16

    goto :goto_8

    .line 636
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-static {v2, v4}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 637
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 638
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz v9, :cond_a

    sub-long v1, p1, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v10, v7

    .line 644
    new-instance v4, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 645
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    .line 646
    invoke-virtual {v4, v1, v2, v10, v11}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    sub-long v1, v10, v1

    .line 647
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 649
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_6
    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v3, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 651
    monitor-exit v1

    goto :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :cond_a
    :goto_a
    if-eqz v12, :cond_b

    .line 668
    :try_start_7
    invoke-virtual {v12}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_b

    .line 670
    :cond_b
    const-string v0, "ActivityManager"

    const-string v1, "Stat was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_b

    .line 673
    :catch_1
    const-string v0, "ActivityManager"

    const-string v1, "Failed to close a stat"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    .line 637
    :goto_c
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_5
    move-exception v0

    .line 568
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 535
    :goto_d
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public final updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;
    .locals 7

    .line 681
    const-string v0, "ActivityManager"

    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 682
    invoke-virtual {p5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {p4, v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    .line 684
    new-array v1, p5, [Landroid/os/BatteryUsageStatsQuery;

    .line 685
    invoke-virtual {p4}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p6, p4}, Landroid/os/BatteryStatsInternal;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 686
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p6

    if-eqz p6, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 692
    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/BatteryUsageStats;

    .line 693
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_3

    .line 695
    :try_start_0
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 696
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryUsageStats;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_2

    .line 698
    :cond_2
    const-string v1, "Stat was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 701
    :catch_0
    const-string v1, "Failed to close a stat in BatteryUsageStats List"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 704
    :cond_3
    invoke-virtual {p6}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_8

    .line 706
    invoke-virtual {p6}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v0

    .line 707
    invoke-virtual {p6}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p5, p1, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-lez p5, :cond_4

    long-to-double p1, p1

    mul-double/2addr p1, v5

    sub-long/2addr v3, v0

    long-to-double v0, v3

    div-double/2addr p1, v0

    .line 709
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 710
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 711
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UidBatteryConsumer;

    .line 714
    invoke-virtual {p2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p4

    .line 715
    invoke-static {p4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_3

    .line 723
    :cond_5
    invoke-static {p4}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p5

    if-lez p5, :cond_6

    .line 725
    invoke-static {v2, p5}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 727
    :cond_6
    new-instance p5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p5, p2, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 728
    invoke-virtual {p5, v5, v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p2

    .line 729
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p5

    if-gez p5, :cond_7

    .line 731
    invoke-virtual {p3, p4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 733
    :cond_7
    invoke-virtual {p3, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 734
    invoke-virtual {p4, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_3

    :cond_8
    return-object p6
.end method
