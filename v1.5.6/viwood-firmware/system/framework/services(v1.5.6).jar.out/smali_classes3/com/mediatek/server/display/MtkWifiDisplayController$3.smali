.class public Lcom/mediatek/server/display/MtkWifiDisplayController$3;
.super Landroid/content/BroadcastReceiver;
.source "MtkWifiDisplayController.java"


# instance fields
.field public final synthetic this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 276
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 282
    iget-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmController(Lcom/mediatek/server/display/MtkWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 284
    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const-string v0, "MtkWifiDisplayController"

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    iget-boolean p2, p2, Lcom/mediatek/server/display/MtkWifiDisplayController;->mStopWifiScan:Z

    if-ne p2, v1, :cond_0

    .line 285
    const-string p1, "Resume WiFi scan/reconnect if WiFi is disconnected"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->stopWifiScan(Z)V

    .line 287
    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 288
    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/32 v1, 0x186a0

    add-long v2, p1, v1

    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v5

    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/os/Handler;

    move-result-object v6

    const/4 v1, 0x2

    .line 288
    const-string v4, "Set WiFi scan timer"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    .line 292
    :cond_0
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    iget-boolean p1, p1, Lcom/mediatek/server/display/MtkWifiDisplayController;->mStopWifiScan:Z

    if-nez p1, :cond_1

    .line 293
    const-string p1, "Stop WiFi scan/reconnect if WiFi is connected"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmAlarmManager(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmWifiScanTimerListener(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 295
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$3;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-virtual {p0, v1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->stopWifiScan(Z)V

    :cond_1
    return-void
.end method
