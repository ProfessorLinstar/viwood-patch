.class public Lcom/android/server/power/stats/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWakelockDurationMillis()J
    .locals 8

    .line 495
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v1

    .line 497
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    mul-long/2addr v6, v4

    const/4 v3, 0x0

    invoke-virtual {p0, v6, v7, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v1, v6

    .line 499
    div-long/2addr v1, v4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 500
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveUidWakelockDuration(Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;)V
    .locals 19

    move-object/from16 v0, p0

    .line 505
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 507
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_3

    .line 508
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 511
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 512
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-wide v14, v10

    move v13, v12

    :goto_1
    if-ge v13, v9, :cond_1

    .line 514
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 515
    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual {v4, v2, v3, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long/2addr v14, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v4, v17

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    .line 523
    div-long v14, v14, v17

    cmp-long v4, v14, v10

    if-eqz v4, :cond_2

    .line 525
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getUid()I

    move-result v4

    move-object/from16 v5, p1

    invoke-interface {v5, v4, v14, v15}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;->onUidWakelockDuration(IJ)V

    goto :goto_3

    :cond_2
    move-object/from16 v5, p1

    :goto_3
    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v4, v17

    goto :goto_0

    .line 528
    :cond_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
