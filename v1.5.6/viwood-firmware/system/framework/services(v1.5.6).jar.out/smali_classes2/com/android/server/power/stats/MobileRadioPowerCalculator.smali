.class public Lcom/android/server/power/stats/MobileRadioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 13

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 48
    sget v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 67
    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide v0, 0x100000000L

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 69
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 73
    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_0
    const-wide v0, 0x110000000L

    .line 78
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_1

    .line 84
    :cond_1
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 88
    :goto_1
    const-string/jumbo v0, "radio.active"

    .line 89
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    .line 92
    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v0, v5

    move v4, v7

    .line 93
    :goto_2
    sget v9, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v4, v9, :cond_2

    .line 94
    const-string/jumbo v9, "modem.controller.tx"

    invoke-virtual {p1, v9, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    add-double/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v8

    int-to-double v9, v9

    div-double/2addr v0, v9

    .line 98
    :cond_3
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 101
    const-string/jumbo v0, "radio.on"

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    :goto_3
    sget v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v7, v1, :cond_5

    .line 103
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 104
    invoke-virtual {p1, v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 107
    :cond_4
    const-string/jumbo v0, "modem.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    mul-double/2addr v9, v0

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    invoke-direct {v3, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v7

    .line 111
    :goto_4
    sget v2, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v8, v2, :cond_5

    .line 112
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    div-double v9, v0, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-direct {v3, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 116
    :cond_5
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.scanning"

    .line 117
    invoke-virtual {p1, v1, v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calcIdlePowerAtSignalStrengthMah(JI)D
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p0, p0, p3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcInactiveStatePowerMah(JJ)D
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-nez v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p1

    .line 445
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p3

    add-double/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public calcPowerFromRadioActiveDurationMah(J)D
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcRxStatePowerMah(IIJ)D
    .locals 4

    const/high16 v0, 0x20000000

    const/4 v1, -0x1

    .line 396
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide p1

    .line 398
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unavailable Power Profile constant for key 0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p3

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public calcScanTimePowerMah(J)D
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcTxStatePowerMah(IIIJ)D
    .locals 4

    const/high16 v0, 0x30000000

    .line 420
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide p1

    .line 422
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v2

    .line 424
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unavailable Power Profile constant for key 0x"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobRadioPowerCalculator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0

    :cond_0
    long-to-double p0, p4

    mul-double/2addr v2, p0

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, p0

    return-wide v2
.end method

.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 129
    new-instance v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/MobileRadioPowerCalculator-IA;)V

    .line 131
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v7

    move-object/from16 v9, p7

    .line 132
    invoke-static {v7, v8, v9}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_0

    move-object v11, v6

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calculateActiveModemPowerMah(Landroid/os/BatteryStats;J)D

    move-result-wide v14

    .line 144
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v17, Landroid/util/LongArrayQueue;

    invoke-direct/range {v17 .. v17}, Landroid/util/LongArrayQueue;-><init>()V

    move-object/from16 v6, v16

    move-object/from16 v11, v17

    .line 149
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v12

    .line 150
    sget-object v18, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 152
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v19

    const/4 v13, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v13, v18

    move-wide/from16 v35, v7

    move/from16 v7, v19

    move-wide/from16 v18, v35

    :goto_1
    if-ltz v7, :cond_8

    .line 153
    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    move/from16 v20, v7

    .line 154
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    .line 155
    sget-object v9, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v13, v9, :cond_1

    .line 156
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    .line 157
    invoke-virtual {v8, v9}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v13

    :cond_1
    move-wide/from16 v21, v14

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v14

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 164
    :goto_2
    invoke-virtual {v0, v7, v9}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v14

    .line 166
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v9

    if-nez v9, :cond_3

    .line 167
    iget-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v0, v14

    iput-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    :cond_3
    const/16 v9, 0x8

    .line 169
    invoke-virtual {v8, v9, v14, v15}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v0, 0x2

    if-ne v10, v0, :cond_6

    .line 174
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC()J

    move-result-wide v0

    const-wide/16 v14, -0x1

    cmp-long v9, v0, v14

    if-eqz v9, :cond_7

    .line 176
    invoke-static {v0, v1}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    .line 177
    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v9

    if-nez v9, :cond_4

    .line 178
    iget-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v14, v0

    iput-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    :cond_4
    const/16 v9, 0x8

    .line 180
    invoke-virtual {v8, v9, v0, v1, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 183
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v13, :cond_7

    .line 184
    array-length v0, v13

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_7

    aget-object v9, v13, v1

    .line 185
    iget v14, v9, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v14, :cond_5

    goto :goto_4

    .line 191
    :cond_5
    invoke-virtual {v7, v14}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC(I)J

    move-result-wide v14

    .line 192
    invoke-static {v14, v15}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v14

    .line 193
    invoke-virtual {v8, v9, v14, v15, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 199
    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v11, v14, v15}, Landroid/util/LongArrayQueue;->addLast(J)V

    :cond_7
    add-int/lit8 v7, v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v9, p7

    move-wide/from16 v14, v21

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v21, v14

    const/4 v9, 0x0

    .line 204
    invoke-virtual {v2, v3, v4, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    .line 206
    iget-wide v14, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    cmp-long v9, v0, v14

    if-gez v9, :cond_9

    move-wide v0, v14

    :cond_9
    const/4 v9, 0x2

    if-eq v10, v9, :cond_10

    .line 213
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_10

    .line 215
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-wide/from16 v23, v7

    move-object/from16 v7, v20

    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    const-wide/16 v25, 0x0

    .line 216
    invoke-virtual {v11, v12}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v14

    move/from16 p5, v9

    long-to-double v8, v0

    cmpl-double v20, v8, v25

    if-nez v20, :cond_a

    move-wide/from16 v8, v25

    goto :goto_6

    :cond_a
    move-wide/from16 v27, v8

    long-to-double v8, v14

    mul-double v8, v8, v21

    div-double v8, v8, v27

    .line 227
    :goto_6
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v20, v11

    move/from16 v27, v12

    .line 228
    iget-wide v11, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v11, v8

    iput-wide v11, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    :goto_7
    const/16 v11, 0x8

    goto :goto_8

    :cond_b
    move-object/from16 v20, v11

    move/from16 v27, v12

    goto :goto_7

    .line 230
    :goto_8
    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 233
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    .line 234
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v11

    .line 235
    array-length v12, v13

    move-object/from16 v28, v6

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v12, :cond_f

    move/from16 v29, v6

    aget-object v6, v13, v29

    move-wide/from16 v30, v8

    .line 236
    iget v8, v6, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v8, :cond_c

    move-object/from16 v32, v11

    move/from16 v33, v12

    goto :goto_b

    .line 243
    :cond_c
    invoke-virtual {v11, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v8

    div-long v8, v8, v23

    move-object/from16 v32, v11

    move/from16 v33, v12

    long-to-double v11, v14

    cmpl-double v34, v11, v25

    if-nez v34, :cond_d

    move-wide/from16 v8, v25

    goto :goto_a

    :cond_d
    long-to-double v8, v8

    mul-double v8, v8, v30

    div-double/2addr v8, v11

    .line 253
    :goto_a
    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_b
    add-int/lit8 v6, v29, 0x1

    move-wide/from16 v8, v30

    move-object/from16 v11, v32

    move/from16 v12, v33

    goto :goto_9

    :cond_e
    move-object/from16 v28, v6

    :cond_f
    add-int/lit8 v12, v27, 0x1

    move/from16 v9, p5

    move-object/from16 v11, v20

    move-wide/from16 v7, v23

    move-object/from16 v6, v28

    goto/16 :goto_5

    :cond_10
    move-wide/from16 v23, v7

    const-wide/16 v25, 0x0

    .line 259
    iget-wide v6, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    sub-long v6, v0, v6

    iput-wide v6, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingDurationMs:J

    const/4 v9, 0x2

    if-ne v10, v9, :cond_11

    .line 263
    invoke-static/range {v18 .. v19}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    iget-wide v2, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    cmpg-double v0, v0, v25

    if-gez v0, :cond_15

    move-wide/from16 v0, v25

    .line 264
    iput-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    goto :goto_e

    :cond_11
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_12

    .line 268
    iget-wide v8, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    long-to-double v6, v6

    mul-double v14, v21, v6

    long-to-double v0, v0

    div-double/2addr v14, v0

    add-double/2addr v8, v14

    iput-wide v8, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    .line 274
    :cond_12
    invoke-virtual {v2}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 277
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 279
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    move-object/from16 v8, p0

    .line 281
    invoke-virtual {v8, v6, v7, v0, v1}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcInactiveStatePowerMah(JJ)D

    move-result-wide v11

    goto :goto_c

    :cond_13
    move-object/from16 v8, p0

    const/4 v9, 0x0

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 283
    :goto_c
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 285
    invoke-virtual {v2, v3, v4, v9}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v0

    div-long v0, v0, v23

    .line 287
    invoke-virtual {v8, v0, v1}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcScanTimePowerMah(J)D

    move-result-wide v0

    move-wide v11, v0

    move v0, v9

    .line 288
    :goto_d
    sget v1, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v0, v1, :cond_14

    .line 289
    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    div-long v6, v6, v23

    .line 291
    invoke-virtual {v8, v6, v7, v0}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcIdlePowerAtSignalStrengthMah(JI)D

    move-result-wide v6

    add-double/2addr v11, v6

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    goto :goto_d

    .line 294
    :cond_14
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_15

    .line 295
    iget-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    add-double/2addr v0, v11

    iput-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    .line 300
    :cond_15
    :goto_e
    iget-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    const-wide/16 v25, 0x0

    cmpl-double v0, v0, v25

    if-nez v0, :cond_16

    iget-wide v0, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    cmpl-double v0, v0, v25

    if-eqz v0, :cond_17

    :cond_16
    move-object/from16 v1, p1

    const/4 v9, 0x0

    goto :goto_f

    :cond_17
    return-void

    .line 301
    :goto_f
    invoke-virtual {v1, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v2, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingDurationMs:J

    iget-wide v6, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v2, v6

    const/16 v9, 0x8

    .line 303
    invoke-virtual {v0, v9, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v2, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    iget-wide v6, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v2, v6

    .line 305
    invoke-virtual {v0, v9, v2, v3, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v0, 0x1

    .line 308
    invoke-virtual {v1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v1, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    .line 310
    invoke-virtual {v0, v9, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v1, v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    .line 312
    invoke-virtual {v0, v9, v1, v2, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateActiveModemPowerMah(Landroid/os/BatteryStats;J)D
    .locals 25

    move-wide/from16 v6, p2

    const-wide/16 v8, 0x3e8

    .line 322
    div-long v4, v6, v8

    .line 323
    sget v10, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v13, 0x0

    move v0, v13

    move v1, v0

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v14, 0x3

    if-ge v1, v14, :cond_7

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ne v1, v14, :cond_0

    const/4 v14, 0x5

    goto :goto_1

    :cond_0
    move v14, v15

    :goto_1
    move-wide/from16 v16, v8

    move v8, v13

    :goto_2
    if-ge v8, v14, :cond_6

    move v9, v0

    move-wide/from16 v18, v2

    move v3, v13

    :goto_3
    const-wide/16 v20, -0x1

    if-ge v3, v10, :cond_3

    move-object/from16 v0, p1

    move v2, v8

    .line 338
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v22

    move-object v8, v0

    cmp-long v0, v22, v20

    if-nez v0, :cond_1

    move v0, v1

    move-wide v11, v4

    const-wide/16 v22, 0x0

    move-object/from16 v1, p0

    goto :goto_4

    :cond_1
    move-object/from16 v0, p0

    move-wide v11, v4

    move-wide/from16 v4, v22

    const-wide/16 v22, 0x0

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcTxStatePowerMah(IIIJ)D

    move-result-wide v4

    move/from16 v24, v1

    move-object v1, v0

    move/from16 v0, v24

    .line 345
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_2

    goto :goto_4

    :cond_2
    add-double v18, v18, v4

    move v9, v15

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    move v8, v2

    move-wide v4, v11

    goto :goto_3

    :cond_3
    move v0, v1

    move-wide v11, v4

    move v2, v8

    const-wide/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 352
    invoke-virtual {v8, v0, v2, v11, v12}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v3

    cmp-long v5, v3, v20

    if-nez v5, :cond_4

    goto :goto_5

    .line 357
    :cond_4
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcRxStatePowerMah(IIJ)D

    move-result-wide v3

    .line 358
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    add-double v18, v18, v3

    move v9, v15

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    move v8, v2

    move v0, v9

    move-wide v4, v11

    move-wide/from16 v2, v18

    goto :goto_2

    :cond_6
    move-object/from16 v8, p1

    move-wide v11, v4

    const-wide/16 v22, 0x0

    move v4, v1

    move-object/from16 v1, p0

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    move-wide v4, v11

    move-wide/from16 v8, v16

    goto/16 :goto_0

    :cond_7
    move-object/from16 v1, p0

    move-wide/from16 v16, v8

    const-wide/16 v22, 0x0

    move-object/from16 v8, p1

    if-nez v0, :cond_9

    .line 367
    invoke-virtual {v8, v6, v7, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    .line 376
    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v0

    return-wide v0

    :cond_8
    return-wide v22

    :cond_9
    return-wide v2
.end method

.method public final calculateDuration(Landroid/os/BatteryStats$Uid;I)J
    .locals 2

    .line 318
    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x8

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
