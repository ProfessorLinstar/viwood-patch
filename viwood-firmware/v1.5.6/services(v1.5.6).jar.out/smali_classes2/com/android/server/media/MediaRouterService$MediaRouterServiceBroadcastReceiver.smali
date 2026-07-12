.class public final Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouterService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1054
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1055
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 1056
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1059
    iget-object p2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-object p1, v0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1061
    :goto_0
    iput-boolean p1, v0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 1062
    invoke-static {}, Lcom/android/server/media/MediaRouterService;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1063
    const-string p1, "MediaRouterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver : mGlobalBluetoothA2dpOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1066
    :cond_1
    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
