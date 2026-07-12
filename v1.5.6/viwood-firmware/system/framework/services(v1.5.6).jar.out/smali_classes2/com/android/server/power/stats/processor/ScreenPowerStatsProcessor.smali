.class public Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "ScreenPowerStatsProcessor.java"


# instance fields
.field public final mDisplayCount:I

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 10

    .line 56
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    .line 58
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 60
    new-array v0, v0, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v0, 0x0

    move v1, v0

    .line 61
    :goto_0
    iget v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-ge v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    .line 63
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 65
    const-string/jumbo v2, "screen.full.display"

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v2

    .line 67
    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v5, 0x5

    new-array v6, v5, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v6, v4, v1

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_0

    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double/2addr v6, v8

    .line 74
    iget-object v8, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v8, v8, v1

    new-instance v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v9, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v4, "ambient.on.display"

    .line 79
    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 10

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 180
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 182
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1
    if-ltz v3, :cond_1

    .line 183
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 184
    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    if-eqz v8, :cond_0

    .line 186
    iget-wide v8, v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    add-double/2addr v6, v8

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    cmpl-double v2, v6, v4

    if-eqz v2, :cond_2

    .line 190
    new-instance v2, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor-IA;)V

    .line 191
    iput-wide v6, v2, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    .line 192
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 128
    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 129
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 133
    :cond_0
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    aget v3, v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    goto :goto_2

    .line 139
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v3

    if-ge v6, v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p0, v3, v6}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeDisplayPower([JI)D

    move-result-wide v7

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-wide v3, v4

    .line 143
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 144
    new-instance v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor-IA;)V

    .line 145
    iput-wide v3, v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    .line 146
    iput-object v5, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    goto :goto_5

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 150
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    goto :goto_4

    .line 152
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v3

    if-ge v6, v3, :cond_5

    .line 153
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, v6

    iget-object v7, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 154
    invoke-virtual {v7, v8, v6}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenDozeDuration([JI)J

    move-result-wide v7

    .line 153
    invoke-virtual {v3, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move-wide v3, v4

    .line 157
    :goto_4
    iget-object v5, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenDozePowerEstimate([JD)V

    .line 160
    :goto_5
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 199
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 200
    aput v5, v3, v4

    const/4 v6, 0x2

    .line 201
    aput v5, v3, v6

    .line 203
    iget-object v6, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_0
    if-ltz v6, :cond_6

    .line 204
    iget-object v7, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 205
    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    .line 207
    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    .line 209
    aget v9, v7, v4

    if-nez v9, :cond_5

    if-nez v8, :cond_0

    goto :goto_3

    .line 214
    :cond_0
    aget v7, v7, v5

    aput v7, v3, v5

    .line 217
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_1
    if-ltz v7, :cond_2

    .line 218
    invoke-virtual {v2, v7}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 219
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v14, v13, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    iget-object v13, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 221
    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v13

    add-long/2addr v11, v13

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    cmp-long v7, v11, v9

    if-nez v7, :cond_3

    goto :goto_4

    .line 229
    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_2
    if-ltz v7, :cond_5

    .line 230
    invoke-virtual {v2, v7}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 231
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v14, v13, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 232
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v14, v15}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-eqz v16, :cond_4

    .line 234
    iget-wide v4, v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    long-to-double v14, v14

    mul-double/2addr v4, v14

    long-to-double v14, v11

    div-double/2addr v4, v14

    .line 235
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v14, v15, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 236
    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_4
    add-int/lit8 v7, v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public final computeDisplayPower([JI)D
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 166
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenOnDuration([JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, p2

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 169
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getBrightnessLevelDuration([JII)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 113
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 119
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 120
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 123
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 92
    :cond_1
    new-instance v1, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 93
    invoke-virtual {v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v3

    iget v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-eq v3, v4, :cond_2

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible number of displays: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenPowerStatsProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 99
    :cond_2
    iput-object p1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 100
    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 101
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 102
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    return v2
.end method
