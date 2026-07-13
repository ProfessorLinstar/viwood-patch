.class public Lcom/android/server/wm/TaskSnapshotPersister;
.super Lcom/android/server/wm/BaseAppSnapshotPersister;
.source "TaskSnapshotPersister.java"


# instance fields
.field public final mDisableSnapshots:Z

.field public final mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPersistedTaskIdsSinceLastRemoveObsolete(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 47
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 54
    iput-boolean p3, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    return-void
.end method


# virtual methods
.method public persistSnapshot(IILandroid/window/TaskSnapshot;)V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/BaseAppSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeObsoleteFiles(Landroid/util/ArraySet;[I)V
    .locals 4

    .line 100
    array-length v0, p2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    new-instance v2, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->sendToQueueLocked(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)V

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSnapshot(II)V
    .locals 3

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mDisableSnapshots:Z

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/BaseAppSnapshotPersister;->removeSnapshot(II)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
