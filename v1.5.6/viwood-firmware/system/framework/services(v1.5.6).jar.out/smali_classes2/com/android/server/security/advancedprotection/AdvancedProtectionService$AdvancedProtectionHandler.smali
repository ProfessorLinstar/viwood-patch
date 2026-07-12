.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;
.super Landroid/os/Handler;
.source "AdvancedProtectionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 505
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleAllCallbacks(Z)V
    .locals 8

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 526
    :goto_0
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmHooks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v3}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmHooks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;

    .line 529
    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 530
    invoke-virtual {v3, p1}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 533
    const-string v5, "AdvancedProtectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to call hook for feature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v3}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;->getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/advancedprotection/AdvancedProtectionFeature;->getId()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v2}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    move v3, v1

    .line 538
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v4}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 539
    iget-object v4, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v4}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    invoke-interface {v4, p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 543
    :catch_1
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 547
    :cond_2
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 548
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-interface {v3}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 550
    :cond_3
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    return-void

    .line 518
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->handleSingleCallback(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V

    return-void

    .line 513
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->handleAllCallbacks(Z)V

    return-void
.end method

.method public final handleSingleCallback(ZLandroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    .locals 0

    .line 555
    :try_start_0
    invoke-interface {p2, p1}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->onAdvancedProtectionChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 557
    :catch_0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionHandler;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$fgetmCallbacks(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p2}, Landroid/security/advancedprotection/IAdvancedProtectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
