.class public final Lcom/android/server/am/PendingTempAllowlists;
.super Ljava/lang/Object;
.source "PendingTempAllowlists.java"


# instance fields
.field public final mPendingTempAllowlist:Landroid/util/SparseArray;

.field public mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    .line 30
    iput-object p1, p0, Lcom/android/server/am/PendingTempAllowlists;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public indexOfKey(I)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(ILcom/android/server/am/ActivityManagerService$PendingTempAllowlist;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAt(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public valueAt(I)Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PendingTempAllowlists;->mPendingTempAllowlist:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
