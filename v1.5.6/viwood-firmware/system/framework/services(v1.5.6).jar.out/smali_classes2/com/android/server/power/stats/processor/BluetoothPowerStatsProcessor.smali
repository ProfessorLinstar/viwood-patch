.class public Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BluetoothPowerStatsProcessor.java"


# instance fields
.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "bluetooth.controller.rx"

    .line 43
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 44
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "bluetooth.controller.tx"

    .line 45
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 46
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "bluetooth.controller.idle"

    .line 47
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public final adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;D)V
    .locals 6

    .line 208
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 209
    iget-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v2, p4

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 210
    iget-wide v4, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v4, p4

    iput-wide v4, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 213
    iget-object p3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p3, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object p4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p3, p4, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 218
    iget-object p0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public final combineDeviceStateEstimates()V
    .locals 9

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 227
    new-instance v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor-IA;)V

    .line 228
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 229
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    .line 231
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 232
    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 233
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 234
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 235
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 236
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 237
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 238
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 239
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 240
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 241
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;)V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 162
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceRxTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 166
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceTxTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 167
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 171
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 172
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 173
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v4, v6

    add-double/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 175
    iget-object p0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    return-void
.end method

.method public final computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 12

    .line 186
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    if-ltz v0, :cond_0

    .line 187
    iget-object v7, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 188
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 189
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v8, v10

    add-double/2addr v5, v8

    .line 190
    iget-wide v7, v7, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    cmpl-double p0, v5, v3

    if-nez p0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 197
    :cond_1
    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v0

    div-double/2addr v0, v5

    return-wide v0
.end method

.method public final computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 5

    .line 248
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 251
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

    .line 252
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 257
    iget-wide v1, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 263
    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 270
    iget-wide v5, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    .line 271
    :goto_0
    iget-wide v10, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    cmp-long v5, v5, v10

    if-lez v5, :cond_1

    move v8, v9

    .line 274
    :cond_1
    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 275
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v9, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v6, v2, v9}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v11, 0x0

    if-eqz v7, :cond_5

    .line 281
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v6, v13, v11

    if-eqz v6, :cond_4

    .line 282
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    const-wide/16 v16, 0x0

    invoke-virtual {v6, v15}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v13, v9

    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    long-to-double v9, v9

    div-double/2addr v13, v9

    add-double v13, v13, v16

    goto :goto_3

    :cond_4
    const-wide/16 v16, 0x0

    goto :goto_2

    :cond_5
    const-wide/16 v16, 0x0

    .line 286
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    cmp-long v6, v9, v11

    if-eqz v6, :cond_6

    .line 287
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v13}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v9, v13

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    long-to-double v13, v13

    div-double/2addr v9, v13

    add-double v13, v9, v16

    goto :goto_3

    :cond_6
    :goto_2
    move-wide/from16 v13, v16

    :goto_3
    if-eqz v8, :cond_7

    .line 292
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v6, v9, v11

    if-eqz v6, :cond_8

    .line 293
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v11}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v9, v11

    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    :goto_4
    long-to-double v11, v11

    div-double/2addr v9, v11

    add-double/2addr v13, v9

    goto :goto_5

    .line 297
    :cond_7
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    cmp-long v6, v9, v11

    if-eqz v6, :cond_8

    .line 298
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v11}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v9, v11

    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    goto :goto_4

    :cond_8
    :goto_5
    cmpl-double v6, v13, v16

    if-eqz v6, :cond_2

    .line 303
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 304
    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v6, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 6

    .line 91
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 97
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 98
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 102
    iget-object p3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 103
    new-instance v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor-IA;)V

    .line 104
    iput-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 105
    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result p2

    if-eqz p2, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v4

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v4, p2

    if-eqz p2, :cond_3

    .line 112
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p2, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_3

    .line 113
    iget-object p3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 114
    iget-object v2, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object p3, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;D)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 120
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 122
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 124
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    const/4 p2, 0x0

    if-ltz p1, :cond_5

    .line 125
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    .line 126
    :goto_3
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 127
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-ltz p1, :cond_7

    .line 132
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->get(I)I

    move-result p3

    move v2, p2

    .line 133
    :goto_5
    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 134
    iget-object v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {v0, v1, p3, v3}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 138
    :cond_7
    iget-object p0, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 147
    new-instance v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 148
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 149
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    return-void
.end method
