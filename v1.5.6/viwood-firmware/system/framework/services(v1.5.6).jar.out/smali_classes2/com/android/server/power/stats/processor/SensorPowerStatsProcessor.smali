.class public Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "SensorPowerStatsProcessor.java"


# instance fields
.field public mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mIsInitialized:Z

.field public mLastUpdateTimestamp:J

.field public mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorManagerSupplier:Ljava/util/function/Supplier;

.field public final mSensorStates:Landroid/util/SparseArray;

.field public mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method public static synthetic $r8$lambda$eEoAms27NfR9dYafFcEqohrO0c0(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->lambda$ensureInitialized$0(Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 7

    .line 294
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 296
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 297
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    check-cast v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    iget-wide v2, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    invoke-virtual {p1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 310
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 311
    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 243
    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    .line 245
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [D

    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_0
    if-ltz v7, :cond_0

    .line 247
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 248
    iget-object v9, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 249
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getHandle()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->getUidSensorDurationPosition(I)I

    move-result v9

    aput v9, v5, v7

    .line 250
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getPower()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_9

    .line 254
    iget-object v7, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 255
    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 257
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_2
    if-ltz v9, :cond_8

    .line 258
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_3
    if-ltz v11, :cond_7

    move-object/from16 v12, p2

    .line 260
    invoke-virtual {v12, v11}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 261
    iget-object v14, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v15, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v14, v13, v15}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v14

    if-nez v14, :cond_1

    move/from16 v19, v2

    move-object v15, v5

    move-object/from16 v16, v6

    goto :goto_6

    :cond_1
    const/16 v16, 0x0

    move-object v15, v5

    move/from16 v14, v16

    const-wide/16 v17, 0x0

    move-object/from16 v16, v6

    const-wide/16 v5, 0x0

    :goto_4
    if-ge v14, v4, :cond_4

    move/from16 v19, v2

    .line 267
    aget v2, v15, v14

    if-eq v2, v3, :cond_3

    .line 268
    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    aget-wide v2, v3, v2

    const-wide/16 v20, 0x0

    cmp-long v20, v2, v20

    if-nez v20, :cond_2

    goto :goto_5

    .line 272
    :cond_2
    aget-wide v20, v16, v14

    long-to-double v2, v2

    mul-double v20, v20, v2

    add-double v5, v5, v20

    :cond_3
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    const/4 v3, -0x1

    goto :goto_4

    :cond_4
    move/from16 v19, v2

    cmpl-double v2, v5, v17

    if-nez v2, :cond_5

    goto :goto_6

    .line 278
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 279
    iget-object v2, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 281
    iget-object v2, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    if-nez v2, :cond_6

    .line 284
    new-instance v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor-IA;)V

    .line 285
    iget-object v3, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object v2, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 287
    :cond_6
    iget-wide v13, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    add-double/2addr v13, v5

    iput-wide v13, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    :goto_6
    add-int/lit8 v11, v11, -0x1

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v2, v19

    const/4 v3, -0x1

    goto :goto_3

    :cond_7
    move-object/from16 v12, p2

    move/from16 v19, v2

    move-object v15, v5

    move-object/from16 v16, v6

    add-int/lit8 v9, v9, -0x1

    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v12, p2

    move/from16 v19, v2

    move-object v15, v5

    move-object/from16 v16, v6

    add-int/lit8 v2, v19, -0x1

    const/4 v3, -0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 235
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 237
    iget-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 238
    iget-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object p1, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 239
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    return-void
.end method


# virtual methods
.method public final ensureInitialized()Z
    .locals 10

    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v2, -0x1

    .line 83
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 84
    new-instance v2, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;)V

    .line 85
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 84
    invoke-interface {v3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 87
    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 89
    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 90
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 91
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 94
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 95
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 96
    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 98
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    return v1
.end method

.method public finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    .line 200
    iget-boolean v2, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 206
    iget-object p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez p2, :cond_3

    .line 207
    new-instance p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 210
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p2

    .line 211
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result p3

    if-eqz p3, :cond_4

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 216
    :cond_4
    iget-object p0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    return-void
.end method

.method public final synthetic lambda$ensureInitialized$0(Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->makeLabel(Landroid/hardware/Sensor;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final makeLabel(Landroid/hardware/Sensor;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p0

    .line 104
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 108
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p0, :cond_2

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result p2

    if-lez p2, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 126
    :cond_3
    :goto_3
    const-string p0, "android.sensor."

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xf

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/16 p0, 0x20

    const/16 p1, 0x5f

    .line 129
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 3

    .line 145
    iget-boolean p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 149
    :cond_0
    iget p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v0, -0xc001

    and-int/2addr p1, v0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_5

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string/jumbo v0, "sensor:0x"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 159
    :cond_1
    :try_start_0
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x9

    .line 159
    invoke-static {p1, v2, v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    if-nez v0, :cond_2

    .line 168
    new-instance v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor-IA;)V

    .line 169
    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    .line 170
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_2
    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 174
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 176
    iget-boolean v1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-nez v1, :cond_3

    const/4 p0, 0x1

    .line 177
    iput-boolean p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    .line 178
    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    .line 179
    iget-wide p0, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    return-void

    .line 180
    :cond_3
    iget v1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    if-eq v1, p1, :cond_5

    .line 181
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    .line 182
    iput p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    return-void

    .line 185
    :cond_4
    iget-boolean p1, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz p1, :cond_5

    .line 186
    iget-wide p1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    const/4 p0, 0x0

    .line 187
    iput-boolean p0, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    return-void

    .line 162
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Bad format of event tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorPowerStatsProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V
    .locals 5

    .line 220
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    .line 225
    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget v3, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->addUidSensorDuration([JIJ)V

    .line 229
    :cond_1
    iput-wide p2, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    return-void
.end method

.method public start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    return-void
.end method
