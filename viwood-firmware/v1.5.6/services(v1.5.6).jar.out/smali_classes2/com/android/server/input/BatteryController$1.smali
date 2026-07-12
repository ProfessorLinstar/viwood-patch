.class public Lcom/android/server/input/BatteryController$1;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmLock(Lcom/android/server/input/BatteryController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v1, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$misUsiDevice(Lcom/android/server/input/BatteryController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v1}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmDeviceMonitors(Lcom/android/server/input/BatteryController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v1}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmDeviceMonitors(Lcom/android/server/input/BatteryController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-direct {v3, p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 483
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {v0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmLock(Lcom/android/server/input/BatteryController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-static {p0}, Lcom/android/server/input/BatteryController;->-$$Nest$fgetmDeviceMonitors(Lcom/android/server/input/BatteryController;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_0

    .line 494
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 497
    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onConfiguration(J)V

    .line 498
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
