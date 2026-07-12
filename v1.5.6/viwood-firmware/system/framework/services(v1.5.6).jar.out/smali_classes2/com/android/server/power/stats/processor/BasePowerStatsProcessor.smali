.class public Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BasePowerStatsProcessor.java"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field public final mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

.field public mBatteryCapacityUah:D

.field public mBatteryChargeUah:I

.field public mBatteryLevel:I

.field public mBatteryLevelTimestampMs:J

.field public mCumulativeDischargeDurationMs:J

.field public mCumulativeDischargePct:I

.field public mCumulativeDischargeUah:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mStartTimestamp:J

.field public final mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/DoubleSupplier;)V
    .locals 7

    .line 53
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

    .line 55
    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 56
    sget-object p1, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {p1, v6}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 57
    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 58
    invoke-virtual {p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v2

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v5

    const/16 v1, 0x12

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 61
    new-instance p1, Lcom/android/internal/os/PowerStats;

    invoke-direct {p1, v0}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-void
.end method


# virtual methods
.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 107
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v4, :cond_0

    .line 108
    new-instance v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 111
    :cond_0
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 113
    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargePercent([JI)V

    .line 114
    iget-wide v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    .line 115
    iget-object v9, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeUah([JJ)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    int-to-double v9, v6

    iget-wide v11, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    double-to-long v9, v9

    invoke-virtual {v4, v5, v9, v10}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeUah([JJ)V

    .line 121
    :goto_0
    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v9, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    invoke-virtual {v4, v5, v9, v10}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeDuration([JJ)V

    const/4 v4, 0x0

    .line 123
    iput v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    .line 124
    iput-wide v7, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    .line 125
    iput-wide v7, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 130
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v6

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    .line 132
    iget-wide v10, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v10, v2, v10

    .line 133
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_1
    if-ltz v6, :cond_2

    .line 134
    sget-object v12, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v13

    new-array v13, v13, [J

    .line 135
    invoke-virtual {v12, v13, v10, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    .line 136
    iget-object v12, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v12, v12, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/IntArray;->get(I)I

    move-result v14

    invoke-virtual {v12, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 140
    :cond_2
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 142
    iget-object v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v9

    :goto_2
    if-ltz v6, :cond_5

    .line 143
    iget-object v10, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v10, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 144
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    const/4 v12, 0x2

    .line 145
    aput v4, v11, v12

    .line 147
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v12

    sub-int/2addr v12, v9

    :goto_3
    if-ltz v12, :cond_4

    .line 148
    invoke-virtual {v5, v12}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 149
    iget-object v14, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v14, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    .line 150
    aget v15, v14, v9

    aput v15, v11, v9

    .line 151
    aget v14, v14, v4

    aput v14, v11, v4

    .line 153
    iget-object v14, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v14, v13, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 154
    sget-object v14, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v15

    cmp-long v15, v15, v7

    if-eqz v15, :cond_3

    .line 155
    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v14, v15, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    .line 156
    iget-object v14, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v11, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 162
    :cond_5
    iput-wide v2, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    .line 163
    iget-object v1, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 164
    iget-object v0, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 6

    .line 83
    iget v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 84
    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    sub-int/2addr v0, p1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    if-eq v3, v2, :cond_1

    if-eqz p2, :cond_1

    if-ge p2, v3, :cond_1

    .line 90
    iget-wide v4, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    sub-int/2addr v3, p2

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 95
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 96
    iget-wide v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    sub-long v0, p3, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 100
    :cond_2
    iput p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    .line 101
    iput p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    .line 102
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 4

    .line 66
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    .line 67
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    .line 70
    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    .line 74
    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 77
    iget-object p0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method
