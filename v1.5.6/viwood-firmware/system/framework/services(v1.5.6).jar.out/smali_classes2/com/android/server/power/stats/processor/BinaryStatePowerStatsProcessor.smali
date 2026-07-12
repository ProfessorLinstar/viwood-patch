.class public abstract Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BinaryStatePowerStatsProcessor.java"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mEnergyConsumerSupported:Z

.field public mInitiatingUid:I

.field public mLastState:I

.field public mLastStateTimestamp:J

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerComponentId:I

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    return-void
.end method

.method public constructor <init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 67
    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    .line 68
    new-instance p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {p1, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 69
    iput-object p4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    return-void
.end method


# virtual methods
.method public addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 7

    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 154
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_1

    .line 160
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 161
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {p2, v0, v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 164
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method

.method public final combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 226
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 228
    new-instance v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor-IA;)V

    .line 229
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 230
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 231
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 232
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 233
    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v5, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 237
    :cond_0
    iget-wide v4, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    iget-object v6, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 6

    .line 204
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 205
    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 206
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    if-eqz p3, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v2

    goto :goto_1

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    .line 218
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 219
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 10

    .line 243
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 244
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 245
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 247
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    .line 248
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 250
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 251
    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v7, v4, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 253
    iget-wide v6, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    iget-object v8, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 254
    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 13

    .line 262
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 263
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 264
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 266
    iget-wide v3, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 269
    :cond_0
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    .line 272
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 273
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_2

    .line 274
    invoke-virtual {p2, v7}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 275
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v10, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v9, v8, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 277
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-eqz v11, :cond_1

    .line 279
    iget-wide v11, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    long-to-double v9, v9

    mul-double/2addr v11, v9

    iget-wide v9, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    long-to-double v9, v9

    div-double/2addr v11, v9

    .line 280
    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 281
    iget-object v9, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final ensureInitialized()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 81
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 84
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 85
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v3, v2, [J

    iput-object v3, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 86
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 87
    iget v0, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 2

    .line 183
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 188
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 189
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 192
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-boolean p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 194
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    :cond_2
    return-void
.end method

.method public final flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 169
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 171
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 172
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 173
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    return-void
.end method

.method public abstract getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 6

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    .line 105
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, 0x8015

    if-ne p1, v1, :cond_3

    .line 112
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    goto :goto_0

    .line 115
    :cond_1
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 116
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const/16 v3, 0x4015

    if-ne v1, v3, :cond_2

    .line 118
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 122
    iput v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 123
    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    if-nez v1, :cond_3

    .line 124
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 127
    :cond_3
    :goto_0
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 128
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    return-void
.end method

.method public recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 5

    .line 132
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    sub-long v0, p3, v0

    .line 133
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 134
    invoke-virtual {p1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 133
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    .line 140
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 144
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 143
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 147
    :cond_1
    :goto_0
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 96
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method
