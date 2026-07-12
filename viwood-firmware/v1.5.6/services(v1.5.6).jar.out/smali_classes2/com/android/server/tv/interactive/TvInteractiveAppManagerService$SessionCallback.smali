.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V
    .locals 0

    .line 3783
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;-><init>()V

    .line 3784
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 3785
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z
    .locals 6

    .line 4352
    const-string v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4358
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4359
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    .line 4360
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-nez v3, :cond_0

    .line 4362
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 4364
    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4369
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4366
    const-string p1, "client process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 4371
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    .line 4354
    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    .locals 3

    .line 4330
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_3

    .line 4338
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 4343
    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4340
    :try_start_3
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onAdBuffer"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    .line 4343
    :try_start_4
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p0

    goto :goto_0

    .line 4346
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    if-eqz p1, :cond_2

    .line 4343
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 4345
    :cond_2
    throw p0

    .line 4335
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    .line 4346
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public onAdRequest(Landroid/media/tv/AdRequest;)V
    .locals 2

    .line 4260
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4268
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onAdRequest(Landroid/media/tv/AdRequest;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4270
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onAdRequest"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4272
    :goto_0
    monitor-exit v0

    return-void

    .line 4265
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4272
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 4294
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4303
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4306
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onBiInteractiveAppCreated"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4308
    :goto_0
    monitor-exit v0

    return-void

    .line 4300
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4308
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 2

    .line 3833
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3838
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3842
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3844
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onBroadcastInfoRequest"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3846
    :goto_0
    monitor-exit v0

    return-void

    .line 3839
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3846
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 3870
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3875
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3879
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3881
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onCommandRequest"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3883
    :goto_0
    monitor-exit v0

    return-void

    .line 3876
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3883
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onLayoutSurface(IIII)V
    .locals 8

    .line 3814
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3819
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3823
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onLayoutSurface(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 3826
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3828
    :goto_0
    monitor-exit v1

    return-void

    .line 3820
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 3828
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRemoveBroadcastInfo(I)V
    .locals 2

    .line 3851
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3859
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRemoveBroadcastInfo(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3861
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRemoveBroadcastInfo"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3863
    :goto_0
    monitor-exit v0

    return-void

    .line 3856
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3863
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestAvailableSpeeds()V
    .locals 3

    .line 4062
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4070
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestAvailableSpeeds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4072
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestAvailableSpeeds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4074
    :goto_0
    monitor-exit v0

    return-void

    .line 4067
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4074
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCertificate(Ljava/lang/String;I)V
    .locals 2

    .line 4242
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4250
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCertificate(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4252
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestCertificate"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4254
    :goto_0
    monitor-exit v0

    return-void

    .line 4247
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4254
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentChannelLcn()V
    .locals 3

    .line 3960
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3968
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelLcn(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3970
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentChannelLcn"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3972
    :goto_0
    monitor-exit v0

    return-void

    .line 3965
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3972
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentChannelUri()V
    .locals 3

    .line 3943
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3947
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3951
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentChannelUri(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3953
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentChannelUri"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3955
    :goto_0
    monitor-exit v0

    return-void

    .line 3948
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3955
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentTvInputId()V
    .locals 3

    .line 4028
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4036
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentTvInputId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4038
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentTvInputId"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4040
    :goto_0
    monitor-exit v0

    return-void

    .line 4033
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4040
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentVideoBounds()V
    .locals 3

    .line 3926
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3934
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestCurrentVideoBounds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3936
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentVideoBounds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3938
    :goto_0
    monitor-exit v0

    return-void

    .line 3931
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3938
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    .line 4115
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4123
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4126
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestScheduleRecording"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4128
    :goto_0
    monitor-exit v1

    return-void

    .line 4120
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4128
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .locals 13

    .line 4134
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4145
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v0, "error in onRequestScheduleRecording2"

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4147
    :goto_0
    monitor-exit v1

    return-void

    .line 4139
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4147
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestSelectedTrackInfo()V
    .locals 3

    .line 4011
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4015
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4019
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSelectedTrackInfo(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4021
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestSelectedTrackInfo"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4023
    :goto_0
    monitor-exit v0

    return-void

    .line 4016
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4023
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 4205
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4216
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4218
    :goto_0
    monitor-exit v1

    return-void

    .line 4210
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4218
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 9

    .line 4224
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4232
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v8}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 4235
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4237
    :goto_0
    monitor-exit v1

    return-void

    .line 4229
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4237
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 4079
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4083
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4087
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4090
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestStartRecording"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4092
    :goto_0
    monitor-exit v0

    return-void

    .line 4084
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4092
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStopRecording(Ljava/lang/String;)V
    .locals 2

    .line 4097
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStopRecording(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4107
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestStopRecording"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4109
    :goto_0
    monitor-exit v0

    return-void

    .line 4102
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4109
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestStreamVolume()V
    .locals 3

    .line 3977
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3985
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestStreamVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3987
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestStreamVolume"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3989
    :goto_0
    monitor-exit v0

    return-void

    .line 3982
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3989
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTimeShiftMode()V
    .locals 3

    .line 4045
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4053
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTimeShiftMode(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4055
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestTimeShiftMode"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4057
    :goto_0
    monitor-exit v0

    return-void

    .line 4050
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4057
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTrackInfoList()V
    .locals 3

    .line 3994
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3998
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4002
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTrackInfoList(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4004
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestTrackInfoList"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4006
    :goto_0
    monitor-exit v0

    return-void

    .line 3999
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4006
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTvRecordingInfo(Ljava/lang/String;)V
    .locals 2

    .line 4170
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4178
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfo(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4180
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestTvRecordingInfo"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4182
    :goto_0
    monitor-exit v0

    return-void

    .line 4175
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4182
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTvRecordingInfoList(I)V
    .locals 2

    .line 4187
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4195
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onRequestTvRecordingInfoList(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4197
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onRequestTvRecordingInfoList"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4199
    :goto_0
    monitor-exit v0

    return-void

    .line 4192
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4199
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V
    .locals 10

    .line 3794
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3795
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3796
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/interactive/ITvInteractiveAppSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3797
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v6, p1, v0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 3804
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 3805
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 3808
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 3809
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSessionStateChanged(II)V
    .locals 2

    .line 4277
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4281
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4285
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionStateChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4287
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onSessionStateChanged"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4289
    :goto_0
    monitor-exit v0

    return-void

    .line 4282
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4289
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .locals 2

    .line 4152
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4160
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4163
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onSetTvRecordingInfo"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4165
    :goto_0
    monitor-exit v0

    return-void

    .line 4157
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4165
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSetVideoBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 3909
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3917
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSetVideoBounds(Landroid/graphics/Rect;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3919
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onSetVideoBounds"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3921
    :goto_0
    monitor-exit v0

    return-void

    .line 3914
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3921
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTeletextAppStateChanged(I)V
    .locals 2

    .line 4313
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4317
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4321
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTeletextAppStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4323
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string v1, "error in onTeletextAppStateChanged"

    invoke-static {p1, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4325
    :goto_0
    monitor-exit v0

    return-void

    .line 4318
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4325
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 3890
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3895
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3899
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3902
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onTimeShiftCommandRequest"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3904
    :goto_0
    monitor-exit v0

    return-void

    .line 3896
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 3904
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
