.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;
.super Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V
    .locals 0

    .line 4380
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;-><init>()V

    .line 4381
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 4382
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z
    .locals 6

    .line 4535
    const-string v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4541
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 4542
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v2

    .line 4543
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    if-nez v3, :cond_0

    .line 4545
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 4547
    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4552
    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4549
    const-string p1, "client process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 4554
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :catch_1
    move-exception p0

    .line 4537
    const-string/jumbo p1, "session process has already died"

    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public onLayoutSurface(IIII)V
    .locals 8

    .line 4411
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4420
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onLayoutSurface(IIIII)V
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

    .line 4423
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onLayoutSurface"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4425
    :goto_0
    monitor-exit v1

    return-void

    .line 4417
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4425
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentChannelUri()V
    .locals 3

    .line 4447
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4455
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentChannelUri(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4457
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentChannelUri"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4459
    :goto_0
    monitor-exit v0

    return-void

    .line 4452
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4459
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentTvInputId()V
    .locals 3

    .line 4481
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4489
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentTvInputId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4491
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentTvInputId"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4493
    :goto_0
    monitor-exit v0

    return-void

    .line 4486
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4493
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestCurrentVideoBounds()V
    .locals 3

    .line 4430
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4438
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentVideoBounds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4440
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestCurrentVideoBounds"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4442
    :goto_0
    monitor-exit v0

    return-void

    .line 4435
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4442
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 4499
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4507
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
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

    .line 4510
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onRequestSigning"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4512
    :goto_0
    monitor-exit v1

    return-void

    .line 4504
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 4512
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onRequestTrackInfoList()V
    .locals 3

    .line 4464
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4472
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestTrackInfoList(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4474
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    const-string v2, "error in onRequestTrackInfoList"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4476
    :goto_0
    monitor-exit v0

    return-void

    .line 4469
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4476
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    .locals 10

    .line 4391
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;Landroid/media/tv/ad/ITvAdSession;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4393
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4394
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmAdServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v6, p1, v0

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 4401
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 4402
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmAdServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 4405
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 4406
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 4517
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4525
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result p0

    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ad/ITvAdClient;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 4527
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in onTvAdSessionData"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4529
    :goto_0
    monitor-exit v0

    return-void

    .line 4522
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 4529
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
