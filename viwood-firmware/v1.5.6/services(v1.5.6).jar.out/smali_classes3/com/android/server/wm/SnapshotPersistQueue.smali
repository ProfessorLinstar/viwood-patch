.class public Lcom/android/server/wm/SnapshotPersistQueue;
.super Ljava/lang/Object;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPaused:Z

.field public final mPersister:Ljava/lang/Thread;

.field public mQueueIdling:Z

.field public mShutdown:Z

.field public mStarted:Z

.field public final mStoreQueueItems:Ljava/util/ArrayDeque;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteQueue:Ljava/util/ArrayDeque;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdown(Lcom/android/server/wm/SnapshotPersistQueue;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/wm/SnapshotPersistQueue;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$1;

    const-string v1, "TaskSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SnapshotPersistQueue$1;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Ljava/lang/Thread;

    .line 76
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public final addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 178
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 182
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onQueuedLocked()V

    .line 183
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->ensureStoreQueueDepthLocked()V

    .line 186
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_2

    .line 187
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    return-void
.end method

.method public createDeleteWriteQueueItem(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;
    .locals 1

    .line 522
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-object v0
.end method

.method public createStoreWriteQueueItem(IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;
    .locals 6

    .line 309
    new-instance v0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    return-object v0
.end method

.method public deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 2

    .line 211
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object p0

    .line 212
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 219
    :cond_1
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PersistQueue contains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 550
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final ensureStoreQueueDepthLocked()V
    .locals 3

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 205
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmId(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public insertQueueAtFirstLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public final isQueueEmpty()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public peekQueueSize()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public peekWriteQueueSize()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareShutdown()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 116
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mShutdown:Z

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-nez p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mStarted:Z

    .line 93
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mPersister:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->start()V

    return-void
.end method

.method public waitFlush(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_3

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue;->isQueueEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v5, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 140
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 142
    :cond_1
    const-string p0, "WindowManager"

    const-string p1, "Snapshot Persist Queue flush timed out"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void
.end method

.method public waitForQueueEmpty()V
    .locals 2

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-eqz v1, :cond_0

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 158
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x64

    .line 159
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 158
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
