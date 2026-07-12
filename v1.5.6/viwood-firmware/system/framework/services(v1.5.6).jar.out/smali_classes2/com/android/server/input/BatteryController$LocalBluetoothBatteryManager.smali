.class public Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Lcom/android/server/input/BatteryController$BluetoothBatteryManager;


# instance fields
.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBroadcastReceiver(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredListener(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    new-instance v0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;-><init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 975
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 976
    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public addBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    if-nez v1, :cond_0

    .line 986
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 987
    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 989
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 983
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one bluetooth battery listener can be registered at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 989
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 1013
    invoke-static {v1, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$smgetBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1012
    invoke-virtual {v0, p1, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    return-void
.end method

.method public getBatteryLevel(Ljava/lang/String;)I
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$smgetBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public getMetadata(Ljava/lang/String;I)[B
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$smgetBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    return-object p0
.end method

.method public removeBatteryListener(Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 995
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 998
    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$BluetoothBatteryManager$BluetoothBatteryListener;

    .line 999
    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1000
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 996
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener is not registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1000
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeMetadataListener(Ljava/lang/String;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V
    .locals 2

    .line 1020
    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    .line 1022
    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->-$$Nest$smgetBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 1021
    invoke-virtual {v0, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    return-void
.end method
