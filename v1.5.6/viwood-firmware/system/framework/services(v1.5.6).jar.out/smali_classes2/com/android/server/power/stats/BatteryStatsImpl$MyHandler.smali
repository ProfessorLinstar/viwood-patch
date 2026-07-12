.class public final Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;
.super Landroid/os/Handler;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Looper;)V
    .locals 1

    .line 839
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 840
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    :goto_0
    return-void

    .line 867
    :cond_1
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryStatsReset()V

    return-void

    .line 858
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 859
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    if-eqz p0, :cond_3

    const-string p0, "android.os.action.CHARGING"

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 860
    :cond_3
    const-string p0, "android.os.action.DISCHARGING"

    .line 861
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x4000000

    .line 863
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 864
    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 861
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 854
    :cond_4
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryPowerChanged(Z)V

    return-void

    .line 851
    :cond_6
    invoke-interface {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;->batteryNeedsCpuUpdate()V

    return-void
.end method
