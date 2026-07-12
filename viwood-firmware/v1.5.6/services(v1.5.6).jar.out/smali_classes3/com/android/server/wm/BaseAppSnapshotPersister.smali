.class public abstract Lcom/android/server/wm/BaseAppSnapshotPersister;
.super Ljava/lang/Object;
.source "BaseAppSnapshotPersister.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field protected final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 48
    iput-object p2, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 62
    invoke-virtual {v1, p1, p2, p3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->createStoreWriteQueueItem(IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    move-result-object p0

    .line 61
    invoke-virtual {v1, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeSnapshot(II)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 75
    invoke-virtual {v1, p1, p2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->createDeleteWriteQueueItem(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    move-result-object p0

    .line 74
    invoke-virtual {v1, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
