.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "BroadcastRadioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 68
    const-string v0, "BcRadio2Srv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 73
    :try_start_0
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 77
    iget-object p3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move v2, v1

    .line 80
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmUserController(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Lcom/android/server/broadcastradio/RadioServiceUserController;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;Lcom/android/server/broadcastradio/RadioServiceUserController;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-result-object v3

    if-nez v3, :cond_1

    .line 83
    monitor-exit p1

    return-void

    .line 85
    :cond_1
    const-string v4, "BcRadio2Srv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loaded broadcast radio module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (HAL 2.0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/hal2/RadioModule;

    if-eqz v4, :cond_2

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->closeSessions(Ljava/lang/Integer;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 93
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fputmNextModuleId(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getService()Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p2, v0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 101
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;->this$0:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
