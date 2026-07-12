.class public Lcom/android/server/power/stats/processor/PowerStatsAggregator;
.super Ljava/lang/Object;
.source "PowerStatsAggregator.java"


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field public mCurrentBatteryState:I

.field public mCurrentScreenState:I

.field public final mEnabledComponents:Landroid/util/SparseBooleanArray;

.field public mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    .line 50
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    move-wide/from16 v7, p2

    goto :goto_1

    :cond_1
    const-wide/16 v7, -0x1

    .line 95
    :goto_1
    invoke-virtual/range {p1 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, -0x1

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 96
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 97
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v12, :cond_4

    const-wide/16 v16, -0x1

    .line 100
    :try_start_2
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move v6, v11

    iget-wide v10, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v5, v10, v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->start(J)V

    .line 101
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v10, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 p2, v2

    iget-wide v2, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v5, v10, v11, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v11, v4

    goto/16 :goto_11

    :cond_2
    cmp-long v2, v7, v16

    if-nez v2, :cond_3

    .line 105
    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v11, v4

    goto/16 :goto_13

    :cond_3
    :goto_3
    move-object v5, v4

    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    move-wide/from16 p2, v2

    move v6, v11

    const-wide/16 v16, -0x1

    .line 108
    :try_start_3
    iget-byte v2, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v4

    goto :goto_5

    .line 110
    :cond_6
    :goto_4
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v10, v14, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v5, v4

    :try_start_4
    iget-wide v3, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v10, v11, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v11, v5

    goto/16 :goto_11

    .line 115
    :cond_7
    :goto_5
    iget-wide v2, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 117
    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v4, :cond_8

    :try_start_5
    iget-byte v4, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v4, v13, :cond_8

    .line 119
    iget-object v10, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v11, v14, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {v10, v4, v11, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteBatteryLevel(IIJ)V

    .line 121
    iget-byte v13, v14, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v11, v5

    goto/16 :goto_13

    .line 125
    :cond_8
    :goto_6
    :try_start_6
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v10, 0x80000

    and-int/2addr v4, v10

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 128
    :goto_7
    iget v10, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    if-eq v4, v10, :cond_a

    .line 129
    iget-object v10, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v11, v5

    move/from16 v18, v6

    :try_start_7
    iget-wide v5, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 131
    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_8
    move-object v2, v0

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    move-object v11, v5

    goto :goto_8

    :cond_a
    move-object v11, v5

    move/from16 v18, v6

    const/4 v15, 0x0

    .line 135
    :goto_9
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    move v4, v15

    goto :goto_a

    :cond_b
    const/4 v4, 0x1

    .line 138
    :goto_a
    iget v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    if-eq v4, v5, :cond_c

    .line 139
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-wide/from16 p1, v7

    iget-wide v6, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v4, v6, v7}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 141
    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    goto :goto_b

    :cond_c
    move-wide/from16 p1, v7

    .line 144
    :goto_b
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x60c00000

    and-int/2addr v4, v5

    const v6, 0x48200180    # 163846.0f

    if-ne v4, v9, :cond_e

    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v4, v6

    move/from16 v7, v18

    if-eq v4, v7, :cond_d

    goto :goto_c

    :cond_d
    move v5, v7

    goto :goto_d

    .line 150
    :cond_e
    :goto_c
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4, v14}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V

    .line 151
    iget v4, v14, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v4, v5

    .line 153
    iget v5, v14, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/2addr v5, v6

    move v9, v4

    .line 157
    :goto_d
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v4, :cond_f

    .line 158
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget v7, v4, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget v4, v4, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    move/from16 v21, v4

    move/from16 p3, v5

    iget-wide v4, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/16 v20, 0x2

    move-wide/from16 v22, v4

    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setUidState(IIIJ)V

    goto :goto_e

    :cond_f
    move/from16 p3, v5

    .line 163
    :goto_e
    iget-object v4, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v4, :cond_13

    .line 164
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v5, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->isCompatible(Lcom/android/internal/os/PowerStats;)Z

    move-result v4

    if-nez v4, :cond_12

    cmp-long v4, v2, p1

    if-lez v4, :cond_10

    .line 166
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, p1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 167
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 168
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 170
    :cond_10
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    .line 171
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v5, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v4

    if-nez v4, :cond_11

    move-wide/from16 v7, p1

    goto :goto_12

    .line 174
    :cond_11
    iget-wide v7, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v2, v7

    goto :goto_f

    :cond_12
    move-wide/from16 v7, p1

    .line 176
    :goto_f
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v5, v14, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    move-wide/from16 p1, v2

    iget-wide v2, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-wide/from16 v2, p1

    goto :goto_10

    :cond_13
    move-wide/from16 v7, p1

    :goto_10
    move-object v4, v11

    move/from16 v11, p3

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v11, v4

    goto/16 :goto_8

    :cond_14
    move-wide/from16 p2, v2

    move-object v11, v4

    const-wide/16 v16, -0x1

    :goto_11
    move-wide/from16 v2, p2

    .line 179
    :goto_12
    :try_start_8
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    if-eqz v12, :cond_16

    cmp-long v4, p4, v16

    if-eqz v4, :cond_15

    move-wide/from16 v2, p4

    :cond_15
    cmp-long v4, v2, v7

    if-lez v4, :cond_16

    .line 185
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v5, v2, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 186
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 187
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 191
    :cond_16
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    .line 192
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :goto_13
    if-eqz v11, :cond_17

    .line 95
    :try_start_9
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_14

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_14
    throw v2

    .line 192
    :goto_15
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 199
    monitor-enter p0

    const/4 v0, 0x0

    .line 200
    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerComponentEnabled(IZ)V
    .locals 1

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
