.class public Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# instance fields
.field public final mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

.field public final mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

.field public final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "NumNonAppVisibleWindowUidMap:["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    .line 120
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 122
    :cond_0
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;
    .locals 4

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 108
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getNumNonAppVisibleWindowMapByType(I)Landroid/util/SparseIntArray;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMapByType:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getUidState(I)I
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized hasNonAppVisibleWindow(I)Z
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onNonAppSurfaceVisibilityChanged(IIZ)V
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mNumNonAppVisibleWindowMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/MirrorActiveUids;->updateCount(IZLandroid/util/SparseIntArray;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MirrorActiveUids;->getNumNonAppVisibleWindowMapByType(I)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/MirrorActiveUids;->updateCount(IZLandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onUidActive(II)V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onUidInactive(I)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onUidProcStateChanged(II)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final updateCount(IZLandroid/util/SparseIntArray;)V
    .locals 1

    .line 76
    invoke-virtual {p3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    const/4 v0, 0x1

    if-ltz p0, :cond_2

    .line 78
    invoke-virtual {p3, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    add-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 80
    invoke-virtual {p3, p0, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return-void

    .line 82
    :cond_1
    invoke-virtual {p3, p0}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    :cond_3
    return-void
.end method
