.class public final Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 116
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothHearingAid;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothA2dp;)V

    .line 122
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmLeAudioProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmHearingAidProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothHearingAid;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, v2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmA2dpProfile(Lcom/android/server/media/BluetoothProfileMonitor;Landroid/bluetooth/BluetoothA2dp;)V

    .line 139
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
