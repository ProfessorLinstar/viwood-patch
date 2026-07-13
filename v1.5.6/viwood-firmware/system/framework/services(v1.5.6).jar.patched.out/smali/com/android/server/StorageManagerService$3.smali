.class public Lcom/android/server/StorageManagerService$3;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .locals 5

    .line 1463
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1464
    :try_start_0
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x1bb67bb3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x5b18fa1b

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "force_off"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const-string v2, "force_on"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    and-int/lit8 p2, p2, -0x2

    goto :goto_2

    :cond_4
    or-int/lit8 p2, p2, 0x1

    .line 1473
    :goto_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v1, Landroid/os/storage/DiskInfo;

    invoke-direct {v1, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_0

    .line 1505
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmCallbacks(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-$$Nest$mnotifyDiskDestroyed(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1507
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/DiskInfo;

    if-eqz p0, :cond_0

    .line 1493
    iput-wide p2, p0, Landroid/os/storage/DiskInfo;->size:J

    .line 1494
    iput-object p4, p0, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1495
    iput-object p5, p0, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1497
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_0

    .line 1482
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1484
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS.onVolumeCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmDisks(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/DiskInfo;

    .line 1517
    new-instance v1, Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1518
    iput p5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1519
    invoke-static {v1}, Lcom/android/server/storage/WatchedVolumeInfo;->fromVolumeInfo(Landroid/os/storage/VolumeInfo;)Lcom/android/server/storage/WatchedVolumeInfo;

    move-result-object p2

    .line 1520
    iget-object p3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p3, p3, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;)V

    .line 1522
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .locals 3

    .line 1580
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/storage/WatchedVolumeInfo;

    .line 1582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmStorageSessionController(Lcom/android/server/StorageManagerService;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getImmutableVolumeInfo()Lcom/android/server/storage/ImmutableVolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/StorageSessionController;->onVolumeRemove(Lcom/android/server/storage/ImmutableVolumeInfo;)Lcom/android/server/storage/StorageUserConnection;

    .line 1587
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1588
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmInstaller(Lcom/android/server/StorageManagerService;)Lcom/android/server/pm/Installer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Installer;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1591
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed when private volume unmounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1582
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1570
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/WatchedVolumeInfo;

    if-eqz p0, :cond_0

    .line 1572
    invoke-virtual {p0, p2}, Lcom/android/server/storage/WatchedVolumeInfo;->setInternalPath(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1574
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/WatchedVolumeInfo;

    if-eqz p0, :cond_0

    .line 1550
    invoke-virtual {p0, p2}, Lcom/android/server/storage/WatchedVolumeInfo;->setFsType(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0, p3}, Lcom/android/server/storage/WatchedVolumeInfo;->setFsUuid(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0, p4}, Lcom/android/server/storage/WatchedVolumeInfo;->setFsLabel(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1554
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1560
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/WatchedVolumeInfo;

    if-eqz p0, :cond_0

    .line 1562
    invoke-virtual {p0, p2}, Lcom/android/server/storage/WatchedVolumeInfo;->setFsPath(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1564
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onVolumeStateChanged(Ljava/lang/String;II)V
    .locals 3

    .line 1527
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/storage/WatchedVolumeInfo;

    if-eqz p1, :cond_0

    .line 1530
    invoke-virtual {p1}, Lcom/android/server/storage/WatchedVolumeInfo;->getState()I

    move-result v1

    .line 1531
    invoke-virtual {p1, p2}, Lcom/android/server/storage/WatchedVolumeInfo;->setState(I)V

    .line 1532
    new-instance v2, Lcom/android/server/storage/WatchedVolumeInfo;

    invoke-direct {v2, p1}, Lcom/android/server/storage/WatchedVolumeInfo;-><init>(Lcom/android/server/storage/WatchedVolumeInfo;)V

    .line 1533
    invoke-virtual {v2, p3}, Lcom/android/server/storage/WatchedVolumeInfo;->setMountUserId(I)V

    .line 1534
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    .line 1535
    iput-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1536
    iput v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1537
    iput p2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1538
    iget-object p3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p3, p3, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {p3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1539
    iget-object p0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, v2, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$monVolumeStateChangedLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/storage/WatchedVolumeInfo;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1541
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
