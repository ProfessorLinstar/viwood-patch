.class public Lcom/android/server/wm/TaskSnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "TaskSnapshotCache.java"


# instance fields
.field public final mLoader:Lcom/android/server/wm/AppSnapshotLoader;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppSnapshotLoader;)V
    .locals 1

    .line 32
    const-string v0, "Task"

    invoke-direct {p0, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    return-void
.end method


# virtual methods
.method public getSnapshot(IZ)Landroid/window/TaskSnapshot;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshot(IZI)Landroid/window/TaskSnapshot;
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 62
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshotInner(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p0, p3}, Landroid/window/TaskSnapshot;->addReference(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p0

    .line 69
    :cond_1
    monitor-exit p2

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 81
    invoke-virtual {p0, p4}, Landroid/window/TaskSnapshot;->addReference(I)V

    :cond_0
    return-object p0
.end method

.method public putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 38
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 39
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mSafeSnapshotReleaser:Ljava/util/function/Consumer;

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot;->setSafeRelease(Ljava/util/function/Consumer;)V

    .line 40
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    if-eqz v2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    invoke-direct {v2, p2, v1}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method
