.class public Lcom/android/server/location/contexthub/ContextHubEndpointManager;
.super Ljava/lang/Object;
.source "ContextHubEndpointManager.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mEndpointLock:Ljava/lang/Object;

.field public final mEndpointMap:Ljava/util/Map;

.field public final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field public mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field public mMaxSessionId:I

.field public mMinSessionId:I

.field public mNextEndpointId:J

.field public mNextSessionId:I

.field public final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

.field public final mReservedSessionIds:Ljava/util/Set;

.field public final mSessionIdLock:Ljava/lang/Object;

.field public mSessionIdsValid:Z

.field public final mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method public static synthetic $r8$lambda$OWRa1Jn5HYJRDs5lF1mTT5O2FIg(IIBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 462
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageDeliveryStatusReceived(IIB)V

    return-void
.end method

.method public static synthetic $r8$lambda$YzNH-jeYrQeazVxITaZzjFNUp8U(IBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 424
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJGOhns4Ixacuy38h8vf778rRUE(Lcom/android/server/location/contexthub/ContextHubEndpointManager;ILjava/lang/Byte;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzVmXdCoL_V7elGjwTC8L0QiIMY(ILcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 434
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenComplete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkdvg5qEIF2gVUNpPPsZavfkKmc(ILandroid/hardware/contexthub/HubMessage;Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 444
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 6

    .line 181
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    const-wide/16 v0, -0x2

    .line 91
    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    .line 98
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 112
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 124
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 169
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 171
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 172
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 173
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final getNewEndpointId()J
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    .line 550
    iput-wide v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 548
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many endpoints connected"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumAvailableSessions()I
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    sub-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumRegisteredClients()I
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public halCloseEndpointSession(IB)V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->closeEndpointSession(IB)V

    return-void
.end method

.method public halCloseEndpointSessionNoThrow(IB)V
    .locals 0

    .line 487
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 489
    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while calling HAL closeEndpointSession"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public init()V
    .locals 5

    .line 199
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-nez v0, :cond_4

    .line 203
    :try_start_0
    new-instance v0, Landroid/hardware/contexthub/HubInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubInfo;-><init>()V

    const-wide v1, 0x416e64726f696400L    # 1.5934355481615067E7

    .line 204
    iput-wide v1, v0, Landroid/hardware/contexthub/HubInfo;->hubId:J

    .line 206
    new-instance v1, Landroid/hardware/contexthub/ContextHubInfo;

    invoke-direct {v1}, Landroid/hardware/contexthub/ContextHubInfo;-><init>()V

    .line 207
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    .line 208
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    .line 209
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    const/4 v2, 0x0

    .line 210
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    .line 211
    invoke-static {v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->contextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 212
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {v3, v4, p0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    const/16 v1, 0x400

    .line 226
    :try_start_1
    invoke-interface {v0, v1}, Landroid/hardware/contexthub/IEndpointCommunication;->requestSessionIdRange(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID range: range array size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 231
    new-instance v1, Ljava/lang/InstantiationException;

    invoke-direct {v1, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    aget v1, v0, v2

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    const/4 v2, 0x1

    .line 241
    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 242
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdRangeValid(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_2
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 252
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    iput-boolean v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    return-void

    :catchall_0
    move-exception p0

    .line 252
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid session ID range: max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 247
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :goto_1
    const-string v1, "Exception while calling HAL requestSessionIdRange"

    .line 235
    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 237
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received null IEndpointCommunication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    .line 219
    const-string v0, "Failed to register ContextHubService as message hub"

    .line 220
    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance p0, Ljava/lang/InstantiationException;

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z
    .locals 2

    .line 522
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 523
    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 527
    const-string p1, "ContextHubEndpointManager"

    const-string p2, "Exception while invoking callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isSessionIdAllocatedForService(I)Z
    .locals 1

    .line 345
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt p1, v0, :cond_1

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSessionIdRangeValid(II)Z
    .locals 0

    .line 0
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V
    .locals 0

    .line 417
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    return-void
.end method

.method public onCloseEndpointSession(IB)V
    .locals 1

    .line 422
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;-><init>(IB)V

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCloseEndpointSession: unknown session ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .locals 1

    .line 432
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEndpointSessionOpenComplete: unknown session ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V
    .locals 0

    .line 415
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p2

    .line 417
    new-instance p3, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;
    .locals 5

    .line 374
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v0

    const-wide v2, 0x416e64726f696400L    # 1.5934355481615067E7

    cmp-long v0, v0, v2

    const/4 v1, 0x5

    .line 379
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 374
    const-string v2, "ContextHubEndpointManager"

    if-eqz v0, :cond_0

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: invalid destination hub ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    if-nez v0, :cond_1

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: unknown destination endpoint ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 389
    :cond_1
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {p2, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object p2

    if-nez p2, :cond_2

    .line 391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEndpointSessionOpenRequest: unknown initiator endpoint ID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 397
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdAllocatedForService(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 398
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEndpointSessionOpenRequest: invalid session ID, rejected: sessionId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 403
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 405
    :cond_3
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public onHalRestart()V
    .locals 1

    .line 363
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 365
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onHalRestart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessageDeliveryStatusReceived(IIB)V
    .locals 1

    .line 458
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;-><init>(IIB)V

    .line 459
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onMessageDeliveryStatusReceived: unknown session ID "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubEndpointManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 2

    .line 442
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 443
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessageReceived: unknown session ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p2

    const/4 v0, 0x4

    .line 448
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->sendMessageDeliveryStatus(IIB)V

    :cond_0
    return-void
.end method

.method public registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .locals 14

    .line 271
    const-string v11, "ContextHubEndpointManager"

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->getNewEndpointId()J

    move-result-wide v12

    const-wide v0, 0x416e64726f696400L    # 1.5934355481615067E7

    .line 277
    invoke-static {p1, v12, v13, v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v5

    .line 279
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v10, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 290
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V

    .line 291
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->attachDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered endpoint with ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {v1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 297
    const-string v2, "Failed to attach death recipient to client"

    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContextHubEndpointManager failed to initialize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveSessionId()I
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 317
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v1, :cond_4

    .line 321
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 322
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    :goto_0
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt v2, v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 324
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    :goto_1
    iput v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    goto :goto_3

    .line 328
    :cond_1
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    monitor-exit v0

    return v1

    .line 318
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many sessions reserved"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public returnSessionId(I)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendMessageDeliveryStatus(IIB)V
    .locals 1

    .line 563
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 564
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 565
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 567
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while sending message delivery status on session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubEndpointManager"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v1, "Registration History:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 507
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterEndpoint(J)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    if-eqz p1, :cond_0

    .line 356
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    .line 357
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    .line 356
    invoke-virtual {p2, v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterHub()V
    .locals 2

    .line 538
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {p0}, Landroid/hardware/contexthub/IEndpointCommunication;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 540
    const-string v0, "ContextHubEndpointManager"

    const-string v1, "Failed to unregister from HAL on init failure"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
