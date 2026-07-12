.class public Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method public static synthetic $r8$lambda$7MELvM0vq4LGKRe09YLQWWpeVvo(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$onBindingDied$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NjxY_yaPjB2SqaS8Lf0D3g9qkws(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$onServiceConnected$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$kZsdL6_A5MAyFTNpxnceGbwfUQY(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$onServiceDisconnected$2(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onBindingDied$0(J)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmEventCb(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmComponent(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public final synthetic lambda$onServiceConnected$1(J)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmEventCb(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmComponent(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public final synthetic lambda$onServiceDisconnected$2(J)V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmEventCb(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmComponent(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetTAG(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service binding died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmLock(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmConnection(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 318
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmHandler(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)V

    .line 326
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$mstartRetriesLocked(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 327
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 333
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetTAG(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmLock(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmConnection(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 339
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmHandler(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$mstopRetriesLocked(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmChecker(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmChecker(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)V

    .line 351
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmChecker(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 353
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p2, v1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)V

    .line 354
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetTAG(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid binder from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$mstartRetriesLocked(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 356
    monitor-exit v2

    return-void

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object p1

    .line 359
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmPendingEvent(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    move-result-object p2

    .line 360
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmPendingEvent(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    move-object v1, p1

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 362
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 365
    :try_start_1
    invoke-interface {p2, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 367
    iget-object p2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetTAG(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received exception from user service: "

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$mstartRetriesLocked(Lcom/android/server/utils/ManagedApplicationService;)V

    :cond_3
    return-void

    .line 362
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 376
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetTAG(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmLock(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 378
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmConnection(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 379
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fgetmHandler(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/utils/ManagedApplicationService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$fputmBoundInterface(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)V

    .line 388
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {p0}, Lcom/android/server/utils/ManagedApplicationService;->-$$Nest$mstartRetriesLocked(Lcom/android/server/utils/ManagedApplicationService;)V

    .line 389
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
