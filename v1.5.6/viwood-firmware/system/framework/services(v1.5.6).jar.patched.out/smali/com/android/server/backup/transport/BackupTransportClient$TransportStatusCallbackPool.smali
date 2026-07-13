.class public Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;
.super Ljava/lang/Object;
.source "BackupTransportClient.java"


# instance fields
.field public final mActiveCallbacks:Ljava/util/Set;

.field public final mCallbackPool:Ljava/util/Queue;

.field public final mPoolLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    .line 458
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    .line 459
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/transport/BackupTransportClient-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()Lcom/android/server/backup/transport/TransportStatusCallback;
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStatusCallback;

    if-nez v1, :cond_0

    .line 465
    new-instance v1, Lcom/android/server/backup/transport/TransportStatusCallback;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 467
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->reset()V

    .line 468
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    monitor-exit v0

    return-object v1

    .line 470
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelActiveCallbacks()V
    .locals 5

    .line 485
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, -0x3e8

    .line 488
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 490
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 494
    :catch_0
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    .line 495
    iget-object v3, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 499
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 477
    const-string p0, "BackupTransportClient"

    const-string p1, "TransportStatusCallback pool size exceeded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
