.class public Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# instance fields
.field public combinedDeviceStateEstimations:Ljava/util/List;

.field public deviceStateEstimations:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public uidStateEstimates:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->addDeviceStateEstimations()V

    .line 82
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimations()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->addUidStateEstimations()V

    return-void
.end method


# virtual methods
.method public final addDeviceStateEstimations()V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object v1

    .line 89
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 90
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    invoke-direct {v6, v0, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addUidStateEstimations()V
    .locals 8

    .line 146
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v1

    .line 148
    array-length v2, v1

    new-array v2, v2, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 150
    array-length v3, v1

    new-array v3, v3, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 v4, 0x0

    move v5, v4

    .line 153
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 154
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 159
    aget-object v6, v0, v6

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    aget-object v6, v1, v5

    aput-object v6, v2, v5

    goto :goto_1

    .line 162
    :cond_1
    aget-object v6, v1, v5

    aput-object v6, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object v0

    .line 168
    array-length v1, v0

    :goto_2
    if-ge v4, v1, :cond_5

    aget-object v5, v0, v4

    .line 170
    invoke-virtual {p0, v2, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object v6

    if-nez v6, :cond_3

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatch in UID and combined device states: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {v2, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string v6, "PowerStatsProcessor"

    invoke-static {v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getUidStateEstimate(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;)Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    move-result-object v7

    if-nez v7, :cond_4

    .line 179
    new-instance v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v7, v6, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;-><init>(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    .line 180
    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4
    iget-object v6, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    new-instance v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-direct {v7, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;-><init>([I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final combineDeviceStateEstimations()V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v1

    .line 98
    array-length v2, v0

    new-array v2, v2, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    const/4 v3, 0x0

    move v4, v3

    .line 101
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 102
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 107
    aget-object v5, v1, v5

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    aget-object v5, v0, v4

    aput-object v5, v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_2
    array-length v1, v0

    new-array v1, v1, [I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void
.end method

.method public final combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .locals 2

    .line 119
    array-length v0, p1

    if-lt p4, v0, :cond_1

    .line 120
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getDeviceStateEstimate([I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object p4

    if-nez p4, :cond_0

    .line 124
    new-instance p4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    invoke-direct {p4, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    .line 125
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object p0, p4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 131
    :cond_1
    aget-object v0, p1, p4

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 133
    :goto_0
    aget-object v1, p1, p4

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    aput v0, p3, p4

    add-int/lit8 v1, p4, 0x1

    .line 136
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    add-int/lit8 p4, p4, 0x1

    .line 140
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void
.end method

.method public getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .locals 2

    .line 244
    invoke-static {p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 247
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceStateEstimate([I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 235
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUidStateEstimate(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;)Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .locals 3

    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 257
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public resetIntermediates()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 273
    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_2

    .line 276
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iput-object v1, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->intermediates:Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v1, "Step 1. Compute device-wide power estimates for state combinations:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    const-string v4, "    "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "Step 2. Combine device-wide estimates that are untracked per UID:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 197
    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    .line 202
    :goto_2
    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    if-eqz v5, :cond_2

    .line 204
    const-string v7, " + "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 208
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v8

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    .line 211
    const-string v1, "    N/A\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_5
    const-string v1, "Step 3. Proportionally distribute power estimates to UIDs:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n        among: "

    .line 216
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v2

    .line 217
    :goto_4
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 218
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 219
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    if-eqz v5, :cond_6

    .line 221
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_6
    iget-object v7, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-static {v7, v6}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 225
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 227
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
