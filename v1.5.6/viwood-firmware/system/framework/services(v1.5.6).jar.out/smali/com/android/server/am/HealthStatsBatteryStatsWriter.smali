.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field public final mNowRealtimeMs:J

.field public final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    return-void
.end method


# virtual methods
.method public final addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 461
    invoke-virtual {p3, v2, v3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 460
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    :cond_0
    return-void
.end method

.method public final addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .locals 7

    if-eqz p4, :cond_0

    .line 471
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    iget-wide v3, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 472
    invoke-virtual {p4, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-direct {v0, v2, v3, v4}, Landroid/os/health/TimerStat;-><init>(IJ)V

    .line 471
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    :cond_0
    return-void
.end method

.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 381
    :cond_0
    iget p0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    int-to-long v0, p0

    const/16 p0, 0x4e21

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 384
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const/16 p0, 0x4e22

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 387
    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .locals 4

    .line 425
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 426
    new-instance v2, Landroid/os/health/HealthStatsWriter;

    sget-object v3, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v3, 0x9c41

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Counter;

    if-eqz v0, :cond_1

    .line 437
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0x9c42

    .line 436
    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .locals 3

    const/4 p0, 0x0

    .line 396
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v0

    const/16 v2, 0x7531

    .line 395
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x7532

    .line 400
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v1

    .line 399
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 404
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7533

    .line 403
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 408
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7534

    .line 407
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 412
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7535

    .line 411
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x7536

    .line 416
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v1

    .line 415
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .locals 3

    const/4 p0, 0x0

    .line 448
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0xc351

    .line 447
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 452
    invoke-virtual {p2, p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result p0

    int-to-long v0, p0

    const p0, 0xc352

    .line 451
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 65
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v8, 0x0

    .line 66
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2711

    .line 65
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 69
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 70
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2712

    .line 69
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 73
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v4, v6

    .line 74
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2713

    .line 73
    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 78
    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    .line 79
    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v2, 0x2714

    .line 78
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 86
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 88
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 91
    invoke-virtual {v4, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v11, 0x2715

    .line 92
    invoke-virtual {v0, v1, v11, v10, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 95
    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v11, 0x2716

    .line 96
    invoke-virtual {v0, v1, v11, v10, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    .line 99
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/16 v9, 0x2717

    .line 100
    invoke-virtual {v0, v1, v9, v10, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v5, 0x12

    .line 103
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v5, 0x2718

    .line 104
    invoke-virtual {v0, v1, v5, v10, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v11, 0x2719

    invoke-virtual {v0, v1, v11, v10, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v11, 0x271a

    invoke-virtual {v0, v1, v11, v10, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v10, v8

    :goto_3
    if-ge v10, v4, :cond_4

    .line 123
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_3

    .line 128
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    const/16 v12, 0x271b

    .line 127
    invoke-virtual {v0, v1, v12, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_4

    .line 130
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const/16 v13, 0x271c

    .line 130
    invoke-virtual {v0, v1, v13, v11, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 136
    :cond_4
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v10, v8

    :goto_5
    if-ge v10, v4, :cond_5

    .line 139
    new-instance v11, Landroid/os/health/HealthStatsWriter;

    sget-object v12, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v11, v12}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 140
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Pid;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    .line 141
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x271d

    invoke-virtual {v1, v13, v12, v11}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 146
    :cond_5
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 147
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    sget-object v11, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 148
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    .line 149
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v11, 0x271e

    invoke-virtual {v1, v11, v4, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_6

    .line 154
    :cond_6
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 155
    new-instance v10, Landroid/os/health/HealthStatsWriter;

    sget-object v11, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v10, v11}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 156
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    .line 157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v11, 0x271f

    invoke-virtual {v1, v11, v4, v10}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_7

    .line 160
    :cond_7
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_9

    .line 164
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    const/16 v4, 0x2720

    .line 163
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 167
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    const/16 v4, 0x2721

    .line 166
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 170
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v12, v4

    move v13, v8

    move-wide v14, v10

    :goto_8
    if-ge v13, v12, :cond_8

    move-wide/from16 v16, v6

    aget-object v6, v4, v13

    .line 171
    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    add-long/2addr v14, v6

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v6, v16

    goto :goto_8

    :cond_8
    move-wide/from16 v16, v6

    const/16 v4, 0x2722

    .line 173
    invoke-virtual {v1, v4, v14, v15}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 176
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v2, 0x2723

    .line 175
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    goto :goto_9

    :cond_9
    move-wide/from16 v16, v6

    .line 179
    :goto_9
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 183
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v4, 0x2724

    .line 182
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 186
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v4, 0x2725

    .line 185
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 189
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v6, v4

    move v7, v8

    move-wide v12, v10

    :goto_a
    if-ge v7, v6, :cond_a

    aget-object v14, v4, v7

    .line 190
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_a
    const/16 v4, 0x2726

    .line 192
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 195
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v2, 0x2727

    .line 194
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 198
    :cond_b
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 202
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v4, 0x2728

    .line 201
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 205
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v4, 0x2729

    .line 204
    invoke-virtual {v1, v4, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 208
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    array-length v6, v4

    move v7, v8

    move-wide v12, v10

    :goto_b
    if-ge v7, v6, :cond_c

    aget-object v14, v4, v7

    .line 209
    invoke-virtual {v14, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_c
    const/16 v4, 0x272a

    .line 211
    invoke-virtual {v1, v4, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 214
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    const/16 v2, 0x272b

    .line 213
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 218
    :cond_d
    iget-wide v6, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long v6, v6, v16

    .line 219
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v6

    div-long v6, v6, v16

    const/16 v2, 0x272c

    .line 218
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 222
    iget-wide v6, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long v6, v6, v16

    .line 223
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v6

    div-long v6, v6, v16

    const/16 v2, 0x272d

    .line 222
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 227
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v2

    iget-wide v6, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long v6, v6, v16

    .line 228
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v6

    div-long v6, v6, v16

    const/16 v4, 0x272e

    .line 226
    invoke-virtual {v1, v4, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 231
    iget-wide v6, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long v6, v6, v16

    .line 232
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v6

    div-long v6, v6, v16

    const/16 v2, 0x272f

    .line 231
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v2, 0x2730

    .line 235
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2731

    .line 238
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2732

    .line 241
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2733

    .line 244
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2734

    .line 248
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 247
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2735

    .line 251
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2736

    .line 255
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 254
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2737

    .line 259
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 258
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2738

    const/4 v4, 0x4

    .line 263
    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 262
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x2739

    .line 267
    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 266
    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x273a

    const/4 v6, 0x3

    .line 271
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 270
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/4 v2, 0x6

    .line 275
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const/16 v7, 0x273b

    .line 274
    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v2, 0x273c

    .line 278
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    .line 282
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v0

    int-to-long v12, v0

    const/16 v0, 0x273d

    .line 281
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 287
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v0

    int-to-long v12, v0

    const/16 v0, 0x273e

    .line 286
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 292
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v0

    int-to-long v12, v0

    const/16 v0, 0x273f

    .line 291
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2740

    .line 297
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 296
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2741

    .line 302
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 301
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2742

    .line 307
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 306
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2743

    .line 312
    invoke-virtual {v3, v6, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 311
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2744

    .line 317
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 316
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2745

    const/4 v2, 0x5

    .line 322
    invoke-virtual {v3, v2, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 321
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2746

    .line 327
    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 326
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2747

    .line 332
    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 331
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2748

    .line 337
    invoke-virtual {v3, v5, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 336
    invoke-virtual {v1, v0, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2749

    .line 342
    invoke-virtual {v3, v6, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    .line 341
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274a

    .line 347
    invoke-virtual {v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 346
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274b

    .line 352
    invoke-virtual {v3, v2, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 351
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 357
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    .line 358
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    const/16 v2, 0x274d

    .line 356
    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    .line 362
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v4

    div-long v4, v4, v16

    const/16 v0, 0x274e

    .line 361
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .line 366
    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v2

    div-long v2, v2, v16

    const/16 v0, 0x274f

    .line 365
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2750

    .line 369
    invoke-virtual {v1, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method
