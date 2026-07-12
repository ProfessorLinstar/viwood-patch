.class public Lcom/android/server/power/stats/ScreenPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "ScreenPowerCalculator.java"


# instance fields
.field public final mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6

    .line 53
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 55
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 56
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    .line 59
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 60
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.full.display"

    .line 61
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 0

    .line 162
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 16

    move-object/from16 v9, p1

    .line 74
    new-instance v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/ScreenPowerCalculator-IA;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnEnergyConsumptionUC()J

    move-result-wide v7

    move-object/from16 v0, p7

    .line 77
    invoke-static {v7, v8, v0}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    .line 78
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateTotalDurationAndPower(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V

    .line 88
    invoke-virtual {v9}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v6, :cond_0

    .line 108
    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/android/server/power/stats/ScreenPowerCalculator;->smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;J)V

    .line 110
    iget-wide v3, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 111
    iget-wide v5, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    goto :goto_1

    .line 91
    :cond_0
    new-instance v6, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;

    invoke-direct {v6, v10}, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/ScreenPowerCalculator-IA;)V

    .line 92
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v7

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    if-ltz v10, :cond_2

    .line 93
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    .line 95
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    .line 94
    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateAppUsingEnergyConsumption(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    move-object/from16 p5, v3

    .line 96
    iget-wide v3, v6, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v15, v8, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, v6, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 98
    invoke-virtual {v3, v8, v4, v5, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 100
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    iget-wide v3, v6, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v11, v3

    .line 102
    iget-wide v3, v6, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v13, v3

    :cond_1
    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v4, p3

    move-object/from16 v3, p5

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move-wide v3, v11

    move-wide v5, v13

    .line 114
    :goto_1
    invoke-virtual {v9, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v10, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 117
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 116
    invoke-virtual {v0, v8, v10, v11, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v10, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    .line 118
    invoke-virtual {v0, v8, v10, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v0, 0x1

    .line 121
    invoke-virtual {v9, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v8, v3, v4, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 124
    invoke-virtual {v0, v8, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateAppUsingEnergyConsumption(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .locals 2

    .line 149
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    .line 151
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getScreenOnEnergyConsumptionUC()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-gez p0, :cond_0

    .line 153
    const-string p0, "ScreenPowerCalculator"

    const-string p2, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p2, 0x0

    .line 154
    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void

    .line 158
    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateTotalDurationAndPower(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V
    .locals 2

    .line 133
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 p6, 0x2

    if-eq p2, p6, :cond_0

    .line 142
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void

    .line 138
    :cond_0
    invoke-static {p7, p8}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 167
    iget-object v4, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v4

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    .line 170
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    .line 172
    iget-object v13, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v13, v13, v8

    invoke-virtual {v13, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v9

    add-double/2addr v5, v9

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_0

    .line 174
    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v13

    div-long/2addr v13, v11

    .line 176
    iget-object v10, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v10, v10, v8

    invoke-virtual {v10, v13, v14}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v13

    int-to-float v10, v9

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v10, v15

    move/from16 v16, v8

    float-to-double v7, v10

    mul-double/2addr v13, v7

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    div-double/2addr v13, v7

    add-double/2addr v5, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    goto :goto_1

    :cond_0
    move/from16 v16, v8

    add-int/lit8 v8, v16, 0x1

    goto :goto_0

    :cond_1
    return-wide v5
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 240
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    .line 244
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 2

    const/4 v0, 0x0

    .line 223
    filled-new-array {v0}, [I

    move-result-object v1

    .line 226
    aget v1, v1, v0

    .line 227
    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;J)V
    .locals 15

    move-object/from16 v0, p1

    .line 196
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 197
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    if-ltz v2, :cond_1

    .line 198
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    .line 199
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    move-wide/from16 v11, p3

    .line 200
    invoke-virtual {p0, v9, v11, v12}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    .line 201
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v1, v9, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 202
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v8

    if-nez v8, :cond_0

    add-long/2addr v6, v13

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    move-object/from16 v2, p2

    .line 208
    iget-wide v8, v2, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 209
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    .line 210
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    .line 211
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v11

    invoke-virtual {v1, v11, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v11

    long-to-double v13, v11

    mul-double/2addr v13, v8

    long-to-double v4, v6

    div-double/2addr v13, v4

    const/4 v4, 0x0

    .line 213
    invoke-virtual {v10, v4, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 214
    invoke-virtual {v5, v4, v13, v14, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method
