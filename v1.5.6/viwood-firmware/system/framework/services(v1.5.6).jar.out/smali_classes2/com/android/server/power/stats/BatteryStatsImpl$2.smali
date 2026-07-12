.class public Lcom/android/server/power/stats/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightnessLevelTimeMs(II)J
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 406
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 407
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 406
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 408
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScreenDozeTimeMs(I)J
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 415
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 414
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenDozeTime(IJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 416
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScreenOnTimeMs(I)J
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 399
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 398
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenOnTime(IJ)J

    move-result-wide p0

    div-long/2addr p0, v3

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V
    .locals 12

    .line 421
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 423
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_1

    .line 424
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    const/4 v7, 0x0

    .line 425
    invoke-virtual {v6, v7, v1, v2, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    div-long/2addr v8, v3

    .line 427
    invoke-virtual {v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object v10

    if-nez v10, :cond_0

    .line 429
    iget v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-interface {p1, v6, v8, v9}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 431
    :cond_0
    invoke-virtual {v10, v1, v2, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    div-long/2addr v10, v3

    .line 433
    iget v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-interface {p1, v6, v7, v8}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 437
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
