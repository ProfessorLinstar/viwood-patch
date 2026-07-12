.class public final Lcom/android/server/tv/TvRemoteServiceInput;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteServiceInput.java"


# instance fields
.field public final mBridgeMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mProvider:Landroid/media/tv/ITvRemoteProvider;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/media/tv/ITvRemoteProvider;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 162
    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    throw p0

    .line 172
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 140
    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 148
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0

    .line 150
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/server/tv/UinputBridge;->openGamepad(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/tv/UinputBridge;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v3, Lcom/android/server/tv/TvRemoteServiceInput$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput$2;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {p0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 127
    :catch_0
    const-string p0, "TvRemoteServiceInput"

    const-string p1, "Failed remote call to onInputBridgeConnected"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 115
    :catch_1
    :try_start_4
    const-string p2, "TvRemoteServiceInput"

    const-string v3, "Token is already dead"

    invoke-static {p2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 112
    :catch_2
    :try_start_6
    const-string p0, "TvRemoteServiceInput"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create device for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 119
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0

    .line 122
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 10

    .line 54
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, p1

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/tv/UinputBridge;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    :try_start_2
    invoke-direct/range {v4 .. v9}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p1, Lcom/android/server/tv/TvRemoteServiceInput$1;

    invoke-direct {p1, p0, v5}, Lcom/android/server/tv/TvRemoteServiceInput$1;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 p2, 0x0

    invoke-interface {v5, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {p0, v5}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 86
    :catch_0
    const-string p0, "TvRemoteServiceInput"

    const-string p1, "Failed remote call to onInputBridgeConnected"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_1
    move-object v5, p1

    goto :goto_1

    :catch_2
    move-object v6, p2

    goto :goto_3

    .line 74
    :catch_3
    :goto_1
    :try_start_5
    const-string p1, "TvRemoteServiceInput"

    const-string p2, "Token is already dead"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, v5}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 71
    :catch_4
    :goto_3
    :try_start_7
    const-string p0, "TvRemoteServiceInput"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create device for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 78
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw p0

    .line 81
    :goto_6
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 343
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 351
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0

    .line 353
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendGamepadKeyDown(Landroid/os/IBinder;I)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 322
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    .line 328
    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 330
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw p0

    .line 332
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendGamepadKeyUp(Landroid/os/IBinder;I)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 301
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 307
    :try_start_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 309
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p0

    .line 311
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 191
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 199
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p0

    .line 201
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 213
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 221
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    throw p0

    .line 223
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 236
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 244
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw p0

    .line 246
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 280
    const-string p0, "TvRemoteServiceInput"

    const-string v1, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 288
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    throw p0

    .line 290
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/UinputBridge;

    if-nez p0, :cond_0

    .line 258
    const-string p0, "TvRemoteServiceInput"

    const-string p2, "Input bridge not found for token: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 266
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw p0

    .line 268
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 0

    .line 0
    return-void
.end method
