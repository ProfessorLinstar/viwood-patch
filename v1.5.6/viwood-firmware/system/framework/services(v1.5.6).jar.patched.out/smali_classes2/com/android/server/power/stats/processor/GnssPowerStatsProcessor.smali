.class public Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "GnssPowerStatsProcessor.java"


# static fields
.field public static final sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;


# instance fields
.field public final mGnssSignalDurations:[J

.field public mGnssSignalLevel:I

.field public mGnssSignalLevelTimestamp:J

.field public final mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mTmpDeviceStatsArray:[J

.field public final mUseSignalLevelEstimators:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7

    .line 43
    const-string v0, "gps.on"

    .line 44
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    const/16 v3, 0xa

    .line 43
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    const/4 v0, 0x2

    .line 33
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 39
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    const-string v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    return-void
.end method


# virtual methods
.method public computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 7

    .line 133
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    goto :goto_3

    .line 138
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    if-nez p3, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p3

    iget p3, p3, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array p3, p3, [J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 142
    :cond_1
    iget-object p3, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_4

    .line 143
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 144
    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 150
    sget-object v4, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v3}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->getDeviceSignalLevelTime([JI)J

    move-result-wide v4

    .line 151
    iget-object v6, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    :cond_3
    sget-object v3, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 154
    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    return-void

    .line 134
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    return-void
.end method

.method public getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 0

    .line 69
    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 8

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    .line 78
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 79
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit16 p1, p1, 0x180

    shr-int/lit8 p1, p1, 0x7

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 88
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    if-eq v1, v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    aget-wide v2, v0, v1

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v6, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 95
    :cond_3
    iput p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 96
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    return-void
.end method

.method public recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 8

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 103
    iget v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    aget-wide v3, v2, v0

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v2, v0

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 112
    iget-object v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    aget-wide v2, v2, v0

    .line 113
    sget-object v4, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setDeviceSignalLevelTime([JIJ)V

    if-eq p2, v1, :cond_3

    .line 115
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v5, v5, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v5, v5, [J

    .line 118
    iget-object v6, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, p2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setUidSignalLevelTime([JIJ)V

    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {v4, v5, v0}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->getUidSignalLevelTime([JI)J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 121
    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setUidSignalLevelTime([JIJ)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_4
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 128
    iget-object p0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 62
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 64
    iget-object p0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method
