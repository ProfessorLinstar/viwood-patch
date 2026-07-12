.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
.super Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.source "VirtualDeviceManagerService.java"


# instance fields
.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$jzEpZQ5vPeglfgWMn0kTnGBeR2U(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;ILandroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->lambda$createVirtualDevice$0(ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$syAH5aT1X0ioagQ1Tnh9uqQjPvk(ILandroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 1

    .line 481
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/virtual/IVirtualDeviceListener;->onVirtualDeviceCreated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to invoke onVirtualDeviceCreated listener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 483
    const-string p1, "VirtualDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateVirtualDevice(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>()V

    .line 396
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    return-void
.end method


# virtual methods
.method public createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;
    .locals 2

    .line 427
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice_enforcePermission()V

    .line 428
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$sfgetVIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES()Ljava/util/List;

    move-result-object p3

    .line 435
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p3, v0

    .line 439
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object p0

    return-object p0

    :cond_0
    move-object p3, v0

    .line 436
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported CDM Association device profile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for virtual device creation."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 433
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No association with ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/companion/AssociationInfo;Landroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;
    .locals 18

    move-object/from16 v0, p0

    .line 450
    invoke-virtual {v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice_enforcePermission()V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 454
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 462
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    .line 463
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetCameraAccessController(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;

    move-result-object v12

    .line 465
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$sfgetsNextUniqueIndex()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    .line 466
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;I)V

    .line 468
    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceLog(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceLog;

    move-result-object v8

    iget-object v13, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v6, p3

    move-object/from16 v17, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v17}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V

    .line 473
    const-string/jumbo v1, "virtual_devices.value_virtual_devices_created_count"

    invoke-static {v1}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 475
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 476
    :try_start_0
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 487
    const-string/jumbo v0, "virtual_devices.value_virtual_devices_created_with_uid_count"

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 487
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-object v4

    :catchall_0
    move-exception v0

    .line 477
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not belong to calling uid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VirtualDeviceManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    const-string v0, "Created virtual devices: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 649
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 650
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceLog(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceLog;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAllPersistentDeviceIds()Ljava/util/List;
    .locals 1

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmLocalService(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;
    .locals 5

    .line 602
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 603
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 604
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/companion/CompanionDeviceManager;

    .line 605
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/CompanionDeviceManager;

    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 609
    :try_start_0
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p0, :cond_1

    .line 615
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 617
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 618
    invoke-virtual {v3, v0, p1}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    if-ne p2, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No associations for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VirtualDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 611
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw p0
.end method

.method public getAudioPlaybackSessionId(I)I
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAudioPlaybackSessionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAudioRecordingSessionId(I)I
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAudioRecordingSessionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceIdForDisplayId(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 533
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    move v0, v1

    .line 534
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 535
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 536
    invoke-virtual {v2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isDisplayOwnedByVirtualDevice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getDevicePolicy(II)I
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 525
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmActiveAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    .line 549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 550
    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 549
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPublicVirtualDeviceObject()Landroid/companion/virtual/VirtualDevice;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualDevices()Ljava/util/List;
    .locals 3

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    .line 497
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 498
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 499
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPublicVirtualDeviceObject()Landroid/companion/virtual/VirtualDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isValidVirtualDeviceId(I)Z
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 562
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isVirtualDeviceOwnedMirrorDisplay(I)Z
    .locals 1

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 595
    :cond_0
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 597
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final synthetic lambda$createVirtualDevice$0(ILandroid/util/ArraySet;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->notifyRunningAppsChanged(ILandroid/util/ArraySet;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 633
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 635
    const-string p1, "VirtualDeviceManagerService"

    const-string p2, "Error during IPC"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public playSoundEffect(II)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 585
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method public registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
