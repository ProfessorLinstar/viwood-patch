.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;
.super Landroid/app/contextualsearch/IContextualSearchManager$Stub;
.source "ContextualSearchManagerService.java"


# instance fields
.field public mToken:Landroid/app/contextualsearch/CallbackToken;

.field public mTokenHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public static synthetic $r8$lambda$6UC9nHPJPVkwqjSGuame_A2_HQE(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->lambda$startContextualSearchInternal$0(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minvalidateToken(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {p0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Lcom/android/server/contextualsearch/ContextualSearchManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    return-void
.end method


# virtual methods
.method public getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/contextualsearch/CallbackToken;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    .line 574
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    .line 576
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    return-void

    :catchall_0
    move-exception p0

    .line 576
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 540
    :cond_1
    :goto_0
    :try_start_2
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid token"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p0}, Landroid/app/contextualsearch/IContextualSearchCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 543
    invoke-static {}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Could not invoke onError callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final invalidateToken()V
    .locals 3

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 455
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 459
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 460
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final issueToken()V
    .locals 4

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    new-instance v0, Landroid/app/contextualsearch/CallbackToken;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken;-><init>()V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    .line 466
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 478
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mTokenHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 481
    invoke-static {v2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$mgetTokenValidDurationMs(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)J

    move-result-wide v2

    .line 480
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 482
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$startContextualSearchInternal$0(IILjava/lang/String;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->mToken:Landroid/app/contextualsearch/CallbackToken;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$mgetContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$minvokeContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/content/Intent;I)I

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 587
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerShellCommand;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 588
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public startContextualSearch(I)V
    .locals 2

    .line 499
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    const-string/jumbo v1, "startContextualSearch"

    invoke-static {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(I)V

    .line 503
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startContextualSearchForForegroundApp()V
    .locals 2

    .line 487
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    const-string/jumbo v1, "startContextualSearchForForegroundApp"

    invoke-static {v0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 493
    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->startContextualSearchInternal(I)V

    .line 494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final startContextualSearchInternal(I)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 509
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-static {v2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->-$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 511
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->issueToken()V

    .line 515
    new-instance v2, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;IILjava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
