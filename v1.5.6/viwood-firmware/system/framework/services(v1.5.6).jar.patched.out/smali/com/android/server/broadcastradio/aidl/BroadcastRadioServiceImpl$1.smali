.class public Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;
.super Landroid/os/IServiceCallback$Stub;
.source "BroadcastRadioServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 8

    .line 69
    const-string v0, "BcRadioAidlSrv"

    const-string/jumbo v1, "onRegistration for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v4, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move v4, v3

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v6}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmUserController(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Lcom/android/server/broadcastradio/RadioServiceUserController;

    move-result-object v6

    invoke-static {v5, p1, p2, v6}, Lcom/android/server/broadcastradio/aidl/RadioModule;->tryLoadingModule(ILjava/lang/String;Landroid/os/IBinder;Lcom/android/server/broadcastradio/RadioServiceUserController;)Lcom/android/server/broadcastradio/aidl/RadioModule;

    move-result-object p2

    if-nez p2, :cond_1

    .line 83
    const-string p0, "BcRadioAidlSrv"

    const-string p2, "No module %s with id %d (HAL AIDL)"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    monitor-exit v0

    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    const-string v5, "BcRadioAidlSrv"

    const-string v6, "Loaded broadcast radio module %s with id %d (HAL AIDL)"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_2
    iget-object v5, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v5}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 91
    iget-object v6, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v6}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {v5, v3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions(I)V

    :cond_3
    if-eqz v4, :cond_4

    .line 97
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmNextModuleId(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fputmNextModuleId(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_4
    :try_start_1
    new-instance p1, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;

    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p1, v2, v3}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V

    .line 104
    invoke-virtual {p2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->getService()Landroid/hardware/broadcastradio/IBroadcastRadio;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 106
    :catch_0
    :try_start_2
    const-string p1, "BcRadioAidlSrv"

    const-string p2, "Service has already died, so remove its entry from mModules."

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 109
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
