.class public Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "CpuPowerStatsProcessor.java"


# static fields
.field public static final HOUR_IN_MILLIS:D


# instance fields
.field public mCombinedEnergyConsumerToPowerBracketMap:[[I

.field public final mCpuClusterCount:I

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuScalingStepCount:I

.field public mEnergyConsumerToCombinedEnergyConsumerMap:[I

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public final mPowerMultiplierForCpuActive:D

.field public final mPowerMultipliersByCluster:[D

.field public final mPowerMultipliersByScalingStep:[D

.field public final mScalingStepToCluster:[I

.field public mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public mTmpWakelockDeviceStats:[J

.field public mTmpWakelockUidStats:[J

.field public mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V
    .locals 12

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 86
    invoke-virtual {p2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    .line 87
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    .line 88
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 91
    invoke-virtual {p2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    .line 92
    array-length v1, v0

    iput v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    .line 93
    new-array v1, v1, [D

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 94
    :goto_0
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v2, v4, :cond_1

    .line 95
    aget v4, v0, v2

    .line 96
    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 97
    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v6

    sget-wide v8, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 98
    invoke-virtual {p2, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v5

    move v6, v1

    .line 99
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 100
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aput v2, v7, v3

    .line 101
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 102
    invoke-virtual {p1, v4, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v8

    sget-wide v10, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr v8, v10

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const-string p2, "cpu.active"

    .line 107
    invoke-virtual {p1, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide p1

    sget-wide v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 12

    .line 498
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 499
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 500
    new-instance v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    .line 501
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 502
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v3

    .line 503
    new-array v4, v3, [J

    iput-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 504
    new-array v4, v3, [D

    iput-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 505
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 506
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    .line 507
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 508
    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    if-nez v5, :cond_0

    goto :goto_3

    .line 513
    :cond_0
    iget-wide v6, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    add-double/2addr v6, v8

    iput-wide v6, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_1

    .line 515
    iget-object v7, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v8, v7, v6

    iget-object v10, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v10, v10, v6

    add-long/2addr v8, v10

    aput-wide v8, v7, v6

    .line 516
    iget-object v7, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v8, v7, v6

    iget-object v10, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v10, v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static containsAny(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 321
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 322
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 116
    new-instance v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 118
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 119
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 123
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->initEnergyConsumerToPowerBracketMaps()V

    return-void
.end method


# virtual methods
.method public final adjustEstimatesUsingEnergyConsumers(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;)V
    .locals 13

    .line 456
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 461
    :cond_0
    iget-object v1, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    if-nez v1, :cond_1

    .line 462
    new-array v1, v0, [J

    iput-object v1, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 464
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 467
    iget-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aget v4, v4, v2

    aget-wide v5, v3, v4

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 468
    invoke-virtual {v7, v8, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_7

    .line 473
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    goto :goto_5

    .line 479
    :cond_3
    iget-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    .line 482
    array-length v5, v2

    const-wide/16 v6, 0x0

    move v8, v1

    move-wide v9, v6

    :goto_3
    if-ge v8, v5, :cond_4

    aget v11, v2, v8

    .line 483
    iget-object v12, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v11, v12, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    cmpl-double v5, v9, v6

    if-nez v5, :cond_5

    goto :goto_5

    .line 489
    :cond_5
    array-length v5, v2

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_6

    aget v7, v2, v6

    .line 490
    iget-object v8, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v11, v8, v7

    mul-double/2addr v11, v3

    div-double/2addr v11, v9

    aput-wide v11, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    :goto_6
    return-void
.end method

.method public final computeTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V
    .locals 9

    .line 331
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v0, v0, [J

    iput-object v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    .line 332
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v1, v0, [J

    iput-object v1, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    .line 333
    new-array v0, v0, [J

    iput-object v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    .line 335
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 338
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v3, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 342
    :cond_0
    iget-wide v2, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    const/4 v2, 0x0

    move v3, v2

    .line 344
    :goto_1
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v3, v4, :cond_1

    .line 345
    iget-object v4, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    aget-wide v5, v4, v3

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 346
    invoke-virtual {v7, v8, v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByCluster([JI)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 349
    :cond_1
    :goto_2
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-ge v2, v3, :cond_2

    .line 350
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByScalingStep([JI)J

    move-result-wide v3

    .line 351
    iget-wide v5, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    add-long/2addr v5, v3

    iput-wide v5, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    .line 352
    iget-object v5, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v6, v5, v2

    add-long/2addr v6, v3

    aput-wide v6, v5, v2

    .line 353
    iget-object v5, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    iget-object v6, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aget v6, v6, v2

    aget-wide v7, v5, v6

    add-long/2addr v7, v3

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final estimatePowerByDeviceState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 397
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v4

    .line 398
    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v5

    .line 399
    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v6

    .line 400
    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v7

    .line 401
    iget-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 402
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_0
    if-ltz v9, :cond_7

    .line 403
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 404
    new-instance v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    iput-object v11, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 407
    new-array v12, v5, [J

    iput-object v12, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 408
    new-array v12, v5, [D

    iput-object v12, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 410
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v13, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v12, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v12

    if-nez v12, :cond_0

    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_4

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_2

    .line 415
    iget-object v13, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v13, v13, v12

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_2

    .line 419
    :cond_1
    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v13, v14, v12}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByScalingStep([JI)J

    move-result-wide v13

    .line 420
    iget-object v15, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    aget-wide v15, v15, v12

    move/from16 v17, v4

    move/from16 v18, v5

    long-to-double v4, v13

    mul-double/2addr v15, v4

    iget-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v4, v4, v12

    long-to-double v4, v4

    div-double/2addr v15, v4

    .line 423
    aget v4, v6, v12

    .line 424
    iget-object v5, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v19, v5, v4

    add-long v19, v19, v13

    aput-wide v19, v5, v4

    .line 425
    iget-object v5, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v13, v5, v4

    add-double/2addr v13, v15

    aput-wide v13, v5, v4

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_1

    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    if-eqz v7, :cond_3

    .line 429
    invoke-virtual {v0, v2, v11}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->adjustEstimatesUsingEnergyConsumers(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;)V

    .line 433
    :cond_3
    iget-object v4, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v12, 0x0

    move-wide v14, v12

    :goto_3
    if-ltz v4, :cond_4

    .line 434
    iget-object v5, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v19, v5, v4

    add-double v14, v14, v19

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 438
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    iget-object v5, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 440
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v4

    sub-double/2addr v14, v4

    .line 442
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    :cond_5
    cmpl-double v4, v14, v12

    if-eqz v4, :cond_6

    .line 447
    iput-wide v14, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    .line 448
    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 449
    iget-object v4, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :cond_6
    :goto_4
    add-int/lit8 v9, v9, -0x1

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final estimatePowerByScalingStep(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V
    .locals 14

    .line 360
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    iget-wide v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 363
    iget v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v2, v2, [D

    iput-object v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    const/4 v2, 0x0

    move v3, v2

    .line 364
    :goto_0
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v3, v4, :cond_0

    .line 365
    iget-object v4, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    aget-wide v5, v5, v3

    iget-object v7, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    aget-wide v7, v7, v3

    long-to-double v7, v7

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v3, v3, [D

    iput-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    .line 371
    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-ge v2, v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aget v3, v3, v2

    .line 377
    iget-object v4, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v4, v4, v2

    long-to-double v6, v4

    mul-double/2addr v6, v0

    iget-wide v8, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    .line 381
    iget-object v8, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_1

    .line 383
    iget-object v10, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    aget-wide v10, v10, v3

    long-to-double v12, v4

    mul-double/2addr v10, v12

    long-to-double v8, v8

    div-double/2addr v10, v8

    add-double/2addr v6, v10

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    aget-wide v8, v3, v2

    long-to-double v3, v4

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    .line 390
    iget-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final estimateUidPowerConsumption(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 525
    iget-object v5, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 527
    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    const/4 v7, 0x0

    .line 529
    :goto_0
    iget-object v8, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 530
    iget-object v8, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 531
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 532
    iget-object v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v10, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v9, 0x0

    move-wide v12, v9

    const/4 v11, 0x0

    .line 537
    :goto_1
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v14}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v14

    if-ge v11, v14, :cond_3

    .line 538
    iget-object v14, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v14, v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    goto :goto_2

    .line 542
    :cond_1
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v14, v15, v11}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getUidTimeByPowerBracket([JI)J

    move-result-wide v14

    cmp-long v16, v14, v16

    if-nez v16, :cond_2

    goto :goto_2

    .line 548
    :cond_2
    iget-object v6, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v17, v6, v11

    long-to-double v14, v14

    mul-double v17, v17, v14

    iget-object v6, v5, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v14, v6, v11

    long-to-double v14, v14

    div-double v17, v17, v14

    add-double v12, v12, v17

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 553
    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    iget-object v11, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v4, v6, v2, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 555
    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v11, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    invoke-virtual {v6, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidPowerEstimate([J)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 557
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    :cond_4
    cmpl-double v6, v12, v9

    if-eqz v6, :cond_5

    .line 562
    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v9, v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 563
    iget-object v6, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v6, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 4

    .line 154
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 160
    iget-object p2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_1

    .line 161
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 164
    :cond_1
    new-instance p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    .line 166
    iget-object p3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {p3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result p3

    .line 167
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    const-string v1, ", expected: "

    const-string v2, "CpuPowerStatsProcessor"

    if-eq p3, v0, :cond_2

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mismatched CPU scaling step count in PowerStats: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_2
    iget-object p3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {p3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuClusterCount()I

    move-result p3

    .line 174
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-eq p3, v0, :cond_3

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mismatched CPU cluster count in PowerStats: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->computeTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V

    .line 181
    iget-wide v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_4

    :goto_0
    return-void

    .line 185
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimatePowerByScalingStep(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->getWakelockStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object p3

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimatePowerByDeviceState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 191
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 192
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    .line 194
    invoke-virtual {p2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v2, 0x0

    .line 195
    :goto_2
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 196
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-virtual {p0, p1, v1, v3, p3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimateUidPowerConsumption(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 201
    :cond_6
    iget-object p0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final getWakelockStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    .line 226
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 227
    new-instance v1, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 228
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    .line 229
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    return-object p1
.end method

.method public final initEnergyConsumerToPowerBracketMaps()V
    .locals 11

    .line 256
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v1

    .line 263
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 264
    new-array v2, v0, [[I

    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 266
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 267
    array-length v3, v2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_9

    .line 268
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v0

    .line 269
    array-length v1, v2

    new-array v3, v1, [Landroid/util/ArraySet;

    move v5, v4

    move v6, v5

    .line 271
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_2

    .line 272
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    .line 273
    new-instance v8, Landroid/util/ArraySet;

    array-length v9, v7

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(I)V

    aput-object v8, v3, v5

    move v8, v4

    .line 274
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 275
    aget-object v9, v3, v5

    add-int/lit8 v10, v6, 0x1

    aget v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    :cond_2
    array-length v0, v2

    new-array v2, v0, [Landroid/util/ArraySet;

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v5, v1, :cond_6

    move v7, v4

    :goto_3
    const/4 v8, -0x1

    if-ge v7, v6, :cond_4

    .line 285
    aget-object v9, v2, v7

    aget-object v10, v3, v5

    invoke-static {v9, v10}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->containsAny(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_4
    if-eq v7, v8, :cond_5

    .line 291
    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v7, v8, v5

    .line 292
    aget-object v7, v2, v7

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_5

    .line 294
    :cond_5
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v6, v7, v5

    add-int/lit8 v7, v6, 0x1

    .line 296
    aget-object v8, v3, v5

    aput-object v8, v2, v6

    move v6, v7

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_8

    .line 302
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v3, v2, v0

    .line 303
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [I

    aput-object v3, v1, v0

    .line 304
    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_7

    .line 305
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    .line 306
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_8
    :goto_8
    return-void

    .line 312
    :cond_9
    new-array v0, v1, [I

    move v2, v4

    :goto_9
    if-ge v2, v1, :cond_a

    .line 314
    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 316
    :cond_a
    iget-object p0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aput-object v0, p0, v4

    return-void
.end method
