.class public Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 307
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .locals 14

    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 437
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-gez v0, :cond_0

    .line 439
    const-string v2, "GameManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to write setting for invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 441
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 442
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 446
    :cond_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 447
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mwriteGameModeInterventionsToFile(Lcom/android/server/app/GameManagerService;I)V

    .line 449
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    .line 432
    :pswitch_1
    const-string p1, "GameManagerService"

    const-string v0, "Game loading power mode OFF (loading boost ended)"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    return-void

    .line 377
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/GameState;

    .line 378
    invoke-virtual {v0}, Landroid/app/GameState;->isLoading()Z

    move-result v11

    .line 379
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 380
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 384
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 385
    invoke-virtual {v2, v7, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v5

    .line 388
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v8, v2

    goto :goto_2

    .line 390
    :catch_0
    const-string v2, "GameManagerService"

    const-string v3, "Failed to get package metadata"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_1

    .line 394
    :goto_2
    invoke-virtual {v0}, Landroid/app/GameState;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$smgameStateModeToStatsdGameState(I)I

    move-result v10

    .line 395
    invoke-virtual {v0}, Landroid/app/GameState;->getLabel()I

    move-result v12

    invoke-virtual {v0}, Landroid/app/GameState;->getQuality()I

    move-result v13

    const/16 v6, 0x1ad

    .line 393
    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    if-eqz v9, :cond_6

    .line 398
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    if-nez v2, :cond_2

    .line 399
    const-string p0, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting loading mode for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    :cond_3
    const-string v2, "GameManagerService"

    const-string v4, "Game loading power mode %s (game state change isLoading=%b)"

    if-eqz v11, :cond_4

    .line 408
    const-string v5, "ON"

    goto :goto_3

    :cond_4
    const-string v5, "OFF"

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 406
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    if-eqz v11, :cond_6

    .line 411
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v1, v7, p1}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v1, 0x1388

    .line 414
    :goto_4
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 415
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 414
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListenerLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 420
    :try_start_2
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IGameStateListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 422
    :try_start_3
    invoke-interface {v3, v7, v0, p1}, Landroid/app/IGameStateListener;->onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    .line 424
    :catch_1
    :try_start_4
    const-string v4, "GameManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot notify game state change for listener added by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 425
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 428
    :cond_7
    monitor-exit v1

    :goto_6
    return-void

    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :pswitch_3
    const/4 v0, 0x3

    .line 362
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 363
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 365
    :try_start_5
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 366
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    .line 367
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 368
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_9

    .line 371
    :cond_8
    :goto_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 372
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;

    move-result-object p1

    .line 373
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    return-void

    .line 371
    :goto_9
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 338
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_9

    .line 340
    const-string v0, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write settings for invalid user: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 343
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 344
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    .line 348
    :cond_9
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 351
    :try_start_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 352
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 353
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 354
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/app/GameManagerSettings;

    .line 355
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_b

    .line 358
    :cond_a
    :goto_a
    monitor-exit v1

    return-void

    :goto_b
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    .line 318
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_b

    .line 320
    const-string v0, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to write settings for invalid user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 322
    :try_start_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 323
    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p0

    .line 326
    :cond_b
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 327
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 330
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    .line 331
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_d

    .line 333
    :cond_c
    :goto_c
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 334
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    .line 333
    :goto_d
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method
