.class public Lcom/android/server/power/stats/WakelockPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "WakelockPowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "cpu.idle"

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 30

    .line 53
    new-instance v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/WakelockPowerCalculator-IA;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object v8, v1

    move v9, v3

    move-wide v10, v4

    move-wide v12, v10

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    :goto_0
    const/16 v14, 0xc

    if-ltz v9, :cond_2

    .line 62
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 63
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v4, p3

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V

    .line 65
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v15, v14, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 66
    invoke-virtual {v1, v14, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 67
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-long v20, v20, v3

    .line 69
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v12, v3

    .line 72
    :cond_0
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 75
    iget-wide v5, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    move-wide/from16 v18, v3

    move-wide v10, v5

    move-object v8, v15

    :cond_1
    add-int/lit8 v9, v9, -0x1

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object v15, v8

    move-wide v9, v10

    move-wide/from16 v28, v12

    move v0, v14

    move-wide/from16 v11, v18

    move-wide/from16 v13, v20

    move v8, v1

    move-object/from16 v1, p0

    .line 82
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V

    .line 84
    iget-wide v3, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v15, :cond_3

    .line 86
    iget-wide v1, v2, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 88
    invoke-virtual {v1, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_3
    move-object/from16 v22, p0

    move-object/from16 v23, p2

    move-wide/from16 v24, p3

    move-wide/from16 v26, p5

    .line 91
    invoke-virtual/range {v22 .. v27}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v1

    cmp-long v5, v1, v16

    if-gez v5, :cond_4

    move-wide/from16 v1, v16

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 95
    invoke-virtual {v6, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v7, v28

    add-double v2, v7, v3

    .line 99
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v6, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0, v13, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 105
    invoke-virtual {v1, v0, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V
    .locals 7

    .line 113
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 116
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 120
    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x3e8

    .line 125
    div-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 128
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V
    .locals 0

    move-wide p6, p5

    move-wide p4, p3

    move-object p3, p2

    move-object p2, p0

    .line 138
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide p3

    sub-long/2addr p3, p12

    const-wide/16 p5, 0x0

    cmp-long p0, p3, p5

    if-lez p0, :cond_0

    .line 141
    iget-object p0, p2, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p5

    add-long/2addr p10, p3

    .line 146
    iput-wide p10, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-double/2addr p8, p5

    .line 147
    iput-wide p8, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    return-void

    .line 149
    :cond_0
    iput-wide p5, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    const-wide/16 p2, 0x0

    .line 150
    iput-wide p2, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J
    .locals 0

    .line 160
    invoke-virtual {p1, p4, p5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide p4

    const/4 p0, 0x0

    .line 162
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide p0

    sub-long/2addr p4, p0

    const-wide/16 p0, 0x3e8

    .line 163
    div-long/2addr p4, p0

    return-wide p4
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
