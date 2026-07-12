.class public Lcom/android/server/power/stats/processor/PowerStatsExporter;
.super Ljava/lang/Object;
.source "PowerStatsExporter.java"


# static fields
.field public static final BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

.field public static final sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field public final mBatterySessionTimeSpanSlackMillis:J

.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$iKXb3jwJEiQ4S6b3NKDtSadkbS0(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->lambda$exportAggregatedPowerStats$0(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNT5uGKVgvyOpk7fJ8PTGvMFxnE(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->lambda$populateAggregatedBatteryConsumer$1(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_0fFBL0SpJgc9zuomLvKMCMfxk(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J[I)V
    .locals 0

    .line 335
    invoke-static {p9, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates([III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p2, p3, p4, p9}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {p5, p3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidPowerEstimate([J)D

    move-result-wide p0

    .line 344
    invoke-virtual {p5, p3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide p2

    if-eqz p6, :cond_3

    const/4 p4, 0x2

    .line 346
    aget p5, p9, p4

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    move p4, p5

    .line 358
    :goto_1
    aget-wide p5, p7, p4

    add-double/2addr p5, p0

    aput-wide p5, p7, p4

    .line 359
    aget-wide p5, p8, p4

    add-long/2addr p5, p2

    aput-wide p5, p8, p4

    :cond_3
    const/4 p4, 0x0

    .line 361
    aget-wide p5, p7, p4

    add-double/2addr p5, p0

    aput-wide p5, p7, p4

    .line 362
    aget-wide p0, p8, p4

    add-long/2addr p0, p2

    aput-wide p0, p8, p4

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    .line 49
    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .locals 2

    .line 58
    sget-wide v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->BATTERY_SESSION_TIME_SPAN_SLACK_MILLIS:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;J)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 65
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 66
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    return-void
.end method

.method public static areMatchingStates([III)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    aget p1, p0, v2

    if-eq p1, v2, :cond_2

    return v1

    .line 436
    :cond_1
    aget p1, p0, v2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    if-eq p2, v2, :cond_4

    if-eq p2, v0, :cond_3

    goto :goto_1

    .line 457
    :cond_3
    aget p0, p0, v1

    if-eq p0, v2, :cond_5

    return v1

    .line 451
    :cond_4
    aget p0, p0, v1

    if-eqz p0, :cond_5

    return v1

    :cond_5
    :goto_1
    return v2
.end method


# virtual methods
.method public exportAggregatedPowerStats(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 75
    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v3

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-wide/from16 v10, p3

    const/4 v7, 0x0

    :goto_0
    if-ltz v4, :cond_a

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 81
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v9

    const-string v12, "aggregated-power-stats"

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_5

    .line 85
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v9

    const-wide v12, 0x7fffffffffffffffL

    const-wide/high16 v14, -0x8000000000000000L

    const/4 v5, 0x0

    .line 88
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 89
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 90
    iget-wide v3, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    move-wide/from16 v18, v3

    .line 91
    iget-wide v3, v6, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long v3, v18, v3

    cmp-long v6, v18, v12

    if-gez v6, :cond_1

    move-wide/from16 v12, v18

    :cond_1
    cmp-long v6, v3, v14

    if-lez v6, :cond_2

    move-wide v14, v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v4

    cmp-long v3, v12, p3

    if-ltz v3, :cond_9

    cmp-long v3, v14, p5

    if-ltz v3, :cond_4

    goto :goto_5

    :cond_4
    cmp-long v3, v14, v10

    if-lez v3, :cond_5

    move-wide v10, v14

    .line 108
    :cond_5
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v4

    const-string v6, "aggregated-power-stats"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    .line 111
    :try_start_1
    const-string v4, "PowerStatsExporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read PowerStatsStore section "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_9

    .line 121
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 114
    :cond_7
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 115
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 118
    check-cast v6, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    .line 119
    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v6

    .line 118
    invoke-virtual {v0, v1, v6}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_8

    .line 108
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v1

    :cond_9
    :goto_5
    add-int/lit8 v4, v17, -0x1

    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v7, :cond_b

    .line 124
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mBatterySessionTimeSpanSlackMillis:J

    sub-long v3, p5, v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_c

    .line 126
    :cond_b
    iget-object v8, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v14, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;Landroid/os/BatteryUsageStats$Builder;)V

    move-object/from16 v9, p2

    move-wide/from16 v12, p5

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    .line 129
    :cond_c
    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->reset()V

    .line 130
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final gatherBatteryLevelInfo(Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[J)V
    .locals 6

    .line 237
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    sget-object p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->sBasePowerStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 238
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargePercent([J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    .line 239
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargeUah([J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 241
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    .line 242
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->getBatteryDischargeDuration([J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    return-void
.end method

.method public final getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;
    .locals 1

    .line 415
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p4, v0

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result p0

    if-nez p0, :cond_1

    move p5, v0

    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_2
    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$exportAggregatedPowerStats$0(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public final synthetic lambda$populateAggregatedBatteryConsumer$1(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V
    .locals 2

    .line 204
    invoke-static {p10, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->areMatchingStates([III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p3, p4, p10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 212
    aget-wide p2, p5, p1

    invoke-virtual {p6, p4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v0

    add-double/2addr p2, v0

    aput-wide p2, p5, p1

    .line 213
    aget-wide p2, p7, p1

    invoke-virtual {p6, p4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide p5

    add-long/2addr p2, p5

    aput-wide p2, p7, p1

    if-eqz p8, :cond_2

    .line 216
    invoke-virtual {p0, p9, p4}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->gatherBatteryLevelInfo(Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V
    .locals 14

    move-object/from16 v4, p2

    .line 195
    iget v11, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v12, 0x0

    move/from16 v3, p7

    if-ne v11, v0, :cond_0

    if-ne v3, v1, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v12

    .line 199
    :goto_0
    new-array v6, v1, [D

    .line 200
    new-array v8, v1, [J

    .line 202
    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v13

    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move/from16 v2, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V

    .line 201
    invoke-static {v13, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 221
    invoke-virtual {p1, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move v3, v11

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 226
    aget-wide v0, v6, v12

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 227
    aget-wide v0, v8, v12

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 229
    :cond_1
    invoke-virtual {v2, v3, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 231
    aget-wide v0, v6, v12

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 232
    aget-wide v0, v8, v12

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_2
    return-void
.end method

.method public final populateBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)V
    .locals 13

    .line 260
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 265
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    .line 266
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    .line 267
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v6, v0, [J

    .line 270
    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v0

    const/16 v1, 0x12

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v1, :cond_1

    move v7, v11

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 275
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v10

    :goto_0
    move v8, v10

    :goto_1
    const/4 v12, 0x3

    if-ge v8, v12, :cond_8

    .line 281
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v8, :cond_4

    goto :goto_5

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    move v9, v10

    :goto_2
    if-ge v9, v12, :cond_7

    .line 290
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    goto :goto_3

    :cond_6
    if-eq v9, v11, :cond_5

    goto :goto_4

    .line 298
    :goto_3
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateUidBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;Landroid/util/IntArray;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[JZII)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method public final populateBatteryLevelInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V
    .locals 2

    .line 247
    iget-wide v0, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargePct:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    iget-wide v0, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 248
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    iget-wide v0, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeDurationMs:J

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p1, p2, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;->batteryDischargeMah:D

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    return-void
.end method

.method public populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 2

    .line 137
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats()Ljava/util/List;

    move-result-object p2

    .line 138
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final populateBatteryUsageStatsBuilder(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 10

    .line 146
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->isSupportedPowerComponent(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v5, Lcom/android/server/power/stats/format/PowerStatsLayout;

    invoke-direct {v5, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 156
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v6, v0, [J

    .line 157
    new-instance v7, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;-><init>(Lcom/android/server/power/stats/processor/PowerStatsExporter-IA;)V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    const/4 v1, 0x3

    if-ge v8, v1, :cond_7

    .line 160
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v8, :cond_4

    :cond_2
    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    goto :goto_5

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v9, v0

    :goto_3
    if-ge v9, v1, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    if-eqz v9, :cond_6

    .line 171
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    goto :goto_4

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    const/4 p0, 0x1

    if-ne v9, p0, :cond_6

    .line 176
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateAggregatedBatteryConsumer(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[JLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;II)V

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_3

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    goto :goto_1

    :cond_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 182
    invoke-virtual {v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->isUidPowerAttributionSupported()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 183
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)V

    .line 186
    :cond_8
    invoke-virtual {v2, v3, v7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->populateBatteryLevelInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V

    return-void
.end method

.method public final populateUidBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;Landroid/util/IntArray;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[JZII)V
    .locals 22

    move-object/from16 v0, p1

    .line 312
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v1

    const/4 v2, 0x1

    move/from16 v5, p9

    if-nez v1, :cond_0

    if-eq v5, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v6, p2

    .line 317
    iget v1, v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    const/4 v3, 0x5

    if-eqz p7, :cond_1

    move v13, v3

    goto :goto_0

    :cond_1
    move v13, v2

    .line 320
    :goto_0
    new-array v11, v13, [D

    if-eqz p7, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    .line 322
    :goto_1
    new-array v12, v3, [J

    .line 324
    invoke-virtual/range {p4 .. p4}, Landroid/util/IntArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const-wide/16 v14, 0x0

    move-wide v7, v14

    :goto_2
    if-ltz v3, :cond_a

    move-object/from16 v4, p4

    move-wide v9, v7

    .line 325
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 327
    invoke-virtual {v0, v8}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v7

    .line 329
    invoke-static {v11, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    move-wide/from16 v16, v14

    const-wide/16 v14, 0x0

    .line 330
    invoke-static {v12, v14, v15}, Ljava/util/Arrays;->fill([JJ)V

    move-wide/from16 v18, v14

    .line 333
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v14

    move v15, v3

    new-instance v3, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;

    move/from16 v4, p8

    move-object v2, v7

    move-wide/from16 v20, v9

    move-object/from16 v9, p3

    move-object/from16 v7, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v12}, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;-><init>(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J)V

    .line 332
    invoke-static {v14, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 365
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->isScreenStateDataNeeded()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    move/from16 v3, p8

    goto :goto_3

    :cond_3
    move v3, v5

    .line 367
    :goto_3
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->isPowerStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v4, p9

    goto :goto_4

    :cond_4
    move v4, v5

    :goto_4
    move v6, v5

    :goto_5
    if-ge v6, v13, :cond_7

    .line 370
    aget-wide v7, v11, v6

    .line 371
    aget-wide v9, v12, v6

    cmpl-double v14, v7, v16

    if-nez v14, :cond_5

    cmp-long v14, v9, v18

    if-nez v14, :cond_5

    goto :goto_6

    .line 375
    :cond_5
    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 378
    invoke-virtual {v2, v14, v7, v8}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 379
    invoke-virtual {v2, v14, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_6
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    .line 385
    :cond_8
    invoke-virtual {v2, v1, v5}, Landroid/os/UidBatteryConsumer$Builder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 388
    aget-wide v6, v11, v5

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 390
    aget-wide v6, v12, v5

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 394
    :cond_9
    aget-wide v2, v11, v5

    move-wide/from16 v9, v20

    add-double v7, v9, v2

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v6, p2

    move/from16 v5, p9

    move-wide/from16 v14, v16

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    move-wide v9, v7

    .line 398
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    move-object/from16 p2, p0

    move/from16 p6, p8

    move/from16 p7, p9

    move-object/from16 p3, v0

    move/from16 p5, v1

    move-object/from16 p4, v2

    .line 400
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->getKeyForPartialTotal(Landroid/os/BatteryUsageStats$Builder;Landroid/os/AggregateBatteryConsumer$Builder;III)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 403
    invoke-virtual {v2, v0, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 405
    :cond_b
    invoke-virtual {v2, v1, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public setPowerComponentEnabled(IZ)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->setPowerComponentEnabled(IZ)V

    return-void
.end method
