.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
.super Landroid/frameworks/devicestate/IDeviceStateService$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final mPublicProperties:Landroid/util/LongSparseLongArray;

.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 4

    .line 1357
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/frameworks/devicestate/IDeviceStateService$Stub;-><init>()V

    .line 1356
    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x1

    .line 1358
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x2

    .line 1361
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x4

    .line 1364
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xb

    const-wide/16 v2, 0x8

    .line 1367
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xc

    const-wide/16 v2, 0x10

    .line 1370
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x20

    .line 1373
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x40

    .line 1376
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1469
    const-string p0, "be9013fedb7fc3886980eca0e588bce998d315d2"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1436
    :try_start_0
    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    .line 1437
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1439
    invoke-virtual {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1444
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1442
    :catch_0
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1445
    throw p0

    .line 1430
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public unregisterListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 2

    .line 1450
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 1452
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1455
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1457
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 1457
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
