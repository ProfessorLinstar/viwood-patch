.class public Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
.super Landroid/hardware/contexthub/IContextHubEndpoint$Stub;
.source "ContextHubEndpointBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# static fields
.field static final OPEN_SESSION_REQUEST_TIMEOUT_SECONDS:J = 0xaL


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttributionTag:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field public final mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field public final mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

.field public final mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

.field public final mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public mIsRegistered:Z

.field public final mOpenSessionLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mRegistrationLock:Ljava/lang/Object;

.field public final mSessionMap:Landroid/util/SparseArray;

.field public final mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUid:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$0MnjOblYAsLSXxetld0kGl6KqD4(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 579
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result p1

    .line 578
    invoke-interface {p2, p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionClosed(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_Sq13Ax0iPDidth5a-st16Jipc(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLockOnExit$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$7jQ2OuD3AqF04vtbBmMuuxwpJzk(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 704
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdieIogE4BxLJhZ3eM5ccTTj9EE(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onMessageReceivedInternal$4(Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWcxAELH4hGbJZpFXLx8FYELM3Q(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLock$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$TeYeitRpnVnL937nMEKSkrgZI9k(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 762
    invoke-interface {p2, p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gd_1mLftwue2U8OmWWZr7GtiZ-g(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$cleanupSessionResources$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qD2YtMhpFVreMM0IbmGZFywGCTM(ILandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 591
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenComplete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRha1yE4ml5y8xm29Co7CNs2W3g(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$acquireWakeLock$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$uZ6Y8HfPFXazSN-7Ce-TtTUzIB0(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onEndpointSessionOpenRequest$2(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionClosedToBoth(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;IB)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 268
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 270
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 271
    new-instance p2, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {p2, p4}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 272
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    .line 273
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 274
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    .line 275
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 276
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 277
    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    .line 280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    .line 282
    const-class p3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p4, -0x1

    .line 283
    invoke-virtual {p3, p4, p6, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 285
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 286
    const-string p3, "ContextHubEndpointBroker"

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p2, p6}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 288
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .locals 1

    .line 814
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public attachDeathRecipient()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public binderDied()V
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    :cond_0
    return-void
.end method

.method public final cleanupSessionResources(I)Z
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isRemoteInitiated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->returnSessionId(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 783
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->forEachPendingReliableMessage(Ljava/util/function/Consumer;)V

    .line 788
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 790
    :goto_1
    monitor-exit v0

    return p0

    .line 791
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public closeSession(II)V
    .locals 2

    .line 329
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->closeSession_enforcePermission()V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSession: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 337
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHalReason(I)B

    move-result p2

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V

    return-void

    .line 332
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown session ID in closeSession: id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Endpoint is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object p0
.end method

.method public final hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 2

    .line 809
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object p1

    .line 810
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public hasSessionId(I)Z
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z
    .locals 2

    .line 856
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->acquireWakeLock()V

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 860
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "RemoteException while calling endpoint callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isRegistered()Z
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 870
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSessionActive(I)Z
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 801
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$acquireWakeLock$7()V
    .locals 2

    .line 816
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$cleanupSessionResources$6(Ljava/lang/Integer;)V
    .locals 1

    .line 785
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 786
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    return-void
.end method

.method public final synthetic lambda$onEndpointSessionOpenRequest$2(I)V
    .locals 0

    .line 685
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequestTimeout(I)V

    return-void
.end method

.method public final synthetic lambda$onMessageReceivedInternal$4(Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 3

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have permission"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic lambda$releaseWakeLock$8()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 829
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final synthetic lambda$releaseWakeLockOnExit$9()V
    .locals 2

    .line 838
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 842
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "Releasing the wakelock for all acquisitions fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 7

    .line 880
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContextHubEndpointMessageDelivery-0x"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-0x"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final notifySessionClosedToBoth(IB)V
    .locals 2

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySessionClosedToBoth: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public onCallbackFinished()V
    .locals 0

    .line 484
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->onCallbackFinished_enforcePermission()V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    return-void
.end method

.method public onCloseEndpointSession(IB)V
    .locals 1

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown session ID in onCloseEndpointSession: id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;-><init>(IB)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const-string p0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown session ID in onEndpointSessionOpenComplete: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V

    .line 589
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    return-void

    .line 589
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;
    .locals 8

    .line 652
    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    const-string p3, "ContextHubEndpointBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEndpointSessionOpenRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t have permission for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x9

    .line 660
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 661
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v1

    .line 672
    const-string v4, "ContextHubEndpointBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEndpointSessionOpenRequest: Existing session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isActive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 682
    :cond_1
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-direct {v1, p2, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    .line 683
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    .line 684
    invoke-interface {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 683
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionOpenTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 688
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->openSessionRequestComplete(I)V

    .line 697
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 699
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;-><init>(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 708
    invoke-virtual {p0, p1, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    :cond_4
    if-eqz p2, :cond_5

    .line 710
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 699
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onEndpointSessionOpenRequestTimeout(I)V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    const-string v1, "ContextHubEndpointBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEndpointSessionOpenRequestTimeout: clean up session, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 723
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 724
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 717
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 724
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHalRestart()V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 635
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 639
    :try_start_2
    const-string v2, "ContextHubEndpointBroker"

    const-string v3, "RemoteException while calling HAL registerEndpoint"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/16 v3, 0x8

    .line 645
    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 647
    :cond_0
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 641
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onMessageDeliveryStatusReceived(IIB)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v1, :cond_3

    .line 614
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 618
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isReliableMessagePending(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 619
    const-string p0, "ContextHubEndpointBroker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received delivery status for unknown seq: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 622
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessageCompleted(I)V

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    if-nez p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    return-void

    .line 615
    :cond_3
    :goto_1
    :try_start_1
    const-string p0, "ContextHubEndpointBroker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received delivery status for invalid session: id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v0

    return-void

    .line 623
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 3

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message to endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", closing session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->sendMessageDeliveryStatus(IIB)V

    return-void

    :cond_0
    const/4 p2, 0x3

    if-ne v0, p2, :cond_1

    const/16 p2, 0x9

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 601
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    :cond_2
    return-void
.end method

.method public final onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isSessionActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const-string p0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message for inactive session (id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with message: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 736
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    .line 739
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v2, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isInReliableMessageHistory(Landroid/hardware/contexthub/HubMessage;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 740
    const-string p0, "ContextHubEndpointBroker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping duplicate message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 745
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :try_start_2
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 762
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->addReliableMessageToHistory(Landroid/hardware/contexthub/HubMessage;)V

    :cond_2
    xor-int/lit8 p0, v1, 0x1

    .line 766
    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 757
    const-string p1, "ContextHubEndpointBroker"

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    monitor-exit v0

    const/4 p0, 0x3

    return p0

    .line 767
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 498
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 499
    const-string p1, "ContextHubEndpointBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOpChanged called with invalid package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 508
    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 509
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    .line 512
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 515
    :cond_2
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I
    .locals 6

    .line 300
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSession_enforcePermission()V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->reserveSessionId()I

    move-result v0

    .line 308
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->convertHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v1

    .line 309
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openSession: sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v1, v1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    iget-object v3, v3, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    invoke-interface {p1, v0, v1, v3, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->openEndpointSession(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    const-string p2, "ContextHubEndpointBroker"

    const-string v1, "Exception while calling HAL openEndpointSession"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 319
    throw p1

    .line 323
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Insufficient permission to open a session with endpoint: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Endpoint is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openSessionRequestComplete(I)V
    .locals 3

    .line 371
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSessionRequestComplete_enforcePermission()V

    .line 372
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 379
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IEndpointCommunication;->endpointSessionOpenComplete(I)V

    .line 380
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->cancelSessionOpenTimeoutFuture()V

    .line 381
    sget-object p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 383
    :try_start_2
    const-string p1, "ContextHubEndpointBroker"

    const-string v1, "Exception while calling endpointSessionOpenComplete"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    :goto_0
    monitor-exit v0

    return-void

    .line 375
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openSessionRequestComplete for invalid session id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public register()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string p0, "ContextHubEndpointBroker"

    const-string v1, "Attempting to register when already registered"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v1, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->registerEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V

    const/4 v1, 0x1

    .line 560
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 562
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final releaseWakeLock()V
    .locals 1

    .line 823
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final releaseWakeLockOnExit()V
    .locals 1

    .line 836
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 9

    .line 392
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessage_enforcePermission()V

    .line 393
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/contexthub/Message;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 407
    :try_start_1
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p2, p1, v6}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 409
    :try_start_2
    const-string p3, "ContextHubEndpointBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while sending message on session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", closing session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    goto :goto_0

    .line 418
    :cond_0
    new-instance v8, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;

    invoke-direct {v8, p0, p3, p2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/contexthub/HubMessage;I)V

    .line 439
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    move v5, p1

    .line 440
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :try_start_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessagePending(I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 450
    :try_start_4
    const-string p2, "ContextHubEndpointBroker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add a transaction in sendMessageToEndpoint (session ID = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x7

    .line 457
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 461
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    move v5, p1

    .line 400
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendMessage called on inactive session (id= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v5, p1

    .line 396
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "sendMessage for invalid session id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public sendMessageDeliveryStatus(IIB)V
    .locals 1

    .line 467
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessageDeliveryStatus_enforcePermission()V

    .line 468
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 469
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 470
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 472
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while sending message delivery status on session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubEndpointBroker"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 525
    :try_start_0
    const-string/jumbo v2, "wakelock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 528
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, " sessions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 533
    :goto_1
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remote:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 542
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 545
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 545
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 526
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public unregister()V
    .locals 5

    .line 343
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->unregister_enforcePermission()V

    .line 344
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 348
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v2, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 351
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    const-string p0, "ContextHubEndpointBroker"

    const-string v0, "Attempting to unregister when already unregistered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v0, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->unregisterEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 361
    :try_start_3
    const-string v2, "ContextHubEndpointBroker"

    const-string v3, "RemoteException while calling HAL unregisterEndpoint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterEndpoint(J)V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLockOnExit()V

    return-void

    .line 363
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 351
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
