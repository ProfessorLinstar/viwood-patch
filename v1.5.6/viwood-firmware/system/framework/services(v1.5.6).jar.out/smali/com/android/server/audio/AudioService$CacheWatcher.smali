.class public Lcom/android/server/audio/AudioService$CacheWatcher;
.super Ljava/lang/Thread;
.source "AudioService.java"


# instance fields
.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTask:Ljava/lang/Runnable;

.field public final mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 11681
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11682
    sget-object v0, Landroid/permission/PermissionManager;->CACHE_KEY_PACKAGE_INFO_CACHE:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->getNonceWatcher(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    .line 11684
    iput-object p1, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized doCheck()V
    .locals 1

    monitor-enter p0

    .line 11703
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11704
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 11706
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 11688
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11689
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11690
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$CacheWatcher;->doCheck()V

    .line 11692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$CacheWatcher;->mWatcher:Landroid/app/PropertyInvalidatedCache$NonceWatcher;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->waitForChange()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11694
    const-string v1, "AS.AudioService"

    const-string v2, "Unexpected Interrupt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
