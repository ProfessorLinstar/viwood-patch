.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;
.super Landroid/app/ambientcontext/IAmbientContextManager$Stub;
.source "AmbientContextManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Lcom/android/server/ambientcontext/AmbientContextManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    return-void
.end method


# virtual methods
.method public final checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I
    .locals 3

    .line 689
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v0

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean v0, v0, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 690
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Service not enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 693
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object p1

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    iget-boolean p1, p1, Lcom/android/server/ambientcontext/AmbientContextManagerService;->mIsWearableServiceEnabled:Z

    if-nez p1, :cond_1

    .line 694
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wearable Service not available."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 697
    :cond_1
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 698
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AmbientContextEventRequest contains mixed events, this is not supported."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 673
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$600(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 677
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    const-string p3, ""

    invoke-static {p0, p3, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$700(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 678
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 684
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextShellCommand;

    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 4

    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$300(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$400(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 628
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v3, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mintArrayToIntegerSet(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Ljava/util/Set;

    move-result-object v3

    .line 627
    invoke-static {v1, v2, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mgetAmbientContextManagerPerUserServiceForEventTypes(Lcom/android/server/ambientcontext/AmbientContextManagerService;ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 630
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryServiceStatus unavailable user_id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 635
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 637
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {v1, p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 642
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 539
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    .line 537
    invoke-static {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mgetAmbientContextManagerPerUserServiceForEventTypes(Lcom/android/server/ambientcontext/AmbientContextManagerService;ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v0

    .line 542
    new-instance v1, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    .line 554
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return-void
.end method

.method public registerObserverWithCallback(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 3

    .line 565
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientContextManagerService registerObserverWithCallback."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$000(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 576
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    .line 574
    invoke-static {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mgetAmbientContextManagerPerUserServiceForEventTypes(Lcom/android/server/ambientcontext/AmbientContextManagerService;ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onRegisterObserver unavailable user_id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 584
    :cond_0
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$smintegerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v1

    .line 583
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->checkStatusCode(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;[I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 586
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    return-void

    .line 588
    :cond_1
    invoke-virtual {v0, p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    return-void
.end method

.method public startConsentActivity([ILjava/lang/String;)V
    .locals 3

    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$500(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmContext(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mcontainsMixedEvents(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AmbientContextEventRequest contains mixed events, this is not supported."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 661
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mintArrayToIntegerSet(Lcom/android/server/ambientcontext/AmbientContextManagerService;[I)Ljava/util/Set;

    move-result-object p0

    .line 660
    invoke-static {v0, v1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mgetAmbientContextManagerPerUserServiceForEventTypes(Lcom/android/server/ambientcontext/AmbientContextManagerService;ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onStartConsentActivity([ILjava/lang/String;)V

    return-void

    .line 666
    :cond_1
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startConsentActivity unavailable user_id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterObserver(Ljava/lang/String;)V
    .locals 5

    .line 595
    invoke-virtual {p0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->unregisterObserver_enforcePermission()V

    .line 596
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$100(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v0}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->access$200(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-static {v1}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$fgetmExistingClientRequests(Lcom/android/server/ambientcontext/AmbientContextManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal;->this$0:Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 603
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 604
    invoke-virtual {v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    move-result-object v2

    .line 602
    invoke-static {v3, v4, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$mgetAmbientContextManagerPerUserServiceForEventTypes(Lcom/android/server/ambientcontext/AmbientContextManagerService;ILjava/util/Set;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 606
    invoke-virtual {v2, p1}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->onUnregisterObserver(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 608
    :cond_1
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnregisterObserver unavailable user_id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
