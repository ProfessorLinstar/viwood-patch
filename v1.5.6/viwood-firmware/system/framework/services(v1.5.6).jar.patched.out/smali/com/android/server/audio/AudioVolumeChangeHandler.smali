.class public Lcom/android/server/audio/AudioVolumeChangeHandler;
.super Ljava/lang/Object;
.source "AudioVolumeChangeHandler.java"


# instance fields
.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$msendAudioVolumeGroupChangedToClients(Lcom/android/server/audio/AudioVolumeChangeHandler;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioVolumeChangeHandler;->sendAudioVolumeGroupChangedToClients(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 46
    iput-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method


# virtual methods
.method public final lazyInitLocked()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;-><init>(Lcom/android/server/audio/AudioVolumeChangeHandler;Lcom/android/server/audio/AudioVolumeChangeHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    .line 52
    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I

    return-void
.end method

.method public registerListener(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    .locals 2

    .line 78
    const-string v0, "Volume group callback must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/audio/AudioVolumeChangeHandler;->lazyInitLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 84
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendAudioVolumeGroupChangedToClients(II)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 60
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    invoke-interface {v3, p1, p2}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;->onAudioVolumeGroupChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    const-string v3, "AudioVolumeChangeHandler"

    const-string v4, "Failed to broadcast Volume Changed event"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 70
    :try_start_2
    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public unregisterListener(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    .locals 1

    .line 91
    const-string v0, "Volume group callback must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
