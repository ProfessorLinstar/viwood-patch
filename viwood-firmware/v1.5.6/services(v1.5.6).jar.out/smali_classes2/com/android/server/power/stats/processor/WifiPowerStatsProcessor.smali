.class public Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "WifiPowerStatsProcessor.java"


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.rx"

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 54
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.tx"

    .line 55
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 56
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.idle"

    .line 57
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 58
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.active"

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 60
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.scan"

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 62
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.batchedscan"

    .line 63
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 9

    .line 289
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 292
    new-instance v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor-IA;)V

    .line 293
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 294
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 295
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 296
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 297
    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 298
    iget-boolean v5, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v5, :cond_0

    .line 299
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 300
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 301
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 302
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    goto :goto_2

    .line 304
    :cond_0
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 305
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 306
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 308
    :goto_2
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 309
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 310
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 12

    .line 234
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    if-ltz v0, :cond_1

    .line 235
    iget-object v7, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 236
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 237
    iget-boolean v8, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v8, :cond_0

    .line 238
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    :goto_1
    add-double/2addr v8, v10

    add-double/2addr v5, v8

    goto :goto_2

    .line 241
    :cond_0
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    goto :goto_1

    .line 244
    :goto_2
    iget-wide v7, v7, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    cmpl-double p0, v5, v3

    if-nez p0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 251
    :cond_2
    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v0

    div-double/2addr v0, v5

    return-wide v0
.end method

.method private computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 5

    .line 317
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 320
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

    .line 321
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 326
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 332
    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 335
    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 336
    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v7, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    iget-boolean v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_4

    .line 342
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    cmp-long v6, v11, v9

    if-eqz v6, :cond_2

    .line 343
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v13}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v11, v13

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v11, v7

    goto :goto_1

    :cond_2
    move-wide v11, v7

    .line 346
    :goto_1
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v6, v13, v9

    if-eqz v6, :cond_3

    .line 347
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    move-wide/from16 v16, v7

    invoke-virtual {v6, v15}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v7

    long-to-double v6, v7

    mul-double/2addr v13, v6

    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    long-to-double v6, v6

    div-double/2addr v13, v6

    add-double/2addr v11, v13

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v7

    .line 350
    :goto_2
    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v6, v13

    cmp-long v8, v6, v9

    if-eqz v8, :cond_7

    .line 353
    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 354
    invoke-virtual {v10, v13}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v13

    add-long/2addr v8, v13

    .line 355
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    long-to-double v8, v8

    mul-double/2addr v13, v8

    long-to-double v6, v6

    div-double/2addr v13, v6

    add-double/2addr v11, v13

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v7

    .line 358
    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    add-long/2addr v6, v11

    cmp-long v8, v6, v9

    if-eqz v8, :cond_5

    .line 360
    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v8, v11}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v11

    iget-object v8, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 361
    invoke-virtual {v8, v13}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 362
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    long-to-double v11, v11

    mul-double/2addr v13, v11

    long-to-double v6, v6

    div-double/2addr v13, v6

    add-double v13, v13, v16

    goto :goto_3

    :cond_5
    move-wide/from16 v13, v16

    .line 365
    :goto_3
    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_6

    .line 366
    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v7}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v6

    .line 367
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    long-to-double v6, v6

    mul-double/2addr v11, v6

    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    long-to-double v6, v6

    div-double/2addr v11, v6

    add-double/2addr v13, v11

    :cond_6
    move-wide v11, v13

    .line 371
    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_7

    .line 372
    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v7}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v6

    .line 374
    iget-wide v8, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    long-to-double v6, v6

    mul-double/2addr v8, v6

    iget-wide v6, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    long-to-double v6, v6

    div-double/2addr v8, v6

    add-double/2addr v11, v8

    :cond_7
    :goto_4
    cmpl-double v6, v11, v16

    if-eqz v6, :cond_0

    .line 379
    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v7, v11, v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 380
    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v6, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 176
    new-instance v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 177
    iget v1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 178
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 179
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->isPowerReportingSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    return-void
.end method


# virtual methods
.method public final adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;D)V
    .locals 8

    .line 262
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v0, :cond_0

    .line 263
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 264
    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v2, p4

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 265
    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    mul-double/2addr v4, p4

    iput-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 266
    iget-wide v6, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v6, p4

    iput-wide v6, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    add-double/2addr v0, v6

    goto :goto_0

    .line 270
    :cond_0
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 271
    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    mul-double/2addr v2, p4

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 272
    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    mul-double/2addr v4, p4

    iput-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 277
    :goto_0
    iget-object p3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p3, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 281
    :cond_1
    iget-object p3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object p4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p3, p4, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 282
    iget-object p0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;)V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 192
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceBasicScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 197
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceBatchedScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 199
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 201
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceRxTime([J)J

    move-result-wide v1

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 202
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 203
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceTxTime([J)J

    move-result-wide v1

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 204
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 205
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v1

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 207
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v1

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 208
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v4, v6

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v4, v6

    add-double/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceActiveTime([J)J

    move-result-wide v1

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 214
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 216
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 218
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v4, v6

    add-double/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 223
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 6

    .line 120
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 126
    iget-object p2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 127
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 130
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 131
    iget-object p3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 132
    new-instance v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor-IA;)V

    .line 133
    iput-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 134
    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result p2

    if-eqz p2, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, p2

    if-eqz p2, :cond_3

    .line 141
    iget-object p2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 142
    iget-object p3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 143
    iget-object v2, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 149
    invoke-direct {v0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 151
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    const/4 p2, 0x0

    if-ltz p1, :cond_5

    .line 154
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    .line 155
    :goto_3
    iget-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 156
    iget-object v2, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v0, v1, p3, v2}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 160
    :cond_5
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-ltz p1, :cond_7

    .line 161
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    move v2, p2

    .line 162
    :goto_5
    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 163
    iget-object v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v0, v1, p3, v3}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 167
    :cond_7
    iget-object p0, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method
