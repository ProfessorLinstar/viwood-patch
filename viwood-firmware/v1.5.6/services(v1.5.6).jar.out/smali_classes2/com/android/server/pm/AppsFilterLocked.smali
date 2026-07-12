.class public abstract Lcom/android/server/pm/AppsFilterLocked;
.super Lcom/android/server/pm/AppsFilterBase;
.source "AppsFilterLocked.java"


# instance fields
.field public final mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 31
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 33
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 35
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 40
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 42
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 44
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 46
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 52
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-void
.end method


# virtual methods
.method public dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 146
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isForceQueryable(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isImplicitlyQueryable(II)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isQueryableViaComponent(II)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isQueryableViaPackage(II)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isQueryableViaUsesLibrary(II)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 93
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isQueryableViaUsesPermission(II)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 99
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public isRetainedImplicitlyQueryable(II)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public shouldFilterApplicationUsingCache(III)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method
