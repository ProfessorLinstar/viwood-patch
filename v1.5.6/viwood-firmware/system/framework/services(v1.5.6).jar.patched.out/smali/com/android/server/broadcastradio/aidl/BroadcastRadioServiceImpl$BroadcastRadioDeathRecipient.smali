.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;
.super Ljava/lang/Object;
.source "BroadcastRadioServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mModuleId:I

.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 122
    const-string v0, "BcRadioAidlSrv"

    const-string v1, "ServiceDied for module id %d"

    iget v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmModules(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/broadcastradio/aidl/RadioModule;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->closeSessions(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->this$0:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->-$$Nest$fgetmServiceNameToModuleIdMap(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    if-ne v3, v4, :cond_1

    .line 131
    const-string v1, "BcRadioAidlSrv"

    const-string v3, "Service %s died, removed RadioModule with ID %d"

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget p0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$BroadcastRadioDeathRecipient;->mModuleId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 131
    invoke-static {v1, v3, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
