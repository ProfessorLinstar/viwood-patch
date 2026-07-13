.class public final Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;
.super Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelBaseStateOverride()V
    .locals 4

    .line 1562
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1563
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string v3, "Permission required to control base state of device."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1568
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1570
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    throw p0
.end method

.method public cancelStateRequest()V
    .locals 3

    .line 1526
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1531
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$menforceCancelDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;II)V

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1535
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1538
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1597
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "DeviceStateManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1601
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    throw p0
.end method

.method public getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1479
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1480
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1591
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1592
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onStateRequestOverlayDismissed(Z)V
    .locals 2

    .line 1578
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->onStateRequestOverlayDismissed_enforcePermission()V

    .line 1580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1582
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$monStateRequestOverlayDismissedInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    throw p0
.end method

.method public registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 3

    if-eqz p1, :cond_0

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1493
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1495
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    throw p0

    .line 1487
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device state callback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestBaseStateOverride(Landroid/os/IBinder;II)V
    .locals 8

    .line 1543
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1545
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_STATE"

    const-string v2, "Permission required to control base state of device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1557
    throw p0

    .line 1549
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestState(Landroid/os/IBinder;II)V
    .locals 9

    .line 1501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1506
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0, v3, v4, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$menforceRequestDeviceStatePermitted(Lcom/android/server/devicestate/DeviceStateManagerService;III)V

    if-eqz p1, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DEVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1515
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1521
    throw p0

    .line 1509
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
