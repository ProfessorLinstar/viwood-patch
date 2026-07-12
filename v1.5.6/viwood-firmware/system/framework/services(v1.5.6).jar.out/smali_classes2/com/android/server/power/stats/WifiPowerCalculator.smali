.class public Lcom/android/server/power/stats/WifiPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mWifiPowerPerPacket:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5

    .line 62
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.on"

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 65
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.scan"

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 67
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.batchedscan"

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 69
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.idle"

    .line 70
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 71
    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v2, "wifi.controller.tx"

    .line 72
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 73
    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v3, "wifi.controller.rx"

    .line 74
    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v2, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 76
    invoke-static {p1}, Lcom/android/server/power/stats/WifiPowerCalculator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    .line 79
    invoke-virtual {v0}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    return-void
.end method

.method public static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 4

    .line 334
    const-string/jumbo v0, "wifi.active"

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    const-wide v2, 0x404e848000000000L    # 61.03515625

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calcGlobalPowerWithoutControllerDataMah(J)D
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcPowerFromControllerDataMah(JJJ)D
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 308
    invoke-virtual {v0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 309
    invoke-virtual {p0, p5, p6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public calcPowerWithoutControllerDataMah(JJJJJ)D
    .locals 0

    add-long/2addr p1, p3

    long-to-double p1, p1

    .line 315
    iget-wide p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    mul-double/2addr p1, p3

    iget-object p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 317
    invoke-virtual {p3, p5, p6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-object p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 318
    invoke-virtual {p3, p7, p8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 319
    invoke-virtual {p0, p9, p10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 21

    move-object/from16 v1, p7

    .line 91
    sget-object v2, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 94
    new-instance v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;

    const/4 v13, 0x0

    invoke-direct {v4, v13}, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;-><init>(Lcom/android/server/power/stats/WifiPowerCalculator-IA;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v14

    .line 97
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v15, 0x1

    sub-int/2addr v3, v15

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0xb

    if-ltz v3, :cond_5

    .line 98
    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    .line 99
    sget-object v8, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v8, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v7, v6}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 102
    iput-object v2, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 103
    array-length v8, v2

    new-array v8, v8, [D

    iput-object v8, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    goto :goto_1

    :cond_0
    move-object v2, v13

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC()J

    move-result-wide v11

    move v8, v6

    .line 111
    invoke-static {v11, v12, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    move v9, v5

    .line 113
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    move v10, v9

    const/4 v9, 0x0

    move/from16 v20, v10

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v10

    move/from16 v20, v3

    move-object/from16 p5, v7

    move v0, v8

    move-object/from16 v3, p0

    move-wide/from16 v7, p3

    .line 113
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/power/stats/WifiPowerCalculator;->calculateApp(Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;Landroid/os/BatteryStats$Uid;IJIZJ)V

    .line 116
    invoke-virtual/range {p5 .. p5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    add-long v16, v16, v7

    .line 118
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    add-double v18, v18, v7

    .line 121
    :cond_2
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    move-object/from16 v3, p5

    invoke-virtual {v3, v0, v7, v8}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 123
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    invoke-virtual {v3, v0, v7, v8, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 126
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    .line 127
    :goto_2
    array-length v0, v2

    if-ge v5, v0, :cond_4

    .line 128
    aget-object v0, v2, v5

    .line 129
    iget v7, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v7, :cond_3

    goto :goto_3

    .line 135
    :cond_3
    iget-object v7, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    aget-wide v7, v7, v5

    invoke-virtual {v3, v0, v7, v8, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v20, -0x1

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiEnergyConsumptionUC()J

    move-result-wide v2

    .line 142
    invoke-static {v2, v3, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v5

    const/4 v9, 0x0

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v10

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move v1, v15

    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    move-wide v15, v2

    move-object/from16 v3, p0

    .line 143
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/power/stats/WifiPowerCalculator;->calculateRemaining(Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;ILandroid/os/BatteryStats;JIZJDJ)V

    move-object/from16 v2, p1

    const/4 v9, 0x0

    .line 147
    invoke-virtual {v2, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v6, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    .line 149
    invoke-virtual {v3, v0, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v6, v4, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    add-double/2addr v6, v13

    .line 151
    invoke-virtual {v3, v0, v6, v7, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 153
    invoke-virtual {v2, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0, v13, v14, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;Landroid/os/BatteryStats$Uid;IJIZJ)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    const/4 v6, 0x2

    .line 164
    invoke-virtual {v1, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxPackets:J

    const/4 v7, 0x3

    .line 167
    invoke-virtual {v1, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxPackets:J

    .line 170
    invoke-virtual {v1, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxBytes:J

    .line 173
    invoke-virtual {v1, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxBytes:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p7, :cond_4

    move-object/from16 v12, p0

    .line 177
    iget-boolean v13, v12, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    if-eqz v13, :cond_4

    .line 178
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 180
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 181
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    aget-object v6, v6, v10

    .line 182
    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    .line 184
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    .line 185
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v15

    .line 186
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v7, v17, v13

    add-long/2addr v7, v15

    .line 188
    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    if-ne v2, v11, :cond_0

    .line 191
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    goto :goto_0

    .line 193
    :cond_0
    invoke-static/range {p8 .. p9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    .line 202
    :goto_0
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v5, :cond_7

    .line 203
    :goto_1
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v7, v5

    if-ge v10, v7, :cond_7

    .line 204
    aget-object v5, v5, v10

    iget v5, v5, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v11, :cond_2

    .line 210
    iget-object v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    .line 212
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v13

    .line 213
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v15

    .line 214
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v17

    move-object/from16 v12, p0

    .line 211
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v8

    aput-wide v8, v7, v10

    goto :goto_2

    .line 216
    :cond_2
    iget-object v7, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    .line 217
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v8

    aput-wide v8, v7, v10

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 222
    :cond_3
    iput-wide v6, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    .line 223
    iput-wide v8, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    .line 224
    iget-object v0, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    if-eqz v0, :cond_7

    .line 225
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->fill([DD)V

    return-void

    .line 229
    :cond_4
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 230
    iput-wide v12, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    if-ne v2, v11, :cond_6

    .line 233
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v16

    div-long v19, v16, v14

    move-wide/from16 v21, v6

    :goto_3
    const/4 v2, 0x5

    if-ge v10, v2, :cond_5

    .line 236
    invoke-virtual {v1, v10, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v6

    div-long/2addr v6, v14

    add-long v21, v21, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 238
    :cond_5
    iget-wide v1, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxPackets:J

    iget-wide v3, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxPackets:J

    move-wide v15, v3

    move-wide/from16 v17, v12

    move-object/from16 v12, p0

    move-wide v13, v1

    invoke-virtual/range {v12 .. v22}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerWithoutControllerDataMah(JJJJJ)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    goto :goto_4

    .line 243
    :cond_6
    invoke-static/range {p8 .. p9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    .line 246
    :goto_4
    iget-object v0, v0, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    if-eqz v0, :cond_7

    .line 249
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->fill([DD)V

    :cond_7
    return-void
.end method

.method public final calculateRemaining(Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;ILandroid/os/BatteryStats;JIZJDJ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    move/from16 v2, p6

    const/4 v3, 0x2

    const-wide/16 v8, 0x0

    if-ne v1, v3, :cond_0

    .line 268
    invoke-static/range {p12 .. p13}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v8

    :goto_0
    const/4 v5, 0x1

    if-eqz p7, :cond_2

    .line 271
    iget-boolean v6, v0, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    if-eqz v6, :cond_2

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 276
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    .line 277
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long v16, v10, v14

    add-long v16, v16, v12

    if-ne v1, v5, :cond_4

    .line 282
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double v18, v1, v3

    cmpl-double v1, v18, v8

    if-nez v1, :cond_1

    move-wide v5, v10

    move-wide v3, v12

    move-wide v1, v14

    .line 286
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, v18

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    if-ne v1, v5, :cond_3

    .line 292
    invoke-virtual {v0, v10, v11}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcGlobalPowerWithoutControllerDataMah(J)D

    move-result-wide v3

    :cond_3
    move-wide/from16 v16, v10

    :cond_4
    :goto_1
    const-wide/16 v0, 0x0

    sub-long v5, v16, p8

    .line 296
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    sub-double v3, v3, p10

    .line 297
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/power/stats/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xb

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
