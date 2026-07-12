.class public Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# instance fields
.field public final mAccumulatedBatteryUsageStatsSpanSize:I

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mLastAccumulationMonotonicHistorySize:J

.field public final mLock:Ljava/lang/Object;

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field public mPowerCalculators:Ljava/util/List;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$rlWqUVwnllBfJlxnTRJ-GZmZAb0(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 83
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 84
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 85
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 86
    iput p6, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    .line 87
    iput-object p7, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 88
    iput-object p8, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 90
    new-instance p0, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;

    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {p5, p0}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 91
    new-instance p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;

    invoke-direct {p0}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {p5, p0}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    return-void
.end method

.method public static shouldUpdateStats(Ljava/util/List;JJ)Z
    .locals 6

    .line 240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    if-ltz v0, :cond_0

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    .line 242
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p1, p3

    cmp-long p0, p1, v2

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 8

    .line 214
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 217
    new-instance v1, Lcom/android/server/power/stats/PowerStatsSpan;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    .line 218
    new-instance p1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {p1, v2}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 220
    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iget-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v6, v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 223
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {p1}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 224
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 226
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    return-void

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object p1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    .line 228
    invoke-virtual {p0, v1, p2}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpanAsync(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    return-void
.end method

.method public accumulateBatteryUsageStatsAsync(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 6

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->getMonotonicHistorySize()J

    move-result-wide v0

    .line 195
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 199
    :cond_0
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 200
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final applyPowerCalculators(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;Z)V
    .locals 13

    .line 426
    monitor-enter p2

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v8, v1, v3

    .line 429
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v1

    mul-long v10, v1, v3

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object p0

    .line 431
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 433
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    if-nez p4, :cond_0

    .line 435
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    const/16 v5, 0x442

    if-ne v4, v5, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 439
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/power/stats/PowerCalculator;

    if-eqz p0, :cond_2

    .line 445
    array-length v4, p0

    move v6, v2

    :goto_3
    if-ge v6, v4, :cond_4

    aget v7, p0, v6

    .line 446
    invoke-virtual {v5, v7}, Lcom/android/server/power/stats/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v6, p1

    move-object v7, p2

    move-object/from16 v12, p3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 455
    :goto_4
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    :cond_5
    monitor-exit p2

    return-void

    :goto_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V
    .locals 5

    const/4 p0, -0x1

    .line 549
    invoke-static {p2, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 554
    :cond_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p0

    .line 556
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 557
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 558
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v2

    .line 563
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 567
    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 568
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 569
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    .line 570
    invoke-virtual {p1, v2}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v2

    .line 571
    invoke-virtual {v2, v1}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;
    .locals 18

    move-object/from16 v0, p0

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v2

    .line 368
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 370
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v9

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v5

    .line 374
    new-instance v12, Landroid/os/BatteryUsageStats$Builder;

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v7

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v8

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 378
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v1

    .line 379
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    const-wide/16 v6, -0x1

    if-nez v4, :cond_3

    cmp-long v4, p3, v6

    if-nez v4, :cond_2

    cmp-long v4, p5, v6

    if-eqz v4, :cond_3

    .line 383
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BatteryUsageStatsQuery specifies a time range that is incompatible with PowerCalculators: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BatteryUsageStatsProv"

    invoke-static {v4, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    cmp-long v1, p3, v6

    if-nez v1, :cond_4

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v4

    move-wide v14, v4

    goto :goto_3

    :cond_4
    move-wide/from16 v14, p3

    .line 392
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v4

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v8

    sub-long v8, v14, v8

    add-long/2addr v4, v8

    .line 392
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    cmp-long v1, p5, v6

    if-eqz v1, :cond_5

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v4

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v6

    sub-long v6, p5, v6

    add-long/2addr v4, v6

    .line 395
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_4

    :cond_5
    move-wide/from16 v4, p7

    .line 398
    invoke-virtual {v12, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    :goto_4
    if-eqz v2, :cond_6

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v1

    move-object/from16 v2, p2

    .line 403
    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->applyPowerCalculators(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;Z)V

    goto :goto_5

    :cond_6
    move-object/from16 v2, p2

    .line 405
    :goto_5
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    .line 409
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery;->getPreferredHistoryDurationMs()J

    move-result-wide v3

    .line 407
    invoke-virtual {v12, v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;

    .line 413
    :cond_7
    iget-object v11, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v13

    move-wide/from16 v16, p5

    invoke-interface/range {v11 .. v17}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 417
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V

    move-object/from16 v1, p1

    .line 419
    invoke-virtual {v0, v12, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    return-object v12
.end method

.method public final getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 5

    .line 300
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 301
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 302
    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v1, v3

    .line 303
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 304
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 306
    :cond_1
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public final getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 19

    move-object/from16 v0, p0

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 472
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v7

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    .line 475
    new-instance v2, Landroid/os/BatteryUsageStats$Builder;

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v6

    invoke-direct/range {v2 .. v8}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 479
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v5, "BatteryUsageStatsProv"

    if-nez v1, :cond_1

    .line 480
    const-string v0, "PowerStatsStore is unavailable"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    .line 484
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v1

    .line 485
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 486
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v7

    const-string v8, "battery-usage-stats"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 501
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide v11, 0x7fffffffffffffffL

    const-wide/16 v13, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    const-wide/16 v16, 0x0

    .line 502
    iget-wide v9, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    move-object/from16 p1, v6

    move-object/from16 v18, v7

    iget-wide v6, v15, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v9, v6

    .line 503
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 504
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-object/from16 v6, p1

    move-object/from16 v7, v18

    goto :goto_3

    :cond_4
    move-object/from16 p1, v6

    const-wide/16 v16, 0x0

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-eqz v6, :cond_5

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v6

    cmp-long v6, v11, v6

    if-lez v6, :cond_2

    .line 512
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-eqz v6, :cond_6

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v6

    cmp-long v6, v13, v6

    if-gtz v6, :cond_2

    .line 518
    :cond_6
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v9

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v7

    .line 518
    invoke-virtual {v6, v9, v10, v7}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v6

    if-nez v6, :cond_8

    if-eqz v6, :cond_2

    .line 542
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    goto/16 :goto_2

    .line 524
    :cond_8
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 525
    check-cast v8, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 526
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryUsageStatsSection;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v8

    .line 527
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 529
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 535
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v9

    if-nez v9, :cond_a

    .line 536
    const-string v8, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 540
    :cond_a
    invoke-virtual {v2, v8}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 518
    :goto_5
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    .line 544
    :cond_b
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public final getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 10

    .line 278
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicStartTime()J

    move-result-wide v4

    .line 284
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicEndTime()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v8, p3

    .line 282
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 287
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 2

    .line 271
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 271
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    monitor-enter p1

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 256
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p1

    .line 258
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 259
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 260
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 256
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPowerCalculators()Ljava/util/List;
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_11

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/BatteryChargeCalculator;

    invoke-direct {v2}, Lcom/android/server/power/stats/BatteryChargeCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WakelockPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/MobileRadioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xe

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/PhonePowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xb

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WifiPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 133
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 137
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/SensorPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/SensorManager;

    .line 138
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 142
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/GnssPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/CameraPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 150
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/FlashlightPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_b
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 154
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AudioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 158
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/VideoPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 162
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/ScreenPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_e
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xf

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 166
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 171
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 175
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object p0

    .line 185
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method public final loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    .locals 6

    .line 310
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider-IA;)V

    const-wide/16 v1, 0x0

    .line 311
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    const-wide/16 v1, -0x1

    .line 312
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 313
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 314
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v1, "accumulated-battery-usage-stats"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v2

    .line 319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 320
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 321
    invoke-virtual {v4}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    check-cast v4, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    .line 323
    invoke-virtual {v4}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->getBatteryUsageStatsBuilder()Landroid/os/BatteryUsageStats$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 326
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartMonotonicTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 327
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getEndMonotonicTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .locals 2

    .line 463
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getEstimatedBatteryCapacity()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 464
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getBatteryTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 465
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getChargeTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    return-void
.end method

.method public final updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 337
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v2

    :cond_0
    move-wide v7, v2

    .line 341
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 342
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v4}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v9

    .line 344
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    if-nez v4, :cond_1

    .line 345
    new-instance v11, Landroid/os/BatteryUsageStats$Builder;

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    iput-object v11, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 349
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 352
    :cond_1
    iput-wide v9, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 354
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v4, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 355
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    sub-long v3, v9, v7

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    .line 357
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v6

    invoke-interface/range {v4 .. v10}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 360
    iget-object v1, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    return-void
.end method
