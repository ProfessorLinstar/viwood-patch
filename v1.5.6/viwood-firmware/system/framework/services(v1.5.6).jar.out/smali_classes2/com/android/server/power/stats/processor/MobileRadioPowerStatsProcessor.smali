.class public Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "MobileRadioPowerStatsProcessor.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I


# instance fields
.field public final mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxTxPowerEstimators:Landroid/util/SparseArray;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpStateStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method public static synthetic $r8$lambda$gPkk12Bu4BvFaxvJ-CjPOs0s1BE(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->lambda$computeDevicePowerEstimates$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 9

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    const-wide v0, 0x100000000L

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 67
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 71
    iput-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    :goto_0
    const-wide v0, 0x110000000L

    .line 76
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    iput-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_1

    .line 82
    :cond_1
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 86
    :goto_1
    const-string/jumbo v0, "radio.active"

    .line 87
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 90
    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v0, v3

    move v2, v5

    .line 91
    :goto_2
    sget v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v2, v7, :cond_2

    .line 92
    const-string/jumbo v7, "modem.controller.tx"

    invoke-virtual {p1, v7, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v7

    add-double/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v7, v6

    int-to-double v7, v7

    div-double/2addr v0, v7

    .line 96
    :cond_3
    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v2, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 98
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "radio.scanning"

    .line 99
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v0, v5

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/4 v1, 0x5

    goto :goto_4

    :cond_4
    move v1, v6

    :goto_4
    move v2, v5

    :goto_5
    if-ge v2, v1, :cond_5

    .line 105
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 106
    invoke-static {v0, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result v4

    .line 107
    invoke-static {p1, v0, v2}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->buildRxTxPowerEstimators(Lcom/android/internal/os/PowerProfile;II)Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    move-result-object v7

    .line 105
    invoke-virtual {v3, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static buildRxTxPowerEstimators(Lcom/android/internal/os/PowerProfile;II)Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 114
    new-instance v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    const/high16 v4, 0x20000000

    const/4 v5, -0x1

    .line 115
    invoke-static {v4, v1, v2, v5}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 117
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v8

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    const-wide/16 v11, 0x0

    const-string v13, "Unavailable Power Profile constant for key 0x"

    const-string v14, "MobileRadioPowerStats"

    if-eqz v10, :cond_0

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v11

    .line 122
    :cond_0
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v4, 0x0

    .line 123
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v5

    if-ge v4, v5, :cond_2

    const/high16 v5, 0x30000000

    .line 124
    invoke-static {v5, v1, v2, v4}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v8

    .line 126
    invoke-virtual {v0, v8, v9, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v15

    .line 128
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v11

    goto :goto_1

    :cond_1
    move-wide v8, v15

    .line 133
    :goto_1
    iget-object v5, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v10, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private combineDeviceStateEstimates()V
    .locals 9

    .line 337
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 339
    new-instance v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    .line 340
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 341
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 343
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 344
    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 345
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 346
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 347
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 348
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 12

    .line 293
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 294
    iget-object v7, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 295
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 296
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    add-double/2addr v8, v10

    add-double/2addr v5, v8

    .line 298
    iget-wide v7, v7, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    cmpl-double p0, v5, v3

    if-nez p0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 305
    :cond_1
    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v0

    div-double/2addr v0, v5

    return-wide v0
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 10

    .line 370
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 373
    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 374
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v2, p2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    iget-wide v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_2

    .line 380
    iget-wide v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v8, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v2, v8

    iget-wide v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    long-to-double v8, v8

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    goto :goto_1

    :cond_2
    move-wide v2, v6

    .line 383
    :goto_1
    iget-wide v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v4, v8, v4

    if-eqz v4, :cond_3

    .line 384
    iget-wide v4, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v8, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v4, v8

    iget-wide v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    long-to-double v8, v8

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    :cond_3
    cmpl-double v4, v2, v6

    if-eqz v4, :cond_0

    .line 389
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 390
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 226
    new-instance v0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 227
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 228
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 229
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    return-void
.end method


# virtual methods
.method public final adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;D)V
    .locals 4

    .line 315
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 316
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 317
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 318
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 320
    iget-object p4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p4, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object p4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object p5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v0, v2

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v0, v2

    invoke-virtual {p4, p5, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 326
    iget-object p4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object p5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    invoke-virtual {p4, p5, v0, v1}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallPowerEstimate([JD)V

    .line 327
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 242
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_2

    .line 246
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 247
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceSleepTime([J)J

    move-result-wide v3

    .line 246
    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_3

    .line 251
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 252
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v3

    .line 251
    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_4

    .line 256
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 257
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v3

    .line 256
    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 260
    :cond_4
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->forEachStateStatsKey(Ljava/util/function/IntConsumer;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_5

    .line 275
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 276
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceCallTime([J)J

    move-result-wide v1

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 281
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallPowerEstimate([JD)V

    .line 282
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public final computeUidRxTxTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 5

    .line 355
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 358
    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 359
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 364
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 6

    .line 171
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 177
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 178
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 181
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 182
    iget-object p3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 183
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    .line 184
    iput-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 185
    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 188
    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result p2

    if-eqz p2, :cond_3

    .line 189
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, p2

    if-eqz p2, :cond_3

    .line 191
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 192
    iget-object p3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 193
    iget-object v2, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 199
    invoke-direct {v0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 201
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 203
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    const/4 p2, 0x0

    if-ltz p1, :cond_5

    .line 204
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    .line 205
    :goto_3
    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 206
    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeUidRxTxTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 210
    :cond_5
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-ltz p1, :cond_7

    .line 211
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    move v2, p2

    .line 212
    :goto_5
    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 213
    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v0, v1, p3, v3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 217
    :cond_7
    iget-object p0, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final synthetic lambda$computeDevicePowerEstimates$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    .line 262
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {p1, v1, p4, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getStateStats([JI[I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getStateRxTime([J)J

    move-result-wide p1

    .line 266
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object p4, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p1

    add-double/2addr v1, p1

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    const/4 p1, 0x0

    .line 267
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 268
    iget-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object p4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {p2, p4, p1}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getStateTxTime([JI)J

    move-result-wide v1

    .line 269
    iget-wide v3, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object p2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p2, p2, p1

    .line 270
    invoke-virtual {p2, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v1

    add-double/2addr v3, v1

    iput-wide v3, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
