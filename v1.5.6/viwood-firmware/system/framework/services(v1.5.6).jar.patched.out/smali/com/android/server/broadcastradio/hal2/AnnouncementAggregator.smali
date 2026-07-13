.class public final Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mIsClosed:Z

.field public final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field public final mLock:Ljava/lang/Object;

.field public final mModuleWatchers:Ljava/util/Collection;


# direct methods
.method public static bridge synthetic -$$Nest$monListUpdated(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 40
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator-IA;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 52
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 130
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 132
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 133
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->close()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 136
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onListUpdated()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 89
    const-string p0, "BcRadio2Srv.AnnAggr"

    const-string v1, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {p0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 94
    iget-object v3, v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {p0, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 99
    :try_start_2
    const-string v1, "BcRadio2Srv.AnnAggr"

    const-string/jumbo v2, "mListener.onListUpdated() failed: "

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    const-string p1, "BcRadio2Srv.AnnAggr"

    const-string p2, "Failed to add announcement listener"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    monitor-exit v0

    return-void

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to watch modulesince announcement aggregator has already been closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
