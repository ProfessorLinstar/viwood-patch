.class public Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;
.super Landroid/os/Handler;
.source "TvInputHardwareManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1463
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1454
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1455
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1456
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1457
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1458
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, v1, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1459
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    .line 1423
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1424
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1425
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 1427
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    .line 1428
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v3

    .line 1429
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHardwareInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1432
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1433
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    .line 1436
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v1

    if-eq v3, v1, :cond_3

    .line 1437
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object p0

    .line 1438
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 1437
    invoke-virtual {p0, v6, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1439
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-nez v2, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1443
    :goto_0
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eq v1, v2, :cond_3

    .line 1444
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;

    move-result-object p0

    .line 1445
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 1444
    invoke-virtual {p0, v6, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1446
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1449
    :cond_3
    :goto_2
    monitor-exit v4

    return-void

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void

    .line 1409
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1411
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1412
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmHdmiInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1413
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    .line 1415
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceUpdated(Ljava/lang/String;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void

    .line 1417
    :cond_5
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Could not resolve input ID matching the device info; ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 1413
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1404
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1405
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void

    .line 1399
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1400
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    return-void

    .line 1394
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1395
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    return-void

    .line 1389
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    .line 1390
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onHardwareDeviceAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    return-void

    .line 1383
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1384
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1385
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {p0}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Listener;->onStateChanged(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
