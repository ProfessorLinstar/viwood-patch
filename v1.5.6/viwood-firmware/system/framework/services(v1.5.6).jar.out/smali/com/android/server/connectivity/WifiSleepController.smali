.class public Lcom/android/server/connectivity/WifiSleepController;
.super Ljava/lang/Object;
.source "WifiSleepController.java"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBtIsOpened:Z

.field public mBtPowerDownSetting:Z

.field public mCharging:Z

.field public mContext:Landroid/content/Context;

.field public mDeepSleepIntent:Landroid/app/PendingIntent;

.field public mIsScreenON:Z

.field public mMobileDataIsOpened:Z

.field public mShutdownIntent:Landroid/app/PendingIntent;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiIsOpened:Z

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiReceiver:Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;

.field public mWifiSleepIntent:Landroid/app/PendingIntent;

.field public mWifiWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/AlarmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtPowerDownSetting(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtPowerDownSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeepSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mIsScreenON:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMobileDataIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdownIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiWakeLock(Lcom/android/server/connectivity/WifiSleepController;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBtIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mIsScreenON:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMobileDataIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWifiIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeepSleep(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->deepSleep()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitSleepState(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->exitSleepState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBtIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->getBtIsEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetWifiIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->getWifiIsEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetBtEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiSleepController;->setBtEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDeepSleepAlarm(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->setDeepSleepAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMobileDataEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiSleepController;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetShutdownAlarm(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->setShutdownAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWifiEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiSleepController;->setWifiEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWifiSleepAlarm(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->setWifiSleepAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldDeepSleep(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->shouldDeepSleep()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldShutdown(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->shouldShutdown()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldTurnOffBtOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->shouldTurnOffBtOnSleep()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldTurnOffMobileDataOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->shouldTurnOffMobileDataOnSleep()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldTurnOffWifiOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->shouldTurnOffWifiOnSleep()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshutdown(Lcom/android/server/connectivity/WifiSleepController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiSleepController;->shutdown(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateChargingState(Lcom/android/server/connectivity/WifiSleepController;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiSleepController;->updateChargingState(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;-><init>(Lcom/android/server/connectivity/WifiSleepController;Lcom/android/server/connectivity/WifiSleepController-IA;)V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiReceiver:Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;

    .line 70
    iput-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    .line 71
    iput-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    .line 72
    iput-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mIsScreenON:Z

    .line 76
    const-string/jumbo v2, "persist.bt.power.down"

    .line 77
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtPowerDownSetting:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    .line 85
    const-string p1, "WifiSleepController"

    const-string v0, "WifiSleepController::WifiSleepController"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 87
    const-string v0, "WifiSleepPowerDown"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 89
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v0, "WifiSleepController.TimeoutForWifiSleep"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "WifiSleepController.TimeoutForDeepSleep"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v0, "WifiSleepController.TimeoutForShutdown"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiReceiver:Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 487
    const-string v0, "WifiSleepController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final deepSleep()V
    .locals 4

    .line 444
    const-string v0, "deepSleep..."

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 446
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const-string v3, "android.policy:POWER"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public final exitSleepState()V
    .locals 2

    .line 321
    const-string v0, "exitSleepState()"

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 323
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->getWifiIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/WifiSleepController;->setWifiEnabled(Z)V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->getBtIsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/WifiSleepController;->setBtEnabled(Z)V

    .line 329
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->getMobileDataIsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/WifiSleepController;->setMobileDataEnabled(Z)V

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->removeWifiSleepAlarm()V

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->removeDeepSleepAlarm()V

    .line 336
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->removeShutdownAlarm()V

    return-void
.end method

.method public final getBtIsEnabled()Z
    .locals 4

    .line 371
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 372
    const-string v0, "bluetooth_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 373
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public getMobileDataIsEnabled()Z
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getWifiIsEnabled()Z
    .locals 4

    .line 272
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 273
    const-string/jumbo v0, "wifi_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 274
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public final removeDeepSleepAlarm()V
    .locals 2

    .line 436
    const-string/jumbo v0, "removeDeepSleepAlarm..."

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public final removeShutdownAlarm()V
    .locals 2

    .line 473
    const-string/jumbo v0, "removeShutdownAlarm..."

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public final removeWifiSleepAlarm()V
    .locals 2

    .line 340
    const-string/jumbo v0, "removeWifiSleepAlarm..."

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "---- mWifiWakeLock.release ----"

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 352
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public final setBtEnabled(Z)V
    .locals 1

    .line 378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBtEnabled "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method public final setDeepSleepAlarm()V
    .locals 6

    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    .line 420
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0xea60

    .line 419
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "WifiSleepController.TimeoutForDeepSleep"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    .line 430
    iget-object v2, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mDeepSleepIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    .line 430
    invoke-virtual {v2, v5, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeepSleepAlarm: set alarm :"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final setMobileDataEnabled(Z)V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMobileDataEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public final setShutdownAlarm()V
    .locals 6

    .line 457
    const-string/jumbo v0, "persist_power_off_delay_min"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xea60

    mul-int/2addr v0, v2

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "WifiSleepController.TimeoutForShutdown"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0xc000000

    .line 466
    iget-object v5, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    .line 467
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mShutdownIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    .line 467
    invoke-virtual {v0, v1, v4, v5, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setShutdownAlarm: set alarm :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final setWifiEnabled(Z)V
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWifiEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public final setWifiSleepAlarm()V
    .locals 6

    .line 279
    const-string/jumbo v0, "persist.wifi.sleep.delay.ms"

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-string v3, "WifiSleepController.TimeoutForWifiSleep"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    .line 288
    iget-object v2, p0, Lcom/android/server/connectivity/WifiSleepController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiSleepIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    .line 288
    invoke-virtual {v2, v5, v3, v4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWifiSleepAlarm: set alarm :"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldDeepSleep()Z
    .locals 2

    .line 412
    const-string p0, "com.wisky.powerGoToShallowSleep"

    const/4 v0, 0x0

    .line 413
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldDeepSleep: isShallowSleep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    return p0
.end method

.method public final shouldShutdown()Z
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldShutdown: mCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 453
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldTurnOffBtOnSleep()Z
    .locals 4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldTurnOffBtOnSleep: isBtOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtIsOpened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mBtPowerDownSetting:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bt_sleep_policy"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 362
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldTurnOffBtOnSleep isBtNeverSleepEnabled:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final shouldTurnOffMobileDataOnSleep()Z
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldTurnOffMobileDataOnSleep: mMobileDataIsOpened = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mMobileDataIsOpened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 402
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mobile_data_sleep_policy"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 403
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldTurnOffMobileDataOnSleep isMobileDataNeverSleepEnabled:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final shouldTurnOffWifiOnSleep()Z
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldTurnOffWifiOnSleep: isWifiOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiSleepController;->mWifiIsOpened:Z

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiSleepController;->wifiSleepPolicyMode()I

    move-result v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldTurnOffWifiOnSleep: wifiSleepPolicyMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 263
    iget-boolean p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shutdown(Z)V
    .locals 1

    .line 481
    const-string/jumbo p0, "shutdown..."

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "userrequested"

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateChargingState(Landroid/content/Intent;)V
    .locals 2

    .line 235
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 239
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateChargingState, mCharging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->log(Ljava/lang/String;)V

    .line 240
    iget-boolean p1, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    if-eq p1, v1, :cond_2

    .line 244
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiSleepController;->mCharging:Z

    :cond_2
    return-void
.end method

.method public final wifiSleepPolicyMode()I
    .locals 2

    .line 249
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_sleep_policy"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
