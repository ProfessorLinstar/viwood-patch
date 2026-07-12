.class public Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "CustomEnergyConsumerPowerStatsProcessor.java"


# static fields
.field public static final sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;


# instance fields
.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 11

    .line 65
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 67
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 71
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_1

    .line 72
    invoke-virtual {p2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 73
    iget-object v6, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v7, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v6, v5, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    sget-object v6, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidConsumedEnergy([JI)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_0

    .line 77
    iget-object v9, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v9, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 78
    iget-object v6, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 53
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    sget-object v2, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v4

    .line 57
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 59
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p2

    .line 36
    iget p3, p2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array p3, p3, [J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 37
    iget p2, p2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 38
    iget-object p2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    :cond_1
    return-void
.end method
