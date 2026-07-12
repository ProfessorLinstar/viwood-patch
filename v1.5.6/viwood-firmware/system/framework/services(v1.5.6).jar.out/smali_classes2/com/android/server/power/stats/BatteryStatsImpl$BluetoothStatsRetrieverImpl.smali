.class public Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;


# instance fields
.field public final mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/bluetooth/BluetoothManager;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method


# virtual methods
.method public requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)Z
    .locals 1

    .line 476
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 485
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public retrieveBluetoothScanTimes(Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveBluetoothScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever$Callback;)V

    .line 470
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
