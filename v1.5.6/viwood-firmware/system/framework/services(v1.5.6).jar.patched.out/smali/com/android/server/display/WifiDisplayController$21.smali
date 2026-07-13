.class public Lcom/android/server/display/WifiDisplayController$21;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1113
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "WifiDisplayController"

    if-eqz v0, :cond_2

    .line 1116
    const-string/jumbo p1, "wifi_p2p_state"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1119
    :goto_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleStateChanged(Lcom/android/server/display/WifiDisplayController;Z)V

    return-void

    .line 1125
    :cond_2
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1126
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1127
    const-string p1, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandlePeersChanged(Lcom/android/server/display/WifiDisplayController;)V

    return-void

    .line 1131
    :cond_4
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1132
    const-string/jumbo p1, "networkInfo"

    const-class v0, Landroid/net/NetworkInfo;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1134
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionChanged(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    return-void

    .line 1140
    :cond_6
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1141
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "wifiP2pDevice"

    const-class v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1, p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmThisDevice(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1143
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmThisDevice(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
