.class public Lcom/mediatek/server/display/MtkWifiDisplayController;
.super Ljava/lang/Object;
.source "MtkWifiDisplayController.java"


# static fields
.field public static DEBUG:Z = true

.field public static final goIntent:Ljava/lang/String;


# instance fields
.field public WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

.field public WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/server/display/WifiDisplayController;

.field public final mHandler:Landroid/os/Handler;

.field public mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

.field public final mReConnect:Ljava/lang/Runnable;

.field public mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public mReConnection_Timeout_Remain_Seconds:I

.field public mStopWifiScan:Z

.field public final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field public final mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mWifiSleepController:Lcom/android/server/connectivity/WifiSleepController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmController(Lcom/mediatek/server/display/MtkWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReConnect(Lcom/mediatek/server/display/MtkWifiDisplayController;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReConnectDevice(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiScanTimerListener(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmReConnectDevice(Lcom/mediatek/server/display/MtkWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMtkStringResourceId(Lcom/mediatek/server/display/MtkWifiDisplayController;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->getMtkStringResourceId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/mediatek/server/display/MtkWifiDisplayController;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "wfd.source.go_intent"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/display/MtkWifiDisplayController;->goIntent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/mediatek/server/MtkSystemServiceFactory;->getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;->makePowerHalManager()Lcom/mediatek/server/powerhal/PowerHalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

    .line 136
    new-instance v0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/server/display/MtkWifiDisplayController$1;-><init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V

    iput-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    .line 247
    new-instance v0, Lcom/mediatek/server/display/MtkWifiDisplayController$2;

    invoke-direct {v0, p0}, Lcom/mediatek/server/display/MtkWifiDisplayController$2;-><init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V

    iput-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mStopWifiScan:Z

    .line 270
    new-instance v0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;

    invoke-direct {v0, p0}, Lcom/mediatek/server/display/MtkWifiDisplayController$3;-><init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V

    iput-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p3, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->registerEMObserver()V

    .line 92
    const-string p3, "alarm"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 94
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    const-string p2, "MtkWifiDisplayController"

    const-string p3, "WifiSleepController new WifiSleepController"

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p2, Lcom/android/server/connectivity/WifiSleepController;

    invoke-direct {p2, p1}, Lcom/android/server/connectivity/WifiSleepController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mWifiSleepController:Lcom/android/server/connectivity/WifiSleepController;

    return-void
.end method

.method public static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null"

    return-object p0
.end method


# virtual methods
.method public checkReConnect()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnectDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "MtkWifiDisplayController"

    const-string v1, "requestStartScan() for resolution change."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    const/16 v0, 0x1e

    .line 178
    iput v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I

    .line 179
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mReConnect:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getMtkIntegerResourceId(Ljava/lang/String;I)I
    .locals 2

    .line 234
    :try_start_0
    const-string p0, "com.mediatek.internal.R$integer"

    .line 235
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 234
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get MTK resource - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MtkWifiDisplayController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final getMtkSettingsExtGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    :try_start_0
    const-string p0, "com.mediatek.provider.MtkSettingsExt$Global"

    .line 222
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get MTK settings - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MtkWifiDisplayController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string p0, ""

    return-object p0
.end method

.method public final getMtkStringResourceId(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 208
    :try_start_0
    const-string v0, "com.mediatek.internal.R$string"

    .line 209
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 208
    invoke-static {v0, p0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get MTK resource - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MtkWifiDisplayController"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public overWriteConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    .line 107
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MtkWifiDisplayController"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object p1, Lcom/mediatek/server/display/MtkWifiDisplayController;->goIntent:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->stopWifiScan(Z)V

    return-object v0
.end method

.method public final registerEMObserver()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wfd_display_power_saving_option"

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->getMtkIntegerResourceId(Ljava/lang/String;I)I

    move-result v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 189
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "wfd_display_power_saving_delay"

    const/16 v2, 0xa

    .line 191
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->getMtkIntegerResourceId(Ljava/lang/String;I)I

    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserver() ps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",psd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkWifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WIFI_DISPLAY_POWER_SAVING_OPTION"

    .line 198
    invoke-virtual {p0, v1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->getMtkSettingsExtGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_OPTION:I

    .line 196
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WIFI_DISPLAY_POWER_SAVING_DELAY"

    .line 202
    invoke-virtual {p0, v1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->getMtkSettingsExtGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->WFDCONTROLLER_DISPLAY_POWER_SAVING_DELAY:I

    .line 200
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWFD(Z)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWFD(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkWifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/powerhal/PowerHalManager;->setWFD(Z)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->stopWifiScan(Z)V

    return-void
.end method

.method public stopWifiScan(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mWifiScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mStopWifiScan:Z

    if-eq v0, p1, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopWifiScan(),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkWifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    xor-int/lit8 v1, p1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 266
    iput-boolean p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController;->mStopWifiScan:Z

    :cond_1
    return-void
.end method
