.class public Lcom/android/server/power/stats/GnssPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "GnssPowerCalculator.java"


# instance fields
.field public final mAveragePowerGnssOn:D

.field public final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 36
    const-string v0, "gps.on"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const/4 v0, 0x2

    .line 37
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const-string v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move-object/from16 v13, p2

    move-wide/from16 v7, p3

    .line 54
    invoke-virtual {v3, v13, v7, v8, v2}, Lcom/android/server/power/stats/GnssPowerCalculator;->getAverageGnssPower(Landroid/os/BatteryStats;JI)D

    move-result-wide v9

    .line 57
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v14

    .line 58
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    const-wide/16 v5, 0x0

    :goto_0
    if-ltz v4, :cond_1

    .line 59
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    .line 61
    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getGnssEnergyConsumptionUC()J

    move-result-wide v2

    move-wide/from16 v16, v5

    .line 62
    invoke-static {v2, v3, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    .line 63
    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    move-wide/from16 v18, v2

    move v2, v4

    move-object v4, v11

    move-wide/from16 v11, v18

    move-object/from16 v3, p0

    move-object/from16 p6, v14

    move-wide/from16 v13, v16

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/power/stats/GnssPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D

    move-result-wide v5

    .line 65
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_0

    add-double/2addr v5, v13

    goto :goto_1

    :cond_0
    move-wide v5, v13

    :goto_1
    add-int/lit8 v4, v2, -0x1

    move-object/from16 v3, p0

    move-object/from16 v13, p2

    move-wide/from16 v7, p3

    move-object/from16 v14, p6

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-wide v13, v5

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getGnssEnergyConsumptionUC()J

    move-result-wide v2

    .line 71
    invoke-static {v2, v3, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 74
    invoke-static {v2, v3}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    move-wide v5, v13

    goto :goto_2

    .line 78
    :goto_3
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 80
    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 81
    invoke-virtual {v0, v15}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v3, v13, v14, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p2, p4, p5, v0}, Lcom/android/server/power/stats/GnssPowerCalculator;->computeDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide p4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    .line 97
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/android/server/power/stats/GnssPowerCalculator;->computePower(JD)D

    move-result-wide p6

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p8, p9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p6

    :goto_0
    const/16 p0, 0xa

    .line 100
    invoke-virtual {p1, p0, p4, p5}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/UidBatteryConsumer$Builder;

    .line 101
    invoke-virtual {p1, p0, p6, p7, p3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-wide p6
.end method

.method public final computeDuration(Landroid/os/BatteryStats$Uid;JI)J
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p0

    const/16 p1, -0x2710

    .line 107
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Sensor;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final computePower(JD)D
    .locals 0

    .line 0
    long-to-double p0, p1

    mul-double/2addr p0, p3

    const-wide p2, 0x414b774000000000L    # 3600000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public final getAverageGnssPower(Landroid/os/BatteryStats;JI)D
    .locals 18

    move-object/from16 v0, p0

    .line 121
    iget-wide v1, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v8, v3

    const-wide/16 v6, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v5, v10, :cond_1

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    .line 129
    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    add-long/2addr v6, v14

    const-wide/16 v16, 0x0

    .line 131
    iget-object v1, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    aget-wide v1, v1, v5

    long-to-double v14, v14

    mul-double/2addr v1, v14

    add-double/2addr v8, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v0, v6, v16

    if-eqz v0, :cond_2

    long-to-double v0, v6

    div-double/2addr v8, v0

    return-wide v8

    :cond_2
    return-wide v3
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
