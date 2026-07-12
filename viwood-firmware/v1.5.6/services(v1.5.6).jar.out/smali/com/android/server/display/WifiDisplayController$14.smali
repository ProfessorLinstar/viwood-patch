.class public Lcom/android/server/display/WifiDisplayController$14;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$14;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 6

    .line 774
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened RTSP connection with Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fputmRemoteDisplayConnected(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 778
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRtspTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmWifiDisplayCertMode(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmListener(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmConnectedDeviceGroupInfo(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    .line 782
    invoke-static {v1, v2, p5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mgetSessionInfo(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p5

    .line 781
    invoke-interface {v0, p5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 785
    :cond_0
    iget-object p5, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p5, p5, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$smcreateWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 786
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$madvertiseDisplay(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    :cond_1
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRtspTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mdisconnect(Lcom/android/server/display/WifiDisplayController;)V

    :cond_0
    return-void
.end method

.method public onDisplayError(I)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_0

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDisplayController"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmRtspTimeout(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mhandleConnectionFailure(Lcom/android/server/display/WifiDisplayController;Z)V

    :cond_0
    return-void
.end method
