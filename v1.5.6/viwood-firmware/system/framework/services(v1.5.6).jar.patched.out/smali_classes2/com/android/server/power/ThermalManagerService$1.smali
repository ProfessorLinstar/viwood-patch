.class public Lcom/android/server/power/ThermalManagerService$1;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"

# interfaces
.implements Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTemperatureChanged(Landroid/os/Temperature;)V
    .locals 3

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$monTemperatureChanged(Lcom/android/server/power/ThermalManagerService;Landroid/os/Temperature;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    throw p0
.end method

.method public onThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .locals 5

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    .line 183
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    move-result-object p1

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 185
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mcheckAndNotifyHeadroomListenersLocked(Lcom/android/server/power/ThermalManagerService;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V

    .line 187
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 187
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    .line 184
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method
