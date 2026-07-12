.class public Lcom/android/server/power/stats/BatteryStatsImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 6180
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 6183
    const-string p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 6184
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 6185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p2, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$6;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 6186
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    .line 6185
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mnoteUsbConnectionStateLocked(Lcom/android/server/power/stats/BatteryStatsImpl;ZJJ)V

    .line 6187
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
