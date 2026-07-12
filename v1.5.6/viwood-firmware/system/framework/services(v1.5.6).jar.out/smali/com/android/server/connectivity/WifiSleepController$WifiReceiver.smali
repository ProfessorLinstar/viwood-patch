.class public Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiSleepController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/WifiSleepController;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/WifiSleepController;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/WifiSleepController;Lcom/android/server/connectivity/WifiSleepController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;-><init>(Lcom/android/server/connectivity/WifiSleepController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 108
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0, p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mupdateChargingState(Lcom/android/server/connectivity/WifiSleepController;Landroid/content/Intent;)V

    return-void

    .line 110
    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "persist_wifi_sleep_flag"

    const-string/jumbo v1, "persist_bt_sleep_flag"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 111
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1, v2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fputmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 112
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mexitSleepState(Lcom/android/server/connectivity/WifiSleepController;)V

    .line 113
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 114
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 116
    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 117
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1, v3}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fputmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isScanAlwaysAvailable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 119
    const-string/jumbo p1, "ro.wifi.sleep.power.down"

    .line 120
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mgetBtIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fputmBtIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 125
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mgetWifiIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fputmWifiIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 126
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-virtual {p1}, Lcom/android/server/connectivity/WifiSleepController;->getMobileDataIsEnabled()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fputmMobileDataIsOpened(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 128
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldDeepSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetDeepSleepAlarm(Lcom/android/server/connectivity/WifiSleepController;)V

    return-void

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffWifiOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffBtOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffMobileDataOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetWifiSleepAlarm(Lcom/android/server/connectivity/WifiSleepController;)V

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldShutdown(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 135
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetShutdownAlarm(Lcom/android/server/connectivity/WifiSleepController;)V

    return-void

    .line 138
    :cond_6
    const-string p2, "WifiSleepController.TimeoutForWifiSleep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string/jumbo v4, "persist_data_sleep_flag"

    if-eqz p2, :cond_c

    .line 141
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 146
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiWakeLock(Lcom/android/server/connectivity/WifiSleepController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_7

    .line 147
    const-string p1, "---- mWifiWakeLock.acquire ----"

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiWakeLock(Lcom/android/server/connectivity/WifiSleepController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v5, 0x2710

    invoke-virtual {p1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_7
    const-wide/16 p1, 0x1388

    .line 151
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    iget-object v5, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v5}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 156
    iget-object v6, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v6}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v6}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffWifiOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 157
    iget-object v6, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v6, v3}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetWifiEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 158
    invoke-static {v5, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmBtIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmBtPowerDownSetting(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffBtOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetBtEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 162
    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmMobileDataIsOpened(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshouldTurnOffMobileDataOnSleep(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetMobileDataEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 166
    invoke-static {v5, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    :cond_a
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :catch_1
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 173
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmAlarmManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 180
    :cond_b
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiWakeLock(Lcom/android/server/connectivity/WifiSleepController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 181
    const-string p1, "---- mWifiWakeLock.release ----"

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmWifiWakeLock(Lcom/android/server/connectivity/WifiSleepController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 186
    :cond_c
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 187
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_d

    move p1, v2

    goto :goto_0

    :cond_d
    move p1, v3

    .line 189
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mWifiSleepFlag is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    .line 190
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mgetWifiIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 191
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1, v2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetWifiEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 193
    :cond_e
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_f

    move p1, v2

    goto :goto_1

    :cond_f
    move p1, v3

    .line 195
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mBtSleepFlag is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 196
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mgetBtIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 197
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1, v2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetBtEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    .line 199
    :cond_10
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_11

    move v3, v2

    .line 201
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mDataSleepFlag is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz v3, :cond_17

    .line 202
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-virtual {p1}, Lcom/android/server/connectivity/WifiSleepController;->getMobileDataIsEnabled()Z

    move-result p1

    if-nez p1, :cond_17

    .line 203
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0, v2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$msetMobileDataEnabled(Lcom/android/server/connectivity/WifiSleepController;Z)V

    return-void

    .line 205
    :cond_12
    const-string p2, "WifiSleepController.TimeoutForDeepSleep"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 207
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 208
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmDeepSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 209
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmAlarmManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmDeepSleepIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 212
    :cond_13
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mdeepSleep(Lcom/android/server/connectivity/WifiSleepController;)V

    return-void

    .line 214
    :cond_14
    const-string p2, "WifiSleepController.TimeoutForShutdown"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 217
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmCharging(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 218
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmShutdownIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 219
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmAlarmManager(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmShutdownIntent(Lcom/android/server/connectivity/WifiSleepController;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 222
    :cond_15
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0, v3}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mshutdown(Lcom/android/server/connectivity/WifiSleepController;Z)V

    return-void

    .line 224
    :cond_16
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 225
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmIsScreenON(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 226
    iget-object p1, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p1}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$mgetBtIsEnabled(Lcom/android/server/connectivity/WifiSleepController;)Z

    move-result p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_SHUTDOWN btIsEnabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/connectivity/WifiSleepController$WifiReceiver;->this$0:Lcom/android/server/connectivity/WifiSleepController;

    invoke-static {p0}, Lcom/android/server/connectivity/WifiSleepController;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/WifiSleepController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_17
    :goto_2
    return-void
.end method
