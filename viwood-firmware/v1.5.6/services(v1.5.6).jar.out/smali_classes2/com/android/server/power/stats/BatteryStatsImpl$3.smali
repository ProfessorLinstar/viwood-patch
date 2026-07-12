.class public Lcom/android/server/power/stats/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWifiActiveDuration()J
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 454
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveWifiScanTimes(Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever$Callback;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$3;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveWifiScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever$Callback;)V

    .line 446
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
