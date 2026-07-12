.class public Lcom/mediatek/server/display/MtkWifiDisplayController$1;
.super Ljava/lang/Object;
.source "MtkWifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/display/MtkWifiDisplayController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmController(Lcom/mediatek/server/display/MtkWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const/4 v4, 0x0

    const-string v5, "MtkWifiDisplayController"

    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 141
    invoke-static {}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$smdescribeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v8}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnectDevice(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    const-string v0, "connect() in mReConnect. Set mReConnecting as true"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0, v4}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fputmReConnectDevice(Lcom/mediatek/server/display/MtkWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 149
    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmController(Lcom/mediatek/server/display/MtkWifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    move-result-object p0

    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->requestConnect(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;I)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post mReconnect, s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v1}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnect(Lcom/mediatek/server/display/MtkWifiDisplayController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 161
    :cond_3
    const-string v0, "reconnect timeout!"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmContext(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    const-string v3, "wifi_display_disconnected"

    invoke-static {v1, v3}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$mgetMtkStringResourceId(Lcom/mediatek/server/display/MtkWifiDisplayController;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0, v4}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fputmReConnectDevice(Lcom/mediatek/server/display/MtkWifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0, v2}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fputmReConnection_Timeout_Remain_Seconds(Lcom/mediatek/server/display/MtkWifiDisplayController;I)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {v0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmHandler(Lcom/mediatek/server/display/MtkWifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mediatek/server/display/MtkWifiDisplayController$1;->this$0:Lcom/mediatek/server/display/MtkWifiDisplayController;

    invoke-static {p0}, Lcom/mediatek/server/display/MtkWifiDisplayController;->-$$Nest$fgetmReConnect(Lcom/mediatek/server/display/MtkWifiDisplayController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
