.class public Lcom/android/server/location/contexthub/HubInfoRegistry;
.super Ljava/lang/Object;
.source "HubInfoRegistry.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;


# instance fields
.field public final mCallbackLock:Ljava/lang/Object;

.field public final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointDiscoveryCallbacks:Ljava/util/List;

.field public final mHubEndpointInfos:Landroid/util/ArrayMap;

.field public mHubsInfo:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$7-F02yP-nYvSK3Y5lp-W2N5HyHY(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$acquireWakeLock$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QBoBT60ZQptf3kjxWZuPTaT2sc8(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 0

    .line 260
    :try_start_0
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result p0

    .line 259
    invoke-interface {p1, p2, p0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 262
    const-string p1, "HubInfoRegistry"

    const-string p2, "Exception while calling onEndpointsStopped"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$Qrk1k42BYvbl0zwgh5utalM0iRo(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$releaseWakeLock$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4LJXTw6edBTK-za5okcRmvtqwc(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 1

    .line 235
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 237
    const-string p1, "HubInfoRegistry"

    const-string v0, "Exception while calling onEndpointsStarted"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 2

    .line 148
    const-string v0, "HubInfoRegistry"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    .line 149
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    new-instance p0, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 167
    invoke-virtual {p2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void

    .line 162
    :cond_0
    const-string p0, "PowerManager was null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p1, Ljava/lang/InstantiationError;

    invoke-direct {p1, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    .line 155
    const-string p1, "Failed to update hub and endpoint cache"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, p1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 1

    .line 387
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 349
    invoke-static {v1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->-$$Nest$fgetmCallback(Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback is already registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 353
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 409
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 414
    const-string v0, "HubInfoRegistry"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    const-string v0, "Hubs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/HubInfo;

    .line 419
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 423
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 425
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 426
    const-string v0, "Endpoints"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 428
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 432
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public findEndpoints(J)Ljava/util/List;
    .locals 6

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 272
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 276
    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 287
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubServiceInfo;

    .line 288
    invoke-virtual {v4}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 293
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/contexthub/HubEndpointInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHubs()Ljava/util/List;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V
    .locals 8

    .line 367
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 371
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 373
    invoke-virtual {v2, v6}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->acquireWakeLock()V

    .line 380
    invoke-virtual {v2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v2

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 379
    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 383
    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$acquireWakeLock$2()V
    .locals 2

    .line 389
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public final synthetic lambda$releaseWakeLock$3()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 400
    const-string v0, "HubInfoRegistry"

    const-string v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onDiscoveryCallbackFinished()V
    .locals 0

    .line 342
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->releaseWakeLock()V

    return-void
.end method

.method public onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 226
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 229
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    .line 229
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V
    .locals 6

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 248
    iget-object v5, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubEndpointInfo;

    if-eqz v4, :cond_0

    .line 250
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/contexthub/HubEndpointInfo;

    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;-><init>(B)V

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    return-void

    .line 253
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onHalRestart()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 219
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final refreshCachedEndpoints()V
    .locals 5

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getEndpoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    const-string v1, "HubInfoRegistry"

    const-string v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 203
    iget-object v3, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 205
    :cond_0
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final refreshCachedHubs()V
    .locals 3

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    const-string v1, "HubInfoRegistry"

    const-string v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_1
    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    .line 188
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerEndpointDiscoveryCallback(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    .line 300
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 306
    :try_start_2
    const-string p1, "HubInfoRegistry"

    const-string p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerEndpointDiscoveryCallback(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 321
    :try_start_2
    const-string p1, "HubInfoRegistry"

    const-string p2, "RemoteException while adding discovery callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final releaseWakeLock()V
    .locals 1

    .line 394
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 3

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 331
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 333
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 337
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
